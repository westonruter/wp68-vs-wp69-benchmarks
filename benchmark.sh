#!/usr/bin/env bash

set -e

# Install wpp-research if missing

OLD_VERSION="latest"
NEW_VERSION="master"
CWV_BENCHMARK_NUMBER=100

OLD_URL="http://localhost:8881"
NEW_URL="http://localhost:8891"

DATABASE_DUMP="database.sql"

THEMES=(
	twentyten
	twentyeleven
	twentytwelve
	twentythirteen
	twentyfourteen
	twentyfifteen
	twentysixteen
	twentyseventeen
	twentynineteen
	twentytwenty
	twentytwentyone
	twentytwentytwo
	twentytwentythree
	twentytwentyfour
	twentytwentyfive
	astra
	# hello-elementor
)

echo "Old version: $OLD_VERSION at $OLD_URL"
echo "New version: $NEW_VERSION at $NEW_URL"

# Check if jq is installed.
if ! command -v jq &> /dev/null; then
	echo "Error: 'jq' is not installed. It is required to parse Lighthouse JSON output." >&2
	echo "Please install it. On macOS with Homebrew, run: brew install jq" >&2
	exit 1
fi

# Check if bc is installed.
if ! command -v bc &> /dev/null; then
	echo "Error: 'bc' is not installed. It is required for calculations." >&2
	echo "Please install it. On macOS with Homebrew, run: brew install bc" >&2
	exit 1
fi

install_wordpress() {
	local dir="$1"
	local version="$2"
	local url="$3"

	cd "$dir"

	if [[ "$version" != 'latest' ]]; then
		if [[ "$version" == *".zip"* ]]; then
			echo "{\"core\":\"$version\"}" > .wp-env.override.json
		else
			echo "{\"core\":\"WordPress/WordPress#$version\"}" > .wp-env.override.json
		fi
	fi

	npm ci
	npm run wp-env --silent start --update

	if ! npm run wp-env --silent run tests-cli -- wp db import "$DATABASE_DUMP"; then
		npm run wp-env --silent run tests-cli -- wp db reset --yes
		npm run wp-env --silent run tests-cli -- wp core install --url="$url" --title="$dir" --admin_user=admin --admin_password=password --admin_email=wordpress@example.com --skip-email
		npm run wp-env --silent run tests-cli -- wp rewrite structure '/%postname%/' --hard
		npm run wp-env --silent run tests-cli -- wp plugin install --activate wordpress-importer
		npm run wp-env --silent run tests-cli -- curl https://raw.githubusercontent.com/WordPress/theme-test-data/b9752e0533a5acbb876951a8cbb5bcc69a56474c/themeunittestdata.wordpress.xml --output /tmp/themeunittestdata.wordpress.xml
		npm run wp-env --silent run tests-cli -- wp import /tmp/themeunittestdata.wordpress.xml --authors=create
		npm run wp-env --silent run tests-cli -- wp plugin deactivate wordpress-importer
		npm run wp-env --silent run tests-cli -- wp db export "$DATABASE_DUMP"
	fi

	cd ..
}

prepare_test() {
	local dir="$1"
	local theme="$2"

	cd "$dir"
	npm run wp-env --silent run tests-cli -- wp db import "$DATABASE_DUMP"
	npm run wp-env --silent run tests-cli -- wp theme install --activate "$theme"
	if [ "$theme" == "hello-elementor" ]; then
		npm run wp-env --silent run tests-cli -- wp plugin install --activate elementor
	fi
	cd ..
}

format_benchmark_table() {
	grep -v 'Success Rate' |
		sed '1s/|[^|]*|[^|]*|[^|]*/| Metric | Before | After /' |
		awk '
			BEGIN { FS=OFS="|" }
			NR==2 {
				for (i=3; i<=NF-1; i++) $i=" ---: "
			}
			NR!=2 {
				for (i=3; i<NF; i++) {
					gsub(/^[[:space:]]+|[[:space:]]+$/, "", $i);
					$i=" "$i" "
				}
			}
			1
		'
}

install_wordpress old "$OLD_VERSION" "$OLD_URL"
install_wordpress new "$NEW_VERSION" "$NEW_URL"

mkdir -p results
echo '' > results/all.md

for theme in "${THEMES[@]}"; do
	echo "## $theme"
	mkdir -p "results/$theme"
	old_test_url="$OLD_URL/block-category-common/"
	new_test_url="$NEW_URL/block-category-common/"

	prepare_test old "$theme"
	prepare_test new "$theme"

	results_file="results/$theme/broadband.md"
	echo "# $theme" >> results/all.md
	echo >> results/all.md
	echo "## Broadband" >> results/all.md
	time npm --silent run research -- benchmark-web-vitals --url="$old_test_url" --url="$new_test_url" --number="$CWV_BENCHMARK_NUMBER" --network-conditions='broadband' --diff --output=md | format_benchmark_table | tee "$results_file"
	cat "$results_file" >> results/all.md
	echo >> results/all.md

	results_file="results/$theme/fast-4g.md"
	echo "## Fast 4G" >> results/all.md
	time npm --silent run research -- benchmark-web-vitals --url="$old_test_url" --url="$new_test_url" --number="$CWV_BENCHMARK_NUMBER" --network-conditions='Fast 4G' --diff --output=md | format_benchmark_table | tee "$results_file"
	cat "$results_file" >> results/all.md
	echo >> results/all.md
done

echo "All Done!"

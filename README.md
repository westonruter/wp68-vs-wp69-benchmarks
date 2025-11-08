# Benchmarking WordPress 6.8 vs 6.9-beta 

This was quickly put together to benchmark all core themes plus some others in WordPress 6.8 compared with 6.9-beta, while emulating network connections for both broadband and Fast 4G. The specific URL being benchmarked is the "Block category: Common" post from the theme unit test data.

See [results/all.md](results/all.md) for the results as of `6.9-beta3`.

## Benchmarks for Classic Themes without Template Enhancement Output Buffer

# twentyeleven

## Broadband
| Metric | Before | After | Diff (ms) | Diff (%) |
| :---------------- | ---: | ---: | ---: | ---: |
| FCP (median)      | 201.65 | 208.15 | +6.50 | +3.2% |
| LCP (median)      | 328.45 | 351.8 | +23.35 | +7.1% |
| TTFB (median)     | 24.2 | 25.3 | +1.10 | +4.5% |
| TTLB (median)     | 56.45 | 55.65 | -0.80 | -1.4% |
| LCP-TTFB (median) | 303.6 | 329.25 | +25.65 | +8.4% |

## Fast 4G
| Metric | Before | After | Diff (ms) | Diff (%) |
| :---------------- | ---: | ---: | ---: | ---: |
| FCP (median)      | 480.05 | 487.15 | +7.10 | +1.5% |
| LCP (median)      | 533.35 | 535.4 | +2.05 | +0.4% |
| TTFB (median)     | 25.15 | 26.2 | +1.05 | +4.2% |
| TTLB (median)     | 184.85 | 184.75 | -0.10 | -0.1% |
| LCP-TTFB (median) | 508.55 | 508.05 | -0.50 | -0.1% |

# twentythirteen

## Broadband
| Metric | Before | After | Diff (ms) | Diff (%) |
| :---------------- | ---: | ---: | ---: | ---: |
| FCP (median)      | 239.35 | 251.5 | +12.15 | +5.1% |
| LCP (median)      | 631.8 | 629.4 | -2.40 | -0.4% |
| TTFB (median)     | 29.1 | 30.5 | +1.40 | +4.8% |
| TTLB (median)     | 59.5 | 59.2 | -0.30 | -0.5% |
| LCP-TTFB (median) | 597.7 | 599.9 | +2.20 | +0.4% |

## Fast 4G
| Metric | Before | After | Diff (ms) | Diff (%) |
| :---------------- | ---: | ---: | ---: | ---: |
| FCP (median)      | 610.3 | 617.4 | +7.10 | +1.2% |
| LCP (median)      | 1367.2 | 1419.4 | +52.20 | +3.8% |
| TTFB (median)     | 28.05 | 29.05 | +1.00 | +3.6% |
| TTLB (median)     | 187.55 | 187.95 | +0.40 | +0.2% |
| LCP-TTFB (median) | 1338.5 | 1388.85 | +50.35 | +3.8% |

# twentyfourteen

## Broadband
| Metric | Before | After | Diff (ms) | Diff (%) |
| :---------------- | ---: | ---: | ---: | ---: |
| FCP (median)      | 233 | 235.15 | +2.15 | +0.9% |
| LCP (median)      | 331.75 | 333.4 | +1.65 | +0.5% |
| TTFB (median)     | 28.4 | 29.25 | +0.85 | +3.0% |
| TTLB (median)     | 58.55 | 58.2 | -0.35 | -0.6% |
| LCP-TTFB (median) | 302.6 | 303.4 | +0.80 | +0.3% |

## Fast 4G
| Metric | Before | After | Diff (ms) | Diff (%) |
| :---------------- | ---: | ---: | ---: | ---: |
| FCP (median)      | 598.15 | 612.9 | +14.75 | +2.5% |
| LCP (median)      | 693.5 | 708.7 | +15.20 | +2.2% |
| TTFB (median)     | 27.85 | 29.5 | +1.65 | +5.9% |
| TTLB (median)     | 187.7 | 192.6 | +4.90 | +2.6% |
| LCP-TTFB (median) | 664.25 | 678.2 | +13.95 | +2.1% |

# twentyfifteen

## Broadband
| Metric | Before | After | Diff (ms) | Diff (%) |
| :---------------- | ---: | ---: | ---: | ---: |
| FCP (median)      | 243.45 | 247.3 | +3.85 | +1.6% |
| LCP (median)      | 343 | 339.85 | -3.15 | -0.9% |
| TTFB (median)     | 29.05 | 29.5 | +0.45 | +1.5% |
| TTLB (median)     | 59.15 | 59.1 | -0.05 | -0.1% |
| LCP-TTFB (median) | 313.3 | 310 | -3.30 | -1.1% |

## Fast 4G
| Metric | Before | After | Diff (ms) | Diff (%) |
| :---------------- | ---: | ---: | ---: | ---: |
| FCP (median)      | 624.7 | 614.25 | -10.45 | -1.7% |
| LCP (median)      | 715 | 709.35 | -5.65 | -0.8% |
| TTFB (median)     | 27.75 | 29.7 | +1.95 | +7.0% |
| TTLB (median)     | 189 | 188.45 | -0.55 | -0.3% |
| LCP-TTFB (median) | 685.9 | 679.4 | -6.50 | -0.9% |

# twentyseventeen

## Broadband
| Metric | Before | After | Diff (ms) | Diff (%) |
| :---------------- | ---: | ---: | ---: | ---: |
| FCP (median)      | 241.55 | 244.05 | +2.50 | +1.0% |
| LCP (median)      | 508.3 | 510.6 | +2.30 | +0.5% |
| TTFB (median)     | 30.7 | 31.85 | +1.15 | +3.7% |
| TTLB (median)     | 75 | 73.3 | -1.70 | -2.3% |
| LCP-TTFB (median) | 478.35 | 475.95 | -2.40 | -0.5% |

## Fast 4G
| Metric | Before | After | Diff (ms) | Diff (%) |
| :---------------- | ---: | ---: | ---: | ---: |
| FCP (median)      | 498.65 | 499.1 | +0.45 | +0.1% |
| LCP (median)      | 840.85 | 843.2 | +2.35 | +0.3% |
| TTFB (median)     | 30.25 | 31.35 | +1.10 | +3.6% |
| TTLB (median)     | 203.25 | 205 | +1.75 | +0.9% |
| LCP-TTFB (median) | 810.1 | 811.1 | +1.00 | +0.1% |

## [Gemini Analysis](https://gemini.google.com/share/a95a0617d385)

_Updated for 6.9-beta3. Note how now `twentytwenty` and `astra` now show improvements, whereas previously they were either regressed or had mixed results. This is due to [r61122](https://core.trac.wordpress.org/changeset/61122)._

Here is the analysis of the new benchmark results (50 iterations) comparing WordPress 6.8 with 6.9-beta3.

The overall picture is very positive. The **`LCP-TTFB`** (Largest Contentful Paint minus Time to First Byte) metric improved for the vast majority of themes, especially on Broadband. The **Astra** theme and the upcoming **Twenty Twenty-Five** theme show exceptionally strong improvements.

A **negative percentage** indicates an **improvement** (faster rendering time), while a **positive percentage** indicates a **regression** (slower rendering time).

---

### 📈 Themes with LCP-TTFB Improvements (Both Connections)

These themes showed an improvement on **both** Broadband and Fast 4G connections.

| Theme | Broadband (Diff %) | Fast 4G (Diff %) |
| :--- | ---: | ---: |
| twentyten | -3.6% | -3.3% |
| twentytwelve | -5.0% | -2.8% |
| twentysixteen | -5.2% | -0.5% |
| twentynineteen | -0.6% | -2.7% |
| twentytwenty | -7.6% | -3.0% |
| twentytwentyone | -10.7% | -2.3% |
| twentytwentyfive | -21.0% | -28.0% |
| astra | -26.6% | -10.2% |

---

### 📉 Themes with LCP-TTFB Regressions (Both Connections)

Only one theme showed a regression on **both** connections.

| Theme | Broadband (Diff %) | Fast 4G (Diff %) |
| :--- | ---: | ---: |
| twentyseventeen | +2.0% | +5.3% |

---

### 📊 Themes with Mixed LCP-TTFB Results

These themes showed a mix of improvement, regression, or no change depending on the connection type.

| Theme | Broadband (Diff %) | Fast 4G (Diff %) |
| :--- | ---: | ---: |
| twentyeleven | +0.2% | -5.1% |
| twentythirteen | -1.4% | +11.5% |
| twentyfourteen | -4.0% | +0.6% |
| twentyfifteen | -4.4% | +0.2% |
| twentytwentytwo | +0.5% | -0.4% |
| twentytwentythree | -1.0% | 0.0% |
| twentytwentyfour | -2.3% | +1.4% |

---

### 🏆 Sorted Performance Rankings (LCP-TTFB)

#### Broadband (Sorted Best to Worst)
| Rank | Theme | LCP-TTFB (Diff %) |
| :--- | :--- | ---: |
| 1 | astra | -26.6% |
| 2 | twentytwentyfive | -21.0% |
| 3 | twentytwentyone | -10.7% |
| 4 | twentytwenty | -7.6% |
| 5 | twentysixteen | -5.2% |
| 6 | twentytwelve | -5.0% |
| 7 | twentyfifteen | -4.4% |
| 8 | twentyfourteen | -4.0% |
| 9 | twentyten | -3.6% |
| 10 | twentytwentyfour | -2.3% |
| 11 | twentythirteen | -1.4% |
| 12 | twentytwentythree | -1.0% |
| 13 | twentynineteen | -0.6% |
| 14 | twentyeleven | +0.2% |
| 15 | twentytwentytwo | +0.5% |
| 16 | twentyseventeen | +2.0% |

#### Fast 4G (Sorted Best to Worst)
| Rank | Theme | LCP-TTFB (Diff %) |
| :--- | :--- | ---: |
| 1 | twentytwentyfive | -28.0% |
| 2 | astra | -10.2% |
| 3 | twentyeleven | -5.1% |
| 4 | twentyten | -3.3% |
| 5 | twentytwenty | -3.0% |
| 6 | twentytwelve | -2.8% |
| 7 | twentynineteen | -2.7% |
| 8 | twentytwentyone | -2.3% |
| 9 | twentysixteen | -0.5% |
| 10 | twentytwentytwo | -0.4% |
| 11 | twentytwentythree | 0.0% |
| 12 | twentyfifteen | +0.2% |
| 13 | twentyfourteen | +0.6% |
| 14 | twentytwentyfour | +1.4% |
| 15 | twentyseventeen | +5.3% |
| 16 | twentythirteen | +11.5% |

<details><summary>Previous analysis for 6.9-beta2-61113</summary>

A **negative percentage** indicates an **improvement** (faster rendering time), while a **positive percentage** indicates a **regression** (slower rendering time).

---

### 📈 Themes with LCP-TTFB Improvements (Both Connections)

| Theme | Broadband (Diff %) | Fast 4G (Diff %) |
| :--- | ---: | ---: |
| twentyten | -5.7% | -3.6% |
| twentytwelve | -5.6% | -2.2% |
| twentyfifteen | -6.1% | -0.2% |
| twentysixteen | -5.0% | -1.2% |
| twentynineteen | -0.5% | -1.4% |
| twentytwentyone | -14.0% | -10.0% |
| twentytwentytwo | -4.5% | -0.4% |
| twentytwentythree | -4.2% | -1.1% |
| twentytwentyfour | -3.1% | -0.3% |
| twentytwentyfive | -20.0% | -29.9% |

---

### 📉 Themes with LCP-TTFB Regressions (Both Connections)

| Theme | Broadband (Diff %) | Fast 4G (Diff %) |
| :--- | ---: | ---: |
| twentyeleven | +8.8% | +9.1% |
| twentyseventeen | +3.8% | +6.5% |
| twentytwenty | +0.6% | +1.2% |

---

### 📊 Themes with Mixed LCP-TTFB Results

| Theme | Broadband (Diff %) | Fast 4G (Diff %) |
| :--- | ---: | ---: |
| twentythirteen | -4.8% | +5.7% |
| twentyfourteen | -4.3% | +0.1% |
| astra | +2.1% | -0.3% |

---

### 🏆 Sorted Performance Rankings (LCP-TTFB)

#### Broadband (Sorted Best to Worst)
| Rank | Theme | LCP-TTFB (Diff %) |
| :--- | :--- | ---: |
| 1 | twentytwentyfive | -20.0% |
| 2 | twentytwentyone | -14.0% |
| 3 | twentyfifteen | -6.1% |
| 4 | twentyten | -5.7% |
| 5 | twentytwelve | -5.6% |
| 6 | twentysixteen | -5.0% |
| 7 | twentythirteen | -4.8% |
| 8 | twentytwentytwo | -4.5% |
| 9 | twentyfourteen | -4.3% |
| 10 | twentytwentythree | -4.2% |
| 11 | twentytwentyfour | -3.1% |
| 12 | twentynineteen | -0.5% |
| 13 | twentytwenty | +0.6% |
| 14 | astra | +2.1% |
| 15 | twentyseventeen | +3.8% |
| 16 | twentyeleven | +8.8% |

#### Fast 4G (Sorted Best to Worst)
| Rank | Theme | LCP-TTFB (Diff %) |
| :--- | :--- | ---: |
| 1 | twentytwentyfive | -29.9% |
| 2 | twentytwentyone | -10.0% |
| 3 | twentyten | -3.6% |
| 4 | twentytwelve | -2.2% |
| 5 | twentynineteen | -1.4% |
| 6 | twentysixteen | -1.2% |
| 7 | twentytwentythree | -1.1% |
| 8 | twentytwentytwo | -0.4% |
| 9 | astra | -0.3% |
| 10 | twentytwentyfour | -0.3% |
| 11 | twentyfifteen | -0.2% |
| 12 | twentyfourteen | +0.1% |
| 13 | twentytwenty | +1.2% |
| 14 | twentythirteen | +5.7% |
| 15 | twentyseventeen | +6.5% |
| 16 | twentyeleven | +9.1% |

</details>

## Installation

1. Clone [GoogleChromeLabs/wpp-research](https://github.com/GoogleChromeLabs/wpp-research) somewhere on your machine.
2. Clone this repo to a subdirectory of the `wpp-research` clone. For example, `cd wpp-research && git clone https://github.com/westonruter/wp68-vs-wp69-benchmarks.git`.
3. Run `./benchmark.sh` in the checked out directory (e.g. `wp68-vs-wp69-benchmarks`).

## Credits

This is a derivative of [swissspidy/compare-wp-performance](https://github.com/swissspidy/compare-wp-performance).

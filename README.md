# Benchmarking WordPress 6.8 vs 6.9-beta 

This was quickly put together to benchmark all core themes plus some others in WordPress 6.8 compared with 6.9-beta, while emulating network connections for both broadband and Fast 4G. The specific URL being benchmarked is the "Block category: Common" post from the theme unit test data.

See [results/all.md](results/all.md) for the results as of `6.9-beta2-61113`. 

See [Gemini analysis](https://gemini.google.com/share/a95a0617d385):

> Based on my analysis of the `all.md` file, here is the breakdown of performance changes for the `LCP-TTFB` (Largest Contentful Paint minus Time to First Byte) metric between WordPress 6.8 ("Before") and 6.9 ("After").
> 
> A **negative percentage** indicates an **improvement** (faster rendering time), while a **positive percentage** indicates a **regression** (slower rendering time).
> 
> ---
> 
> ### 📈 Themes with LCP-TTFB Improvements
> 
> These themes showed an improvement (a reduction) in `LCP-TTFB` on **both** Broadband and Fast 4G connections.
> 
> * **twentyten:** (Broadband: -5.7%, Fast 4G: -3.6%)
> * **twentytwelve:** (Broadband: -5.6%, Fast 4G: -2.2%)
> * **twentyfifteen:** (Broadband: -6.1%, Fast 4G: -0.2%)
> * **twentysixteen:** (Broadband: -5.0%, Fast 4G: -1.2%)
> * **twentynineteen:** (Broadband: -0.5%, Fast 4G: -1.4%)
> * **twentytwentyone:** (Broadband: -14.0%, Fast 4G: -10.0%)
> * **twentytwentytwo:** (Broadband: -4.5%, Fast 4G: -0.4%)
> * **twentytwentythree:** (Broadband: -4.2%, Fast 4G: -1.1%)
> * **twentytwentyfour:** (Broadband: -3.1%, Fast 4G: -0.3%)
> * **twentytwentyfive:** (Broadband: -20.0%, Fast 4G: -29.9%)
> 
> ---
> 
> ### 📉 Themes with LCP-TTFB Regressions
> 
> These themes showed a regression (an increase) in `LCP-TTFB` on **both** Broadband and Fast 4G connections.
> 
> * **twentyeleven:** (Broadband: +8.8%, Fast 4G: +9.1%)
> * **twentyseventeen:** (Broadband: +3.8%, Fast 4G: +6.5%)
> * **twentytwenty:** (Broadband: +0.6%, Fast 4G: +1.2%)
> 
> ---
> 
> ### 📊 Themes with Mixed LCP-TTFB Results
> 
> These themes showed an improvement on one connection type but a regression on the other.
> 
> * **twentythirteen:** (Broadband: -4.8% improvement, Fast 4G: +5.7% regression)
> * **twentyfourteen:** (Broadband: -4.3% improvement, Fast 4G: +0.1% regression)
> * **astra:** (Broadband: +2.1% regression, Fast 4G: -0.3% improvement)
> 
> ---
> 
> ### 🏆 Sorted Performance Rankings (LCP-TTFB)
> 
> Here are all themes sorted from the biggest improvement (most negative %) to the biggest regression (most positive %).
> 
> #### Broadband (Sorted Best to Worst)
> 1.  **twentytwentyfive:** -20.0%
> 2.  **twentytwentyone:** -14.0%
> 3.  **twentyfifteen:** -6.1%
> 4.  **twentyten:** -5.7%
> 5.  **twentytwelve:** -5.6%
> 6.  **twentysixteen:** -5.0%
> 7.  **twentythirteen:** -4.8%
> 8.  **twentytwentytwo:** -4.5%
> 9.  **twentyfourteen:** -4.3%
> 10. **twentytwentythree:** -4.2%
> 11. **twentytwentyfour:** -3.1%
> 12. **twentynineteen:** -0.5%
> 13. **twentytwenty:** +0.6%
> 14. **astra:** +2.1%
> 15. **twentyseventeen:** +3.8%
> 16. **twentyeleven:** +8.8%
> 
> #### Fast 4G (Sorted Best to Worst)
> 1.  **twentytwentyfive:** -29.9%
> 2.  **twentytwentyone:** -10.0%
> 3.  **twentyten:** -3.6%
> 4.  **twentytwelve:** -2.2%
> 5.  **twentynineteen:** -1.4%
> 6.  **twentysixteen:** -1.2%
> 7.  **twentytwentythree:** -1.1%
> 8.  **twentytwentytwo:** -0.4%
> 9.  **astra:** -0.3%
> 10. **twentytwentyfour:** -0.3%
> 11. **twentyfifteen:** -0.2%
> 12. **twentyfourteen:** +0.1%
> 13. **twentytwenty:** +1.2%
> 14. **twentythirteen:** +5.7%
> 15. **twentyseventeen:** +6.5%
> 16. **twentyeleven:** +9.1%

Note: The regression to Twenty Twenty's performance is expected since it is the only core theme unable to opt in to loading separate block styles on demand. The same goes for Astra, since it likewise does not add `wp-block-styles` theme support. See [Core-64166](https://core.trac.wordpress.org/ticket/64166).

## Installation

1. Clone [GoogleChromeLabs/wpp-research](https://github.com/GoogleChromeLabs/wpp-research) somewhere on your machine.
2. Clone this repo to a subdirectory of the `wpp-research` clone. For example, `cd wpp-research && git clone https://github.com/westonruter/wp68-vs-wp69-benchmarks.git`.
3. Run `./benchmark.sh` in the checked out directory (e.g. `wp68-vs-wp69-benchmarks`).

## Credits

This is a derivative of [swissspidy/compare-wp-performance](https://github.com/swissspidy/compare-wp-performance).

Yeti-sans style
===============

This is a clone of [yeti.css][yeticss] with a couple of minor changes.
Mainly renaming to have shorter names like `.btn` instead of `.button` and
`.msg` instead of `.message`. Grid names have also changed: `.grid-flex-` is
`.gf-`, `.grid-container` is `.gf-row` and `.grid-cell-1of{2,3,4}` became `.w50,
.w33, .w25`. Default fonts and colors have also changed.


How to use
----------

0. clone or download this repo
1. `npm install` (to get `stylus` and `jade`)
2. `make css` or `make examples`
3. open `build/examples`
4. edit `style/main.styl` or `style/yeti-sans/globals/*` to tweak the style


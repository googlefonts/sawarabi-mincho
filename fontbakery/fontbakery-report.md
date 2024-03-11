## FontBakery report

fontbakery version: 0.11.2

<h2>Experimental checks</h2><p>These won't break the CI job for now, but will become effective after some time if nobody raises any concern.</p><details><summary><b>[1] SawarabiMincho-Regular.ttf</b></summary><div><details><summary>🔥 <b>FAIL:</b> Ensure the font supports case swapping for all its glyphs. (<a href="https://font-bakery.readthedocs.io/en/stable/fontbakery/profiles/universal.html#com.google.fonts/check/case_mapping">com.google.fonts/check/case_mapping</a>)</summary><div>


* 🔥 **FAIL** The following glyphs lack their case-swapping counterparts:

| Glyph present in the font | Missing case-swapping counterpart |
| :--- | :--- |
| U+0186: LATIN CAPITAL LETTER OPEN O | U+0254: LATIN SMALL LETTER OPEN O |
| U+0189: LATIN CAPITAL LETTER AFRICAN D | U+0256: LATIN SMALL LETTER D WITH TAIL |
| U+0191: LATIN CAPITAL LETTER F WITH HOOK | U+0192: LATIN SMALL LETTER F WITH HOOK |
| U+0193: LATIN CAPITAL LETTER G WITH HOOK | U+0260: LATIN SMALL LETTER G WITH HOOK |
| U+0197: LATIN CAPITAL LETTER I WITH STROKE | U+0268: LATIN SMALL LETTER I WITH STROKE |
| U+019A: LATIN SMALL LETTER L WITH BAR | U+023D: LATIN CAPITAL LETTER L WITH BAR |
| U+019C: LATIN CAPITAL LETTER TURNED M | U+026F: LATIN SMALL LETTER TURNED M |
| U+019D: LATIN CAPITAL LETTER N WITH LEFT HOOK | U+0272: LATIN SMALL LETTER N WITH LEFT HOOK |
| U+019E: LATIN SMALL LETTER N WITH LONG RIGHT LEG | U+0220: LATIN CAPITAL LETTER N WITH LONG RIGHT LEG |
| U+019F: LATIN CAPITAL LETTER O WITH MIDDLE TILDE | U+0275: LATIN SMALL LETTER BARRED O |
| U+01A5: LATIN SMALL LETTER P WITH HOOK | U+01A4: LATIN CAPITAL LETTER P WITH HOOK |
| U+01A9: LATIN CAPITAL LETTER ESH | U+0283: LATIN SMALL LETTER ESH |
| U+0243: LATIN CAPITAL LETTER B WITH STROKE | U+0180: LATIN SMALL LETTER B WITH STROKE |
| U+0244: LATIN CAPITAL LETTER U BAR | U+0289: LATIN SMALL LETTER U BAR |
| U+0245: LATIN CAPITAL LETTER TURNED V | U+028C: LATIN SMALL LETTER TURNED V |
| U+2160: ROMAN NUMERAL ONE | U+2170: SMALL ROMAN NUMERAL ONE |
| U+2161: ROMAN NUMERAL TWO | U+2171: SMALL ROMAN NUMERAL TWO |
| U+2162: ROMAN NUMERAL THREE | U+2172: SMALL ROMAN NUMERAL THREE |

 [code: missing-case-counterparts]
</div></details><br></div></details><h2>All other checks</h2><details><summary><b>[17] SawarabiMincho-Regular.ttf</b></summary><div><details><summary>🔥 <b>FAIL:</b> Check Google Fonts glyph coverage. (<a href="https://font-bakery.readthedocs.io/en/stable/fontbakery/profiles/googlefonts.html#com.google.fonts/check/glyph_coverage">com.google.fonts/check/glyph_coverage</a>)</summary><div>


* 🔥 **FAIL** Missing required codepoints:

	- 0x02C6 (MODIFIER LETTER CIRCUMFLEX ACCENT)


	- 0x02C7 (CARON)


	- 0x02D8 (BREVE)


	- 0x02D9 (DOT ABOVE)


	- 0x02DA (RING ABOVE)


	- 0x02DB (OGONEK)


	- 0x02DC (SMALL TILDE)


	- 0x02DD (DOUBLE ACUTE ACCENT)


	- 0x1E80 (LATIN CAPITAL LETTER W WITH GRAVE)


	- 0x1E81 (LATIN SMALL LETTER W WITH GRAVE)


	- 0x1E82 (LATIN CAPITAL LETTER W WITH ACUTE)


	- 0x1E83 (LATIN SMALL LETTER W WITH ACUTE)


	- 0x1E84 (LATIN CAPITAL LETTER W WITH DIAERESIS)


	- 0x1E85 (LATIN SMALL LETTER W WITH DIAERESIS)


	- 0x1E9E (LATIN CAPITAL LETTER SHARP S)


	- 0x1EF2 (LATIN CAPITAL LETTER Y WITH GRAVE)


	- 0x1EF3 (LATIN SMALL LETTER Y WITH GRAVE)


	- 0x2013 (EN DASH)


	- 0x2014 (EM DASH)


	- 0x201A (SINGLE LOW-9 QUOTATION MARK)


	- 0x2022 (BULLET)


	- 0x20AC (EURO SIGN)


	- 0x2122 (TRADE MARK SIGN)


	- 0x2212 (MINUS SIGN)
 [code: missing-codepoints]
</div></details><details><summary>🔥 <b>FAIL:</b> Shapes languages in all GF glyphsets. (<a href="https://font-bakery.readthedocs.io/en/stable/fontbakery/profiles/googlefonts.html#com.google.fonts/check/glyphsets/shape_languages">com.google.fonts/check/glyphsets/shape_languages</a>)</summary><div>


* 🔥 **FAIL** GF_Latin_Core glyphset:

| Language | FAIL messages |
| :--- | :--- |
| cy_Latn (Welsh) | Shaper didn't attach gravecomb to W |
|  ^  | Shaper didn't attach uni0308 to w |
|  ^  | Shaper didn't attach acutecomb to W |
|  ^  | Shaper didn't attach acutecomb to w |
|  ^  | Shaper didn't attach uni0308 to W |
|  ^  | Shaper didn't attach gravecomb to y |
|  ^  | Shaper didn't attach gravecomb to w |
|  ^  | Shaper didn't attach gravecomb to Y |
| de_Latn (German) | Some base glyphs were missing: ẞ |
|  ^  | Shaper produced a .notdef |
| nl_Latn (Dutch) | Shaper didn't attach acutecomb to j |
|  ^  | Shaper didn't attach acutecomb to J |

 [code: failed-language-shaping]
* ⚠ **WARN** GF_Latin_Core glyphset:

| Language | FAIL messages |
| :--- | :--- |
| de_Latn (German) | Some auxiliary glyphs were missing: ẞ |

 [code: warning-language-shaping]
</div></details><details><summary>⚠ <b>WARN:</b> Checking OS/2 achVendID. (<a href="https://font-bakery.readthedocs.io/en/stable/fontbakery/profiles/googlefonts.html#com.google.fonts/check/vendor_id">com.google.fonts/check/vendor_id</a>)</summary><div>


* ⚠ **WARN** OS/2 VendorID value 'NONE' is not yet recognized. If you registered it recently, then it's safe to ignore this warning message. Otherwise, you should set it to your own unique 4 character code, and register it with Microsoft at https://www.microsoft.com/typography/links/vendorlist.aspx
 [code: unknown]
</div></details><details><summary>⚠ <b>WARN:</b> Check for codepoints not covered by METADATA subsets. (<a href="https://font-bakery.readthedocs.io/en/stable/fontbakery/profiles/googlefonts.html#com.google.fonts/check/metadata/unreachable_subsetting">com.google.fonts/check/metadata/unreachable_subsetting</a>)</summary><div>


* ⚠ **WARN** The following codepoints supported by the font are not covered by
    any subsets defined in the font's metadata file, and will never
    be served. You can solve this by either manually adding additional
    subset declarations to METADATA.pb, or by editing the glyphset
    definitions.

 * U+02CB MODIFIER LETTER GRAVE ACCENT: not included in any glyphset definition
 * U+0302 COMBINING CIRCUMFLEX ACCENT: try adding one of: math, tifinagh, cherokee, coptic
 * U+0306 COMBINING BREVE: try adding one of: tifinagh, old-permic
 * U+0307 COMBINING DOT ABOVE: try adding one of: canadian-aboriginal, math, tai-le, malayalam, old-permic, syriac, tifinagh, coptic
 * U+030A COMBINING RING ABOVE: try adding syriac
 * U+030B COMBINING DOUBLE ACUTE ACCENT: try adding one of: osage, cherokee
 * U+030C COMBINING CARON: try adding one of: tai-le, cherokee
 * U+030F COMBINING DOUBLE GRAVE ACCENT: not included in any glyphset definition
 * U+0311 COMBINING INVERTED BREVE: try adding coptic
 * U+0312 COMBINING TURNED COMMA ABOVE: not included in any glyphset definition
 * U+0315 COMBINING COMMA ABOVE RIGHT: not included in any glyphset definition
 * U+031B COMBINING HORN: not included in any glyphset definition
 * U+0326 COMBINING COMMA BELOW: not included in any glyphset definition
 * U+0327 COMBINING CEDILLA: not included in any glyphset definition
 * U+0328 COMBINING OGONEK: not included in any glyphset definition
 * U+2015 HORIZONTAL BAR: try adding adlam
 * U+201F DOUBLE HIGH-REVERSED-9 QUOTATION MARK: not included in any glyphset definition
 * U+2025 TWO DOT LEADER: try adding phags-pa
 * U+203B REFERENCE MARK: not included in any glyphset definition
 * U+203C DOUBLE EXCLAMATION MARK: not included in any glyphset definition
 * U+2047 DOUBLE QUESTION MARK: not included in any glyphset definition
 * U+2048 QUESTION EXCLAMATION MARK: try adding mongolian
 * U+2049 EXCLAMATION QUESTION MARK: try adding mongolian
 * U+2160 ROMAN NUMERAL ONE: try adding symbols
 * U+2161 ROMAN NUMERAL TWO: try adding symbols
 * U+2162 ROMAN NUMERAL THREE: try adding symbols
 * U+2318 PLACE OF INTEREST SIGN: try adding symbols
 * U+2319 TURNED NOT SIGN: try adding math
 * U+231A WATCH: try adding symbols
 * U+2326 ERASE TO THE RIGHT: try adding symbols
 * U+232B ERASE TO THE LEFT: try adding symbols
 * U+2460 CIRCLED DIGIT ONE: try adding one of: mongolian, symbols, yi
 * U+2461 CIRCLED DIGIT TWO: try adding one of: mongolian, symbols, yi
 * U+2462 CIRCLED DIGIT THREE: try adding one of: mongolian, symbols, yi
 * U+2463 CIRCLED DIGIT FOUR: try adding one of: mongolian, symbols, yi
 * U+2464 CIRCLED DIGIT FIVE: try adding one of: mongolian, symbols, yi
 * U+2465 CIRCLED DIGIT SIX: try adding one of: mongolian, symbols, yi
 * U+2466 CIRCLED DIGIT SEVEN: try adding one of: mongolian, symbols, yi
 * U+2467 CIRCLED DIGIT EIGHT: try adding one of: mongolian, symbols, yi
 * U+2468 CIRCLED DIGIT NINE: try adding one of: mongolian, symbols, yi
 * U+2500 BOX DRAWINGS LIGHT HORIZONTAL: not included in any glyphset definition
 * U+2501 BOX DRAWINGS HEAVY HORIZONTAL: not included in any glyphset definition
 * U+2502 BOX DRAWINGS LIGHT VERTICAL: not included in any glyphset definition
 * U+2503 BOX DRAWINGS HEAVY VERTICAL: not included in any glyphset definition
 * U+250C BOX DRAWINGS LIGHT DOWN AND RIGHT: not included in any glyphset definition
 * U+250D BOX DRAWINGS DOWN LIGHT AND RIGHT HEAVY: not included in any glyphset definition
 * U+250E BOX DRAWINGS DOWN HEAVY AND RIGHT LIGHT: not included in any glyphset definition
 * U+250F BOX DRAWINGS HEAVY DOWN AND RIGHT: not included in any glyphset definition
 * U+2510 BOX DRAWINGS LIGHT DOWN AND LEFT: not included in any glyphset definition
 * U+2511 BOX DRAWINGS DOWN LIGHT AND LEFT HEAVY: not included in any glyphset definition
 * U+2512 BOX DRAWINGS DOWN HEAVY AND LEFT LIGHT: not included in any glyphset definition
 * U+2513 BOX DRAWINGS HEAVY DOWN AND LEFT: not included in any glyphset definition
 * U+2514 BOX DRAWINGS LIGHT UP AND RIGHT: not included in any glyphset definition
 * U+2515 BOX DRAWINGS UP LIGHT AND RIGHT HEAVY: not included in any glyphset definition
 * U+2516 BOX DRAWINGS UP HEAVY AND RIGHT LIGHT: not included in any glyphset definition
 * U+2517 BOX DRAWINGS HEAVY UP AND RIGHT: not included in any glyphset definition
 * U+2518 BOX DRAWINGS LIGHT UP AND LEFT: not included in any glyphset definition
 * U+2519 BOX DRAWINGS UP LIGHT AND LEFT HEAVY: not included in any glyphset definition
 * U+251A BOX DRAWINGS UP HEAVY AND LEFT LIGHT: not included in any glyphset definition
 * U+251B BOX DRAWINGS HEAVY UP AND LEFT: not included in any glyphset definition
 * U+251C BOX DRAWINGS LIGHT VERTICAL AND RIGHT: not included in any glyphset definition
 * U+251D BOX DRAWINGS VERTICAL LIGHT AND RIGHT HEAVY: not included in any glyphset definition
 * U+251E BOX DRAWINGS UP HEAVY AND RIGHT DOWN LIGHT: not included in any glyphset definition
 * U+251F BOX DRAWINGS DOWN HEAVY AND RIGHT UP LIGHT: not included in any glyphset definition
 * U+2520 BOX DRAWINGS VERTICAL HEAVY AND RIGHT LIGHT: not included in any glyphset definition
 * U+2521 BOX DRAWINGS DOWN LIGHT AND RIGHT UP HEAVY: not included in any glyphset definition
 * U+2522 BOX DRAWINGS UP LIGHT AND RIGHT DOWN HEAVY: not included in any glyphset definition
 * U+2523 BOX DRAWINGS HEAVY VERTICAL AND RIGHT: not included in any glyphset definition
 * U+2524 BOX DRAWINGS LIGHT VERTICAL AND LEFT: not included in any glyphset definition
 * U+2525 BOX DRAWINGS VERTICAL LIGHT AND LEFT HEAVY: not included in any glyphset definition
 * U+2526 BOX DRAWINGS UP HEAVY AND LEFT DOWN LIGHT: not included in any glyphset definition
 * U+2527 BOX DRAWINGS DOWN HEAVY AND LEFT UP LIGHT: not included in any glyphset definition
 * U+2528 BOX DRAWINGS VERTICAL HEAVY AND LEFT LIGHT: not included in any glyphset definition
 * U+2529 BOX DRAWINGS DOWN LIGHT AND LEFT UP HEAVY: not included in any glyphset definition
 * U+252A BOX DRAWINGS UP LIGHT AND LEFT DOWN HEAVY: not included in any glyphset definition
 * U+252B BOX DRAWINGS HEAVY VERTICAL AND LEFT: not included in any glyphset definition
 * U+252C BOX DRAWINGS LIGHT DOWN AND HORIZONTAL: not included in any glyphset definition
 * U+252D BOX DRAWINGS LEFT HEAVY AND RIGHT DOWN LIGHT: not included in any glyphset definition
 * U+252E BOX DRAWINGS RIGHT HEAVY AND LEFT DOWN LIGHT: not included in any glyphset definition
 * U+252F BOX DRAWINGS DOWN LIGHT AND HORIZONTAL HEAVY: not included in any glyphset definition
 * U+2530 BOX DRAWINGS DOWN HEAVY AND HORIZONTAL LIGHT: not included in any glyphset definition
 * U+2531 BOX DRAWINGS RIGHT LIGHT AND LEFT DOWN HEAVY: not included in any glyphset definition
 * U+2532 BOX DRAWINGS LEFT LIGHT AND RIGHT DOWN HEAVY: not included in any glyphset definition
 * U+2533 BOX DRAWINGS HEAVY DOWN AND HORIZONTAL: not included in any glyphset definition
 * U+2534 BOX DRAWINGS LIGHT UP AND HORIZONTAL: not included in any glyphset definition
 * U+2535 BOX DRAWINGS LEFT HEAVY AND RIGHT UP LIGHT: not included in any glyphset definition
 * U+2536 BOX DRAWINGS RIGHT HEAVY AND LEFT UP LIGHT: not included in any glyphset definition
 * U+2537 BOX DRAWINGS UP LIGHT AND HORIZONTAL HEAVY: not included in any glyphset definition
 * U+2538 BOX DRAWINGS UP HEAVY AND HORIZONTAL LIGHT: not included in any glyphset definition
 * U+2539 BOX DRAWINGS RIGHT LIGHT AND LEFT UP HEAVY: not included in any glyphset definition
 * U+253A BOX DRAWINGS LEFT LIGHT AND RIGHT UP HEAVY: not included in any glyphset definition
 * U+253B BOX DRAWINGS HEAVY UP AND HORIZONTAL: not included in any glyphset definition
 * U+253C BOX DRAWINGS LIGHT VERTICAL AND HORIZONTAL: not included in any glyphset definition
 * U+253D BOX DRAWINGS LEFT HEAVY AND RIGHT VERTICAL LIGHT: not included in any glyphset definition
 * U+253E BOX DRAWINGS RIGHT HEAVY AND LEFT VERTICAL LIGHT: not included in any glyphset definition
 * U+253F BOX DRAWINGS VERTICAL LIGHT AND HORIZONTAL HEAVY: not included in any glyphset definition
 * U+2540 BOX DRAWINGS UP HEAVY AND DOWN HORIZONTAL LIGHT: not included in any glyphset definition
 * U+2541 BOX DRAWINGS DOWN HEAVY AND UP HORIZONTAL LIGHT: not included in any glyphset definition
 * U+2542 BOX DRAWINGS VERTICAL HEAVY AND HORIZONTAL LIGHT: not included in any glyphset definition
 * U+2543 BOX DRAWINGS LEFT UP HEAVY AND RIGHT DOWN LIGHT: not included in any glyphset definition
 * U+2544 BOX DRAWINGS RIGHT UP HEAVY AND LEFT DOWN LIGHT: not included in any glyphset definition
 * U+2545 BOX DRAWINGS LEFT DOWN HEAVY AND RIGHT UP LIGHT: not included in any glyphset definition
 * U+2546 BOX DRAWINGS RIGHT DOWN HEAVY AND LEFT UP LIGHT: not included in any glyphset definition
 * U+2547 BOX DRAWINGS DOWN LIGHT AND UP HORIZONTAL HEAVY: not included in any glyphset definition
 * U+2548 BOX DRAWINGS UP LIGHT AND DOWN HORIZONTAL HEAVY: not included in any glyphset definition
 * U+2549 BOX DRAWINGS RIGHT LIGHT AND LEFT VERTICAL HEAVY: not included in any glyphset definition
 * U+254A BOX DRAWINGS LEFT LIGHT AND RIGHT VERTICAL HEAVY: not included in any glyphset definition
 * U+254B BOX DRAWINGS HEAVY VERTICAL AND HORIZONTAL: not included in any glyphset definition
 * U+2550 BOX DRAWINGS DOUBLE HORIZONTAL: not included in any glyphset definition
 * U+2551 BOX DRAWINGS DOUBLE VERTICAL: not included in any glyphset definition
 * U+2552 BOX DRAWINGS DOWN SINGLE AND RIGHT DOUBLE: not included in any glyphset definition
 * U+2553 BOX DRAWINGS DOWN DOUBLE AND RIGHT SINGLE: not included in any glyphset definition
 * U+2554 BOX DRAWINGS DOUBLE DOWN AND RIGHT: not included in any glyphset definition
 * U+2555 BOX DRAWINGS DOWN SINGLE AND LEFT DOUBLE: not included in any glyphset definition
 * U+2556 BOX DRAWINGS DOWN DOUBLE AND LEFT SINGLE: not included in any glyphset definition
 * U+2557 BOX DRAWINGS DOUBLE DOWN AND LEFT: not included in any glyphset definition
 * U+2558 BOX DRAWINGS UP SINGLE AND RIGHT DOUBLE: not included in any glyphset definition
 * U+2559 BOX DRAWINGS UP DOUBLE AND RIGHT SINGLE: not included in any glyphset definition
 * U+255A BOX DRAWINGS DOUBLE UP AND RIGHT: not included in any glyphset definition
 * U+255B BOX DRAWINGS UP SINGLE AND LEFT DOUBLE: not included in any glyphset definition
 * U+255C BOX DRAWINGS UP DOUBLE AND LEFT SINGLE: not included in any glyphset definition
 * U+255D BOX DRAWINGS DOUBLE UP AND LEFT: not included in any glyphset definition
 * U+255E BOX DRAWINGS VERTICAL SINGLE AND RIGHT DOUBLE: not included in any glyphset definition
 * U+255F BOX DRAWINGS VERTICAL DOUBLE AND RIGHT SINGLE: not included in any glyphset definition
 * U+2560 BOX DRAWINGS DOUBLE VERTICAL AND RIGHT: not included in any glyphset definition
 * U+2561 BOX DRAWINGS VERTICAL SINGLE AND LEFT DOUBLE: not included in any glyphset definition
 * U+2562 BOX DRAWINGS VERTICAL DOUBLE AND LEFT SINGLE: not included in any glyphset definition
 * U+2563 BOX DRAWINGS DOUBLE VERTICAL AND LEFT: not included in any glyphset definition
 * U+2564 BOX DRAWINGS DOWN SINGLE AND HORIZONTAL DOUBLE: not included in any glyphset definition
 * U+2565 BOX DRAWINGS DOWN DOUBLE AND HORIZONTAL SINGLE: not included in any glyphset definition
 * U+2566 BOX DRAWINGS DOUBLE DOWN AND HORIZONTAL: not included in any glyphset definition
 * U+2567 BOX DRAWINGS UP SINGLE AND HORIZONTAL DOUBLE: not included in any glyphset definition
 * U+2568 BOX DRAWINGS UP DOUBLE AND HORIZONTAL SINGLE: not included in any glyphset definition
 * U+2569 BOX DRAWINGS DOUBLE UP AND HORIZONTAL: not included in any glyphset definition
 * U+256A BOX DRAWINGS VERTICAL SINGLE AND HORIZONTAL DOUBLE: not included in any glyphset definition
 * U+256B BOX DRAWINGS VERTICAL DOUBLE AND HORIZONTAL SINGLE: not included in any glyphset definition
 * U+256C BOX DRAWINGS DOUBLE VERTICAL AND HORIZONTAL: not included in any glyphset definition
 * U+2574 BOX DRAWINGS LIGHT LEFT: not included in any glyphset definition
 * U+2575 BOX DRAWINGS LIGHT UP: not included in any glyphset definition
 * U+2576 BOX DRAWINGS LIGHT RIGHT: not included in any glyphset definition
 * U+2577 BOX DRAWINGS LIGHT DOWN: not included in any glyphset definition
 * U+2578 BOX DRAWINGS HEAVY LEFT: not included in any glyphset definition
 * U+2579 BOX DRAWINGS HEAVY UP: not included in any glyphset definition
 * U+257A BOX DRAWINGS HEAVY RIGHT: not included in any glyphset definition
 * U+257B BOX DRAWINGS HEAVY DOWN: not included in any glyphset definition
 * U+257C BOX DRAWINGS LIGHT LEFT AND HEAVY RIGHT: not included in any glyphset definition
 * U+257D BOX DRAWINGS LIGHT UP AND HEAVY DOWN: not included in any glyphset definition
 * U+257E BOX DRAWINGS HEAVY LEFT AND LIGHT RIGHT: not included in any glyphset definition
 * U+257F BOX DRAWINGS HEAVY UP AND LIGHT DOWN: not included in any glyphset definition
 * U+2580 UPPER HALF BLOCK: not included in any glyphset definition
 * U+2581 LOWER ONE EIGHTH BLOCK: not included in any glyphset definition
 * U+2582 LOWER ONE QUARTER BLOCK: not included in any glyphset definition
 * U+2583 LOWER THREE EIGHTHS BLOCK: not included in any glyphset definition
 * U+2584 LOWER HALF BLOCK: not included in any glyphset definition
 * U+2585 LOWER FIVE EIGHTHS BLOCK: not included in any glyphset definition
 * U+2586 LOWER THREE QUARTERS BLOCK: not included in any glyphset definition
 * U+2587 LOWER SEVEN EIGHTHS BLOCK: not included in any glyphset definition
 * U+2588 FULL BLOCK: not included in any glyphset definition
 * U+2589 LEFT SEVEN EIGHTHS BLOCK: not included in any glyphset definition
 * U+258A LEFT THREE QUARTERS BLOCK: not included in any glyphset definition
 * U+258B LEFT FIVE EIGHTHS BLOCK: not included in any glyphset definition
 * U+258C LEFT HALF BLOCK: not included in any glyphset definition
 * U+258D LEFT THREE EIGHTHS BLOCK: not included in any glyphset definition
 * U+258E LEFT ONE QUARTER BLOCK: not included in any glyphset definition
 * U+258F LEFT ONE EIGHTH BLOCK: not included in any glyphset definition
 * U+2590 RIGHT HALF BLOCK: not included in any glyphset definition
 * U+2594 UPPER ONE EIGHTH BLOCK: not included in any glyphset definition
 * U+2595 RIGHT ONE EIGHTH BLOCK: not included in any glyphset definition
 * U+2596 QUADRANT LOWER LEFT: not included in any glyphset definition
 * U+2597 QUADRANT LOWER RIGHT: not included in any glyphset definition
 * U+2598 QUADRANT UPPER LEFT: not included in any glyphset definition
 * U+2599 QUADRANT UPPER LEFT AND LOWER LEFT AND LOWER RIGHT: not included in any glyphset definition
 * U+259A QUADRANT UPPER LEFT AND LOWER RIGHT: not included in any glyphset definition
 * U+259B QUADRANT UPPER LEFT AND UPPER RIGHT AND LOWER LEFT: not included in any glyphset definition
 * U+259C QUADRANT UPPER LEFT AND UPPER RIGHT AND LOWER RIGHT: not included in any glyphset definition
 * U+259D QUADRANT UPPER RIGHT: not included in any glyphset definition
 * U+259E QUADRANT UPPER RIGHT AND LOWER LEFT: not included in any glyphset definition
 * U+259F QUADRANT UPPER RIGHT AND LOWER LEFT AND LOWER RIGHT: not included in any glyphset definition
 * U+25A0 BLACK SQUARE: try adding symbols
 * U+25A1 WHITE SQUARE: try adding symbols
 * U+25A2 WHITE SQUARE WITH ROUNDED CORNERS: try adding symbols
 * U+25A3 WHITE SQUARE CONTAINING BLACK SMALL SQUARE: try adding symbols
 * U+25A4 SQUARE WITH HORIZONTAL FILL: try adding symbols
 * U+25A5 SQUARE WITH VERTICAL FILL: try adding symbols
 * U+25A6 SQUARE WITH ORTHOGONAL CROSSHATCH FILL: try adding symbols
 * U+25A7 SQUARE WITH UPPER LEFT TO LOWER RIGHT FILL: try adding symbols
 * U+25A8 SQUARE WITH UPPER RIGHT TO LOWER LEFT FILL: try adding symbols
 * U+25A9 SQUARE WITH DIAGONAL CROSSHATCH FILL: try adding symbols
 * U+25AA BLACK SMALL SQUARE: try adding symbols
 * U+25AB WHITE SMALL SQUARE: try adding symbols
 * U+25AC BLACK RECTANGLE: try adding symbols
 * U+25AD WHITE RECTANGLE: try adding symbols
 * U+25AE BLACK VERTICAL RECTANGLE: try adding symbols
 * U+25AF WHITE VERTICAL RECTANGLE: try adding one of: math, symbols
 * U+25B0 BLACK PARALLELOGRAM: try adding symbols
 * U+25B1 WHITE PARALLELOGRAM: try adding symbols
 * U+25B2 BLACK UP-POINTING TRIANGLE: try adding symbols
 * U+25B3 WHITE UP-POINTING TRIANGLE: try adding one of: math, symbols
 * U+25B4 BLACK UP-POINTING SMALL TRIANGLE: try adding symbols
 * U+25B5 WHITE UP-POINTING SMALL TRIANGLE: try adding symbols
 * U+25B6 BLACK RIGHT-POINTING TRIANGLE: try adding symbols
 * U+25B7 WHITE RIGHT-POINTING TRIANGLE: try adding one of: math, symbols
 * U+25B8 BLACK RIGHT-POINTING SMALL TRIANGLE: try adding symbols
 * U+25B9 WHITE RIGHT-POINTING SMALL TRIANGLE: try adding symbols
 * U+25BA BLACK RIGHT-POINTING POINTER: try adding symbols
 * U+25BB WHITE RIGHT-POINTING POINTER: try adding symbols
 * U+25BC BLACK DOWN-POINTING TRIANGLE: try adding symbols
 * U+25BD WHITE DOWN-POINTING TRIANGLE: try adding one of: math, symbols
 * U+25BE BLACK DOWN-POINTING SMALL TRIANGLE: try adding symbols
 * U+25BF WHITE DOWN-POINTING SMALL TRIANGLE: try adding symbols
 * U+25C0 BLACK LEFT-POINTING TRIANGLE: try adding symbols
 * U+25C1 WHITE LEFT-POINTING TRIANGLE: try adding one of: math, symbols
 * U+25C2 BLACK LEFT-POINTING SMALL TRIANGLE: try adding symbols
 * U+25C3 WHITE LEFT-POINTING SMALL TRIANGLE: try adding symbols
 * U+25C4 BLACK LEFT-POINTING POINTER: try adding symbols
 * U+25C5 WHITE LEFT-POINTING POINTER: try adding symbols
 * U+25C6 BLACK DIAMOND: try adding symbols
 * U+25C7 WHITE DIAMOND: try adding symbols
 * U+25C8 WHITE DIAMOND CONTAINING BLACK SMALL DIAMOND: try adding symbols
 * U+25C9 FISHEYE: try adding symbols
 * U+25CA LOZENGE: try adding one of: math, symbols
 * U+25CB WHITE CIRCLE: try adding symbols
 * U+25CC DOTTED CIRCLE: try adding one of: pahawh-hmong, takri, gurmukhi, marchen, phags-pa, thai, tai-tham, sinhala, meetei-mayek, bassa-vah, tirhuta, coptic, canadian-aboriginal, kharoshthi, khojki, new-tai-lue, saurashtra, sharada, tagalog, batak, modi, devanagari, hebrew, nko, oriya, tagbanwa, syloti-nagri, kannada, math, ahom, balinese, zanabazar-square, bengali, gujarati, lepcha, kayah-li, wancho, newa, mahajani, telugu, armenian, dogra, old-permic, music, miao, soyombo, limbu, khmer, khudawadi, sundanese, psalter-pahlavi, bhaiksuki, duployan, javanese, manichaean, cham, sogdian, rejang, syriac, caucasian-albanian, malayalam, hanunoo, adlam, osage, chakma, brahmi, warang-citi, tai-le, symbols, tamil, kaithi, tai-viet, tifinagh, mongolian, mandaic, lao, masaram-gondi, buginese, grantha, yi, siddham, buhid, mende-kikakui, thaana, tibetan, myanmar, elbasan, gunjala-gondi, hanifi-rohingya
 * U+25CD CIRCLE WITH VERTICAL FILL: try adding symbols
 * U+25CE BULLSEYE: try adding symbols
 * U+25CF BLACK CIRCLE: try adding symbols
 * U+25D0 CIRCLE WITH LEFT HALF BLACK: try adding symbols
 * U+25D1 CIRCLE WITH RIGHT HALF BLACK: try adding symbols
 * U+25D2 CIRCLE WITH LOWER HALF BLACK: try adding symbols
 * U+25D3 CIRCLE WITH UPPER HALF BLACK: try adding symbols
 * U+25D4 CIRCLE WITH UPPER RIGHT QUADRANT BLACK: try adding symbols
 * U+25D5 CIRCLE WITH ALL BUT UPPER LEFT QUADRANT BLACK: try adding symbols
 * U+25D6 LEFT HALF BLACK CIRCLE: try adding symbols
 * U+25D7 RIGHT HALF BLACK CIRCLE: try adding symbols
 * U+25DC UPPER LEFT QUADRANT CIRCULAR ARC: try adding symbols
 * U+25DD UPPER RIGHT QUADRANT CIRCULAR ARC: try adding symbols
 * U+25DE LOWER RIGHT QUADRANT CIRCULAR ARC: try adding symbols
 * U+25DF LOWER LEFT QUADRANT CIRCULAR ARC: try adding symbols
 * U+25E0 UPPER HALF CIRCLE: try adding symbols
 * U+25E1 LOWER HALF CIRCLE: try adding symbols
 * U+25E2 BLACK LOWER RIGHT TRIANGLE: try adding symbols
 * U+25E3 BLACK LOWER LEFT TRIANGLE: try adding symbols
 * U+25E4 BLACK UPPER LEFT TRIANGLE: try adding symbols
 * U+25E5 BLACK UPPER RIGHT TRIANGLE: try adding symbols
 * U+25E6 WHITE BULLET: try adding symbols
 * U+25E7 SQUARE WITH LEFT HALF BLACK: try adding symbols
 * U+25E8 SQUARE WITH RIGHT HALF BLACK: try adding symbols
 * U+25E9 SQUARE WITH UPPER LEFT DIAGONAL HALF BLACK: try adding symbols
 * U+25EA SQUARE WITH LOWER RIGHT DIAGONAL HALF BLACK: try adding symbols
 * U+25EB WHITE SQUARE WITH VERTICAL BISECTING LINE: try adding symbols
 * U+25EC WHITE UP-POINTING TRIANGLE WITH DOT: try adding symbols
 * U+25ED UP-POINTING TRIANGLE WITH LEFT HALF BLACK: try adding symbols
 * U+25EE UP-POINTING TRIANGLE WITH RIGHT HALF BLACK: try adding symbols
 * U+25EF LARGE CIRCLE: try adding symbols
 * U+25F0 WHITE SQUARE WITH UPPER LEFT QUADRANT: try adding symbols
 * U+25F1 WHITE SQUARE WITH LOWER LEFT QUADRANT: try adding symbols
 * U+25F2 WHITE SQUARE WITH LOWER RIGHT QUADRANT: try adding symbols
 * U+25F3 WHITE SQUARE WITH UPPER RIGHT QUADRANT: try adding symbols
 * U+25F4 WHITE CIRCLE WITH UPPER LEFT QUADRANT: try adding symbols
 * U+25F5 WHITE CIRCLE WITH LOWER LEFT QUADRANT: try adding symbols
 * U+25F6 WHITE CIRCLE WITH LOWER RIGHT QUADRANT: try adding symbols
 * U+25F7 WHITE CIRCLE WITH UPPER RIGHT QUADRANT: try adding symbols
 * U+25F8 UPPER LEFT TRIANGLE: try adding symbols
 * U+25F9 UPPER RIGHT TRIANGLE: try adding symbols
 * U+25FA LOWER LEFT TRIANGLE: try adding symbols
 * U+25FF LOWER RIGHT TRIANGLE: try adding symbols
 * U+2600 BLACK SUN WITH RAYS: try adding symbols
 * U+2601 CLOUD: try adding symbols
 * U+2602 UMBRELLA: try adding symbols
 * U+2603 SNOWMAN: try adding symbols
 * U+2604 COMET: try adding symbols
 * U+2605 BLACK STAR: try adding symbols
 * U+2606 WHITE STAR: try adding symbols
 * U+2607 LIGHTNING: try adding symbols
 * U+2608 THUNDERSTORM: try adding symbols
 * U+2609 SUN: try adding symbols
 * U+260E BLACK TELEPHONE: try adding symbols
 * U+260F WHITE TELEPHONE: try adding symbols
 * U+2610 BALLOT BOX: try adding symbols
 * U+2611 BALLOT BOX WITH CHECK: try adding symbols
 * U+2612 BALLOT BOX WITH X: try adding symbols
 * U+2614 UMBRELLA WITH RAIN DROPS: try adding symbols
 * U+2615 HOT BEVERAGE: try adding symbols
 * U+2616 WHITE SHOGI PIECE: try adding symbols
 * U+2617 BLACK SHOGI PIECE: try adding symbols
 * U+2618 SHAMROCK: try adding symbols
 * U+2619 REVERSED ROTATED FLORAL HEART BULLET: try adding symbols
 * U+261A BLACK LEFT POINTING INDEX: try adding symbols
 * U+261B BLACK RIGHT POINTING INDEX: try adding symbols
 * U+261C WHITE LEFT POINTING INDEX: try adding symbols
 * U+261D WHITE UP POINTING INDEX: try adding symbols
 * U+261E WHITE RIGHT POINTING INDEX: try adding symbols
 * U+261F WHITE DOWN POINTING INDEX: try adding symbols
 * U+2620 SKULL AND CROSSBONES: try adding symbols
 * U+2622 RADIOACTIVE SIGN: try adding symbols
 * U+2623 BIOHAZARD SIGN: try adding symbols
 * U+262F YIN YANG: try adding symbols
 * U+2630 TRIGRAM FOR HEAVEN: try adding symbols
 * U+2631 TRIGRAM FOR LAKE: try adding symbols
 * U+2632 TRIGRAM FOR FIRE: try adding symbols
 * U+2633 TRIGRAM FOR THUNDER: try adding symbols
 * U+2634 TRIGRAM FOR WIND: try adding symbols
 * U+2635 TRIGRAM FOR WATER: try adding symbols
 * U+2636 TRIGRAM FOR MOUNTAIN: try adding symbols
 * U+2637 TRIGRAM FOR EARTH: try adding symbols
 * U+2638 WHEEL OF DHARMA: try adding symbols
 * U+2639 WHITE FROWNING FACE: try adding symbols
 * U+263A WHITE SMILING FACE: try adding symbols
 * U+263B BLACK SMILING FACE: try adding symbols
 * U+263C WHITE SUN WITH RAYS: try adding symbols
 * U+263D FIRST QUARTER MOON: try adding symbols
 * U+263E LAST QUARTER MOON: try adding symbols
 * U+263F MERCURY: try adding symbols
 * U+2640 FEMALE SIGN: try adding symbols
 * U+2641 EARTH: try adding symbols
 * U+2642 MALE SIGN: try adding symbols
 * U+2660 BLACK SPADE SUIT: try adding symbols
 * U+2661 WHITE HEART SUIT: try adding symbols
 * U+2662 WHITE DIAMOND SUIT: try adding symbols
 * U+2663 BLACK CLUB SUIT: try adding symbols
 * U+2664 WHITE SPADE SUIT: try adding symbols
 * U+2665 BLACK HEART SUIT: try adding symbols
 * U+2666 BLACK DIAMOND SUIT: try adding symbols
 * U+2667 WHITE CLUB SUIT: try adding symbols
 * U+2668 HOT SPRINGS: try adding symbols
 * U+2669 QUARTER NOTE: try adding one of: symbols, music
 * U+266A EIGHTH NOTE: try adding one of: symbols, music
 * U+266B BEAMED EIGHTH NOTES: try adding one of: symbols, music
 * U+266C BEAMED SIXTEENTH NOTES: try adding one of: symbols, music
 * U+266D MUSIC FLAT SIGN: try adding one of: math, symbols, music
 * U+266E MUSIC NATURAL SIGN: try adding one of: math, symbols, music
 * U+266F MUSIC SHARP SIGN: try adding one of: math, symbols, music
 * U+2672 UNIVERSAL RECYCLING SYMBOL: try adding symbols
 * U+267B BLACK UNIVERSAL RECYCLING SYMBOL: try adding symbols
 * U+267C RECYCLED PAPER SYMBOL: try adding symbols
 * U+267D PARTIALLY-RECYCLED PAPER SYMBOL: try adding symbols
 * U+267F WHEELCHAIR SYMBOL: try adding symbols
 * U+2680 DIE FACE-1: try adding symbols
 * U+2681 DIE FACE-2: try adding symbols
 * U+2682 DIE FACE-3: try adding symbols
 * U+2683 DIE FACE-4: try adding symbols
 * U+2684 DIE FACE-5: try adding symbols
 * U+2685 DIE FACE-6: try adding symbols
 * U+2686 WHITE CIRCLE WITH DOT RIGHT: try adding symbols
 * U+2687 WHITE CIRCLE WITH TWO DOTS: try adding symbols
 * U+2688 BLACK CIRCLE WITH WHITE DOT RIGHT: try adding symbols
 * U+2689 BLACK CIRCLE WITH TWO WHITE DOTS: try adding symbols
 * U+2695 STAFF OF AESCULAPIUS: try adding symbols
 * U+26BE BASEBALL: try adding symbols
 * U+26C4 SNOWMAN WITHOUT SNOW: try adding symbols
 * U+26C7 BLACK SNOWMAN: try adding symbols
 * U+26C9 TURNED WHITE SHOGI PIECE: try adding symbols
 * U+26CA TURNED BLACK SHOGI PIECE: try adding symbols
 * U+270A RAISED FIST: not included in any glyphset definition
 * U+270E LOWER RIGHT PENCIL: try adding symbols
 * U+270F PENCIL: try adding symbols
 * U+2710 UPPER RIGHT PENCIL: try adding symbols
 * U+2715 MULTIPLICATION X: try adding symbols
 * U+2716 HEAVY MULTIPLICATION X: try adding symbols
 * U+272A CIRCLED WHITE STAR: try adding symbols
 * U+272B OPEN CENTRE BLACK STAR: try adding symbols
 * U+272D OUTLINED BLACK STAR: try adding symbols
 * U+272F PINWHEEL STAR: try adding symbols
 * U+273F BLACK FLORETTE: try adding symbols
 * U+2B00 NORTH EAST WHITE ARROW: try adding symbols
 * U+2B01 NORTH WEST WHITE ARROW: try adding symbols
 * U+2B02 SOUTH EAST WHITE ARROW: try adding symbols
 * U+2B03 SOUTH WEST WHITE ARROW: try adding symbols
 * U+2B04 LEFT RIGHT WHITE ARROW: try adding symbols
 * U+2B05 LEFTWARDS BLACK ARROW: try adding symbols
 * U+2B06 UPWARDS BLACK ARROW: try adding symbols
 * U+2B07 DOWNWARDS BLACK ARROW: try adding symbols
 * U+2B08 NORTH EAST BLACK ARROW: try adding symbols
 * U+2B09 NORTH WEST BLACK ARROW: try adding symbols
 * U+2B0A SOUTH EAST BLACK ARROW: try adding symbols
 * U+2B0B SOUTH WEST BLACK ARROW: try adding symbols
 * U+2B0C LEFT RIGHT BLACK ARROW: try adding symbols
 * U+2B0D UP DOWN BLACK ARROW: try adding symbols
 * U+2B1F BLACK PENTAGON: try adding symbols
 * U+2B20 WHITE PENTAGON: try adding symbols
 * U+2B21 WHITE HEXAGON: try adding symbols
 * U+2B22 BLACK HEXAGON: try adding symbols
 * U+2B23 HORIZONTAL BLACK HEXAGON: try adding symbols
 * U+2B24 BLACK LARGE CIRCLE: try adding symbols
 * U+2B25 BLACK MEDIUM DIAMOND: try adding symbols
 * U+2B26 WHITE MEDIUM DIAMOND: try adding symbols
 * U+2B27 BLACK MEDIUM LOZENGE: try adding symbols
 * U+2B28 WHITE MEDIUM LOZENGE: try adding symbols
 * U+3004 JAPANESE INDUSTRIAL STANDARD SYMBOL: not included in any glyphset definition
 * U+301D REVERSED DOUBLE PRIME QUOTATION MARK: try adding one of: chinese-simplified, chinese-hongkong, chinese-traditional
 * U+301E DOUBLE PRIME QUOTATION MARK: try adding one of: chinese-simplified, chinese-hongkong, chinese-traditional
 * U+301F LOW DOUBLE PRIME QUOTATION MARK: not included in any glyphset definition
 * U+3036 CIRCLED POSTAL MARK: not included in any glyphset definition
 * U+303B VERTICAL IDEOGRAPHIC ITERATION MARK: not included in any glyphset definition
 * U+322A PARENTHESIZED IDEOGRAPH MOON: not included in any glyphset definition
 * U+322B PARENTHESIZED IDEOGRAPH FIRE: not included in any glyphset definition
 * U+322C PARENTHESIZED IDEOGRAPH WATER: not included in any glyphset definition
 * U+322D PARENTHESIZED IDEOGRAPH WOOD: not included in any glyphset definition
 * U+322E PARENTHESIZED IDEOGRAPH METAL: not included in any glyphset definition
 * U+322F PARENTHESIZED IDEOGRAPH EARTH: not included in any glyphset definition
 * U+3230 PARENTHESIZED IDEOGRAPH SUN: not included in any glyphset definition
 * U+7CD0 CJK UNIFIED IDEOGRAPH-7CD0: not included in any glyphset definition
 * U+9EB4 CJK UNIFIED IDEOGRAPH-9EB4: try adding one of: chinese-hongkong, chinese-traditional
 * U+FE19 PRESENTATION FORM FOR VERTICAL HORIZONTAL ELLIPSIS: not included in any glyphset definition
 * U+FE33 PRESENTATION FORM FOR VERTICAL LOW LINE: not included in any glyphset definition
 * U+FE35 PRESENTATION FORM FOR VERTICAL LEFT PARENTHESIS: try adding chinese-simplified
 * U+FE36 PRESENTATION FORM FOR VERTICAL RIGHT PARENTHESIS: try adding chinese-simplified
 * U+FE37 PRESENTATION FORM FOR VERTICAL LEFT CURLY BRACKET: not included in any glyphset definition
 * U+FE38 PRESENTATION FORM FOR VERTICAL RIGHT CURLY BRACKET: not included in any glyphset definition
 * U+FE39 PRESENTATION FORM FOR VERTICAL LEFT TORTOISE SHELL BRACKET: try adding chinese-simplified
 * U+FE3A PRESENTATION FORM FOR VERTICAL RIGHT TORTOISE SHELL BRACKET: not included in any glyphset definition
 * U+FE3B PRESENTATION FORM FOR VERTICAL LEFT BLACK LENTICULAR BRACKET: not included in any glyphset definition
 * U+FE3C PRESENTATION FORM FOR VERTICAL RIGHT BLACK LENTICULAR BRACKET: not included in any glyphset definition
 * U+FE3D PRESENTATION FORM FOR VERTICAL LEFT DOUBLE ANGLE BRACKET: try adding one of: chinese-simplified, mongolian
 * U+FE3E PRESENTATION FORM FOR VERTICAL RIGHT DOUBLE ANGLE BRACKET: try adding one of: chinese-simplified, mongolian
 * U+FE3F PRESENTATION FORM FOR VERTICAL LEFT ANGLE BRACKET: try adding chinese-simplified
 * U+FE40 PRESENTATION FORM FOR VERTICAL RIGHT ANGLE BRACKET: try adding chinese-simplified
 * U+FE41 PRESENTATION FORM FOR VERTICAL LEFT CORNER BRACKET: try adding one of: chinese-simplified, mongolian
 * U+FE42 PRESENTATION FORM FOR VERTICAL RIGHT CORNER BRACKET: try adding mongolian
 * U+FE43 PRESENTATION FORM FOR VERTICAL LEFT WHITE CORNER BRACKET: try adding one of: chinese-simplified, mongolian
 * U+FE44 PRESENTATION FORM FOR VERTICAL RIGHT WHITE CORNER BRACKET: try adding mongolian
 * U+FE45 SESAME DOT: not included in any glyphset definition
 * U+FE46 WHITE SESAME DOT: not included in any glyphset definition
 * U+FE47 PRESENTATION FORM FOR VERTICAL LEFT SQUARE BRACKET: not included in any glyphset definition
 * U+FE48 PRESENTATION FORM FOR VERTICAL RIGHT SQUARE BRACKET: not included in any glyphset definition
 * U+FF5E FULLWIDTH TILDE: try adding one of: chinese-simplified, yi
 * U+FF61 HALFWIDTH IDEOGRAPHIC FULL STOP: try adding yi
 * U+FF62 HALFWIDTH LEFT CORNER BRACKET: try adding yi
 * U+FF63 HALFWIDTH RIGHT CORNER BRACKET: try adding yi
 * U+FF64 HALFWIDTH IDEOGRAPHIC COMMA: try adding yi
 * U+FF65 HALFWIDTH KATAKANA MIDDLE DOT: try adding yi
 * U+FFE2 FULLWIDTH NOT SIGN: not included in any glyphset definition

Or you can add the above codepoints to one of the subsets supported by the font: `braille`, `cyrillic-ext`, `greek-ext`, `japanese`, `latin`, `latin-ext` [code: unreachable-subsetting]
</div></details><details><summary>⚠ <b>WARN:</b> Ensure files are not too large. (<a href="https://font-bakery.readthedocs.io/en/stable/fontbakery/profiles/googlefonts.html#com.google.fonts/check/file_size">com.google.fonts/check/file_size</a>)</summary><div>


* ⚠ **WARN** Font file is 3.5Mb; ideally it should be less than 1.0Mb [code: large-font]
</div></details><details><summary>⚠ <b>WARN:</b> Glyphs are similiar to Google Fonts version? (<a href="https://font-bakery.readthedocs.io/en/stable/fontbakery/profiles/googlefonts.html#com.google.fonts/check/production_glyphs_similarity">com.google.fonts/check/production_glyphs_similarity</a>)</summary><div>


* ⚠ **WARN** Following glyphs differ greatly from Google Fonts version:
	* .notdef
	* A
	* AE
	* AEacute
	* Aacute
	* Abreve
	* Acircumflex
	* Adieresis
	* Agrave
	* Amacron
	* Aogonek
	* Aring
	* Atilde
	* B
	* C
	* Cacute
	* Ccaron
	* Ccedilla
	* Ccircumflex
	* Cdotaccent
	* D
	* Dcaron
	* Dcroat
	* E
	* Eacute
	* Ebreve
	* Ecaron
	* Ecircumflex
	* Edieresis
	* Edotaccent
	* Egrave
	* Emacron
	* Eng
	* Eogonek
	* Eth
	* F
	* G
	* Gbreve
	* Gcaron
	* Gcircumflex
	* Gdotaccent
	* H
	* Hbar
	* Hcircumflex
	* I
	* IJ
	* Iacute
	* Ibreve
	* Icircumflex
	* Idieresis
	* Idotaccent
	* Igrave
	* Imacron
	* Iogonek
	* Itilde
	* J
	* Jcircumflex
	* K
	* L
	* Lacute
	* Lcaron
	* Ldot
	* Lslash
	* M
	* N
	* Nacute
	* Ncaron
	* Ntilde
	* O
	* OE
	* Oacute
	* Obreve
	* Ocircumflex
	* Odieresis
	* Ograve
	* Ohorn
	* Ohungarumlaut
	* Omacron
	* Oslash
	* Oslashacute
	* Otilde
	* P
	* Q
	* R
	* Racute
	* Rcaron
	* S
	* Sacute
	* Scaron
	* Scedilla
	* Scircumflex
	* T
	* Tbar
	* Tcaron
	* Thorn
	* U
	* Uacute
	* Ubreve
	* Ucircumflex
	* Udieresis
	* Ugrave
	* Uhorn
	* Uhungarumlaut
	* Umacron
	* Uogonek
	* Uring
	* Utilde
	* V
	* W
	* Wcircumflex
	* X
	* Y
	* Yacute
	* Ycircumflex
	* Ydieresis
	* Z
	* Zacute
	* Zcaron
	* Zdotaccent
	* a
	* aacute
	* abreve
	* acircumflex
	* acute
	* acutecomb
	* adieresis
	* ae
	* aeacute
	* agrave
	* amacron
	* ampersand
	* aogonek
	* aring
	* asciicircum
	* asciitilde
	* asterisk
	* at
	* atilde
	* b
	* backslash
	* bar
	* block
	* braceleft
	* braceright
	* bracketleft
	* bracketright
	* brokenbar
	* c
	* cacute
	* ccaron
	* ccedilla
	* ccircumflex
	* cdotaccent
	* cedilla
	* cent
	* circle
	* club
	* colon
	* comma
	* copyright
	* currency
	* d
	* dcaron
	* dcroat
	* degree
	* diamond
	* dieresis
	* divide
	* dnblock
	* dollar
	* dotlessi
	* e
	* eacute
	* ebreve
	* ecaron
	* ecircumflex
	* edieresis
	* edotaccent
	* egrave
	* eight
	* ellipsis
	* emacron
	* eng
	* eogonek
	* equal
	* eth
	* exclam
	* exclamdbl
	* exclamdown
	* f
	* female
	* filledbox
	* filledrect
	* five
	* four
	* g
	* gbreve
	* gcaron
	* gcircumflex
	* gdotaccent
	* germandbls
	* grave
	* gravecomb
	* greater
	* guillemotleft
	* guillemotright
	* h
	* hbar
	* hcircumflex
	* heart
	* hyphen
	* i
	* iacute
	* ibreve
	* icircumflex
	* idieresis
	* igrave
	* ij
	* imacron
	* invsmileface
	* iogonek
	* itilde
	* j
	* jcircumflex
	* k
	* kgreenlandic
	* l
	* lacute
	* lcaron
	* ldot
	* less
	* lfblock
	* logicalnot
	* longs
	* lozenge
	* lslash
	* m
	* macron
	* male
	* multiply
	* musicalnote
	* musicalnotedbl
	* n
	* nacute
	* napostrophe
	* ncaron
	* nine
	* ntilde
	* numbersign
	* o
	* oacute
	* obreve
	* ocircumflex
	* odieresis
	* oe
	* ograve
	* ohorn
	* ohungarumlaut
	* omacron
	* one
	* onehalf
	* onequarter
	* openbullet
	* ordfeminine
	* ordmasculine
	* oslash
	* oslashacute
	* otilde
	* p
	* paragraph
	* parenleft
	* parenright
	* percent
	* period
	* periodcentered
	* plus
	* plusminus
	* q
	* question
	* questiondown
	* quotedbl
	* quotedblbase
	* quotedblleft
	* quotedblright
	* quotesingle
	* r
	* racute
	* rcaron
	* registered
	* rtblock
	* s
	* sacute
	* scaron
	* scedilla
	* scircumflex
	* section
	* semicolon
	* seven
	* six
	* slash
	* smileface
	* spade
	* sterling
	* sun
	* t
	* tbar
	* tcaron
	* thorn
	* three
	* threequarters
	* tildecomb
	* triagdn
	* triaglf
	* triagrt
	* triagup
	* two
	* u
	* uacute
	* ubreve
	* ucircumflex
	* udieresis
	* ugrave
	* uhorn
	* uhungarumlaut
	* umacron
	* underscore
	* uni00AD
	* uni00B2
	* uni00B3
	* uni00B5
	* uni00B9
	* uni0186
	* uni0187
	* uni0188
	* uni0189
	* uni018E
	* uni0191
	* uni0193
	* uni0197
	* uni0198
	* uni0199
	* uni019A
	* uni019C
	* uni019D
	* uni019E
	* uni019F
	* uni01A5
	* uni01A7
	* uni01A8
	* uni01A9
	* uni01B5
	* uni01B6
	* uni01BB
	* uni01C4
	* uni01C5
	* uni01C6
	* uni01C7
	* uni01C8
	* uni01C9
	* uni01CA
	* uni01CB
	* uni01CC
	* uni01CD
	* uni01CE
	* uni01CF
	* uni01D0
	* uni01D1
	* uni01D2
	* uni01D3
	* uni01D4
	* uni01D5
	* uni01D6
	* uni01D7
	* uni01D8
	* uni01D9
	* uni01DA
	* uni01DB
	* uni01DC
	* uni01DD
	* uni01DE
	* uni01DF
	* uni01E0
	* uni01E1
	* uni01E2
	* uni01E3
	* uni01E4
	* uni01E5
	* uni01E8
	* uni01E9
	* uni01EA
	* uni01EB
	* uni01EC
	* uni01ED
	* uni01F0
	* uni01F1
	* uni01F2
	* uni01F3
	* uni01F4
	* uni01F5
	* uni01F8
	* uni01F9
	* uni0200
	* uni0201
	* uni0202
	* uni0203
	* uni0204
	* uni0205
	* uni0206
	* uni0207
	* uni0208
	* uni0209
	* uni020A
	* uni020B
	* uni020C
	* uni020D
	* uni020E
	* uni020F
	* uni0210
	* uni0211
	* uni0212
	* uni0213
	* uni0214
	* uni0215
	* uni0216
	* uni0217
	* uni021A
	* uni021B
	* uni021E
	* uni021F
	* uni0226
	* uni0227
	* uni0228
	* uni0229
	* uni022A
	* uni022B
	* uni022E
	* uni022F
	* uni0230
	* uni0231
	* uni0232
	* uni0233
	* uni0237
	* uni0243
	* uni0244
	* uni0245
	* uni02CB
	* uni0302
	* uni0304
	* uni0306
	* uni0307
	* uni0308
	* uni030A
	* uni030B
	* uni030C
	* uni030F
	* uni0311
	* uni0312
	* uni0315
	* uni031B
	* uni0326
	* uni0327
	* uni0328
	* uni201F
	* uni203B
	* uni2047
	* uni2048
	* uni2049
	* uni2318
	* uni2319
	* uni231A
	* uni2326
	* uni232B
	* uni2460
	* uni2461
	* uni2462
	* uni2463
	* uni2464
	* uni2465
	* uni2466
	* uni2467
	* uni2468
	* uni2501
	* uni2503
	* uni250D
	* uni250E
	* uni250F
	* uni2511
	* uni2512
	* uni2513
	* uni2515
	* uni2516
	* uni2517
	* uni2519
	* uni251A
	* uni251B
	* uni251D
	* uni251E
	* uni251F
	* uni2520
	* uni2521
	* uni2522
	* uni2523
	* uni2525
	* uni2526
	* uni2527
	* uni2528
	* uni2529
	* uni252A
	* uni252B
	* uni252D
	* uni252E
	* uni252F
	* uni2530
	* uni2531
	* uni2532
	* uni2533
	* uni2535
	* uni2536
	* uni2537
	* uni2538
	* uni2539
	* uni253A
	* uni253B
	* uni253D
	* uni253E
	* uni253F
	* uni2540
	* uni2541
	* uni2542
	* uni2543
	* uni2544
	* uni2545
	* uni2546
	* uni2547
	* uni2548
	* uni2549
	* uni254A
	* uni254B
	* uni2574
	* uni2575
	* uni2576
	* uni2577
	* uni2578
	* uni2579
	* uni257A
	* uni257B
	* uni257C
	* uni257D
	* uni257E
	* uni257F
	* uni2581
	* uni2582
	* uni2583
	* uni2585
	* uni2586
	* uni2587
	* uni2589
	* uni258A
	* uni258B
	* uni258D
	* uni258E
	* uni258F
	* uni2594
	* uni2595
	* uni2596
	* uni2597
	* uni2598
	* uni2599
	* uni259A
	* uni259B
	* uni259C
	* uni259D
	* uni259E
	* uni259F
	* uni25A2
	* uni25A3
	* uni25A4
	* uni25A5
	* uni25A6
	* uni25A7
	* uni25A8
	* uni25A9
	* uni25AD
	* uni25AE
	* uni25AF
	* uni25B0
	* uni25B1
	* uni25B3
	* uni25B4
	* uni25B5
	* uni25B6
	* uni25B7
	* uni25B8
	* uni25B9
	* uni25BB
	* uni25BD
	* uni25BE
	* uni25BF
	* uni25C0
	* uni25C1
	* uni25C2
	* uni25C3
	* uni25C5
	* uni25C6
	* uni25C7
	* uni25C8
	* uni25C9
	* uni25CC
	* uni25CD
	* uni25CE
	* uni25D0
	* uni25D1
	* uni25D2
	* uni25D3
	* uni25D4
	* uni25D5
	* uni25D6
	* uni25D7
	* uni25DC
	* uni25DD
	* uni25DE
	* uni25DF
	* uni25E0
	* uni25E1
	* uni25E2
	* uni25E3
	* uni25E4
	* uni25E5
	* uni25E7
	* uni25E8
	* uni25E9
	* uni25EA
	* uni25EB
	* uni25EC
	* uni25ED
	* uni25EE
	* uni25EF
	* uni25F0
	* uni25F1
	* uni25F2
	* uni25F3
	* uni25F4
	* uni25F5
	* uni25F6
	* uni25F7
	* uni25F8
	* uni25F9
	* uni25FA
	* uni25FF
	* uni2600
	* uni2601
	* uni2602
	* uni2603
	* uni2604
	* uni2605
	* uni2606
	* uni2607
	* uni2608
	* uni2609
	* uni260E
	* uni260F
	* uni2610
	* uni2611
	* uni2612
	* uni2614
	* uni2615
	* uni2616
	* uni2617
	* uni2618
	* uni2619
	* uni261A
	* uni261B
	* uni261C
	* uni261D
	* uni261E
	* uni261F
	* uni2620
	* uni2622
	* uni2623
	* uni262F
	* uni2630
	* uni2631
	* uni2632
	* uni2633
	* uni2634
	* uni2635
	* uni2636
	* uni2637
	* uni2638
	* uni2639
	* uni263D
	* uni263E
	* uni263F
	* uni2641
	* uni2661
	* uni2662
	* uni2664
	* uni2667
	* uni2668
	* uni2669
	* uni266C
	* uni266D
	* uni266E
	* uni266F
	* uni2672
	* uni267B
	* uni267C
	* uni267D
	* uni267F
	* uni2680
	* uni2681
	* uni2682
	* uni2683
	* uni2684
	* uni2685
	* uni2686
	* uni2687
	* uni2688
	* uni2689
	* uni2695
	* uni26BE
	* uni26C4
	* uni26C7
	* uni26C9
	* uni26CA
	* uni270A
	* uni270E
	* uni270F
	* uni2710
	* uni2715
	* uni2716
	* uni272A
	* uni272B
	* uni272D
	* uni272F
	* uni273F
	* uni2801
	* uni2802
	* uni2803
	* uni2804
	* uni2805
	* uni2806
	* uni2807
	* uni2808
	* uni2809
	* uni280A
	* uni280B
	* uni280C
	* uni280D
	* uni280E
	* uni280F
	* uni2810
	* uni2811
	* uni2812
	* uni2813
	* uni2814
	* uni2815
	* uni2816
	* uni2817
	* uni2818
	* uni2819
	* uni281A
	* uni281B
	* uni281C
	* uni281D
	* uni281E
	* uni281F
	* uni2820
	* uni2821
	* uni2822
	* uni2823
	* uni2824
	* uni2825
	* uni2826
	* uni2827
	* uni2828
	* uni2829
	* uni282A
	* uni282B
	* uni282C
	* uni282D
	* uni282E
	* uni282F
	* uni2830
	* uni2831
	* uni2832
	* uni2833
	* uni2834
	* uni2835
	* uni2836
	* uni2837
	* uni2838
	* uni2839
	* uni283A
	* uni283B
	* uni283C
	* uni283D
	* uni283E
	* uni283F
	* uni2840
	* uni2841
	* uni2842
	* uni2843
	* uni2844
	* uni2845
	* uni2846
	* uni2847
	* uni2848
	* uni2849
	* uni284A
	* uni284B
	* uni284C
	* uni284D
	* uni284E
	* uni284F
	* uni2850
	* uni2851
	* uni2852
	* uni2853
	* uni2854
	* uni2855
	* uni2856
	* uni2857
	* uni2858
	* uni2859
	* uni285A
	* uni285B
	* uni285C
	* uni285D
	* uni285E
	* uni285F
	* uni2860
	* uni2861
	* uni2862
	* uni2863
	* uni2864
	* uni2865
	* uni2866
	* uni2867
	* uni2868
	* uni2869
	* uni286A
	* uni286B
	* uni286C
	* uni286D
	* uni286E
	* uni286F
	* uni2870
	* uni2871
	* uni2872
	* uni2873
	* uni2874
	* uni2875
	* uni2876
	* uni2877
	* uni2878
	* uni2879
	* uni287A
	* uni287B
	* uni287C
	* uni287D
	* uni287E
	* uni287F
	* uni2880
	* uni2881
	* uni2882
	* uni2883
	* uni2884
	* uni2885
	* uni2886
	* uni2887
	* uni2888
	* uni2889
	* uni288A
	* uni288B
	* uni288C
	* uni288D
	* uni288E
	* uni288F
	* uni2890
	* uni2891
	* uni2892
	* uni2893
	* uni2894
	* uni2895
	* uni2896
	* uni2897
	* uni2898
	* uni2899
	* uni289A
	* uni289B
	* uni289C
	* uni289D
	* uni289E
	* uni289F
	* uni28A0
	* uni28A1
	* uni28A2
	* uni28A3
	* uni28A4
	* uni28A5
	* uni28A6
	* uni28A7
	* uni28A8
	* uni28A9
	* uni28AA
	* uni28AB
	* uni28AC
	* uni28AD
	* uni28AE
	* uni28AF
	* uni28B0
	* uni28B1
	* uni28B2
	* uni28B3
	* uni28B4
	* uni28B5
	* uni28B6
	* uni28B7
	* uni28B8
	* uni28B9
	* uni28BA
	* uni28BB
	* uni28BC
	* uni28BD
	* uni28BE
	* uni28BF
	* uni28C0
	* uni28C1
	* uni28C2
	* uni28C3
	* uni28C4
	* uni28C5
	* uni28C6
	* uni28C7
	* uni28C8
	* uni28C9
	* uni28CA
	* uni28CB
	* uni28CC
	* uni28CD
	* uni28CE
	* uni28CF
	* uni28D0
	* uni28D1
	* uni28D2
	* uni28D3
	* uni28D4
	* uni28D5
	* uni28D6
	* uni28D7
	* uni28D8
	* uni28D9
	* uni28DA
	* uni28DB
	* uni28DC
	* uni28DD
	* uni28DE
	* uni28DF
	* uni28E0
	* uni28E1
	* uni28E2
	* uni28E3
	* uni28E4
	* uni28E5
	* uni28E6
	* uni28E7
	* uni28E8
	* uni28E9
	* uni28EA
	* uni28EB
	* uni28EC
	* uni28ED
	* uni28EE
	* uni28EF
	* uni28F0
	* uni28F1
	* uni28F2
	* uni28F3
	* uni28F4
	* uni28F5
	* uni28F6
	* uni28F7
	* uni28F8
	* uni28F9
	* uni28FA
	* uni28FB
	* uni28FC
	* uni28FD
	* uni28FE
	* uni28FF
	* uni2B00
	* uni2B01
	* uni2B02
	* uni2B03
	* uni2B04
	* uni2B05
	* uni2B06
	* uni2B07
	* uni2B08
	* uni2B09
	* uni2B0A
	* uni2B0B
	* uni2B0C
	* uni2B0D
	* uni3001
	* uni3002
	* uni3003
	* uni3004
	* uni3008
	* uni3009
	* uni300A
	* uni300B
	* uni300C
	* uni300D
	* uni300E
	* uni300F
	* uni3010
	* uni3011
	* uni3012
	* uni3013
	* uni3014
	* uni3015
	* uni3016
	* uni3017
	* uni3018
	* uni3019
	* uni301C
	* uni301D
	* uni301E
	* uni301F
	* uni3036
	* uni3041
	* uni3042
	* uni3043
	* uni3044
	* uni3045
	* uni3046
	* uni3047
	* uni3048
	* uni3049
	* uni304A
	* uni304B
	* uni304C
	* uni304D
	* uni304E
	* uni304F
	* uni3050
	* uni3051
	* uni3052
	* uni3053
	* uni3054
	* uni3055
	* uni3056
	* uni3057
	* uni3058
	* uni3059
	* uni305A
	* uni305B
	* uni305C
	* uni305D
	* uni305E
	* uni305F
	* uni3060
	* uni3061
	* uni3062
	* uni3063
	* uni3064
	* uni3065
	* uni3066
	* uni3067
	* uni3068
	* uni3069
	* uni306A
	* uni306B
	* uni306C
	* uni306D
	* uni306E
	* uni306F
	* uni3070
	* uni3071
	* uni3072
	* uni3073
	* uni3074
	* uni3075
	* uni3076
	* uni3077
	* uni3078
	* uni3079
	* uni307A
	* uni307B
	* uni307C
	* uni307D
	* uni307E
	* uni307F
	* uni3080
	* uni3081
	* uni3082
	* uni3083
	* uni3084
	* uni3085
	* uni3086
	* uni3087
	* uni3088
	* uni3089
	* uni308A
	* uni308B
	* uni308C
	* uni308D
	* uni308E
	* uni308F
	* uni3090
	* uni3091
	* uni3092
	* uni3093
	* uni3094
	* uni3095
	* uni3096
	* uni3099
	* uni309A
	* uni309B
	* uni309C
	* uni309D
	* uni309E
	* uni30A1
	* uni30A2
	* uni30A3
	* uni30A4
	* uni30A5
	* uni30A6
	* uni30A7
	* uni30A8
	* uni30A9
	* uni30AA
	* uni30AB
	* uni30AC
	* uni30AD
	* uni30AE
	* uni30AF
	* uni30B0
	* uni30B1
	* uni30B2
	* uni30B3
	* uni30B4
	* uni30B5
	* uni30B6
	* uni30B7
	* uni30B8
	* uni30B9
	* uni30BA
	* uni30BB
	* uni30BC
	* uni30BD
	* uni30BE
	* uni30BF
	* uni30C0
	* uni30C1
	* uni30C2
	* uni30C3
	* uni30C4
	* uni30C5
	* uni30C6
	* uni30C7
	* uni30C8
	* uni30C9
	* uni30CA
	* uni30CB
	* uni30CC
	* uni30CD
	* uni30CE
	* uni30CF
	* uni30D0
	* uni30D1
	* uni30D2
	* uni30D3
	* uni30D4
	* uni30D5
	* uni30D6
	* uni30D7
	* uni30D8
	* uni30D9
	* uni30DA
	* uni30DB
	* uni30DC
	* uni30DD
	* uni30DE
	* uni30DF
	* uni30E0
	* uni30E1
	* uni30E2
	* uni30E3
	* uni30E4
	* uni30E5
	* uni30E6
	* uni30E7
	* uni30E8
	* uni30E9
	* uni30EA
	* uni30EB
	* uni30EC
	* uni30ED
	* uni30EE
	* uni30EF
	* uni30F0
	* uni30F1
	* uni30F2
	* uni30F3
	* uni30F4
	* uni30F5
	* uni30F6
	* uni30F7
	* uni30F8
	* uni30F9
	* uni30FA
	* uni30FB
	* uni30FC
	* uni30FD
	* uni30FE
	* uni30FF
	* uni4E00
	* uni4E01
	* uni4E03
	* uni4E07
	* uni4E08
	* uni4E09
	* uni4E0A
	* uni4E0B
	* uni4E0D
	* uni4E0E
	* uni4E11
	* uni4E14
	* uni4E16
	* uni4E18
	* uni4E19
	* uni4E1E
	* uni4E21
	* uni4E26
	* uni4E2D
	* uni4E32
	* uni4E38
	* uni4E39
	* uni4E3B
	* uni4E43
	* uni4E45
	* uni4E4B
	* uni4E4D
	* uni4E4E
	* uni4E4F
	* uni4E57
	* uni4E59
	* uni4E5D
	* uni4E5E
	* uni4E5F
	* uni4E71
	* uni4E73
	* uni4E7E
	* uni4E80
	* uni4E86
	* uni4E88
	* uni4E89
	* uni4E8B
	* uni4E8C
	* uni4E91
	* uni4E92
	* uni4E94
	* uni4E95
	* uni4E98
	* uni4E99
	* uni4E9B
	* uni4E9C
	* uni4EA1
	* uni4EA4
	* uni4EA5
	* uni4EA6
	* uni4EA8
	* uni4EAB
	* uni4EAC
	* uni4EAD
	* uni4EAE
	* uni4EBA
	* uni4EC0
	* uni4EC1
	* uni4EC7
	* uni4ECA
	* uni4ECB
	* uni4ECF
	* uni4ED4
	* uni4ED5
	* uni4ED6
	* uni4ED8
	* uni4ED9
	* uni4EE3
	* uni4EE4
	* uni4EE5
	* uni4EEE
	* uni4EF0
	* uni4EF2
	* uni4EF6
	* uni4EFB
	* uni4F01
	* uni4F0A
	* uni4F0D
	* uni4F0E
	* uni4F0F
	* uni4F10
	* uni4F11
	* uni4F1A
	* uni4F1D
	* uni4F2F
	* uni4F34
	* uni4F36
	* uni4F38
	* uni4F3A
	* uni4F3C
	* uni4F3D
	* uni4F43
	* uni4F46
	* uni4F4D
	* uni4F4E
	* uni4F4F
	* uni4F50
	* uni4F51
	* uni4F53
	* uni4F55
	* uni4F59
	* uni4F5A
	* uni4F5C
	* uni4F73
	* uni4F75
	* uni4F7C
	* uni4F7F
	* uni4F83
	* uni4F8B
	* uni4F8D
	* uni4F9B
	* uni4F9D
	* uni4FA0
	* uni4FA1
	* uni4FAD
	* uni4FAE
	* uni4FAF
	* uni4FB5
	* uni4FB6
	* uni4FBF
	* uni4FC2
	* uni4FC3
	* uni4FC4
	* uni4FCA
	* uni4FD7
	* uni4FDD
	* uni4FE1
	* uni4FE3
	* uni4FEE
	* uni4FF3
	* uni4FF5
	* uni4FF8
	* uni4FFA
	* uni5009
	* uni500B
	* uni500D
	* uni5012
	* uni5019
	* uni501F
	* uni5024
	* uni502B
	* uni5036
	* uni5039
	* uni5049
	* uni504F
	* uni505C
	* uni5065
	* uni5072
	* uni5074
	* uni5075
	* uni5076
	* uni507D
	* uni508D
	* uni5091
	* uni5098
	* uni5099
	* uni50AC
	* uni50AD
	* uni50B5
	* uni50B7
	* uni50BE
	* uni50CD
	* uni50CF
	* uni50D1
	* uni50D5
	* uni50DA
	* uni50E7
	* uni5100
	* uni5104
	* uni5112
	* uni511F
	* uni512A
	* uni5132
	* uni5143
	* uni5144
	* uni5145
	* uni5146
	* uni5148
	* uni5149
	* uni514B
	* uni514D
	* uni514E
	* uni5150
	* uni515A
	* uni515C
	* uni5165
	* uni5168
	* uni516B
	* uni516C
	* uni516D
	* uni5171
	* uni5175
	* uni5176
	* uni5177
	* uni5178
	* uni517C
	* uni5185
	* uni5186
	* uni518A
	* uni518D
	* uni5192
	* uni5197
	* uni5199
	* uni51A0
	* uni51A5
	* uni51AC
	* uni51B4
	* uni51B6
	* uni51B7
	* uni51C4
	* uni51C6
	* uni51CD
	* uni51DD
	* uni51E1
	* uni51E6
	* uni51E7
	* uni51EA
	* uni51F6
	* uni51FA
	* uni51FD
	* uni5200
	* uni5203
	* uni5206
	* uni5207
	* uni5208
	* uni520A
	* uni5211
	* uni5217
	* uni521D
	* uni5224
	* uni5225
	* uni5229
	* uni5230
	* uni5236
	* uni5237
	* uni5238
	* uni523A
	* uni523B
	* uni5247
	* uni524A
	* uni524D
	* uni5256
	* uni525B
	* uni5263
	* uni5264
	* uni5265
	* uni526F
	* uni5270
	* uni5272
	* uni5275
	* uni5287
	* uni529B
	* uni529F
	* uni52A0
	* uni52A3
	* uni52A9
	* uni52AA
	* uni52AB
	* uni52B1
	* uni52B4
	* uni52B9
	* uni52BE
	* uni52C5
	* uni52C7
	* uni52C9
	* uni52D5
	* uni52D8
	* uni52D9
	* uni52DD
	* uni52DF
	* uni52E2
	* uni52E4
	* uni52E7
	* uni52F2
	* uni52FE
	* uni52FF
	* uni5302
	* uni5305
	* uni5316
	* uni5317
	* uni5319
	* uni5320
	* uni5321
	* uni532A
	* uni5339
	* uni533A
	* uni533B
	* uni533F
	* uni5341
	* uni5343
	* uni5347
	* uni5348
	* uni534A
	* uni5351
	* uni5352
	* uni5353
	* uni5354
	* uni5357
	* uni5358
	* uni535A
	* uni5360
	* uni5366
	* uni536F
	* uni5370
	* uni5371
	* uni5373
	* uni5374
	* uni5375
	* uni5378
	* uni537F
	* uni5384
	* uni5398
	* uni539A
	* uni539F
	* uni53AD
	* uni53B3
	* uni53BB
	* uni53C2
	* uni53C8
	* uni53C9
	* uni53CA
	* uni53CB
	* uni53CC
	* uni53CD
	* uni53CE
	* uni53D4
	* uni53D6
	* uni53D7
	* uni53D9
	* uni53DB
	* uni53E3
	* uni53E4
	* uni53E5
	* uni53E9
	* uni53EA
	* uni53EB
	* uni53EC
	* uni53EF
	* uni53F0
	* uni53F1
	* uni53F2
	* uni53F3
	* uni53F6
	* uni53F7
	* uni53F8
	* uni5403
	* uni5404
	* uni5408
	* uni5409
	* uni540A
	* uni540B
	* uni540C
	* uni540D
	* uni540E
	* uni540F
	* uni5410
	* uni5411
	* uni541B
	* uni541F
	* uni5420
	* uni5426
	* uni542B
	* uni5438
	* uni5439
	* uni543B
	* uni543E
	* uni5442
	* uni5446
	* uni5448
	* uni5449
	* uni544A
	* uni5451
	* uni5468
	* uni546A
	* uni5473
	* uni547C
	* uni547D
	* uni548B
	* uni548C
	* uni54B2
	* uni54B3
	* uni54BD
	* uni54C0
	* uni54C1
	* uni54C9
	* uni54E1
	* uni54E8
	* uni54E9
	* uni54F2
	* uni5504
	* uni5507
	* uni5510
	* uni552F
	* uni5531
	* uni553E
	* uni5544
	* uni5546
	* uni554F
	* uni5553
	* uni5584
	* uni558B
	* uni559A
	* uni559C
	* uni559D
	* uni55A7
	* uni55AA
	* uni55AB
	* uni55B6
	* uni55E3
	* uni5606
	* uni5609
	* uni5618
	* uni5631
	* uni5668
	* uni5674
	* uni56DA
	* uni56DB
	* uni56DE
	* uni56E0
	* uni56E3
	* uni56F0
	* uni56F2
	* uni56F3
	* uni56FA
	* uni56FD
	* uni5712
	* uni571F
	* uni5727
	* uni5728
	* uni572D
	* uni5730
	* uni5742
	* uni5747
	* uni574A
	* uni5751
	* uni5761
	* uni5764
	* uni5766
	* uni576A
	* uni5782
	* uni578B
	* uni57A2
	* uni57A3
	* uni57CB
	* uni57CE
	* uni57DF
	* uni57F4
	* uni57F7
	* uni57F9
	* uni57FA
	* uni57FC
	* uni5800
	* uni5802
	* uni5805
	* uni5806
	* uni5815
	* uni5824
	* uni582A
	* uni5831
	* uni5834
	* uni5857
	* uni5859
	* uni585A
	* uni5869
	* uni586B
	* uni5875
	* uni587E
	* uni5883
	* uni5893
	* uni5897
	* uni58A8
	* uni58B3
	* uni58CA
	* uni58CC
	* uni58EB
	* uni58EC
	* uni58EE
	* uni58F0
	* uni58F1
	* uni58F2
	* uni5909
	* uni590F
	* uni5915
	* uni5916
	* uni591A
	* uni591C
	* uni5922
	* uni5927
	* uni5929
	* uni592A
	* uni592B
	* uni592E
	* uni5931
	* uni5947
	* uni5948
	* uni5949
	* uni594F
	* uni5951
	* uni5965
	* uni596A
	* uni596E
	* uni5973
	* uni5974
	* uni5978
	* uni597D
	* uni5982
	* uni5983
	* uni598A
	* uni5993
	* uni5996
	* uni5999
	* uni59A5
	* uni59A8
	* uni59AC
	* uni59B9
	* uni59BB
	* uni59C9
	* uni59CB
	* uni59D0
	* uni59D1
	* uni59D3
	* uni59D4
	* uni59EB
	* uni59F6
	* uni59FF
	* uni5A01
	* uni5A03
	* uni5A18
	* uni5A20
	* uni5A2F
	* uni5A3C
	* uni5A66
	* uni5A92
	* uni5ACC
	* uni5AE1
	* uni5B22
	* uni5B50
	* uni5B54
	* uni5B57
	* uni5B58
	* uni5B5D
	* uni5B63
	* uni5B64
	* uni5B66
	* uni5B6B
	* uni5B85
	* uni5B87
	* uni5B88
	* uni5B89
	* uni5B8B
	* uni5B8C
	* uni5B8D
	* uni5B8F
	* uni5B95
	* uni5B97
	* uni5B98
	* uni5B99
	* uni5B9A
	* uni5B9B
	* uni5B9C
	* uni5B9D
	* uni5B9F
	* uni5BA2
	* uni5BA3
	* uni5BA4
	* uni5BA5
	* uni5BAE
	* uni5BB0
	* uni5BB3
	* uni5BB5
	* uni5BB6
	* uni5BB9
	* uni5BBF
	* uni5BC2
	* uni5BC4
	* uni5BC5
	* uni5BC6
	* uni5BCC
	* uni5BD2
	* uni5BDB
	* uni5BDD
	* uni5BDF
	* uni5BE7
	* uni5BE9
	* uni5BF8
	* uni5BFA
	* uni5BFE
	* uni5BFF
	* uni5C01
	* uni5C02
	* uni5C04
	* uni5C0A
	* uni5C0B
	* uni5C0E
	* uni5C0F
	* uni5C11
	* uni5C16
	* uni5C1A
	* uni5C31
	* uni5C3A
	* uni5C3B
	* uni5C3C
	* uni5C3D
	* uni5C3E
	* uni5C3F
	* uni5C40
	* uni5C45
	* uni5C48
	* uni5C4A
	* uni5C4B
	* uni5C4D
	* uni5C55
	* uni5C5E
	* uni5C64
	* uni5C71
	* uni5C90
	* uni5CA1
	* uni5CA8
	* uni5CA9
	* uni5CAC
	* uni5CB3
	* uni5CB8
	* uni5CF0
	* uni5CF6
	* uni5D0E
	* uni5D69
	* uni5D8B
	* uni5DDD
	* uni5DDE
	* uni5DE3
	* uni5DE5
	* uni5DE6
	* uni5DE7
	* uni5DE8
	* uni5DEE
	* uni5DF1
	* uni5DF3
	* uni5DF4
	* uni5DFB
	* uni5DFE
	* uni5E02
	* uni5E03
	* uni5E06
	* uni5E0C
	* uni5E16
	* uni5E1D
	* uni5E25
	* uni5E2B
	* uni5E2D
	* uni5E2F
	* uni5E30
	* uni5E33
	* uni5E37
	* uni5E38
	* uni5E3D
	* uni5E45
	* uni5E55
	* uni5E61
	* uni5E63
	* uni5E72
	* uni5E73
	* uni5E74
	* uni5E78
	* uni5E79
	* uni5E7B
	* uni5E7C
	* uni5E7D
	* uni5E7E
	* uni5E81
	* uni5E83
	* uni5E84
	* uni5E8A
	* uni5E8F
	* uni5E95
	* uni5E97
	* uni5E9C
	* uni5EA6
	* uni5EA7
	* uni5EAB
	* uni5EAD
	* uni5EB6
	* uni5EB7
	* uni5EB8
	* uni5EC3
	* uni5EF6
	* uni5EF7
	* uni5EFA
	* uni5EFF
	* uni5F01
	* uni5F0A
	* uni5F0F
	* uni5F10
	* uni5F13
	* uni5F15
	* uni5F18
	* uni5F1F
	* uni5F25
	* uni5F26
	* uni5F27
	* uni5F31
	* uni5F35
	* uni5F37
	* uni5F3E
	* uni5F53
	* uni5F62
	* uni5F66
	* uni5F69
	* uni5F6B
	* uni5F70
	* uni5F71
	* uni5F79
	* uni5F7C
	* uni5F80
	* uni5F81
	* uni5F84
	* uni5F85
	* uni5F8B
	* uni5F8C
	* uni5F90
	* uni5F92
	* uni5F93
	* uni5F97
	* uni5FA1
	* uni5FA9
	* uni5FAE
	* uni5FB3
	* uni5FB4
	* uni5FC3
	* uni5FC5
	* uni5FCC
	* uni5FCD
	* uni5FD7
	* uni5FD8
	* uni5FD9
	* uni5FDC
	* uni5FE0
	* uni5FEB
	* uni5FF5
	* uni6012
	* uni6016
	* uni601C
	* uni601D
	* uni6020
	* uni6025
	* uni6027
	* uni6028
	* uni602A
	* uni602F
	* uni6050
	* uni6052
	* uni6068
	* uni6069
	* uni606F
	* uni6070
	* uni6075
	* uni6094
	* uni609F
	* uni60A3
	* uni60A6
	* uni60A9
	* uni60AA
	* uni60B2
	* uni60BC
	* uni60C5
	* uni60D1
	* uni60DC
	* uni60DF
	* uni60E3
	* uni60F3
	* uni60F9
	* uni6109
	* uni610F
	* uni611A
	* uni611F
	* uni614B
	* uni614C
	* uni614E
	* uni6155
	* uni6162
	* uni6163
	* uni616E
	* uni6182
	* uni618E
	* uni6190
	* uni61A4
	* uni61A7
	* uni61A9
	* uni61B2
	* uni61B6
	* uni61C7
	* uni61D0
	* uni61F2
	* uni620A
	* uni620E
	* uni6210
	* uni6211
	* uni6212
	* uni6216
	* uni621A
	* uni621F
	* uni6226
	* uni6238
	* uni623B
	* uni623F
	* uni6240
	* uni6247
	* uni6249
	* uni624B
	* uni624D
	* uni6253
	* uni6255
	* uni6258
	* uni6271
	* uni6276
	* uni6279
	* uni627F
	* uni6280
	* uni6284
	* uni628A
	* uni6291
	* uni6295
	* uni6297
	* uni6298
	* uni629C
	* uni629E
	* uni62AB
	* uni62B1
	* uni62B5
	* uni62B9
	* uni62BC
	* uni62BD
	* uni62C5
	* uni62C9
	* uni62CD
	* uni62D0
	* uni62D2
	* uni62D3
	* uni62D8
	* uni62D9
	* uni62DB
	* uni62DD
	* uni62E0
	* uni62E1
	* uni62EC
	* uni62ED
	* uni62FE
	* uni6301
	* uni6307
	* uni6311
	* uni6319
	* uni631F
	* uni632F
	* uni633D
	* uni633F
	* uni6349
	* uni6355
	* uni6357
	* uni635C
	* uni6367
	* uni6368
	* uni636E
	* uni637B
	* uni6383
	* uni6388
	* uni638C
	* uni6392
	* uni6398
	* uni639B
	* uni639F
	* uni63A0
	* uni63A1
	* uni63A2
	* uni63A5
	* uni63A7
	* uni63A8
	* uni63A9
	* uni63AA
	* uni63B2
	* uni63B4
	* uni63CF
	* uni63D0
	* uni63DA
	* uni63DB
	* uni63EE
	* uni63F4
	* uni63FA
	* uni640D
	* uni643A
	* uni6442
	* uni6458
	* uni6469
	* uni6483
	* uni649E
	* uni64B2
	* uni64CD
	* uni64FE
	* uni652F
	* uni6539
	* uni653B
	* uni653E
	* uni653F
	* uni6545
	* uni654F
	* uni6551
	* uni6557
	* uni6559
	* uni6562
	* uni6563
	* uni6566
	* uni656C
	* uni6570
	* uni6574
	* uni6575
	* uni6587
	* uni6589
	* uni658E
	* uni6591
	* uni6597
	* uni6599
	* uni659C
	* uni65A4
	* uni65A5
	* uni65AC
	* uni65AD
	* uni65AF
	* uni65B0
	* uni65B9
	* uni65BC
	* uni65BD
	* uni65C5
	* uni65CB
	* uni65CF
	* uni65D7
	* uni65E2
	* uni65E5
	* uni65E6
	* uni65E7
	* uni65E8
	* uni65E9
	* uni65EC
	* uni65FA
	* uni6606
	* uni6607
	* uni660C
	* uni660E
	* uni6613
	* uni6614
	* uni661F
	* uni6620
	* uni6625
	* uni6627
	* uni6628
	* uni662D
	* uni662F
	* uni663C
	* uni6642
	* uni6669
	* uni666E
	* uni666F
	* uni6674
	* uni667A
	* uni6681
	* uni6691
	* uni6696
	* uni6697
	* uni66A6
	* uni66AE
	* uni66B4
	* uni66DC
	* uni66F2
	* uni66F4
	* uni66F8
	* uni66FF
	* uni6700
	* uni6708
	* uni6709
	* uni670B
	* uni670D
	* uni6717
	* uni671B
	* uni671D
	* uni671F
	* uni6728
	* uni672A
	* uni672B
	* uni672C
	* uni672D
	* uni6731
	* uni6734
	* uni673A
	* uni673D
	* uni6749
	* uni674E
	* uni674F
	* uni6750
	* uni6751
	* uni6753
	* uni6756
	* uni675C
	* uni675F
	* uni6761
	* uni6762
	* uni6765
	* uni676D
	* uni676F
	* uni6771
	* uni6775
	* uni6777
	* uni677E
	* uni677F
	* uni6787
	* uni6790
	* uni6795
	* uni6797
	* uni679A
	* uni679C
	* uni679D
	* uni67A0
	* uni67A2
	* uni67AF
	* uni67B6
	* uni67C1
	* uni67C4
	* uni67CA
	* uni67CF
	* uni67D0
	* uni67D1
	* uni67D3
	* uni67D4
	* uni67D8
	* uni67DA
	* uni67F1
	* uni67F4
	* uni67FB
	* uni67FF
	* uni6804
	* uni6816
	* uni6817
	* uni6821
	* uni6822
	* uni682A
	* uni6838
	* uni6839
	* uni683C
	* uni683D
	* uni6841
	* uni6842
	* uni6843
	* uni6848
	* uni6850
	* uni6851
	* uni6853
	* uni6854
	* uni685C
	* uni685F
	* uni6867
	* uni6876
	* uni6885
	* uni68A2
	* uni68A8
	* uni68B0
	* uni68C4
	* uni68D2
	* uni68DF
	* uni68EE
	* uni68FA
	* uni6905
	* uni690B
	* uni690D
	* uni690E
	* uni6912
	* uni6919
	* uni691C
	* uni694A
	* uni696D
	* uni696F
	* uni6975
	* uni697D
	* uni6982
	* uni69CB
	* uni69D8
	* uni69D9
	* uni6A19
	* uni6A21
	* uni6A29
	* uni6A2A
	* uni6A39
	* uni6A4B
	* uni6A5F
	* uni6B20
	* uni6B21
	* uni6B23
	* uni6B27
	* uni6B32
	* uni6B3A
	* uni6B3D
	* uni6B4C
	* uni6B53
	* uni6B62
	* uni6B63
	* uni6B64
	* uni6B66
	* uni6B69
	* uni6B6A
	* uni6B6F
	* uni6B73
	* uni6B74
	* uni6B7B
	* uni6B86
	* uni6B89
	* uni6B8A
	* uni6B8B
	* uni6B96
	* uni6BB4
	* uni6BB5
	* uni6BBA
	* uni6BBF
	* uni6BCD
	* uni6BCE
	* uni6BD2
	* uni6BD4
	* uni6BDB
	* uni6C0F
	* uni6C11
	* uni6C17
	* uni6C34
	* uni6C37
	* uni6C38
	* uni6C3E
	* uni6C40
	* uni6C41
	* uni6C42
	* uni6C4E
	* uni6C57
	* uni6C5A
	* uni6C5D
	* uni6C5F
	* uni6C60
	* uni6C70
	* uni6C72
	* uni6C7A
	* uni6C7D
	* uni6C88
	* uni6C8C
	* uni6C96
	* uni6C99
	* uni6CA1
	* uni6CA2
	* uni6CAB
	* uni6CB3
	* uni6CB8
	* uni6CB9
	* uni6CBB
	* uni6CBC
	* uni6CBF
	* uni6CC1
	* uni6CC9
	* uni6CCA
	* uni6CCC
	* uni6CD5
	* uni6CE1
	* uni6CE2
	* uni6CE3
	* uni6CE5
	* uni6CE8
	* uni6CF0
	* uni6CF3
	* uni6D0B
	* uni6D17
	* uni6D1B
	* uni6D1E
	* uni6D25
	* uni6D2A
	* uni6D32
	* uni6D3B
	* uni6D3E
	* uni6D41
	* uni6D44
	* uni6D45
	* uni6D5C
	* uni6D66
	* uni6D69
	* uni6D6A
	* uni6D6C
	* uni6D6E
	* uni6D74
	* uni6D77
	* uni6D78
	* uni6D88
	* uni6D8C
	* uni6DAF
	* uni6DB2
	* uni6DBC
	* uni6DC0
	* uni6DCB
	* uni6DD1
	* uni6DE1
	* uni6DEB
	* uni6DEE
	* uni6DF1
	* uni6DF3
	* uni6DF5
	* uni6DF7
	* uni6DFB
	* uni6E05
	* uni6E07
	* uni6E08
	* uni6E09
	* uni6E0B
	* uni6E1A
	* uni6E1B
	* uni6E21
	* uni6E26
	* uni6E29
	* uni6E2C
	* uni6E2F
	* uni6E56
	* uni6E5B
	* uni6E67
	* uni6E6F
	* uni6E7F
	* uni6E80
	* uni6E90
	* uni6E96
	* uni6E9D
	* uni6EB6
	* uni6EBA
	* uni6EC5
	* uni6ED1
	* uni6EDD
	* uni6EDE
	* uni6EF4
	* uni6F01
	* uni6F02
	* uni6F0F
	* uni6F14
	* uni6F22
	* uni6F2B
	* uni6F2C
	* uni6F38
	* uni6F54
	* uni6F5C
	* uni6F6E
	* uni6F84
	* uni6FC0
	* uni6FC1
	* uni6FE1
	* uni6FEF
	* uni702C
	* uni706B
	* uni706F
	* uni7070
	* uni7078
	* uni707C
	* uni707D
	* uni7089
	* uni708A
	* uni708E
	* uni70AD
	* uni70B9
	* uni70BA
	* uni70C8
	* uni70CF
	* uni7114
	* uni7121
	* uni7126
	* uni7136
	* uni713C
	* uni7149
	* uni7159
	* uni7164
	* uni7167
	* uni7169
	* uni716E
	* uni717D
	* uni718A
	* uni719F
	* uni71B1
	* uni71C3
	* uni71C8
	* uni7206
	* uni722A
	* uni7236
	* uni723D
	* uni7247
	* uni7248
	* uni725B
	* uni725D
	* uni7261
	* uni7262
	* uni7267
	* uni7269
	* uni7272
	* uni7279
	* uni72A0
	* uni72AC
	* uni72AF
	* uni72B6
	* uni72C2
	* uni72C6
	* uni72CE
	* uni72D0
	* uni72D7
	* uni72D9
	* uni72DB
	* uni72E2
	* uni72E9
	* uni72EC
	* uni72ED
	* uni72F8
	* uni72FC
	* uni731B
	* uni731F
	* uni732B
	* uni732E
	* uni7344
	* uni7363
	* uni7372
	* uni7387
	* uni7389
	* uni738B
	* uni73A9
	* uni73B2
	* uni73BB
	* uni73C2
	* uni73CD
	* uni73E0
	* uni73ED
	* uni73FE
	* uni7403
	* uni7406
	* uni7409
	* uni7422
	* uni7433
	* uni74B0
	* uni74DC
	* uni7518
	* uni751F
	* uni7523
	* uni7525
	* uni7528
	* uni7530
	* uni7531
	* uni7532
	* uni7533
	* uni7537
	* uni753A
	* uni753B
	* uni754C
	* uni754F
	* uni7551
	* uni7559
	* uni755C
	* uni7565
	* uni756A
	* uni7570
	* uni758E
	* uni7591
	* uni75B2
	* uni75B9
	* uni75BE
	* uni75C5
	* uni75C7
	* uni75D4
	* uni75DB
	* uni75E9
	* uni75F0
	* uni75F4
	* uni764C
	* uni7656
	* uni767A
	* uni767B
	* uni767D
	* uni767E
	* uni7684
	* uni7686
	* uni7687
	* uni76AE
	* uni76BF
	* uni76C3
	* uni76C6
	* uni76CA
	* uni76D7
	* uni76DB
	* uni76DF
	* uni76E3
	* uni76E4
	* uni76EE
	* uni76F4
	* uni76F8
	* uni7701
	* uni7709
	* uni770B
	* uni770C
	* uni771F
	* uni7720
	* uni773A
	* uni773C
	* uni7740
	* uni7761
	* uni7763
	* uni7766
	* uni77AC
	* uni77B3
	* uni77DB
	* uni77E2
	* uni77E5
	* uni77E9
	* uni77ED
	* uni77F3
	* uni7802
	* uni7814
	* uni7815
	* uni7827
	* uni7832
	* uni7834
	* uni786C
	* uni7887
	* uni788D
	* uni7893
	* uni78A9
	* uni78BA
	* uni78E8
	* uni7901
	* uni790E
	* uni793A
	* uni793C
	* uni793E
	* uni7948
	* uni7949
	* uni7950
	* uni7956
	* uni795D
	* uni795E
	* uni7962
	* uni7965
	* uni7968
	* uni796D
	* uni7981
	* uni7984
	* uni7985
	* uni798D
	* uni798E
	* uni798F
	* uni79BE
	* uni79C0
	* uni79C1
	* uni79CB
	* uni79D1
	* uni79D2
	* uni79D8
	* uni79DF
	* uni79E4
	* uni79E6
	* uni79E9
	* uni79F0
	* uni79FB
	* uni7A0B
	* uni7A0E
	* uni7A1A
	* uni7A2E
	* uni7A32
	* uni7A3F
	* uni7A40
	* uni7A42
	* uni7A4D
	* uni7A4F
	* uni7A74
	* uni7A76
	* uni7A7A
	* uni7A81
	* uni7A83
	* uni7A92
	* uni7A93
	* uni7A9F
	* uni7AAE
	* uni7ABA
	* uni7ACB
	* uni7ADC
	* uni7AE0
	* uni7AE5
	* uni7AEA
	* uni7AEF
	* uni7AF6
	* uni7AF9
	* uni7AFA
	* uni7AFF
	* uni7B11
	* uni7B1B
	* uni7B20
	* uni7B26
	* uni7B2C
	* uni7B39
	* uni7B46
	* uni7B48
	* uni7B49
	* uni7B4B
	* uni7B51
	* uni7B52
	* uni7B54
	* uni7B56
	* uni7B87
	* uni7B94
	* uni7B97
	* uni7BA1
	* uni7BB1
	* uni7BC0
	* uni7BC4
	* uni7BC9
	* uni7BE4
	* uni7C21
	* uni7C3F
	* uni7C4D
	* uni7C73
	* uni7C82
	* uni7C89
	* uni7C8B
	* uni7C8D
	* uni7C92
	* uni7C95
	* uni7C97
	* uni7C98
	* uni7C9B
	* uni7CA7
	* uni7CBE
	* uni7CCA
	* uni7CD6
	* uni7CDE
	* uni7CE7
	* uni7CF8
	* uni7CFB
	* uni7CFE
	* uni7D00
	* uni7D04
	* uni7D05
	* uni7D0B
	* uni7D0D
	* uni7D14
	* uni7D17
	* uni7D19
	* uni7D1A
	* uni7D1B
	* uni7D20
	* uni7D21
	* uni7D22
	* uni7D2B
	* uni7D2F
	* uni7D30
	* uni7D33
	* uni7D39
	* uni7D3A
	* uni7D42
	* uni7D44
	* uni7D4C
	* uni7D50
	* uni7D5E
	* uni7D61
	* uni7D62
	* uni7D66
	* uni7D71
	* uni7D75
	* uni7D76
	* uni7D79
	* uni7D99
	* uni7D9A
	* uni7DAC
	* uni7DAD
	* uni7DB1
	* uni7DB2
	* uni7DB4
	* uni7DBB
	* uni7DBF
	* uni7DCA
	* uni7DCF
	* uni7DD1
	* uni7DD2
	* uni7DDA
	* uni7DE0
	* uni7DE8
	* uni7DE9
	* uni7DF4
	* uni7E01
	* uni7E04
	* uni7E26
	* uni7E2E
	* uni7E3E
	* uni7E41
	* uni7E4D
	* uni7E54
	* uni7E70
	* uni7F36
	* uni7F6A
	* uni7F6B
	* uni7F6E
	* uni7F70
	* uni7F72
	* uni7F75
	* uni7F8A
	* uni7F8E
	* uni7FA4
	* uni7FA9
	* uni7FBD
	* uni7FCC
	* uni7FD2
	* uni7FFC
	* uni8001
	* uni8003
	* uni8005
	* uni800C
	* uni8010
	* uni8015
	* uni8017
	* uni8033
	* uni8036
	* uni803D
	* uni805E
	* uni8074
	* uni8077
	* uni8089
	* uni808B
	* uni808C
	* uni8096
	* uni8098
	* uni809A
	* uni809B
	* uni809D
	* uni80A1
	* uni80A2
	* uni80A5
	* uni80A9
	* uni80AA
	* uni80AF
	* uni80B2
	* uni80BA
	* uni80C3
	* uni80C6
	* uni80CC
	* uni80CE
	* uni80DE
	* uni80E1
	* uni80F4
	* uni80F8
	* uni80FD
	* uni8102
	* uni8105
	* uni8107
	* uni8108
	* uni811A
	* uni8131
	* uni8133
	* uni814E
	* uni8150
	* uni8154
	* uni8155
	* uni816B
	* uni8170
	* uni8178
	* uni8179
	* uni817A
	* uni819C
	* uni81C6
	* uni81D3
	* uni81E3
	* uni81E8
	* uni81EA
	* uni81ED
	* uni81F3
	* uni81F4
	* uni81FC
	* uni8208
	* uni820C
	* uni820E
	* uni8217
	* uni8218
	* uni821E
	* uni821F
	* uni822A
	* uni822C
	* uni8235
	* uni8236
	* uni8239
	* uni8266
	* uni826F
	* uni8272
	* uni828B
	* uni8299
	* uni829D
	* uni82A6
	* uni82AD
	* uni82AF
	* uni82B1
	* uni82B3
	* uni82B8
	* uni82B9
	* uni82BD
	* uni82D1
	* uni82D4
	* uni82D7
	* uni82DB
	* uni82E5
	* uni82E6
	* uni82EB
	* uni82F1
	* uni8302
	* uni8304
	* uni831C
	* uni8328
	* uni8336
	* uni8349
	* uni834F
	* uni8352
	* uni8358
	* uni8377
	* uni837B
	* uni83C5
	* uni83CA
	* uni83CC
	* uni83D3
	* uni83D6
	* uni83DC
	* uni83EF
	* uni8429
	* uni843D
	* uni8449
	* uni8457
	* uni8494
	* uni84B8
	* uni84BC
	* uni8526
	* uni8535
	* uni8549
	* uni8584
	* uni85AA
	* uni85AC
	* uni85CD
	* uni85E4
	* uni85E9
	* uni85FB
	* uni8607
	* uni864E
	* uni8650
	* uni865A
	* uni865C
	* uni866B
	* uni8679
	* uni867B
	* uni868A
	* uni8693
	* uni8695
	* uni86A4
	* uni86AF
	* uni86C6
	* uni86C7
	* uni86CD
	* uni86D9
	* uni86DB
	* uni86DE
	* uni86E4
	* uni86ED
	* uni86EE
	* uni86F8
	* uni86FE
	* uni8702
	* uni8718
	* uni8749
	* uni874B
	* uni874E
	* uni8753
	* uni8755
	* uni876E
	* uni877F
	* uni87FB
	* uni8840
	* uni8846
	* uni884C
	* uni8853
	* uni8857
	* uni885B
	* uni885D
	* uni8863
	* uni8868
	* uni8870
	* uni8877
	* uni887F
	* uni8888
	* uni888B
	* uni8896
	* uni88AB
	* uni88B7
	* uni88C1
	* uni88C2
	* uni88C5
	* uni88CF
	* uni88D5
	* uni88DC
	* uni88DF
	* uni88E1
	* uni88F8
	* uni88FD
	* uni8907
	* uni8910
	* uni8972
	* uni897F
	* uni8981
	* uni898B
	* uni898F
	* uni8996
	* uni899A
	* uni89A7
	* uni89AA
	* uni89B3
	* uni89D2
	* uni89E3
	* uni89E6
	* uni8A00
	* uni8A02
	* uni8A08
	* uni8A0A
	* uni8A0E
	* uni8A13
	* uni8A17
	* uni8A18
	* uni8A1F
	* uni8A23
	* uni8A2A
	* uni8A2D
	* uni8A31
	* uni8A33
	* uni8A34
	* uni8A3A
	* uni8A3B
	* uni8A3C
	* uni8A50
	* uni8A51
	* uni8A54
	* uni8A55
	* uni8A5E
	* uni8A63
	* uni8A66
	* uni8A69
	* uni8A6B
	* uni8A70
	* uni8A71
	* uni8A72
	* uni8A73
	* uni8A87
	* uni8A89
	* uni8A8C
	* uni8A8D
	* uni8A93
	* uni8A95
	* uni8A98
	* uni8A9E
	* uni8AA0
	* uni8AA4
	* uni8AAC
	* uni8AAD
	* uni8AB0
	* uni8AB2
	* uni8ABF
	* uni8AC7
	* uni8ACB
	* uni8ACC
	* uni8AD6
	* uni8AE6
	* uni8AED
	* uni8AF8
	* uni8AFE
	* uni8B00
	* uni8B0E
	* uni8B19
	* uni8B1B
	* uni8B1D
	* uni8B21
	* uni8B39
	* uni8B58
	* uni8B5C
	* uni8B66
	* uni8B70
	* uni8B72
	* uni8B77
	* uni8B83
	* uni8C37
	* uni8C46
	* uni8C4A
	* uni8C5A
	* uni8C61
	* uni8C79
	* uni8C9D
	* uni8C9E
	* uni8CA0
	* uni8CA1
	* uni8CA2
	* uni8CA7
	* uni8CA8
	* uni8CA9
	* uni8CAB
	* uni8CAC
	* uni8CAF
	* uni8CB0
	* uni8CB4
	* uni8CB7
	* uni8CB8
	* uni8CBB
	* uni8CBC
	* uni8CBF
	* uni8CC0
	* uni8CC2
	* uni8CC3
	* uni8CC4
	* uni8CC7
	* uni8CCA
	* uni8CD1
	* uni8CDB
	* uni8CDC
	* uni8CDE
	* uni8CE0
	* uni8CE2
	* uni8CEA
	* uni8CED
	* uni8CFC
	* uni8D08
	* uni8D0B
	* uni8D64
	* uni8D70
	* uni8D74
	* uni8D77
	* uni8D85
	* uni8D8A
	* uni8DA3
	* uni8DB3
	* uni8DDD
	* uni8DE1
	* uni8DEF
	* uni8DF3
	* uni8DF5
	* uni8E0A
	* uni8E0F
	* uni8E8D
	* uni8EAB
	* uni8EAF
	* uni8ECA
	* uni8ECB
	* uni8ECC
	* uni8ECD
	* uni8ED2
	* uni8EDF
	* uni8EE2
	* uni8EF8
	* uni8EFD
	* uni8F03
	* uni8F09
	* uni8F14
	* uni8F1D
	* uni8F29
	* uni8F2A
	* uni8F38
	* uni8F9B
	* uni8F9E
	* uni8FB0
	* uni8FB1
	* uni8FB2
	* uni8FBA
	* uni8FBB
	* uni8FBC
	* uni8FBF
	* uni8FC2
	* uni8FC4
	* uni8FC5
	* uni8FCE
	* uni8FD1
	* uni8FD4
	* uni8FEB
	* uni8FF0
	* uni8FF7
	* uni8FFD
	* uni9000
	* uni9001
	* uni9003
	* uni9006
	* uni900F
	* uni9010
	* uni9014
	* uni9019
	* uni901A
	* uni901D
	* uni901F
	* uni9020
	* uni9022
	* uni9023
	* uni902E
	* uni9031
	* uni9032
	* uni9038
	* uni9042
	* uni9045
	* uni9047
	* uni904A
	* uni904B
	* uni904D
	* uni904E
	* uni9053
	* uni9054
	* uni9055
	* uni9060
	* uni9063
	* uni9069
	* uni9078
	* uni907A
	* uni907F
	* uni9091
	* uni90A6
	* uni90AA
	* uni90B8
	* uni90C1
	* uni90CA
	* uni90CE
	* uni90E1
	* uni90E8
	* uni90ED
	* uni90F5
	* uni90F7
	* uni90FD
	* uni9149
	* uni914C
	* uni914D
	* uni914E
	* uni9152
	* uni9154
	* uni9162
	* uni916A
	* uni916C
	* uni9175
	* uni9177
	* uni9178
	* uni919C
	* uni91C6
	* uni91C7
	* uni91C8
	* uni91CC
	* uni91CD
	* uni91CE
	* uni91CF
	* uni91D1
	* uni91D8
	* uni91DD
	* uni91E3
	* uni91E7
	* uni920D
	* uni920E
	* uni9234
	* uni9237
	* uni9244
	* uni925B
	* uni9262
	* uni9266
	* uni9271
	* uni9280
	* uni9283
	* uni9285
	* uni9291
	* uni9298
	* uni929A
	* uni92AD
	* uni92ED
	* uni92FC
	* uni9306
	* uni9310
	* uni9320
	* uni9326
	* uni932C
	* uni932F
	* uni9332
	* uni934B
	* uni938C
	* uni9396
	* uni93A7
	* uni93AE
	* uni93D1
	* uni93E1
	* uni9451
	* uni9577
	* uni9580
	* uni9583
	* uni9589
	* uni958B
	* uni958F
	* uni9591
	* uni9593
	* uni95A2
	* uni95A3
	* uni961C
	* uni962A
	* uni9632
	* uni963B
	* uni963F
	* uni9640
	* uni9644
	* uni964D
	* uni9650
	* uni965B
	* uni9662
	* uni9663
	* uni9664
	* uni9665
	* uni966A
	* uni9670
	* uni9673
	* uni9678
	* uni967A
	* uni967D
	* uni9685
	* uni9686
	* uni9688
	* uni968A
	* uni968E
	* uni9694
	* uni969B
	* uni969C
	* uni96A0
	* uni96A3
	* uni96BB
	* uni96BC
	* uni96C0
	* uni96C1
	* uni96C4
	* uni96C5
	* uni96C6
	* uni96C7
	* uni96CC
	* uni96D1
	* uni96E2
	* uni96E3
	* uni96E8
	* uni96EA
	* uni96EB
	* uni96F0
	* uni96F2
	* uni96F7
	* uni96FB
	* uni9700
	* uni9707
	* uni971C
	* uni9752
	* uni9756
	* uni9759
	* uni975E
	* uni9762
	* uni9769
	* uni9774
	* uni9784
	* uni9798
	* uni97D3
	* uni97F3
	* uni9801
	* uni9802
	* uni9803
	* uni9805
	* uni9806
	* uni9808
	* uni9810
	* uni9811
	* uni9818
	* uni982D
	* uni983C
	* uni984C
	* uni984D
	* uni9854
	* uni9858
	* uni985E
	* uni9867
	* uni98A8
	* uni98DB
	* uni98DF
	* uni98E2
	* uni98EF
	* uni98F2
	* uni98F4
	* uni98FC
	* uni98FD
	* uni98FE
	* uni990A
	* uni990C
	* uni9928
	* uni9996
	* uni9999
	* uni99AC
	* uni99B3
	* uni99B4
	* uni99C4
	* uni99C5
	* uni99C6
	* uni99C8
	* uni99D0
	* uni99D2
	* uni99D5
	* uni99FF
	* uni9A0E
	* uni9A12
	* uni9A13
	* uni9A28
	* uni9AA8
	* uni9AB8
	* uni9AD8
	* uni9AEA
	* uni9AED
	* uni9B3C
	* uni9B45
	* uni9B54
	* uni9B5A
	* uni9B8E
	* uni9B92
	* uni9BAA
	* uni9BAB
	* uni9BAD
	* uni9BAE
	* uni9BC9
	* uni9BD6
	* uni9BDB
	* uni9BE8
	* uni9BF5
	* uni9C3B
	* uni9C48
	* uni9CE5
	* uni9CF3
	* uni9CF4
	* uni9CF6
	* uni9D28
	* uni9DB4
	* uni9E7F
	* uni9E97
	* uni9EA6
	* uni9EBA
	* uni9EBB
	* uni9EC4
	* uni9ED2
	* uni9ED9
	* uni9EDB
	* uni9EF4
	* uni9F0E
	* uni9F13
	* uni9F20
	* uni9F3B
	* uni9F62
	* uni9F8D
	* uogonek
	* upblock
	* uring
	* utilde
	* v
	* w
	* wcircumflex
	* x
	* y
	* yacute
	* ycircumflex
	* ydieresis
	* yen
	* z
	* zacute
	* zcaron
	* zdotaccent and zero
</div></details><details><summary>⚠ <b>WARN:</b> Ensure fonts have ScriptLangTags declared on the 'meta' table. (<a href="https://font-bakery.readthedocs.io/en/stable/fontbakery/profiles/googlefonts.html#com.google.fonts/check/meta/script_lang_tags">com.google.fonts/check/meta/script_lang_tags</a>)</summary><div>


* ⚠ **WARN** This font file does not have a 'meta' table. [code: lacks-meta-table]
</div></details><details><summary>⚠ <b>WARN:</b> Check that legacy accents aren't used in composite glyphs. (<a href="https://font-bakery.readthedocs.io/en/stable/fontbakery/profiles/universal.html#com.google.fonts/check/legacy_accents">com.google.fonts/check/legacy_accents</a>)</summary><div>


* ⚠ **WARN** Glyph "Ccedilla" has a legacy accent component  (cedilla). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "ccedilla" has a legacy accent component  (cedilla). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "Scedilla" has a legacy accent component  (cedilla). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "scedilla" has a legacy accent component  (cedilla). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "uni0228" has a legacy accent component  (cedilla). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "uni0229" has a legacy accent component  (cedilla). It needs to be replaced by a combining mark. [code: legacy-accents-component]
* ⚠ **WARN** Glyph "uni0327" has a legacy accent component  (cedilla). It needs to be replaced by a combining mark. [code: legacy-accents-component]
</div></details><details><summary>⚠ <b>WARN:</b> Check font contains no unreachable glyphs (<a href="https://font-bakery.readthedocs.io/en/stable/fontbakery/profiles/universal.html#com.google.fonts/check/unreachable_glyphs">com.google.fonts/check/unreachable_glyphs</a>)</summary><div>


* ⚠ **WARN** The following glyphs could not be reached by codepoint or substitution rules:

	- nonmarkingreturn
 [code: unreachable-glyphs]
</div></details><details><summary>⚠ <b>WARN:</b> Check if each glyph has the recommended amount of contours. (<a href="https://font-bakery.readthedocs.io/en/stable/fontbakery/profiles/universal.html#com.google.fonts/check/contour_count">com.google.fonts/check/contour_count</a>)</summary><div>


* ⚠ **WARN** This check inspects the glyph outlines and detects the total number of contours in each of them. The expected values are infered from the typical ammounts of contours observed in a large collection of reference font families. The divergences listed below may simply indicate a significantly different design on some of your glyphs. On the other hand, some of these may flag actual bugs in the font such as glyphs mapped to an incorrect codepoint. Please consider reviewing the design and codepoint assignment of these to make sure they are correct.

The following glyphs do not have the recommended number of contours:

	- Glyph name: w	Contours detected: 2	Expected: 1

	- Glyph name: uni00AD	Contours detected: 1	Expected: 0

	- Glyph name: aogonek	Contours detected: 3	Expected: 2

	- Glyph name: eogonek	Contours detected: 3	Expected: 2

	- Glyph name: Uogonek	Contours detected: 2	Expected: 1

	- Glyph name: uogonek	Contours detected: 2	Expected: 1

	- Glyph name: Wcircumflex	Contours detected: 3	Expected: 2

	- Glyph name: wcircumflex	Contours detected: 3	Expected: 2

	- Glyph name: ohorn	Contours detected: 3	Expected: 2

	- Glyph name: Uhorn	Contours detected: 2	Expected: 1

	- Glyph name: uhorn	Contours detected: 2	Expected: 1

	- Glyph name: uni01E5	Contours detected: 4	Expected: 2

	- Glyph name: uni01EA	Contours detected: 3	Expected: 2

	- Glyph name: uni01EB	Contours detected: 3	Expected: 2

	- Glyph name: uni01EC	Contours detected: 4	Expected: 3

	- Glyph name: uni01ED	Contours detected: 4	Expected: 3

	- Glyph name: uni01F5	Contours detected: 4	Expected: 3

	- Glyph name: uni0228	Contours detected: 2	Expected: 1

	- Glyph name: uni0229	Contours detected: 3	Expected: 2

	- Glyph name: uni2552	Contours detected: 1	Expected: 2

	- Glyph name: uni2553	Contours detected: 1	Expected: 2

	- Glyph name: uni2555	Contours detected: 1	Expected: 2

	- Glyph name: uni2556	Contours detected: 1	Expected: 2

	- Glyph name: uni2558	Contours detected: 1	Expected: 2

	- Glyph name: uni2559	Contours detected: 1	Expected: 2

	- Glyph name: uni255B	Contours detected: 1	Expected: 2

	- Glyph name: uni255C	Contours detected: 1	Expected: 2

	- Glyph name: uni255E	Contours detected: 1	Expected: 2

	- Glyph name: uni2561	Contours detected: 1	Expected: 2

	- Glyph name: uni25CC	Contours detected: 19	Expected: 16 or 12

	- Glyph name: uni2611	Contours detected: 3	Expected: 2

	- Glyph name: Uhorn	Contours detected: 2	Expected: 1

	- Glyph name: Uogonek	Contours detected: 2	Expected: 1

	- Glyph name: Wcircumflex	Contours detected: 3	Expected: 2

	- Glyph name: aogonek	Contours detected: 3	Expected: 2

	- Glyph name: eogonek	Contours detected: 3	Expected: 2

	- Glyph name: ohorn	Contours detected: 3	Expected: 2

	- Glyph name: uhorn	Contours detected: 2	Expected: 1

	- Glyph name: uni00AD	Contours detected: 1	Expected: 0

	- Glyph name: uni01E5	Contours detected: 4	Expected: 2

	- Glyph name: uni01EC	Contours detected: 4	Expected: 3

	- Glyph name: uni01ED	Contours detected: 4	Expected: 3

	- Glyph name: uni0228	Contours detected: 2	Expected: 1

	- Glyph name: uni0229	Contours detected: 3	Expected: 2

	- Glyph name: uni25CC	Contours detected: 19	Expected: 16 or 12

	- Glyph name: uni2611	Contours detected: 3	Expected: 2

	- Glyph name: uogonek	Contours detected: 2	Expected: 1

	- Glyph name: w	Contours detected: 2	Expected: 1

	- Glyph name: wcircumflex	Contours detected: 3	Expected: 2
 [code: contour-count]
</div></details><details><summary>⚠ <b>WARN:</b> Does the font contain a soft hyphen? (<a href="https://font-bakery.readthedocs.io/en/stable/fontbakery/profiles/universal.html#com.google.fonts/check/soft_hyphen">com.google.fonts/check/soft_hyphen</a>)</summary><div>


* ⚠ **WARN** This font has a 'Soft Hyphen' character. [code: softhyphen]
</div></details><details><summary>⚠ <b>WARN:</b> Does the font contain chws and vchw features? (<a href="https://font-bakery.readthedocs.io/en/stable/fontbakery/profiles/universal.html#com.google.fonts/check/cjk_chws_feature">com.google.fonts/check/cjk_chws_feature</a>)</summary><div>


* ⚠ **WARN** vchw feature not found in font. Use chws_tool (https://github.com/googlefonts/chws_tool) to add it. [code: missing-vchw-feature]
</div></details><details><summary>⚠ <b>WARN:</b> Check math signs have the same width. (<a href="https://font-bakery.readthedocs.io/en/stable/fontbakery/profiles/universal.html#com.google.fonts/check/math_signs_width">com.google.fonts/check/math_signs_width</a>)</summary><div>


* ⚠ **WARN** The most common width is 540 among a set of 3 math glyphs.
The following math glyphs have a different width, though:

Width = 525:
equal, greater, less

Width = 529:
logicalnot

Width = 475:
multiply

Width = 1000:
uni3012
 [code: width-outliers]
</div></details><details><summary>⚠ <b>WARN:</b> Checking Vertical Metric Linegaps. (<a href="https://font-bakery.readthedocs.io/en/stable/fontbakery/profiles/universal.html#com.google.fonts/check/linegaps">com.google.fonts/check/linegaps</a>)</summary><div>


* ⚠ **WARN** hhea lineGap is not equal to 0. [code: hhea]
</div></details><details><summary>⚠ <b>WARN:</b> Do outlines contain any jaggy segments? (<a href="https://font-bakery.readthedocs.io/en/stable/fontbakery/profiles/Outline Correctness Checks.html#com.google.fonts/check/outline_jaggy_segments">com.google.fonts/check/outline_jaggy_segments</a>)</summary><div>


* ⚠ **WARN** The following glyphs have jaggy segments:

	* m (U+006D): B<<296.0,511.0>-<209.0,510.0>-<184.0,390.0>>/L<<184.0,390.0>--<184.0,520.0>> = 11.768288932020628

	* n (U+006E): B<<343.0,511.0>-<219.0,511.0>-<184.0,358.0>>/L<<184.0,358.0>--<184.0,520.0>> = 12.885169399703255

	* nacute (U+0144): B<<343.0,511.0>-<219.0,511.0>-<184.0,358.0>>/L<<184.0,358.0>--<184.0,520.0>> = 12.885169399703255

	* napostrophe (U+0149): B<<469.0,511.0>-<345.0,511.0>-<310.0,358.0>>/L<<310.0,358.0>--<310.0,520.0>> = 12.885169399703255

	* ncaron (U+0148): B<<343.0,511.0>-<219.0,511.0>-<184.0,358.0>>/L<<184.0,358.0>--<184.0,520.0>> = 12.885169399703255

	* ntilde (U+00F1): B<<343.0,511.0>-<219.0,511.0>-<184.0,358.0>>/L<<184.0,358.0>--<184.0,520.0>> = 12.885169399703255

	* r (U+0072): B<<334.0,526.0>-<211.0,526.0>-<185.0,359.0>>/L<<185.0,359.0>--<185.0,521.0>> = 8.849258470701027

	* racute (U+0155): B<<334.0,526.0>-<211.0,526.0>-<185.0,359.0>>/L<<185.0,359.0>--<185.0,521.0>> = 8.849258470701027

	* rcaron (U+0159): B<<334.0,526.0>-<211.0,526.0>-<185.0,359.0>>/L<<185.0,359.0>--<185.0,521.0>> = 8.849258470701027

	* sterling (U+00A3): B<<211.0,136.0>-<192.0,136.0>-<166.0,108.0>>/B<<166.0,108.0>-<187.0,137.0>-<210.0,187.0>> = 6.96918052416083

	* u (U+0075): B<<232.0,-15.0>-<362.0,-15.0>-<386.0,111.0>>/L<<386.0,111.0>--<386.0,58.0>> = 10.784297867562596

	* uacute (U+00FA): B<<232.0,-15.0>-<362.0,-15.0>-<386.0,111.0>>/L<<386.0,111.0>--<386.0,58.0>> = 10.784297867562596

	* ubreve (U+016D): B<<232.0,-15.0>-<362.0,-15.0>-<386.0,111.0>>/L<<386.0,111.0>--<386.0,58.0>> = 10.784297867562596

	* ucircumflex (U+00FB): B<<232.0,-15.0>-<362.0,-15.0>-<386.0,111.0>>/L<<386.0,111.0>--<386.0,58.0>> = 10.784297867562596

	* udieresis (U+00FC): B<<232.0,-15.0>-<362.0,-15.0>-<386.0,111.0>>/L<<386.0,111.0>--<386.0,58.0>> = 10.784297867562596

	* ugrave (U+00F9): B<<232.0,-15.0>-<362.0,-15.0>-<386.0,111.0>>/L<<386.0,111.0>--<386.0,58.0>> = 10.784297867562596

	* uhorn (U+01B0): B<<232.0,-15.0>-<362.0,-15.0>-<386.0,111.0>>/L<<386.0,111.0>--<386.0,58.0>> = 10.784297867562596

	* uhungarumlaut (U+0171): B<<232.0,-15.0>-<362.0,-15.0>-<386.0,111.0>>/L<<386.0,111.0>--<386.0,58.0>> = 10.784297867562596

	* umacron (U+016B): B<<232.0,-15.0>-<362.0,-15.0>-<386.0,111.0>>/L<<386.0,111.0>--<386.0,58.0>> = 10.784297867562596

	* uni0146 (U+0146): B<<343.0,511.0>-<219.0,511.0>-<184.0,358.0>>/L<<184.0,358.0>--<184.0,520.0>> = 12.885169399703255

	* uni0157 (U+0157): B<<334.0,526.0>-<211.0,526.0>-<185.0,359.0>>/L<<185.0,359.0>--<185.0,521.0>> = 8.849258470701027

	* uni0187 (U+0187): L<<652.0,143.0>--<655.0,149.0>>/B<<655.0,149.0>-<627.0,109.0>-<568.0,80.0>> = 8.426969021480678

	* uni0187 (U+0187): L<<672.0,170.0>--<652.0,143.0>>/L<<652.0,143.0>--<655.0,149.0>> = 9.963804189907195

	* uni01CC (U+01CC): B<<343.0,511.0>-<219.0,511.0>-<184.0,358.0>>/L<<184.0,358.0>--<184.0,520.0>> = 12.885169399703255

	* uni01D4 (U+01D4): B<<232.0,-15.0>-<362.0,-15.0>-<386.0,111.0>>/L<<386.0,111.0>--<386.0,58.0>> = 10.784297867562596

	* uni01D6 (U+01D6): B<<232.0,-15.0>-<362.0,-15.0>-<386.0,111.0>>/L<<386.0,111.0>--<386.0,58.0>> = 10.784297867562596

	* uni01D8 (U+01D8): B<<232.0,-15.0>-<362.0,-15.0>-<386.0,111.0>>/L<<386.0,111.0>--<386.0,58.0>> = 10.784297867562596

	* uni01DA (U+01DA): B<<232.0,-15.0>-<362.0,-15.0>-<386.0,111.0>>/L<<386.0,111.0>--<386.0,58.0>> = 10.784297867562596

	* uni01DC (U+01DC): B<<232.0,-15.0>-<362.0,-15.0>-<386.0,111.0>>/L<<386.0,111.0>--<386.0,58.0>> = 10.784297867562596

	* uni01F9 (U+01F9): B<<343.0,511.0>-<219.0,511.0>-<184.0,358.0>>/L<<184.0,358.0>--<184.0,520.0>> = 12.885169399703255

	* uni0211 (U+0211): B<<334.0,526.0>-<211.0,526.0>-<185.0,359.0>>/L<<185.0,359.0>--<185.0,521.0>> = 8.849258470701027

	* uni0213 (U+0213): B<<334.0,526.0>-<211.0,526.0>-<185.0,359.0>>/L<<185.0,359.0>--<185.0,521.0>> = 8.849258470701027

	* uni0215 (U+0215): B<<232.0,-15.0>-<362.0,-15.0>-<386.0,111.0>>/L<<386.0,111.0>--<386.0,58.0>> = 10.784297867562596

	* uni0217 (U+0217): B<<232.0,-15.0>-<362.0,-15.0>-<386.0,111.0>>/L<<386.0,111.0>--<386.0,58.0>> = 10.784297867562596

	* uni2615 (U+2615): L<<318.0,795.0>--<330.0,802.0>>/L<<330.0,802.0>--<316.0,797.0>> = 10.602613105475951

	* uni2615 (U+2615): L<<476.0,818.0>--<488.0,825.0>>/L<<488.0,825.0>--<473.0,820.0>> = 11.821488340607257

	* uni2615 (U+2615): L<<642.0,795.0>--<654.0,802.0>>/L<<654.0,802.0>--<640.0,797.0>> = 10.602613105475951

	* uni2620 (U+2620): L<<537.0,172.0>--<531.0,172.0>>/B<<531.0,172.0>-<543.0,173.0>-<548.0,174.0>> = 4.763641690726143

	* uni2620 (U+2620): L<<548.0,129.0>--<551.0,129.0>>/B<<551.0,129.0>-<541.0,127.0>-<537.0,126.0>> = 11.309932474020195

	* uni2623 (U+2623): B<<256.0,12.0>-<200.0,12.0>-<152.0,42.0>>/B<<152.0,42.0>-<219.0,-7.0>-<299.0,-7.0>> = 4.174237239895358

	* uni2623 (U+2623): B<<337.0,759.0>-<367.0,806.0>-<417.0,829.0>>/B<<417.0,829.0>-<345.0,803.0>-<300.0,740.0>> = 4.847215858450157

	* uni2623 (U+2623): B<<347.0,379.0>-<389.0,356.0>-<416.0,317.0>>/L<<416.0,317.0>--<410.0,328.0>> = 6.0846938652687355

	* uni2623 (U+2623): B<<51.0,241.0>-<51.0,188.0>-<76.0,136.0>>/B<<76.0,136.0>-<62.0,171.0>-<62.0,206.0>> = 3.8754061954864123

	* uni2623 (U+2623): B<<701.0,-7.0>-<780.0,-7.0>-<846.0,41.0>>/B<<846.0,41.0>-<798.0,12.0>-<744.0,12.0>> = 4.888400948124718

	* uni2623 (U+2623): B<<702.0,744.0>-<653.0,808.0>-<577.0,833.0>>/B<<577.0,833.0>-<630.0,810.0>-<662.0,762.0>> = 5.2505396108807005

	* uni2623 (U+2623): B<<939.0,206.0>-<939.0,174.0>-<926.0,140.0>>/B<<926.0,140.0>-<949.0,189.0>-<949.0,241.0>> = 4.220283885757801

	* uni262F (U+262F): B<<358.0,101.0>-<389.0,57.0>-<438.0,37.0>>/B<<438.0,37.0>-<316.0,60.0>-<234.0,157.0>> = 11.527122849361595

	* uni2668 (U+2668): L<<377.0,684.0>--<386.0,690.0>>/L<<386.0,690.0>--<375.0,686.0>> = 13.70696100407981

	* uni2668 (U+2668): L<<679.0,684.0>--<688.0,690.0>>/L<<688.0,690.0>--<677.0,686.0>> = 13.70696100407981

	* uni305D (U+305D): L<<350.0,353.0>--<599.0,410.0>>/B<<599.0,410.0>-<360.0,294.0>-<360.0,170.0>> = 12.996135596915877

	* uni305E (U+305E): L<<334.0,353.0>--<583.0,410.0>>/B<<583.0,410.0>-<344.0,294.0>-<344.0,170.0>> = 12.996135596915877

	* uni30ED (U+30ED): B<<349.0,174.0>-<290.0,174.0>-<290.0,171.0>>/B<<290.0,171.0>-<285.0,202.0>-<282.0,302.0>> = 9.162347045721706

	* uni322B (U+322B): B<<227.0,-55.0>-<500.0,86.0>-<507.0,503.0>>/B<<507.0,503.0>-<559.0,99.0>-<743.0,-56.0>> = 8.296088131275422

	* uni322C (U+322C): L<<538.0,12.0>--<538.0,588.0>>/B<<538.0,588.0>-<567.0,207.0>-<766.0,24.0>> = 4.352703133235981

	* uni4F3D (U+4F3D): B<<314.0,587.0>-<280.0,592.0>-<278.0,594.0>>/B<<278.0,594.0>-<304.0,562.0>-<319.0,545.0>> = 5.906141113770497

	* uni4FD7 (U+4FD7): L<<489.0,22.0>--<751.0,22.0>>/B<<751.0,22.0>-<747.0,21.0>-<747.0,-21.0>> = 14.036243467926484

	* uni4FDD (U+4FDD): L<<460.0,513.0>--<773.0,513.0>>/B<<773.0,513.0>-<769.0,512.0>-<769.0,480.0>> = 14.036243467926484

	* uni4FE3 (U+4FE3): L<<460.0,535.0>--<773.0,535.0>>/B<<773.0,535.0>-<769.0,534.0>-<769.0,508.0>> = 14.036243467926484

	* uni50CD (U+50CD): B<<745.0,576.0>-<646.0,576.0>-<633.0,589.0>>/B<<633.0,589.0>-<678.0,550.0>-<679.0,534.0>> = 4.085616779974798

	* uni5152 (U+5152): B<<225.0,700.0>-<139.0,730.0>-<139.0,732.0>>/L<<139.0,732.0>--<138.0,727.0>> = 11.309932474020227

	* uni515C (U+515C): B<<187.0,700.0>-<101.0,730.0>-<101.0,732.0>>/L<<101.0,732.0>--<100.0,727.0>> = 11.309932474020227

	* uni51DD (U+51DD): B<<595.0,480.0>-<546.0,485.0>-<544.0,487.0>>/B<<544.0,487.0>-<586.0,456.0>-<596.0,432.0>> = 8.569141879837604

	* uni51DD (U+51DD): B<<642.0,769.0>-<588.0,774.0>-<586.0,776.0>>/B<<586.0,776.0>-<628.0,745.0>-<640.0,721.0>> = 8.569141879837604

	* uni5206 (U+5206): B<<262.0,463.0>-<227.0,468.0>-<226.0,470.0>>/B<<226.0,470.0>-<239.0,431.0>-<239.0,415.0>> = 8.13010235415587

	* uni5289 (U+5289): B<<36.0,307.0>-<31.0,305.0>-<31.0,308.0>>/B<<31.0,308.0>-<30.0,304.0>-<30.0,300.0>> = 14.036243467926484

	* uni5289 (U+5289): B<<366.0,777.0>-<337.0,782.0>-<335.0,784.0>>/B<<335.0,784.0>-<353.0,762.0>-<367.0,733.0>> = 5.710593137499633

	* uni529F (U+529F): B<<402.0,587.0>-<369.0,592.0>-<367.0,594.0>>/B<<367.0,594.0>-<387.0,564.0>-<401.0,545.0>> = 11.309932474020195

	* uni52A0 (U+52A0): B<<60.0,587.0>-<25.0,592.0>-<23.0,594.0>>/B<<23.0,594.0>-<49.0,562.0>-<64.0,545.0>> = 5.906141113770497

	* uni52A9 (U+52A9): B<<484.0,587.0>-<451.0,592.0>-<449.0,594.0>>/B<<449.0,594.0>-<469.0,564.0>-<483.0,545.0>> = 11.309932474020195

	* uni52AB (U+52AB): B<<516.0,573.0>-<483.0,578.0>-<481.0,580.0>>/B<<481.0,580.0>-<501.0,554.0>-<527.0,531.0>> = 7.431407971172489

	* uni52B1 (U+52B1): B<<578.0,587.0>-<549.0,592.0>-<547.0,594.0>>/B<<547.0,594.0>-<567.0,564.0>-<581.0,545.0>> = 11.309932474020195

	* uni52B9 (U+52B9): B<<524.0,587.0>-<491.0,592.0>-<489.0,594.0>>/B<<489.0,594.0>-<509.0,564.0>-<523.0,545.0>> = 11.309932474020195

	* uni52BE (U+52BE): B<<535.0,587.0>-<507.0,592.0>-<505.0,594.0>>/B<<505.0,594.0>-<525.0,564.0>-<539.0,545.0>> = 11.309932474020195

	* uni52C5 (U+52C5): B<<562.0,587.0>-<534.0,592.0>-<532.0,594.0>>/B<<532.0,594.0>-<552.0,564.0>-<566.0,545.0>> = 11.309932474020195

	* uni52C7 (U+52C7): B<<96.0,231.0>-<72.0,236.0>-<70.0,238.0>>/B<<70.0,238.0>-<110.0,200.0>-<110.0,183.0>> = 1.4688007143857

	* uni52C9 (U+52C9): B<<639.0,581.0>-<552.0,583.0>-<540.0,594.0>>/B<<540.0,594.0>-<560.0,564.0>-<574.0,545.0>> = 13.799485396019389

	* uni52D5 (U+52D5): B<<550.0,582.0>-<526.0,587.0>-<524.0,589.0>>/B<<524.0,589.0>-<564.0,550.0>-<564.0,534.0>> = 0.7252242990591836

	* uni52D9 (U+52D9): B<<448.0,289.0>-<424.0,294.0>-<422.0,296.0>>/B<<422.0,296.0>-<462.0,258.0>-<463.0,242.0>> = 1.4688007143857

	* uni52E4 (U+52E4): B<<566.0,585.0>-<542.0,590.0>-<540.0,592.0>>/B<<540.0,592.0>-<580.0,553.0>-<581.0,537.0>> = 0.7252242990591836

	* uni52E7 (U+52E7): B<<554.0,585.0>-<533.0,590.0>-<531.0,592.0>>/B<<531.0,592.0>-<571.0,553.0>-<572.0,537.0>> = 0.7252242990591836

	* uni52F2 (U+52F2): B<<553.0,621.0>-<529.0,626.0>-<527.0,628.0>>/B<<527.0,628.0>-<567.0,589.0>-<567.0,573.0>> = 0.7252242990591836

	* uni5354 (U+5354): B<<309.0,303.0>-<267.0,308.0>-<265.0,310.0>>/B<<265.0,310.0>-<295.0,276.0>-<309.0,255.0>> = 3.5763343749973706

	* uni5354 (U+5354): B<<369.0,727.0>-<326.0,732.0>-<324.0,734.0>>/B<<324.0,734.0>-<354.0,700.0>-<369.0,679.0>> = 3.5763343749973706

	* uni5354 (U+5354): B<<656.0,303.0>-<627.0,308.0>-<625.0,310.0>>/B<<625.0,310.0>-<653.0,281.0>-<669.0,260.0>> = 1.005086005254142

	* uni53AD (U+53AD): B<<578.0,-60.0>-<736.0,21.0>-<764.0,372.0>>/B<<764.0,372.0>-<801.0,51.0>-<921.0,-60.0>> = 11.1361149051353

	* uni53AD (U+53AD): L<<316.0,451.0>--<473.0,451.0>>/B<<473.0,451.0>-<469.0,450.0>-<469.0,440.0>> = 14.036243467926484

	* uni53CA (U+53CA): B<<143.0,780.0>-<110.0,785.0>-<108.0,787.0>>/B<<108.0,787.0>-<150.0,756.0>-<161.0,732.0>> = 8.569141879837604

	* uni53EC (U+53EC): B<<147.0,781.0>-<112.0,786.0>-<110.0,788.0>>/B<<110.0,788.0>-<134.0,761.0>-<158.0,733.0>> = 3.3664606634297236

	* uni5438 (U+5438): B<<355.0,780.0>-<322.0,785.0>-<320.0,787.0>>/B<<320.0,787.0>-<362.0,756.0>-<373.0,732.0>> = 8.569141879837604

	* uni5609 (U+5609): B<<70.0,188.0>-<36.0,193.0>-<34.0,195.0>>/B<<34.0,195.0>-<62.0,171.0>-<90.0,146.0>> = 4.398705354995508

	* uni567A (U+567A): L<<284.0,729.0>--<278.0,737.0>>/L<<278.0,737.0>--<318.0,679.0>> = 2.2776089583339174

	* uni5B54 (U+5B54): B<<125.0,766.0>-<92.0,771.0>-<90.0,773.0>>/B<<90.0,773.0>-<116.0,742.0>-<130.0,718.0>> = 5.013113755035814

	* uni5E7C (U+5E7C): B<<526.0,587.0>-<513.0,592.0>-<511.0,594.0>>/B<<511.0,594.0>-<531.0,564.0>-<545.0,545.0>> = 11.309932474020195

	* uni5F6C (U+5F6C): B<<317.0,122.0>-<415.0,277.0>-<432.0,358.0>>/L<<432.0,358.0>--<432.0,42.0>> = 11.853004167744011

	* uni5F6C (U+5F6C): B<<43.0,122.0>-<123.0,249.0>-<146.0,358.0>>/L<<146.0,358.0>--<146.0,42.0>> = 11.915147071265011

	* uni604A (U+604A): B<<311.0,303.0>-<274.0,308.0>-<272.0,310.0>>/B<<272.0,310.0>-<302.0,276.0>-<316.0,255.0>> = 3.5763343749973706

	* uni604A (U+604A): B<<415.0,727.0>-<372.0,732.0>-<370.0,734.0>>/B<<370.0,734.0>-<400.0,700.0>-<415.0,679.0>> = 3.5763343749973706

	* uni604A (U+604A): B<<654.0,303.0>-<625.0,308.0>-<623.0,310.0>>/B<<623.0,310.0>-<651.0,281.0>-<667.0,260.0>> = 1.005086005254142

	* uni6062 (U+6062): B<<975.0,41.0>-<749.0,124.0>-<713.0,411.0>>/B<<713.0,411.0>-<710.0,377.0>-<707.0,342.0>> = 12.19203679028585

	* uni6271 (U+6271): B<<345.0,780.0>-<312.0,785.0>-<310.0,787.0>>/B<<310.0,787.0>-<352.0,756.0>-<363.0,732.0>> = 8.569141879837604

	* uni62D0 (U+62D0): B<<415.0,355.0>-<367.0,360.0>-<365.0,362.0>>/B<<365.0,362.0>-<385.0,336.0>-<405.0,308.0>> = 7.431407971172489

	* uni62DB (U+62DB): B<<415.0,781.0>-<367.0,786.0>-<365.0,788.0>>/B<<365.0,788.0>-<385.0,761.0>-<405.0,733.0>> = 8.47114463301479

	* uni65B0 (U+65B0): B<<548.0,728.0>-<542.0,728.0>-<541.0,734.0>>/L<<541.0,734.0>--<546.0,677.0>> = 4.449208452989808

	* uni65CB (U+65CB): B<<544.0,562.0>-<503.0,568.0>-<501.0,570.0>>/B<<501.0,570.0>-<523.0,539.0>-<537.0,515.0>> = 9.637538112930923

	* uni66F3 (U+66F3): B<<735.0,289.0>-<735.0,279.0>-<761.0,278.0>>/L<<761.0,278.0>--<737.0,278.0>> = 2.2025981617658017

	* uni67B6 (U+67B6): B<<56.0,708.0>-<22.0,713.0>-<20.0,715.0>>/B<<20.0,715.0>-<48.0,691.0>-<76.0,666.0>> = 4.398705354995508

	* uni6912 (U+6912): B<<43.0,122.0>-<106.0,225.0>-<136.0,358.0>>/L<<136.0,358.0>--<136.0,42.0>> = 12.711132565529468

	* uni6919 (U+6919): B<<52.0,133.0>-<150.0,239.0>-<182.0,369.0>>/L<<182.0,369.0>--<182.0,42.0>> = 13.828650972280153

	* uni691B (U+691B): B<<52.0,133.0>-<150.0,239.0>-<182.0,369.0>>/L<<182.0,369.0>--<182.0,42.0>> = 13.828650972280153

	* uni6934 (U+6934): B<<56.0,140.0>-<119.0,243.0>-<149.0,376.0>>/L<<149.0,376.0>--<149.0,42.0>> = 12.711132565529468

	* uni696F (U+696F): B<<47.0,133.0>-<149.0,239.0>-<180.0,369.0>>/L<<180.0,369.0>--<180.0,42.0>> = 13.412357641868404

	* uni6973 (U+6973): B<<49.0,133.0>-<153.0,239.0>-<183.0,369.0>>/L<<183.0,369.0>--<183.0,42.0>> = 12.994616791916512

	* uni6977 (U+6977): B<<47.0,155.0>-<154.0,285.0>-<180.0,391.0>>/L<<180.0,391.0>--<180.0,42.0>> = 13.78159723565362

	* uni697C (U+697C): B<<47.0,133.0>-<151.0,239.0>-<181.0,369.0>>/L<<181.0,369.0>--<181.0,42.0>> = 12.994616791916512

	* uni6982 (U+6982): B<<49.0,133.0>-<112.0,236.0>-<142.0,369.0>>/L<<142.0,369.0>--<142.0,42.0>> = 12.711132565529468

	* uni698E (U+698E): B<<47.0,133.0>-<149.0,239.0>-<180.0,369.0>>/L<<180.0,369.0>--<180.0,42.0>> = 13.412357641868404

	* uni699B (U+699B): B<<42.0,133.0>-<144.0,239.0>-<175.0,369.0>>/L<<175.0,369.0>--<175.0,42.0>> = 13.412357641868404

	* uni69FB (U+69FB): B<<44.0,132.0>-<110.0,242.0>-<133.0,380.0>>/L<<133.0,380.0>--<133.0,42.0>> = 9.462322208025613

	* uni6A19 (U+6A19): B<<52.0,133.0>-<143.0,261.0>-<165.0,369.0>>/L<<165.0,369.0>--<165.0,42.0>> = 11.513831184487014

	* uni6A1F (U+6A1F): B<<42.0,133.0>-<133.0,261.0>-<155.0,369.0>>/L<<155.0,369.0>--<155.0,42.0>> = 11.513831184487014

	* uni6A39 (U+6A39): B<<40.0,125.0>-<115.0,262.0>-<134.0,398.0>>/L<<134.0,398.0>--<134.0,42.0>> = 7.953081971438419

	* uni6A5F (U+6A5F): L<<297.0,724.0>--<298.0,719.0>>/B<<298.0,719.0>-<298.0,720.0>-<310.0,707.0>> = 11.309932474020195

	* uni6C34 (U+6C34): L<<538.0,12.0>--<538.0,588.0>>/B<<538.0,588.0>-<633.0,166.0>-<898.0,1.0>> = 12.686844814545529

	* uni6C37 (U+6C37): L<<538.0,12.0>--<538.0,588.0>>/B<<538.0,588.0>-<633.0,166.0>-<898.0,1.0>> = 12.686844814545529

	* uni6C38 (U+6C38): B<<970.0,83.0>-<627.0,230.0>-<542.0,569.0>>/L<<542.0,569.0>--<542.0,481.0>> = 14.076004585425078

	* uni6C5A (U+6C5A): B<<637.0,757.0>-<549.0,757.0>-<549.0,758.0>>/B<<549.0,758.0>-<507.0,508.0>-<438.0,316.0>> = 9.536635758459388

	* uni6C70 (U+6C70): B<<295.0,-60.0>-<623.0,180.0>-<636.0,488.0>>/B<<636.0,488.0>-<723.0,61.0>-<915.0,-60.0>> = 13.93311082448035

	* uni6C72 (U+6C72): B<<350.0,780.0>-<317.0,785.0>-<315.0,787.0>>/B<<315.0,787.0>-<357.0,756.0>-<367.0,732.0>> = 8.569141879837604

	* uni6C90 (U+6C90): L<<670.0,42.0>--<670.0,530.0>>/B<<670.0,530.0>-<723.0,289.0>-<915.0,50.0>> = 12.40288312176521

	* uni6CBC (U+6CBC): B<<393.0,762.0>-<348.0,767.0>-<346.0,769.0>>/B<<346.0,769.0>-<363.0,742.0>-<380.0,714.0>> = 12.804266065286768

	* uni6CF3 (U+6CF3): B<<985.0,83.0>-<749.0,231.0>-<676.0,569.0>>/L<<676.0,569.0>--<676.0,486.0>> = 12.187337532917077

	* uni6DCB (U+6DCB): L<<790.0,42.0>--<790.0,506.0>>/B<<790.0,506.0>-<836.0,264.0>-<933.0,81.0>> = 10.762537223142443

	* uni6E9C (U+6E9C): B<<644.0,770.0>-<613.0,775.0>-<611.0,777.0>>/B<<611.0,777.0>-<628.0,750.0>-<645.0,722.0>> = 12.804266065286768

	* uni6F54 (U+6F54): B<<650.0,783.0>-<610.0,788.0>-<608.0,790.0>>/B<<608.0,790.0>-<625.0,765.0>-<642.0,738.0>> = 10.784297867562596

	* uni7078 (U+7078): B<<955.0,26.0>-<545.0,63.0>-<523.0,375.0>>/B<<523.0,375.0>-<519.0,327.0>-<519.0,297.0>> = 8.797052763496362

	* uni7167 (U+7167): B<<456.0,797.0>-<416.0,802.0>-<414.0,804.0>>/B<<414.0,804.0>-<431.0,777.0>-<448.0,749.0>> = 12.804266065286768

	* uni7344 (U+7344): B<<623.0,-60.0>-<774.0,72.0>-<792.0,380.0>>/B<<792.0,380.0>-<808.0,112.0>-<920.0,-60.0>> = 6.761238510037184

	* uni7433 (U+7433): L<<800.0,42.0>--<800.0,506.0>>/B<<800.0,506.0>-<835.0,259.0>-<933.0,81.0>> = 8.065141180729228

	* uni7525 (U+7525): B<<408.0,292.0>-<374.0,297.0>-<372.0,299.0>>/B<<372.0,299.0>-<394.0,269.0>-<416.0,249.0>> = 8.746162262555211

	* uni7559 (U+7559): B<<535.0,780.0>-<495.0,785.0>-<493.0,787.0>>/B<<493.0,787.0>-<510.0,760.0>-<527.0,732.0>> = 12.804266065286768

	* uni758E (U+758E): B<<79.0,780.0>-<46.0,785.0>-<44.0,787.0>>/B<<44.0,787.0>-<70.0,756.0>-<84.0,732.0>> = 5.013113755035814

	* uni758F (U+758F): B<<87.0,780.0>-<54.0,785.0>-<52.0,787.0>>/B<<52.0,787.0>-<78.0,756.0>-<92.0,732.0>> = 5.013113755035814

	* uni7591 (U+7591): B<<504.0,480.0>-<454.0,485.0>-<452.0,487.0>>/B<<452.0,487.0>-<494.0,456.0>-<505.0,432.0>> = 8.569141879837604

	* uni7591 (U+7591): B<<546.0,780.0>-<496.0,785.0>-<494.0,787.0>>/B<<494.0,787.0>-<536.0,756.0>-<547.0,732.0>> = 8.569141879837604

	* uni76C6 (U+76C6): B<<288.0,600.0>-<254.0,605.0>-<252.0,607.0>>/B<<252.0,607.0>-<276.0,579.0>-<285.0,558.0>> = 4.398705354995508

	* uni788C (U+788C): B<<975.0,61.0>-<777.0,152.0>-<723.0,431.0>>/L<<723.0,431.0>--<723.0,389.0>> = 10.954062643398299

	* uni798E (U+798E): B<<429.0,631.0>-<426.0,631.0>-<426.0,632.0>>/L<<426.0,632.0>--<431.0,580.0>> = 5.492324557127453

	* uni7A83 (U+7A83): B<<461.0,399.0>-<428.0,406.0>-<426.0,408.0>>/B<<426.0,408.0>-<460.0,376.0>-<494.0,344.0>> = 1.735704588928346

	* uni7B08 (U+7B08): B<<154.0,527.0>-<121.0,532.0>-<119.0,534.0>>/B<<119.0,534.0>-<161.0,503.0>-<172.0,479.0>> = 8.569141879837604

	* uni7B4B (U+7B4B): B<<489.0,411.0>-<455.0,416.0>-<453.0,418.0>>/B<<453.0,418.0>-<485.0,388.0>-<502.0,368.0>> = 1.8476102659945155

	* uni7C89 (U+7C89): B<<527.0,447.0>-<498.0,452.0>-<496.0,454.0>>/B<<496.0,454.0>-<520.0,420.0>-<523.0,399.0>> = 9.782407031807248

	* uni7CA5 (U+7CA5): B<<351.0,36.0>-<449.0,165.0>-<476.0,280.0>>/L<<476.0,280.0>--<476.0,52.0>> = 13.212746878335233

	* uni7D1B (U+7D1B): B<<527.0,447.0>-<498.0,452.0>-<496.0,454.0>>/B<<496.0,454.0>-<520.0,420.0>-<523.0,399.0>> = 9.782407031807248

	* uni7D39 (U+7D39): B<<463.0,781.0>-<415.0,786.0>-<413.0,788.0>>/B<<413.0,788.0>-<433.0,761.0>-<453.0,733.0>> = 8.47114463301479

	* uni7D99 (U+7D99): B<<565.0,158.0>-<678.0,235.0>-<702.0,353.0>>/L<<702.0,353.0>--<702.0,177.0>> = 11.496563017585768

	* uni7DD1 (U+7DD1): B<<985.0,59.0>-<777.0,160.0>-<723.0,441.0>>/L<<723.0,441.0>--<723.0,390.0>> = 10.877964253816563

	* uni7DDA (U+7DDA): B<<476.0,751.0>-<472.0,751.0>-<472.0,752.0>>/L<<472.0,752.0>--<478.0,698.0>> = 6.340191745909908

	* uni7DDA (U+7DDA): B<<985.0,70.0>-<773.0,141.0>-<718.0,436.0>>/L<<718.0,436.0>--<718.0,375.0>> = 10.561010691196365

	* uni7FCC (U+7FCC): B<<539.0,789.0>-<504.0,794.0>-<502.0,796.0>>/B<<502.0,796.0>-<524.0,769.0>-<546.0,741.0>> = 5.826342029555751

	* uni7FCC (U+7FCC): B<<92.0,789.0>-<57.0,794.0>-<55.0,796.0>>/B<<55.0,796.0>-<77.0,769.0>-<99.0,741.0>> = 5.826342029555751

	* uni7FD2 (U+7FD2): B<<539.0,789.0>-<504.0,794.0>-<502.0,796.0>>/B<<502.0,796.0>-<524.0,769.0>-<546.0,741.0>> = 5.826342029555751

	* uni7FD2 (U+7FD2): B<<92.0,789.0>-<57.0,794.0>-<55.0,796.0>>/B<<55.0,796.0>-<77.0,769.0>-<99.0,741.0>> = 5.826342029555751

	* uni808B (U+808B): B<<430.0,594.0>-<406.0,599.0>-<404.0,601.0>>/B<<404.0,601.0>-<444.0,562.0>-<444.0,546.0>> = 0.7252242990591836

	* uni8105 (U+8105): B<<205.0,793.0>-<162.0,798.0>-<160.0,800.0>>/B<<160.0,800.0>-<201.0,774.0>-<206.0,754.0>> = 12.619322293430741

	* uni8105 (U+8105): B<<546.0,573.0>-<510.0,578.0>-<508.0,580.0>>/B<<508.0,580.0>-<548.0,554.0>-<554.0,533.0>> = 11.976132444203364

	* uni8105 (U+8105): B<<90.0,573.0>-<47.0,578.0>-<45.0,580.0>>/B<<45.0,580.0>-<78.0,554.0>-<91.0,533.0>> = 6.766174822553013

	* uni8107 (U+8107): B<<378.0,303.0>-<341.0,308.0>-<339.0,310.0>>/B<<339.0,310.0>-<369.0,276.0>-<383.0,255.0>> = 3.5763343749973706

	* uni8107 (U+8107): B<<457.0,727.0>-<414.0,732.0>-<412.0,734.0>>/B<<412.0,734.0>-<442.0,700.0>-<457.0,679.0>> = 3.5763343749973706

	* uni8107 (U+8107): B<<696.0,303.0>-<667.0,308.0>-<665.0,310.0>>/B<<665.0,310.0>-<693.0,281.0>-<709.0,260.0>> = 1.005086005254142

	* uni8109 (U+8109): B<<984.0,83.0>-<776.0,269.0>-<706.0,576.0>>/L<<706.0,576.0>--<706.0,493.0>> = 12.844592480019376

	* uni817A (U+817A): B<<975.0,76.0>-<762.0,163.0>-<693.0,463.0>>/L<<693.0,463.0>--<693.0,412.0>> = 12.952764513375511

	* uni8304 (U+8304): B<<60.0,497.0>-<25.0,502.0>-<23.0,504.0>>/B<<23.0,504.0>-<49.0,472.0>-<64.0,455.0>> = 5.906141113770497

	* uni839E (U+839E): L<<207.0,316.0>--<207.0,316.0>>/B<<207.0,316.0>-<125.0,317.0>-<67.0,327.0>> = 0.6986943829831717

	* uni857E (U+857E): L<<460.0,382.0>--<459.0,407.0>>/L<<459.0,407.0>--<454.0,344.0>> = 6.828382550545117

	* uni857E (U+857E): L<<460.0,523.0>--<460.0,382.0>>/L<<460.0,382.0>--<459.0,407.0>> = 2.2906100426384346

	* uni8607 (U+8607): L<<767.0,42.0>--<767.0,345.0>>/B<<767.0,345.0>-<794.0,182.0>-<917.0,15.0>> = 9.405311500956875

	* uni865C (U+865C): L<<351.0,225.0>--<773.0,225.0>>/B<<773.0,225.0>-<769.0,224.0>-<769.0,201.0>> = 14.036243467926484

	* uni87F9 (U+87F9): B<<543.0,788.0>-<508.0,791.0>-<506.0,792.0>>/B<<506.0,792.0>-<537.0,772.0>-<550.0,756.0>> = 6.263490614334446

	* uni8888 (U+8888): B<<76.0,723.0>-<42.0,728.0>-<40.0,730.0>>/B<<40.0,730.0>-<68.0,706.0>-<96.0,681.0>> = 4.398705354995508

	* uni8912 (U+8912): L<<502.0,550.0>--<756.0,550.0>>/B<<756.0,550.0>-<752.0,549.0>-<752.0,529.0>> = 14.036243467926484

	* uni89E3 (U+89E3): B<<466.0,748.0>-<431.0,753.0>-<429.0,755.0>>/B<<429.0,755.0>-<473.0,716.0>-<473.0,700.0>> = 3.4473868518651964

	* uni8A54 (U+8A54): B<<450.0,781.0>-<407.0,786.0>-<405.0,788.0>>/B<<405.0,788.0>-<429.0,760.0>-<453.0,733.0>> = 4.398705354995508

	* uni8A60 (U+8A60): B<<975.0,123.0>-<781.0,238.0>-<722.0,569.0>>/L<<722.0,569.0>--<722.0,486.0>> = 10.106697449301361

	* uni8A72 (U+8A72): B<<428.0,560.0>-<416.0,559.0>-<418.0,547.0>>/B<<418.0,547.0>-<418.0,548.0>-<426.0,544.0>> = 9.462322208025613

	* uni8B0E (U+8B0E): L<<759.0,168.0>--<759.0,455.0>>/B<<759.0,455.0>-<801.0,270.0>-<922.0,134.0>> = 12.790879201158143

	* uni8C82 (U+8C82): B<<474.0,781.0>-<428.0,786.0>-<426.0,788.0>>/B<<426.0,788.0>-<445.0,760.0>-<464.0,733.0>> = 10.840305454330533

	* uni8CA7 (U+8CA7): B<<282.0,700.0>-<248.0,705.0>-<246.0,707.0>>/B<<246.0,707.0>-<302.0,669.0>-<301.0,653.0>> = 10.840305454330533

	* uni8CBF (U+8CBF): B<<535.0,780.0>-<495.0,785.0>-<493.0,787.0>>/B<<493.0,787.0>-<510.0,760.0>-<527.0,732.0>> = 12.804266065286768

	* uni8CC0 (U+8CC0): B<<56.0,747.0>-<22.0,752.0>-<20.0,754.0>>/B<<20.0,754.0>-<48.0,730.0>-<76.0,705.0>> = 4.398705354995508

	* uni8D85 (U+8D85): B<<535.0,761.0>-<500.0,766.0>-<498.0,768.0>>/B<<498.0,768.0>-<522.0,741.0>-<546.0,713.0>> = 3.3664606634297236

	* uni8E0F (U+8E0F): B<<985.0,471.0>-<785.0,556.0>-<747.0,743.0>>/L<<747.0,743.0>--<747.0,650.0>> = 11.486588993922396

	* uni8EB0 (U+8EB0): L<<751.0,206.0>--<751.0,552.0>>/B<<751.0,552.0>-<813.0,271.0>-<935.0,102.0>> = 12.442421375043047

	* uni8FE6 (U+8FE6): B<<323.0,637.0>-<291.0,642.0>-<289.0,644.0>>/B<<289.0,644.0>-<307.0,620.0>-<324.0,595.0>> = 8.13010235415596

	* uni9182 (U+9182): B<<383.0,98.0>-<451.0,201.0>-<498.0,389.0>>/L<<498.0,389.0>--<498.0,42.0>> = 14.036243467926484

	* uni9182 (U+9182): B<<623.0,73.0>-<726.0,253.0>-<758.0,412.0>>/L<<758.0,412.0>--<758.0,42.0>> = 11.37921391487664

	* uni9182 (U+9182): L<<828.0,42.0>--<828.0,527.0>>/B<<828.0,527.0>-<866.0,245.0>-<936.0,81.0>> = 7.674479516893921

	* uni9262 (U+9262): L<<722.0,185.0>--<722.0,518.0>>/B<<722.0,518.0>-<769.0,313.0>-<920.0,134.0>> = 12.912940753851048

	* uni92E4 (U+92E4): B<<648.0,587.0>-<623.0,592.0>-<622.0,594.0>>/L<<622.0,594.0>--<661.0,538.0>> = 8.28940438902565

	* uni932B (U+932B): B<<523.0,-41.0>-<798.0,66.0>-<850.0,347.0>>/B<<850.0,347.0>-<850.0,346.0>-<769.0,345.0>> = 10.48417539652899

	* uni9332 (U+9332): B<<985.0,49.0>-<788.0,150.0>-<733.0,431.0>>/L<<733.0,431.0>--<733.0,380.0>> = 11.074471691970109

	* uni96F0 (U+96F0): B<<262.0,243.0>-<228.0,248.0>-<226.0,250.0>>/B<<226.0,250.0>-<270.0,212.0>-<270.0,196.0>> = 4.184916125118406

	* uni9812 (U+9812): B<<111.0,455.0>-<68.0,460.0>-<66.0,462.0>>/B<<66.0,462.0>-<89.0,434.0>-<95.0,415.0>> = 5.599339336520484

	* uni99D5 (U+99D5): B<<56.0,747.0>-<22.0,752.0>-<20.0,754.0>>/B<<20.0,754.0>-<48.0,730.0>-<76.0,705.0>> = 4.398705354995508

	* uni9BB4 (U+9BB4): L<<795.0,45.0>--<795.0,498.0>>/B<<795.0,498.0>-<842.0,244.0>-<933.0,59.0>> = 10.483399220264296

	* uni9C0D (U+9C0D): B<<391.0,115.0>-<474.0,287.0>-<483.0,324.0>>/L<<483.0,324.0>--<483.0,42.0>> = 13.67130713219584

	* uni9EB9 (U+9EB9): B<<44.0,101.0>-<228.0,268.0>-<266.0,480.0>>/B<<266.0,480.0>-<266.0,479.0>-<182.0,478.0>> = 10.162083194000747

	* uni9EBA (U+9EBA): B<<44.0,101.0>-<228.0,268.0>-<266.0,480.0>>/B<<266.0,480.0>-<266.0,479.0>-<182.0,478.0>> = 10.162083194000747

	* uni9F62 (U+9F62): L<<337.0,164.0>--<337.0,260.0>>/B<<337.0,260.0>-<354.0,158.0>-<398.0,65.0>> = 9.462322208025613

	* uniFF4E (U+FF4E): B<<540.0,511.0>-<369.0,511.0>-<338.0,364.0>>/L<<338.0,364.0>--<338.0,520.0>> = 11.908300061317576

	* uogonek (U+0173): B<<232.0,-15.0>-<362.0,-15.0>-<386.0,111.0>>/L<<386.0,111.0>--<386.0,58.0>> = 10.784297867562596

	* uring (U+016F): B<<232.0,-15.0>-<362.0,-15.0>-<386.0,111.0>>/L<<386.0,111.0>--<386.0,58.0>> = 10.784297867562596

	* utilde (U+0169): B<<232.0,-15.0>-<362.0,-15.0>-<386.0,111.0>>/L<<386.0,111.0>--<386.0,58.0>> = 10.784297867562596 [code: found-jaggy-segments]
</div></details><details><summary>⚠ <b>WARN:</b> Do outlines contain any semi-vertical or semi-horizontal lines? (<a href="https://font-bakery.readthedocs.io/en/stable/fontbakery/profiles/Outline Correctness Checks.html#com.google.fonts/check/outline_semi_vertical">com.google.fonts/check/outline_semi_vertical</a>)</summary><div>


* ⚠ **WARN** The following glyphs have semi-vertical/semi-horizontal lines:

	* AE (U+00C6): L<<808.0,47.0>--<630.0,48.0>>

	* AEacute (U+01FC): L<<808.0,47.0>--<630.0,48.0>>

	* E (U+0045): L<<553.0,47.0>--<268.0,48.0>>

	* Eacute (U+00C9): L<<553.0,47.0>--<268.0,48.0>>

	* Ebreve (U+0114): L<<553.0,47.0>--<268.0,48.0>>

	* Ecaron (U+011A): L<<553.0,47.0>--<268.0,48.0>>

	* Ecircumflex (U+00CA): L<<553.0,47.0>--<268.0,48.0>>

	* Edieresis (U+00CB): L<<553.0,47.0>--<268.0,48.0>>

	* Edotaccent (U+0116): L<<553.0,47.0>--<268.0,48.0>>

	* Egrave (U+00C8): L<<553.0,47.0>--<268.0,48.0>>

	* Emacron (U+0112): L<<553.0,47.0>--<268.0,48.0>>

	* Eogonek (U+0118): L<<553.0,47.0>--<268.0,48.0>>

	* L (U+004C): L<<505.0,47.0>--<278.0,48.0>>

	* Lacute (U+0139): L<<505.0,47.0>--<278.0,48.0>>

	* Lcaron (U+013D): L<<505.0,47.0>--<278.0,48.0>>

	* Ldot (U+013F): L<<505.0,47.0>--<278.0,48.0>>

	* Lslash (U+0141): L<<505.0,47.0>--<278.0,48.0>>

	* OE (U+0152): L<<753.0,47.0>--<572.0,48.0>>

	* P (U+0050): L<<403.0,735.0>--<40.0,736.0>>

	* germandbls (U+00DF): L<<5.0,0.0>--<148.0,1.0>>

	* musicalnotedbl (U+266B): L<<869.0,111.0>--<870.0,776.0>>

	* uni013B (U+013B): L<<505.0,47.0>--<278.0,48.0>>

	* uni0188 (U+0188): L<<440.0,403.0>--<439.0,573.0>>

	* uni018E (U+018E): L<<422.0,48.0>--<137.0,47.0>>

	* uni0191 (U+0191): L<<152.0,645.0>--<154.0,-74.0>>

	* uni01C7 (U+01C7): L<<505.0,47.0>--<278.0,48.0>>

	* uni01C8 (U+01C8): L<<505.0,47.0>--<278.0,48.0>>

	* uni01E2 (U+01E2): L<<808.0,47.0>--<630.0,48.0>>

	* uni0204 (U+0204): L<<553.0,47.0>--<268.0,48.0>>

	* uni0206 (U+0206): L<<553.0,47.0>--<268.0,48.0>>

	* uni0228 (U+0228): L<<553.0,47.0>--<268.0,48.0>>

	* uni2559 (U+2559): L<<384.0,990.0>--<385.0,345.0>>

	* uni255C (U+255C): L<<615.0,345.0>--<616.0,990.0>>

	* uni2578 (U+2578): L<<526.0,304.0>--<525.0,436.0>>

	* uni257A (U+257A): L<<475.0,436.0>--<474.0,304.0>>

	* uni25F0 (U+25F0): L<<865.0,4.0>--<866.0,734.0>>

	* uni25F1 (U+25F1): L<<866.0,4.0>--<865.0,734.0>>

	* uni25F2 (U+25F2): L<<135.0,734.0>--<134.0,4.0>>

	* uni25F3 (U+25F3): L<<134.0,734.0>--<135.0,4.0>>

	* uni261C (U+261C): L<<446.0,317.0>--<329.0,316.0>>

	* uni261D (U+261D): L<<473.0,402.0>--<472.0,519.0>>

	* uni261E (U+261E): L<<639.0,316.0>--<522.0,317.0>>

	* uni261F (U+261F): L<<472.0,195.0>--<473.0,312.0>>

	* uni266C (U+266C): L<<869.0,111.0>--<870.0,776.0>>

	* uni2672 (U+2672): L<<838.0,228.0>--<623.0,229.0>>

	* uni267B (U+267B): L<<838.0,228.0>--<623.0,229.0>>

	* uni267C (U+267C): L<<574.0,279.0>--<731.0,278.0>>

	* uni267D (U+267D): L<<731.0,278.0>--<574.0,279.0>>

	* uni2B08 (U+2B08): L<<910.0,492.0>--<911.0,803.0>>

	* uni2B09 (U+2B09): L<<89.0,803.0>--<90.0,492.0>>

	* uni2B0A (U+2B0A): L<<911.0,-10.0>--<910.0,301.0>>

	* uni2B0B (U+2B0B): L<<90.0,301.0>--<89.0,-10.0>>

	* uni30B5 (U+30B5): L<<620.0,696.0>--<619.0,529.0>>

	* uni30B6 (U+30B6): L<<609.0,696.0>--<608.0,529.0>>

	* uni30D2 (U+30D2): L<<427.0,24.0>--<691.0,23.0>>

	* uni30D3 (U+30D3): L<<427.0,24.0>--<691.0,23.0>>

	* uni30D4 (U+30D4): L<<427.0,24.0>--<691.0,23.0>>

	* uni30E2 (U+30E2): L<<568.0,18.0>--<694.0,17.0>>

	* uni30EA (U+30EA): L<<644.0,696.0>--<646.0,445.0>>

	* uni30FF (U+30FF): L<<486.0,573.0>--<646.0,574.0>>

	* uni322D (U+322D): L<<674.0,581.0>--<536.0,582.0>>

	* uni322E (U+322E): L<<309.0,-28.0>--<782.0,-29.0>>

	* uni3230 (U+3230): L<<380.0,47.0>--<381.0,397.0>>

	* uni4E03 (U+4E03): L<<319.0,429.0>--<321.0,118.0>>

	* uni4E03 (U+4E03): L<<320.0,775.0>--<319.0,463.0>>

	* uni4E07 (U+4E07): L<<451.0,465.0>--<742.0,466.0>>

	* uni4E07 (U+4E07): L<<718.0,495.0>--<457.0,494.0>>

	* uni4E0A (U+4E0A): L<<426.0,763.0>--<425.0,18.0>>

	* uni4E11 (U+4E11): L<<146.0,391.0>--<947.0,390.0>>

	* uni4E11 (U+4E11): L<<156.0,3.0>--<937.0,2.0>>

	* uni4E14 (U+4E14): L<<136.0,-2.0>--<957.0,-3.0>>

	* uni4E16 (U+4E16): L<<207.0,751.0>--<208.0,561.0>>

	* uni4E16 (U+4E16): L<<715.0,754.0>--<716.0,561.0>>

	* uni4E18 (U+4E18): L<<136.0,-9.0>--<957.0,-10.0>>

	* uni4E18 (U+4E18): L<<240.0,453.0>--<877.0,452.0>>

	* uni4E1E (U+4E1E): L<<136.0,-9.0>--<957.0,-10.0>>

	* uni4E26 (U+4E26): L<<136.0,-9.0>--<957.0,-10.0>>

	* uni4E26 (U+4E26): L<<186.0,572.0>--<907.0,571.0>>

	* uni4E38 (U+4E38): L<<626.0,515.0>--<627.0,51.0>>

	* uni4E43 (U+4E43): L<<209.0,725.0>--<612.0,726.0>>

	* uni4E43 (U+4E43): L<<594.0,750.0>--<211.0,749.0>>

	* uni4E45 (U+4E45): L<<327.0,635.0>--<575.0,636.0>>

	* uni4E45 (U+4E45): L<<571.0,670.0>--<349.0,669.0>>

	* uni4E5D (U+4E5D): L<<626.0,515.0>--<627.0,51.0>>

	* uni4E5E (U+4E5E): L<<303.0,-43.0>--<820.0,-42.0>>

	* uni4E71 (U+4E71): L<<614.0,749.0>--<615.0,45.0>>

	* uni4E73 (U+4E73): L<<614.0,761.0>--<615.0,45.0>>

	* uni4E7E (U+4E7E): L<<633.0,-43.0>--<880.0,-42.0>>

	* uni4E80 (U+4E80): L<<444.0,642.0>--<445.0,45.0>>

	* uni4E80 (U+4E80): L<<542.0,765.0>--<277.0,764.0>>

	* uni4E89 (U+4E89): L<<638.0,725.0>--<326.0,724.0>>

	* uni4E94 (U+4E94): L<<140.0,-4.0>--<965.0,-5.0>>

	* uni4E9B (U+4E9B): L<<131.0,690.0>--<129.0,337.0>>

	* uni4E9B (U+4E9B): L<<284.0,783.0>--<283.0,382.0>>

	* uni4EA1 (U+4EA1): L<<216.0,606.0>--<217.0,99.0>>

	* uni4EA6 (U+4EA6): L<<645.0,0.0>--<646.0,607.0>>

	* uni4EAE (U+4EAE): L<<640.0,76.0>--<639.0,263.0>>

	* uni4EC7 (U+4EC7): L<<716.0,515.0>--<717.0,51.0>>

	* uni4ECA (U+4ECA): L<<255.0,283.0>--<693.0,284.0>>

	* uni4ECA (U+4ECA): L<<693.0,314.0>--<297.0,313.0>>

	* uni4ECB (U+4ECB): L<<292.0,524.0>--<291.0,334.0>>

	* uni4ED9 (U+4ED9): L<<350.0,576.0>--<351.0,54.0>>

	* uni4EDF (U+4EDF): L<<836.0,460.0>--<673.0,461.0>>

	* uni4EE5 (U+4EE5): L<<760.0,817.0>--<759.0,692.0>>

	* uni4EEE (U+4EEE): L<<392.0,510.0>--<775.0,511.0>>

	* uni4EF6 (U+4EF6): L<<840.0,295.0>--<684.0,296.0>>

	* uni4EFB (U+4EFB): L<<820.0,30.0>--<481.0,31.0>>

	* uni4EFB (U+4EFB): L<<840.0,407.0>--<441.0,408.0>>

	* uni4F01 (U+4F01): L<<165.0,-19.0>--<934.0,-20.0>>

	* uni4F01 (U+4F01): L<<212.0,349.0>--<213.0,11.0>>

	* uni4F11 (U+4F11): L<<693.0,532.0>--<957.0,533.0>>

	* uni4F1C (U+4F1C): L<<422.0,671.0>--<690.0,672.0>>

	* uni4F1C (U+4F1C): L<<666.0,701.0>--<489.0,700.0>>

	* uni4F1C (U+4F1C): L<<696.0,659.0>--<697.0,474.0>>

	* uni4F2F (U+4F2F): L<<385.0,632.0>--<386.0,45.0>>

	* uni4F38 (U+4F38): L<<657.0,467.0>--<658.0,605.0>>

	* uni4F3D (U+4F3D): L<<379.0,552.0>--<538.0,553.0>>

	* uni4F47 (U+4F47): L<<583.0,643.0>--<404.0,644.0>>

	* uni4F47 (U+4F47): L<<838.0,644.0>--<663.0,643.0>>

	* uni4F4E (U+4F4E): L<<924.0,126.0>--<923.0,257.0>>

	* uni4F53 (U+4F53): L<<685.0,573.0>--<947.0,574.0>>

	* uni4F69 (U+4F69): L<<782.0,721.0>--<783.0,472.0>>

	* uni4F69 (U+4F69): L<<863.0,460.0>--<862.0,705.0>>

	* uni4F75 (U+4F75): L<<551.0,347.0>--<552.0,539.0>>

	* uni4F8F (U+4F8F): L<<664.0,392.0>--<945.0,393.0>>

	* uni4F8F (U+4F8F): L<<665.0,45.0>--<664.0,392.0>>

	* uni4F98 (U+4F98): L<<526.0,468.0>--<527.0,42.0>>

	* uni4F98 (U+4F98): L<<577.0,681.0>--<413.0,682.0>>

	* uni4F98 (U+4F98): L<<833.0,682.0>--<657.0,681.0>>

	* uni4FBF (U+4FBF): L<<673.0,400.0>--<674.0,759.0>>

	* uni4FDA (U+4FDA): L<<667.0,594.0>--<668.0,734.0>>

	* uni4FDD (U+4FDD): L<<833.0,374.0>--<653.0,375.0>>

	* uni501F (U+501F): L<<486.0,24.0>--<485.0,174.0>>

	* uni5024 (U+5024): L<<830.0,23.0>--<392.0,24.0>>

	* uni502A (U+502A): L<<349.0,704.0>--<350.0,418.0>>

	* uni502D (U+502D): L<<684.0,593.0>--<946.0,594.0>>

	* uni5049 (U+5049): L<<453.0,725.0>--<739.0,726.0>>

	* uni5049 (U+5049): L<<715.0,750.0>--<455.0,749.0>>

	* uni5055 (U+5055): L<<361.0,771.0>--<360.0,477.0>>

	* uni5055 (U+5055): L<<469.0,15.0>--<468.0,153.0>>

	* uni507D (U+507D): L<<377.0,277.0>--<862.0,278.0>>

	* uni507D (U+507D): L<<396.0,579.0>--<702.0,580.0>>

	* uni507D (U+507D): L<<495.0,425.0>--<779.0,426.0>>

	* uni507D (U+507D): L<<678.0,604.0>--<398.0,603.0>>

	* uni507D (U+507D): L<<755.0,450.0>--<497.0,449.0>>

	* uni5098 (U+5098): L<<831.0,164.0>--<172.0,165.0>>

	* uni50B7 (U+50B7): L<<421.0,228.0>--<836.0,229.0>>

	* uni50CD (U+50CD): L<<744.0,834.0>--<745.0,709.0>>

	* uni50CF (U+50CF): L<<675.0,738.0>--<459.0,737.0>>

	* uni5112 (U+5112): L<<551.0,666.0>--<349.0,667.0>>

	* uni5112 (U+5112): L<<623.0,244.0>--<622.0,81.0>>

	* uni5112 (U+5112): L<<855.0,667.0>--<631.0,666.0>>

	* uni511F (U+511F): L<<553.0,687.0>--<358.0,688.0>>

	* uni511F (U+511F): L<<830.0,688.0>--<637.0,687.0>>

	* uni5121 (U+5121): L<<326.0,31.0>--<327.0,171.0>>

	* uni5121 (U+5121): L<<454.0,483.0>--<455.0,610.0>>

	* uni5121 (U+5121): L<<696.0,31.0>--<697.0,171.0>>

	* uni5146 (U+5146): L<<373.0,816.0>--<374.0,691.0>>

	* uni5147 (U+5147): L<<176.0,746.0>--<177.0,398.0>>

	* uni5147 (U+5147): L<<742.0,746.0>--<743.0,398.0>>

	* uni5148 (U+5148): L<<459.0,594.0>--<458.0,417.0>>

	* uni5149 (U+5149): L<<455.0,775.0>--<454.0,424.0>>

	* uni514B (U+514B): L<<459.0,787.0>--<458.0,525.0>>

	* uni514D (U+514D): L<<589.0,725.0>--<323.0,724.0>>

	* uni5152 (U+5152): L<<854.0,366.0>--<855.0,664.0>>

	* uni515A (U+515A): L<<461.0,641.0>--<192.0,642.0>>

	* uni515A (U+515A): L<<811.0,642.0>--<538.0,641.0>>

	* uni515C (U+515C): L<<892.0,383.0>--<893.0,664.0>>

	* uni5168 (U+5168): L<<189.0,-6.0>--<902.0,-7.0>>

	* uni516B (U+516B): L<<293.0,734.0>--<292.0,609.0>>

	* uni5175 (U+5175): L<<342.0,547.0>--<343.0,695.0>>

	* uni5197 (U+5197): L<<595.0,509.0>--<596.0,51.0>>

	* uni51A6 (U+51A6): L<<616.0,640.0>--<615.0,402.0>>

	* uni51C4 (U+51C4): L<<548.0,792.0>--<546.0,369.0>>

	* uni51C4 (U+51C4): L<<626.0,369.0>--<628.0,789.0>>

	* uni51CC (U+51CC): L<<673.0,580.0>--<674.0,447.0>>

	* uni51DD (U+51DD): L<<377.0,514.0>--<510.0,515.0>>

	* uni51DD (U+51DD): L<<688.0,444.0>--<855.0,445.0>>

	* uni51DD (U+51DD): L<<730.0,462.0>--<731.0,47.0>>

	* uni51E1 (U+51E1): L<<640.0,703.0>--<641.0,81.0>>

	* uni51E6 (U+51E6): L<<205.0,654.0>--<349.0,655.0>>

	* uni51E6 (U+51E6): L<<723.0,703.0>--<724.0,219.0>>

	* uni51E7 (U+51E7): L<<752.0,721.0>--<753.0,472.0>>

	* uni51E7 (U+51E7): L<<833.0,460.0>--<832.0,705.0>>

	* uni51E9 (U+51E9): L<<553.0,490.0>--<737.0,491.0>>

	* uni51E9 (U+51E9): L<<777.0,721.0>--<778.0,475.0>>

	* uni51E9 (U+51E9): L<<858.0,460.0>--<857.0,705.0>>

	* uni51EA (U+51EA): L<<312.0,55.0>--<772.0,54.0>>

	* uni51EA (U+51EA): L<<777.0,721.0>--<778.0,472.0>>

	* uni51EA (U+51EA): L<<858.0,460.0>--<857.0,705.0>>

	* uni51ED (U+51ED): L<<614.0,242.0>--<615.0,53.0>>

	* uni51ED (U+51ED): L<<800.0,403.0>--<501.0,404.0>>

	* uni51ED (U+51ED): L<<820.0,582.0>--<461.0,583.0>>

	* uni51F1 (U+51F1): L<<743.0,740.0>--<744.0,33.0>>

	* uni51F6 (U+51F6): L<<85.0,712.0>--<86.0,48.0>>

	* uni51FA (U+51FA): L<<192.0,38.0>--<191.0,269.0>>

	* uni51FA (U+51FA): L<<841.0,466.0>--<842.0,698.0>>

	* uni51FD (U+51FD): L<<95.0,583.0>--<96.0,48.0>>

	* uni5206 (U+5206): L<<290.0,422.0>--<405.0,423.0>>

	* uni5207 (U+5207): L<<680.0,699.0>--<847.0,700.0>>

	* uni520E (U+520E): L<<187.0,650.0>--<500.0,651.0>>

	* uni521D (U+521D): L<<158.0,617.0>--<343.0,618.0>>

	* uni521D (U+521D): L<<697.0,705.0>--<847.0,706.0>>

	* uni5227 (U+5227): L<<733.0,705.0>--<859.0,706.0>>

	* uni5238 (U+5238): L<<357.0,266.0>--<654.0,267.0>>

	* uni5238 (U+5238): L<<627.0,296.0>--<388.0,295.0>>

	* uni524B (U+524B): L<<260.0,787.0>--<259.0,522.0>>

	* uni525B (U+525B): L<<167.0,401.0>--<168.0,194.0>>

	* uni5272 (U+5272): L<<273.0,721.0>--<148.0,722.0>>

	* uni5272 (U+5272): L<<473.0,722.0>--<353.0,721.0>>

	* uni5289 (U+5289): L<<403.0,741.0>--<545.0,742.0>>

	* uni5289 (U+5289): L<<458.0,259.0>--<186.0,260.0>>

	* uni52A0 (U+52A0): L<<124.0,552.0>--<411.0,553.0>>

	* uni52C3 (U+52C3): L<<257.0,545.0>--<130.0,546.0>>

	* uni52C9 (U+52C9): L<<378.0,725.0>--<198.0,724.0>>

	* uni52C9 (U+52C9): L<<621.0,552.0>--<827.0,553.0>>

	* uni52D8 (U+52D8): L<<383.0,326.0>--<384.0,179.0>>

	* uni52D8 (U+52D8): L<<689.0,834.0>--<690.0,709.0>>

	* uni52DD (U+52DD): L<<523.0,225.0>--<768.0,224.0>>

	* uni52DF (U+52DF): L<<294.0,147.0>--<667.0,146.0>>

	* uni52E2 (U+52E2): L<<206.0,177.0>--<753.0,176.0>>

	* uni52E2 (U+52E2): L<<570.0,653.0>--<775.0,654.0>>

	* uni52E2 (U+52E2): L<<781.0,641.0>--<782.0,335.0>>

	* uni5302 (U+5302): L<<256.0,483.0>--<257.0,210.0>>

	* uni5308 (U+5308): L<<272.0,158.0>--<271.0,442.0>>

	* uni5321 (U+5321): L<<318.0,168.0>--<824.0,167.0>>

	* uni5341 (U+5341): L<<820.0,459.0>--<540.0,460.0>>

	* uni5343 (U+5343): L<<805.0,435.0>--<540.0,436.0>>

	* uni5348 (U+5348): L<<805.0,366.0>--<540.0,367.0>>

	* uni5351 (U+5351): L<<272.0,397.0>--<271.0,538.0>>

	* uni5370 (U+5370): L<<173.0,183.0>--<174.0,446.0>>

	* uni5371 (U+5371): L<<599.0,737.0>--<347.0,736.0>>

	* uni5398 (U+5398): L<<370.0,363.0>--<369.0,484.0>>

	* uni53CD (U+53CD): L<<230.0,502.0>--<714.0,503.0>>

	* uni53DB (U+53DB): L<<535.0,502.0>--<824.0,503.0>>

	* uni53E1 (U+53E1): L<<238.0,670.0>--<118.0,671.0>>

	* uni53E1 (U+53E1): L<<442.0,671.0>--<318.0,670.0>>

	* uni53E9 (U+53E9): L<<832.0,735.0>--<833.0,298.0>>

	* uni53E9 (U+53E9): L<<914.0,271.0>--<912.0,719.0>>

	* uni53EC (U+53EC): L<<209.0,740.0>--<425.0,741.0>>

	* uni53ED (U+53ED): L<<495.0,687.0>--<494.0,562.0>>

	* uni53F6 (U+53F6): L<<847.0,494.0>--<708.0,495.0>>

	* uni5403 (U+5403): L<<500.0,-43.0>--<869.0,-42.0>>

	* uni5410 (U+5410): L<<832.0,494.0>--<703.0,495.0>>

	* uni541F (U+541F): L<<450.0,283.0>--<758.0,284.0>>

	* uni541F (U+541F): L<<758.0,314.0>--<492.0,313.0>>

	* uni5420 (U+5420): L<<832.0,518.0>--<683.0,519.0>>

	* uni543B (U+543B): L<<456.0,606.0>--<853.0,607.0>>

	* uni543E (U+543E): L<<257.0,578.0>--<650.0,579.0>>

	* uni5446 (U+5446): L<<550.0,339.0>--<937.0,340.0>>

	* uni5448 (U+5448): L<<146.0,-19.0>--<952.0,-20.0>>

	* uni5473 (U+5473): L<<682.0,405.0>--<953.0,406.0>>

	* uni547B (U+547B): L<<477.0,295.0>--<476.0,462.0>>

	* uni547B (U+547B): L<<702.0,487.0>--<703.0,637.0>>

	* uni5484 (U+5484): L<<493.0,54.0>--<492.0,286.0>>

	* uni5484 (U+5484): L<<911.0,483.0>--<912.0,686.0>>

	* uni5538 (U+5538): L<<486.0,440.0>--<739.0,441.0>>

	* uni5538 (U+5538): L<<739.0,476.0>--<488.0,475.0>>

	* uni558B (U+558B): L<<702.0,279.0>--<957.0,280.0>>

	* uni5598 (U+5598): L<<685.0,351.0>--<684.0,81.0>>

	* uni559A (U+559A): L<<448.0,337.0>--<449.0,570.0>>

	* uni559A (U+559A): L<<680.0,725.0>--<504.0,724.0>>

	* uni55A7 (U+55A7): L<<588.0,721.0>--<434.0,722.0>>

	* uni55A7 (U+55A7): L<<843.0,722.0>--<668.0,721.0>>

	* uni5609 (U+5609): L<<382.0,183.0>--<179.0,182.0>>

	* uni5617 (U+5617): L<<461.0,709.0>--<177.0,710.0>>

	* uni5617 (U+5617): L<<816.0,710.0>--<538.0,709.0>>

	* uni5674 (U+5674): L<<794.0,747.0>--<675.0,748.0>>

	* uni5674 (U+5674): L<<834.0,595.0>--<545.0,596.0>>

	* uni5678 (U+5678): L<<282.0,515.0>--<283.0,334.0>>

	* uni5687 (U+5687): L<<528.0,0.0>--<529.0,477.0>>

	* uni5687 (U+5687): L<<871.0,0.0>--<872.0,477.0>>

	* uni56DB (U+56DB): L<<166.0,106.0>--<165.0,706.0>>

	* uni56DB (U+56DB): L<<534.0,706.0>--<535.0,383.0>>

	* uni56DB (U+56DB): L<<827.0,684.0>--<828.0,106.0>>

	* uni56DB (U+56DB): L<<85.0,721.0>--<86.0,112.0>>

	* uni56DB (U+56DB): L<<908.0,112.0>--<907.0,659.0>>

	* uni56F0 (U+56F0): L<<545.0,534.0>--<797.0,535.0>>

	* uni56FD (U+56FD): L<<329.0,178.0>--<764.0,177.0>>

	* uni5727 (U+5727): L<<544.0,394.0>--<543.0,35.0>>

	* uni5728 (U+5728): L<<604.0,338.0>--<603.0,25.0>>

	* uni5740 (U+5740): L<<433.0,519.0>--<434.0,35.0>>

	* uni5742 (U+5742): L<<453.0,502.0>--<815.0,503.0>>

	* uni5751 (U+5751): L<<554.0,464.0>--<705.0,465.0>>

	* uni5761 (U+5761): L<<451.0,409.0>--<808.0,410.0>>

	* uni5764 (U+5764): L<<471.0,255.0>--<470.0,432.0>>

	* uni5764 (U+5764): L<<699.0,457.0>--<700.0,615.0>>

	* uni57CB (U+57CB): L<<470.0,386.0>--<469.0,554.0>>

	* uni57CB (U+57CB): L<<692.0,579.0>--<693.0,744.0>>

	* uni57F7 (U+57F7): L<<576.0,561.0>--<749.0,562.0>>

	* uni57F7 (U+57F7): L<<725.0,586.0>--<567.0,585.0>>

	* uni57F7 (U+57F7): L<<755.0,549.0>--<756.0,41.0>>

	* uni5800 (U+5800): L<<543.0,38.0>--<542.0,177.0>>

	* uni5800 (U+5800): L<<578.0,330.0>--<577.0,469.0>>

	* uni5800 (U+5800): L<<922.0,353.0>--<923.0,469.0>>

	* uni5802 (U+5802): L<<460.0,642.0>--<192.0,643.0>>

	* uni5802 (U+5802): L<<816.0,643.0>--<540.0,642.0>>

	* uni582A (U+582A): L<<672.0,333.0>--<673.0,166.0>>

	* uni5831 (U+5831): L<<577.0,411.0>--<845.0,412.0>>

	* uni5834 (U+5834): L<<480.0,281.0>--<858.0,282.0>>

	* uni5851 (U+5851): L<<262.0,666.0>--<260.0,431.0>>

	* uni585E (U+585E): L<<460.0,732.0>--<194.0,733.0>>

	* uni585E (U+585E): L<<826.0,733.0>--<540.0,732.0>>

	* uni5869 (U+5869): L<<353.0,-26.0>--<962.0,-27.0>>

	* uni5875 (U+5875): L<<290.0,424.0>--<289.0,247.0>>

	* uni58B3 (U+58B3): L<<794.0,747.0>--<675.0,748.0>>

	* uni58B3 (U+58B3): L<<834.0,595.0>--<545.0,596.0>>

	* uni58CA (U+58CA): L<<824.0,728.0>--<661.0,729.0>>

	* uni58CA (U+58CA): L<<844.0,326.0>--<661.0,327.0>>

	* uni58F2 (U+58F2): L<<643.0,76.0>--<644.0,294.0>>

	* uni5915 (U+5915): L<<461.0,654.0>--<778.0,655.0>>

	* uni5915 (U+5915): L<<754.0,689.0>--<483.0,688.0>>

	* uni5916 (U+5916): L<<420.0,675.0>--<252.0,674.0>>

	* uni5919 (U+5919): L<<747.0,721.0>--<748.0,472.0>>

	* uni5919 (U+5919): L<<833.0,460.0>--<832.0,705.0>>

	* uni5951 (U+5951): L<<636.0,733.0>--<840.0,734.0>>

	* uni5965 (U+5965): L<<540.0,496.0>--<744.0,497.0>>

	* uni5984 (U+5984): L<<238.0,703.0>--<239.0,524.0>>

	* uni598A (U+598A): L<<820.0,30.0>--<581.0,31.0>>

	* uni598A (U+598A): L<<840.0,407.0>--<541.0,408.0>>

	* uni5996 (U+5996): L<<835.0,431.0>--<551.0,432.0>>

	* uni59B9 (U+59B9): L<<714.0,395.0>--<949.0,396.0>>

	* uni59D4 (U+59D4): L<<575.0,600.0>--<937.0,601.0>>

	* uni59FB (U+59FB): L<<643.0,648.0>--<642.0,503.0>>

	* uni59FB (U+59FB): L<<716.0,503.0>--<717.0,645.0>>

	* uni5A29 (U+5A29): L<<623.0,535.0>--<622.0,393.0>>

	* uni5A29 (U+5A29): L<<720.0,725.0>--<564.0,724.0>>

	* uni5A46 (U+5A46): L<<442.0,586.0>--<772.0,587.0>>

	* uni5A49 (U+5A49): L<<618.0,718.0>--<472.0,719.0>>

	* uni5A49 (U+5A49): L<<819.0,719.0>--<698.0,718.0>>

	* uni5A92 (U+5A92): L<<726.0,287.0>--<952.0,288.0>>

	* uni5AC1 (U+5AC1): L<<620.0,727.0>--<482.0,728.0>>

	* uni5AC1 (U+5AC1): L<<855.0,728.0>--<700.0,727.0>>

	* uni5B2C (U+5B2C): L<<600.0,666.0>--<433.0,667.0>>

	* uni5B2C (U+5B2C): L<<672.0,244.0>--<671.0,81.0>>

	* uni5B2C (U+5B2C): L<<843.0,667.0>--<677.0,666.0>>

	* uni5B57 (U+5B57): L<<460.0,712.0>--<203.0,713.0>>

	* uni5B57 (U+5B57): L<<816.0,713.0>--<540.0,712.0>>

	* uni5B5F (U+5B5F): L<<151.0,-30.0>--<952.0,-31.0>>

	* uni5B63 (U+5B63): L<<575.0,606.0>--<937.0,607.0>>

	* uni5B85 (U+5B85): L<<391.0,507.0>--<392.0,42.0>>

	* uni5B85 (U+5B85): L<<460.0,721.0>--<188.0,722.0>>

	* uni5B85 (U+5B85): L<<817.0,722.0>--<540.0,721.0>>

	* uni5B87 (U+5B87): L<<460.0,721.0>--<178.0,722.0>>

	* uni5B87 (U+5B87): L<<816.0,722.0>--<540.0,721.0>>

	* uni5B88 (U+5B88): L<<460.0,721.0>--<178.0,722.0>>

	* uni5B88 (U+5B88): L<<816.0,722.0>--<540.0,721.0>>

	* uni5B89 (U+5B89): L<<460.0,699.0>--<173.0,700.0>>

	* uni5B89 (U+5B89): L<<821.0,700.0>--<540.0,699.0>>

	* uni5B8B (U+5B8B): L<<460.0,721.0>--<178.0,722.0>>

	* uni5B8B (U+5B8B): L<<545.0,418.0>--<957.0,419.0>>

	* uni5B8B (U+5B8B): L<<816.0,722.0>--<540.0,721.0>>

	* uni5B8C (U+5B8C): L<<460.0,721.0>--<183.0,722.0>>

	* uni5B8C (U+5B8C): L<<831.0,722.0>--<540.0,721.0>>

	* uni5B8D (U+5B8D): L<<460.0,695.0>--<183.0,696.0>>

	* uni5B8D (U+5B8D): L<<831.0,696.0>--<540.0,695.0>>

	* uni5B8F (U+5B8F): L<<460.0,721.0>--<188.0,722.0>>

	* uni5B8F (U+5B8F): L<<817.0,722.0>--<540.0,721.0>>

	* uni5B95 (U+5B95): L<<460.0,721.0>--<178.0,722.0>>

	* uni5B95 (U+5B95): L<<819.0,722.0>--<540.0,721.0>>

	* uni5B97 (U+5B97): L<<460.0,721.0>--<183.0,722.0>>

	* uni5B97 (U+5B97): L<<831.0,722.0>--<540.0,721.0>>

	* uni5B98 (U+5B98): L<<460.0,721.0>--<192.0,722.0>>

	* uni5B98 (U+5B98): L<<816.0,722.0>--<540.0,721.0>>

	* uni5B99 (U+5B99): L<<460.0,711.0>--<183.0,712.0>>

	* uni5B99 (U+5B99): L<<821.0,712.0>--<540.0,711.0>>

	* uni5B9A (U+5B9A): L<<460.0,721.0>--<192.0,722.0>>

	* uni5B9A (U+5B9A): L<<816.0,722.0>--<540.0,721.0>>

	* uni5B9B (U+5B9B): L<<460.0,734.0>--<183.0,735.0>>

	* uni5B9B (U+5B9B): L<<777.0,478.0>--<778.0,297.0>>

	* uni5B9B (U+5B9B): L<<814.0,735.0>--<540.0,734.0>>

	* uni5B9C (U+5B9C): L<<136.0,-17.0>--<957.0,-18.0>>

	* uni5B9C (U+5B9C): L<<460.0,716.0>--<192.0,717.0>>

	* uni5B9C (U+5B9C): L<<814.0,717.0>--<540.0,716.0>>

	* uni5B9D (U+5B9D): L<<460.0,721.0>--<183.0,722.0>>

	* uni5B9D (U+5B9D): L<<831.0,722.0>--<540.0,721.0>>

	* uni5B9F (U+5B9F): L<<460.0,712.0>--<202.0,713.0>>

	* uni5B9F (U+5B9F): L<<804.0,713.0>--<540.0,712.0>>

	* uni5BA2 (U+5BA2): L<<460.0,739.0>--<192.0,740.0>>

	* uni5BA2 (U+5BA2): L<<816.0,740.0>--<540.0,739.0>>

	* uni5BA3 (U+5BA3): L<<460.0,721.0>--<192.0,722.0>>

	* uni5BA3 (U+5BA3): L<<816.0,722.0>--<540.0,721.0>>

	* uni5BA4 (U+5BA4): L<<460.0,721.0>--<192.0,722.0>>

	* uni5BA4 (U+5BA4): L<<816.0,722.0>--<540.0,721.0>>

	* uni5BA5 (U+5BA5): L<<460.0,721.0>--<215.0,722.0>>

	* uni5BA5 (U+5BA5): L<<804.0,722.0>--<540.0,721.0>>

	* uni5BAE (U+5BAE): L<<460.0,721.0>--<183.0,722.0>>

	* uni5BAE (U+5BAE): L<<831.0,722.0>--<540.0,721.0>>

	* uni5BB0 (U+5BB0): L<<460.0,727.0>--<177.0,728.0>>

	* uni5BB0 (U+5BB0): L<<821.0,728.0>--<540.0,727.0>>

	* uni5BB3 (U+5BB3): L<<460.0,721.0>--<183.0,722.0>>

	* uni5BB3 (U+5BB3): L<<831.0,722.0>--<540.0,721.0>>

	* uni5BB4 (U+5BB4): L<<460.0,721.0>--<203.0,722.0>>

	* uni5BB4 (U+5BB4): L<<811.0,722.0>--<540.0,721.0>>

	* uni5BB5 (U+5BB5): L<<460.0,721.0>--<170.0,722.0>>

	* uni5BB5 (U+5BB5): L<<829.0,722.0>--<540.0,721.0>>

	* uni5BB6 (U+5BB6): L<<460.0,732.0>--<187.0,733.0>>

	* uni5BB6 (U+5BB6): L<<816.0,733.0>--<540.0,732.0>>

	* uni5BB9 (U+5BB9): L<<460.0,732.0>--<187.0,733.0>>

	* uni5BB9 (U+5BB9): L<<816.0,733.0>--<540.0,732.0>>

	* uni5BBF (U+5BBF): L<<399.0,415.0>--<400.0,32.0>>

	* uni5BBF (U+5BBF): L<<460.0,721.0>--<183.0,722.0>>

	* uni5BBF (U+5BBF): L<<808.0,722.0>--<540.0,721.0>>

	* uni5BC2 (U+5BC2): L<<460.0,722.0>--<194.0,723.0>>

	* uni5BC2 (U+5BC2): L<<826.0,723.0>--<540.0,722.0>>

	* uni5BC4 (U+5BC4): L<<460.0,732.0>--<194.0,733.0>>

	* uni5BC4 (U+5BC4): L<<826.0,733.0>--<540.0,732.0>>

	* uni5BC5 (U+5BC5): L<<460.0,721.0>--<183.0,722.0>>

	* uni5BC5 (U+5BC5): L<<821.0,722.0>--<540.0,721.0>>

	* uni5BC6 (U+5BC6): L<<152.0,181.0>--<153.0,45.0>>

	* uni5BC6 (U+5BC6): L<<312.0,536.0>--<313.0,369.0>>

	* uni5BC6 (U+5BC6): L<<460.0,732.0>--<194.0,733.0>>

	* uni5BC6 (U+5BC6): L<<826.0,733.0>--<540.0,732.0>>

	* uni5BCC (U+5BCC): L<<460.0,732.0>--<194.0,733.0>>

	* uni5BCC (U+5BCC): L<<814.0,733.0>--<540.0,732.0>>

	* uni5BD2 (U+5BD2): L<<460.0,732.0>--<194.0,733.0>>

	* uni5BD2 (U+5BD2): L<<826.0,733.0>--<540.0,732.0>>

	* uni5BD3 (U+5BD3): L<<460.0,731.0>--<200.0,732.0>>

	* uni5BD3 (U+5BD3): L<<814.0,732.0>--<540.0,731.0>>

	* uni5BDB (U+5BDB): L<<460.0,732.0>--<170.0,733.0>>

	* uni5BDB (U+5BDB): L<<558.0,211.0>--<559.0,48.0>>

	* uni5BDB (U+5BDB): L<<829.0,733.0>--<540.0,732.0>>

	* uni5BDD (U+5BDD): L<<460.0,755.0>--<194.0,756.0>>

	* uni5BDD (U+5BDD): L<<834.0,756.0>--<540.0,755.0>>

	* uni5BDF (U+5BDF): L<<460.0,763.0>--<200.0,764.0>>

	* uni5BDF (U+5BDF): L<<802.0,764.0>--<540.0,763.0>>

	* uni5BE1 (U+5BE1): L<<357.0,168.0>--<636.0,169.0>>

	* uni5BE1 (U+5BE1): L<<460.0,755.0>--<200.0,756.0>>

	* uni5BE1 (U+5BE1): L<<803.0,756.0>--<540.0,755.0>>

	* uni5BE7 (U+5BE7): L<<460.0,732.0>--<190.0,733.0>>

	* uni5BE7 (U+5BE7): L<<824.0,733.0>--<540.0,732.0>>

	* uni5BE9 (U+5BE9): L<<217.0,284.0>--<218.0,39.0>>

	* uni5BE9 (U+5BE9): L<<460.0,755.0>--<194.0,756.0>>

	* uni5BE9 (U+5BE9): L<<603.0,453.0>--<937.0,454.0>>

	* uni5BE9 (U+5BE9): L<<826.0,756.0>--<540.0,755.0>>

	* uni5C3B (U+5C3B): L<<376.0,356.0>--<680.0,357.0>>

	* uni5C3B (U+5C3B): L<<656.0,386.0>--<448.0,385.0>>

	* uni5C3B (U+5C3B): L<<686.0,344.0>--<688.0,51.0>>

	* uni5C41 (U+5C41): L<<314.0,520.0>--<313.0,65.0>>

	* uni5C48 (U+5C48): L<<347.0,38.0>--<346.0,181.0>>

	* uni5C48 (U+5C48): L<<392.0,343.0>--<391.0,478.0>>

	* uni5C48 (U+5C48): L<<851.0,349.0>--<852.0,483.0>>

	* uni5C4D (U+5C4D): L<<241.0,525.0>--<240.0,746.0>>

	* uni5C51 (U+5C51): L<<221.0,544.0>--<220.0,695.0>>

	* uni5C6F (U+5C6F): L<<202.0,490.0>--<203.0,247.0>>

	* uni5C71 (U+5C71): L<<127.0,562.0>--<128.0,48.0>>

	* uni5C90 (U+5C90): L<<45.0,615.0>--<46.0,132.0>>

	* uni5CA1 (U+5CA1): L<<277.0,371.0>--<278.0,194.0>>

	* uni5CA8 (U+5CA8): L<<45.0,615.0>--<46.0,117.0>>

	* uni5CA9 (U+5CA9): L<<147.0,754.0>--<148.0,623.0>>

	* uni5CAC (U+5CAC): L<<45.0,615.0>--<46.0,132.0>>

	* uni5CAC (U+5CAC): L<<528.0,354.0>--<527.0,548.0>>

	* uni5CB1 (U+5CB1): L<<152.0,251.0>--<153.0,34.0>>

	* uni5CB3 (U+5CB3): L<<136.0,332.0>--<957.0,331.0>>

	* uni5CB3 (U+5CB3): L<<162.0,226.0>--<163.0,34.0>>

	* uni5CB3 (U+5CB3): L<<255.0,563.0>--<862.0,562.0>>

	* uni5CB8 (U+5CB8): L<<162.0,762.0>--<163.0,644.0>>

	* uni5CE0 (U+5CE0): L<<45.0,605.0>--<46.0,130.0>>

	* uni5CE0 (U+5CE0): L<<579.0,785.0>--<577.0,512.0>>

	* uni5CE1 (U+5CE1): L<<45.0,605.0>--<46.0,125.0>>

	* uni5CE8 (U+5CE8): L<<45.0,605.0>--<46.0,125.0>>

	* uni5CEF (U+5CEF): L<<583.0,574.0>--<400.0,573.0>>

	* uni5CF0 (U+5CF0): L<<44.0,625.0>--<45.0,150.0>>

	* uni5CF0 (U+5CF0): L<<717.0,740.0>--<557.0,739.0>>

	* uni5CFB (U+5CFB): L<<40.0,625.0>--<41.0,110.0>>

	* uni5D07 (U+5D07): L<<460.0,547.0>--<183.0,548.0>>

	* uni5D07 (U+5D07): L<<815.0,548.0>--<540.0,547.0>>

	* uni5D0E (U+5D0E): L<<40.0,625.0>--<41.0,153.0>>

	* uni5D50 (U+5D50): L<<767.0,530.0>--<768.0,292.0>>

	* uni5D50 (U+5D50): L<<843.0,273.0>--<842.0,500.0>>

	* uni5D6F (U+5D6F): L<<50.0,593.0>--<51.0,161.0>>

	* uni5D8B (U+5D8B): L<<45.0,605.0>--<46.0,173.0>>

	* uni5E06 (U+5E06): L<<548.0,748.0>--<735.0,749.0>>

	* uni5E06 (U+5E06): L<<712.0,775.0>--<567.0,774.0>>

	* uni5E06 (U+5E06): L<<741.0,732.0>--<742.0,45.0>>

	* uni5E16 (U+5E16): L<<184.0,774.0>--<185.0,643.0>>

	* uni5E38 (U+5E38): L<<460.0,660.0>--<192.0,661.0>>

	* uni5E38 (U+5E38): L<<816.0,661.0>--<540.0,660.0>>

	* uni5E4C (U+5E4C): L<<613.0,469.0>--<612.0,278.0>>

	* uni5E61 (U+5E61): L<<716.0,531.0>--<956.0,532.0>>

	* uni5E7B (U+5E7B): L<<616.0,650.0>--<852.0,651.0>>

	* uni5E7D (U+5E7D): L<<50.0,723.0>--<51.0,48.0>>

	* uni5E8A (U+5E8A): L<<603.0,444.0>--<922.0,445.0>>

	* uni5E95 (U+5E95): L<<934.0,95.0>--<933.0,231.0>>

	* uni5EA6 (U+5EA6): L<<378.0,624.0>--<379.0,458.0>>

	* uni5EB6 (U+5EB6): L<<369.0,614.0>--<370.0,346.0>>

	* uni5EF6 (U+5EF6): L<<419.0,146.0>--<936.0,145.0>>

	* uni5EF6 (U+5EF6): L<<430.0,504.0>--<431.0,176.0>>

	* uni5F04 (U+5F04): L<<171.0,426.0>--<922.0,425.0>>

	* uni5F3C (U+5F3C): L<<372.0,541.0>--<373.0,97.0>>

	* uni5F4A (U+5F4A): L<<400.0,296.0>--<401.0,125.0>>

	* uni5F4A (U+5F4A): L<<400.0,676.0>--<401.0,519.0>>

	* uni5F7C (U+5F7C): L<<446.0,409.0>--<789.0,410.0>>

	* uni5F81 (U+5F81): L<<386.0,5.0>--<954.0,4.0>>

	* uni5F81 (U+5F81): L<<411.0,475.0>--<412.0,35.0>>

	* uni5FB3 (U+5FB3): L<<461.0,207.0>--<462.0,25.0>>

	* uni5FC3 (U+5FC3): L<<313.0,558.0>--<314.0,45.0>>

	* uni5FC5 (U+5FC5): L<<315.0,543.0>--<316.0,55.0>>

	* uni5FCC (U+5FCC): L<<297.0,226.0>--<298.0,51.0>>

	* uni5FCD (U+5FCD): L<<311.0,250.0>--<312.0,32.0>>

	* uni5FD7 (U+5FD7): L<<314.0,267.0>--<315.0,51.0>>

	* uni5FD8 (U+5FD8): L<<235.0,690.0>--<236.0,488.0>>

	* uni5FD8 (U+5FD8): L<<314.0,253.0>--<315.0,49.0>>

	* uni5FD9 (U+5FD9): L<<423.0,595.0>--<424.0,50.0>>

	* uni5FDC (U+5FDC): L<<432.0,426.0>--<433.0,44.0>>

	* uni5FE0 (U+5FE0): L<<305.0,240.0>--<306.0,51.0>>

	* uni5FF0 (U+5FF0): L<<422.0,671.0>--<690.0,672.0>>

	* uni5FF0 (U+5FF0): L<<666.0,701.0>--<489.0,700.0>>

	* uni5FF0 (U+5FF0): L<<696.0,659.0>--<697.0,474.0>>

	* uni5FF5 (U+5FF5): L<<263.0,419.0>--<673.0,420.0>>

	* uni5FF5 (U+5FF5): L<<314.0,240.0>--<315.0,51.0>>

	* uni5FF5 (U+5FF5): L<<673.0,455.0>--<317.0,454.0>>

	* uni5FF8 (U+5FF8): L<<397.0,-17.0>--<947.0,-18.0>>

	* uni5FF8 (U+5FF8): L<<406.0,392.0>--<957.0,391.0>>

	* uni5FFD (U+5FFD): L<<280.0,698.0>--<808.0,699.0>>

	* uni5FFD (U+5FFD): L<<314.0,240.0>--<315.0,51.0>>

	* uni6012 (U+6012): L<<309.0,226.0>--<310.0,30.0>>

	* uni6015 (U+6015): L<<412.0,642.0>--<413.0,45.0>>

	* uni601D (U+601D): L<<237.0,407.0>--<236.0,572.0>>

	* uni601D (U+601D): L<<306.0,240.0>--<307.0,51.0>>

	* uni6020 (U+6020): L<<309.0,192.0>--<310.0,30.0>>

	* uni6025 (U+6025): L<<309.0,202.0>--<310.0,26.0>>

	* uni6025 (U+6025): L<<638.0,725.0>--<326.0,724.0>>

	* uni6028 (U+6028): L<<209.0,693.0>--<399.0,694.0>>

	* uni6028 (U+6028): L<<335.0,252.0>--<336.0,30.0>>

	* uni6028 (U+6028): L<<365.0,724.0>--<232.0,723.0>>

	* uni604B (U+604B): L<<318.0,252.0>--<319.0,30.0>>

	* uni6055 (U+6055): L<<309.0,226.0>--<310.0,30.0>>

	* uni6065 (U+6065): L<<559.0,563.0>--<561.0,45.0>>

	* uni6075 (U+6075): L<<270.0,340.0>--<269.0,457.0>>

	* uni6075 (U+6075): L<<314.0,196.0>--<315.0,51.0>>

	* uni6089 (U+6089): L<<550.0,531.0>--<927.0,532.0>>

	* uni609F (U+609F): L<<474.0,582.0>--<742.0,583.0>>

	* uni60A9 (U+60A9): L<<382.0,419.0>--<384.0,48.0>>

	* uni60B6 (U+60B6): L<<371.0,310.0>--<372.0,117.0>>

	* uni60DA (U+60DA): L<<482.0,692.0>--<829.0,693.0>>

	* uni60E3 (U+60E3): L<<516.0,692.0>--<825.0,693.0>>

	* uni6144 (U+6144): L<<712.0,275.0>--<960.0,276.0>>

	* uni61A4 (U+61A4): L<<794.0,747.0>--<675.0,748.0>>

	* uni61A4 (U+61A4): L<<834.0,595.0>--<545.0,596.0>>

	* uni61A9 (U+61A9): L<<546.0,698.0>--<547.0,365.0>>

	* uni61B2 (U+61B2): L<<460.0,751.0>--<178.0,752.0>>

	* uni61B2 (U+61B2): L<<822.0,752.0>--<540.0,751.0>>

	* uni61D0 (U+61D0): L<<824.0,728.0>--<661.0,729.0>>

	* uni61D0 (U+61D0): L<<844.0,326.0>--<661.0,327.0>>

	* uni6226 (U+6226): L<<156.0,310.0>--<155.0,436.0>>

	* uni6247 (U+6247): L<<353.0,358.0>--<472.0,359.0>>

	* uni6247 (U+6247): L<<708.0,358.0>--<833.0,359.0>>

	* uni6258 (U+6258): L<<542.0,708.0>--<544.0,65.0>>

	* uni6279 (U+6279): L<<390.0,763.0>--<389.0,18.0>>

	* uni6297 (U+6297): L<<574.0,464.0>--<710.0,465.0>>

	* uni629B (U+629B): L<<506.0,508.0>--<507.0,48.0>>

	* uni629B (U+629B): L<<682.0,583.0>--<822.0,584.0>>

	* uni62AB (U+62AB): L<<436.0,409.0>--<793.0,410.0>>

	* uni62B5 (U+62B5): L<<954.0,126.0>--<953.0,257.0>>

	* uni62B9 (U+62B9): L<<720.0,395.0>--<939.0,396.0>>

	* uni62CD (U+62CD): L<<433.0,632.0>--<434.0,45.0>>

	* uni62D9 (U+62D9): L<<467.0,38.0>--<466.0,269.0>>

	* uni62D9 (U+62D9): L<<921.0,466.0>--<922.0,698.0>>

	* uni62DB (U+62DB): L<<456.0,740.0>--<587.0,741.0>>

	* uni6307 (U+6307): L<<538.0,24.0>--<537.0,180.0>>

	* uni6309 (U+6309): L<<615.0,681.0>--<473.0,682.0>>

	* uni6309 (U+6309): L<<819.0,682.0>--<695.0,681.0>>

	* uni630C (U+630C): L<<745.0,718.0>--<547.0,717.0>>

	* uni633D (U+633D): L<<720.0,725.0>--<523.0,724.0>>

	* uni6357 (U+6357): L<<695.0,483.0>--<948.0,482.0>>

	* uni635C (U+635C): L<<476.0,443.0>--<475.0,569.0>>

	* uni635C (U+635C): L<<687.0,590.0>--<688.0,709.0>>

	* uni6377 (U+6377): L<<594.0,792.0>--<592.0,37.0>>

	* uni6377 (U+6377): L<<672.0,37.0>--<674.0,789.0>>

	* uni637B (U+637B): L<<492.0,426.0>--<742.0,427.0>>

	* uni637B (U+637B): L<<742.0,455.0>--<526.0,454.0>>

	* uni638C (U+638C): L<<461.0,684.0>--<172.0,685.0>>

	* uni638C (U+638C): L<<816.0,685.0>--<538.0,684.0>>

	* uni639F (U+639F): L<<610.0,687.0>--<484.0,688.0>>

	* uni639F (U+639F): L<<815.0,688.0>--<690.0,687.0>>

	* uni63A1 (U+63A1): L<<834.0,362.0>--<674.0,363.0>>

	* uni63A2 (U+63A2): L<<837.0,348.0>--<681.0,349.0>>

	* uni63A7 (U+63A7): L<<423.0,-15.0>--<957.0,-16.0>>

	* uni63A7 (U+63A7): L<<604.0,703.0>--<459.0,704.0>>

	* uni63A7 (U+63A7): L<<685.0,682.0>--<686.0,464.0>>

	* uni63A7 (U+63A7): L<<826.0,704.0>--<684.0,703.0>>

	* uni63AA (U+63AA): L<<495.0,24.0>--<494.0,164.0>>

	* uni63B4 (U+63B4): L<<557.0,164.0>--<823.0,163.0>>

	* uni63C9 (U+63C9): L<<697.0,268.0>--<939.0,269.0>>

	* uni63DA (U+63DA): L<<480.0,291.0>--<836.0,292.0>>

	* uni63DB (U+63DB): L<<468.0,337.0>--<469.0,570.0>>

	* uni63DB (U+63DB): L<<691.0,725.0>--<524.0,724.0>>

	* uni643A (U+643A): L<<447.0,239.0>--<730.0,240.0>>

	* uni643A (U+643A): L<<712.0,264.0>--<449.0,263.0>>

	* uni643E (U+643E): L<<597.0,702.0>--<459.0,703.0>>

	* uni643E (U+643E): L<<821.0,703.0>--<677.0,702.0>>

	* uni64AD (U+64AD): L<<700.0,537.0>--<942.0,538.0>>

	* uni64CD (U+64CD): L<<820.0,261.0>--<669.0,262.0>>

	* uni64E6 (U+64E6): L<<594.0,740.0>--<402.0,741.0>>

	* uni64E6 (U+64E6): L<<848.0,741.0>--<662.0,740.0>>

	* uni653F (U+653F): L<<97.0,515.0>--<98.0,75.0>>

	* uni65AC (U+65AC): L<<147.0,299.0>--<146.0,416.0>>

	* uni65E5 (U+65E5): L<<280.0,55.0>--<281.0,394.0>>

	* uni65E7 (U+65E7): L<<466.0,53.0>--<467.0,389.0>>

	* uni65E8 (U+65E8): L<<294.0,37.0>--<295.0,185.0>>

	* uni65E9 (U+65E9): L<<267.0,414.0>--<266.0,562.0>>

	* uni65ED (U+65ED): L<<136.0,551.0>--<317.0,552.0>>

	* uni65ED (U+65ED): L<<293.0,576.0>--<144.0,575.0>>

	* uni65ED (U+65ED): L<<580.0,215.0>--<581.0,456.0>>

	* uni65FA (U+65FA): L<<804.0,404.0>--<526.0,405.0>>

	* uni65FA (U+65FA): L<<822.0,737.0>--<527.0,738.0>>

	* uni65FA (U+65FA): L<<845.0,32.0>--<457.0,33.0>>

	* uni6606 (U+6606): L<<175.0,354.0>--<174.0,10.0>>

	* uni660F (U+660F): L<<307.0,37.0>--<306.0,163.0>>

	* uni6613 (U+6613): L<<300.0,508.0>--<301.0,628.0>>

	* uni6613 (U+6613): L<<317.0,342.0>--<792.0,343.0>>

	* uni6614 (U+6614): L<<317.0,24.0>--<316.0,169.0>>

	* uni661F (U+661F): L<<277.0,492.0>--<276.0,612.0>>

	* uni6627 (U+6627): L<<681.0,395.0>--<956.0,396.0>>

	* uni6643 (U+6643): L<<463.0,444.0>--<462.0,278.0>>

	* uni664B (U+664B): L<<322.0,24.0>--<321.0,178.0>>

	* uni6662 (U+6662): L<<287.0,24.0>--<286.0,154.0>>

	* uni6669 (U+6669): L<<720.0,725.0>--<514.0,724.0>>

	* uni666E (U+666E): L<<307.0,24.0>--<306.0,164.0>>

	* uni667A (U+667A): L<<300.0,4.0>--<299.0,145.0>>

	* uni6697 (U+6697): L<<509.0,24.0>--<508.0,166.0>>

	* uni66A2 (U+66A2): L<<120.0,331.0>--<119.0,485.0>>

	* uni66A2 (U+66A2): L<<254.0,510.0>--<255.0,660.0>>

	* uni66A2 (U+66A2): L<<520.0,281.0>--<858.0,282.0>>

	* uni66C7 (U+66C7): L<<157.0,435.0>--<460.0,436.0>>

	* uni66C7 (U+66C7): L<<540.0,436.0>--<856.0,435.0>>

	* uni66D6 (U+66D6): L<<135.0,213.0>--<136.0,459.0>>

	* uni66D9 (U+66D9): L<<135.0,183.0>--<136.0,444.0>>

	* uni66DC (U+66DC): L<<135.0,183.0>--<136.0,444.0>>

	* uni66F0 (U+66F0): L<<210.0,52.0>--<211.0,390.0>>

	* uni66FF (U+66FF): L<<292.0,35.0>--<291.0,166.0>>

	* uni670D (U+670D): L<<516.0,423.0>--<828.0,424.0>>

	* uni6714 (U+6714): L<<254.0,618.0>--<253.0,313.0>>

	* uni6714 (U+6714): L<<332.0,313.0>--<333.0,618.0>>

	* uni671B (U+671B): L<<109.0,708.0>--<110.0,495.0>>

	* uni671B (U+671B): L<<146.0,-26.0>--<952.0,-27.0>>

	* uni6728 (U+6728): L<<545.0,532.0>--<957.0,533.0>>

	* uni672A (U+672A): L<<545.0,419.0>--<927.0,420.0>>

	* uni672B (U+672B): L<<545.0,399.0>--<844.0,400.0>>

	* uni672C (U+672C): L<<573.0,600.0>--<948.0,601.0>>

	* uni672D (U+672D): L<<584.0,761.0>--<585.0,45.0>>

	* uni6731 (U+6731): L<<545.0,374.0>--<915.0,375.0>>

	* uni673A (U+673A): L<<588.0,719.0>--<733.0,720.0>>

	* uni673A (U+673A): L<<739.0,703.0>--<740.0,45.0>>

	* uni674E (U+674E): L<<550.0,671.0>--<927.0,672.0>>

	* uni674F (U+674F): L<<546.0,653.0>--<927.0,654.0>>

	* uni6761 (U+6761): L<<580.0,314.0>--<898.0,315.0>>

	* uni6762 (U+6762): L<<570.0,665.0>--<912.0,666.0>>

	* uni6763 (U+6763): L<<420.0,576.0>--<421.0,54.0>>

	* uni6765 (U+6765): L<<555.0,377.0>--<924.0,378.0>>

	* uni676D (U+676D): L<<569.0,454.0>--<705.0,455.0>>

	* uni6770 (U+6770): L<<576.0,614.0>--<912.0,615.0>>

	* uni6775 (U+6775): L<<846.0,390.0>--<710.0,391.0>>

	* uni677F (U+677F): L<<480.0,502.0>--<803.0,503.0>>

	* uni6787 (U+6787): L<<410.0,775.0>--<409.0,18.0>>

	* uni6797 (U+6797): L<<855.0,615.0>--<739.0,616.0>>

	* uni679C (U+679C): L<<281.0,465.0>--<280.0,586.0>>

	* uni67A0 (U+67A0): L<<746.0,649.0>--<747.0,490.0>>

	* uni67B6 (U+67B6): L<<369.0,703.0>--<165.0,702.0>>

	* uni67B6 (U+67B6): L<<560.0,283.0>--<937.0,284.0>>

	* uni67B7 (U+67B7): L<<392.0,531.0>--<538.0,532.0>>

	* uni67C1 (U+67C1): L<<623.0,676.0>--<473.0,677.0>>

	* uni67C1 (U+67C1): L<<853.0,677.0>--<703.0,676.0>>

	* uni67CA (U+67CA): L<<739.0,692.0>--<531.0,691.0>>

	* uni67CF (U+67CF): L<<433.0,632.0>--<434.0,45.0>>

	* uni67D0 (U+67D0): L<<567.0,287.0>--<937.0,288.0>>

	* uni67D3 (U+67D3): L<<450.0,660.0>--<696.0,661.0>>

	* uni67D3 (U+67D3): L<<550.0,253.0>--<937.0,254.0>>

	* uni67D3 (U+67D3): L<<672.0,690.0>--<492.0,689.0>>

	* uni67D3 (U+67D3): L<<702.0,648.0>--<703.0,481.0>>

	* uni67D4 (U+67D4): L<<567.0,268.0>--<937.0,269.0>>

	* uni67F4 (U+67F4): L<<290.0,785.0>--<288.0,471.0>>

	* uni67F4 (U+67F4): L<<574.0,274.0>--<937.0,275.0>>

	* uni67FB (U+67FB): L<<576.0,681.0>--<927.0,682.0>>

	* uni67FE (U+67FE): L<<426.0,5.0>--<944.0,4.0>>

	* uni67FE (U+67FE): L<<440.0,475.0>--<441.0,35.0>>

	* uni6803 (U+6803): L<<637.0,368.0>--<837.0,369.0>>

	* uni6803 (U+6803): L<<819.0,398.0>--<643.0,397.0>>

	* uni6804 (U+6804): L<<545.0,358.0>--<937.0,359.0>>

	* uni6813 (U+6813): L<<434.0,-6.0>--<941.0,-7.0>>

	* uni6817 (U+6817): L<<573.0,275.0>--<922.0,276.0>>

	* uni6822 (U+6822): L<<442.0,519.0>--<444.0,32.0>>

	* uni682A (U+682A): L<<704.0,374.0>--<960.0,375.0>>

	* uni682A (U+682A): L<<705.0,45.0>--<704.0,374.0>>

	* uni683C (U+683C): L<<749.0,718.0>--<541.0,717.0>>

	* uni6848 (U+6848): L<<460.0,752.0>--<203.0,753.0>>

	* uni6848 (U+6848): L<<550.0,236.0>--<957.0,237.0>>

	* uni6848 (U+6848): L<<791.0,753.0>--<540.0,752.0>>

	* uni6851 (U+6851): L<<573.0,237.0>--<947.0,238.0>>

	* uni6881 (U+6881): L<<581.0,250.0>--<942.0,251.0>>

	* uni6881 (U+6881): L<<713.0,782.0>--<488.0,781.0>>

	* uni6897 (U+6897): L<<713.0,400.0>--<714.0,759.0>>

	* uni68A7 (U+68A7): L<<514.0,572.0>--<742.0,573.0>>

	* uni68A8 (U+68A8): L<<581.0,236.0>--<942.0,237.0>>

	* uni68B1 (U+68B1): L<<704.0,504.0>--<822.0,505.0>>

	* uni68B1 (U+68B1): L<<705.0,204.0>--<704.0,504.0>>

	* uni68C4 (U+68C4): L<<566.0,205.0>--<932.0,206.0>>

	* uni68C4 (U+68C4): L<<675.0,452.0>--<319.0,453.0>>

	* uni68D2 (U+68D2): L<<662.0,45.0>--<660.0,333.0>>

	* uni68EE (U+68EE): L<<560.0,671.0>--<887.0,672.0>>

	* uni68F2 (U+68F2): L<<574.0,784.0>--<572.0,369.0>>

	* uni68F2 (U+68F2): L<<652.0,369.0>--<654.0,781.0>>

	* uni68FA (U+68FA): L<<614.0,721.0>--<462.0,722.0>>

	* uni68FA (U+68FA): L<<853.0,722.0>--<694.0,721.0>>

	* uni6900 (U+6900): L<<618.0,687.0>--<462.0,688.0>>

	* uni6900 (U+6900): L<<819.0,688.0>--<698.0,687.0>>

	* uni6900 (U+6900): L<<829.0,450.0>--<830.0,257.0>>

	* uni691B (U+691B): L<<657.0,525.0>--<658.0,44.0>>

	* uni694A (U+694A): L<<480.0,281.0>--<858.0,282.0>>

	* uni6953 (U+6953): L<<777.0,721.0>--<778.0,472.0>>

	* uni6953 (U+6953): L<<858.0,460.0>--<857.0,705.0>>

	* uni696D (U+696D): L<<544.0,227.0>--<935.0,228.0>>

	* uni696F (U+696F): L<<747.0,409.0>--<746.0,647.0>>

	* uni6977 (U+6977): L<<423.0,771.0>--<422.0,477.0>>

	* uni6977 (U+6977): L<<519.0,15.0>--<518.0,153.0>>

	* uni697D (U+697D): L<<314.0,713.0>--<315.0,452.0>>

	* uni697D (U+697D): L<<550.0,241.0>--<927.0,242.0>>

	* uni698A (U+698A): L<<809.0,476.0>--<810.0,642.0>>

	* uni6A17 (U+6A17): L<<595.0,666.0>--<447.0,667.0>>

	* uni6A17 (U+6A17): L<<857.0,667.0>--<675.0,666.0>>

	* uni6A21 (U+6A21): L<<397.0,579.0>--<398.0,384.0>>

	* uni6A2A (U+6A2A): L<<388.0,437.0>--<389.0,190.0>>

	* uni6A61 (U+6A61): L<<705.0,731.0>--<517.0,730.0>>

	* uni6A7F (U+6A7F): L<<390.0,296.0>--<391.0,125.0>>

	* uni6A7F (U+6A7F): L<<390.0,676.0>--<391.0,519.0>>

	* uni6A80 (U+6A80): L<<388.0,625.0>--<389.0,421.0>>

	* uni6A80 (U+6A80): L<<450.0,271.0>--<451.0,119.0>>

	* uni6AD3 (U+6AD3): L<<681.0,763.0>--<487.0,762.0>>

	* uni6B04 (U+6B04): L<<667.0,93.0>--<665.0,453.0>>

	* uni6B20 (U+6B20): L<<771.0,639.0>--<274.0,638.0>>

	* uni6B3D (U+6B3D): L<<330.0,410.0>--<156.0,411.0>>

	* uni6B4E (U+6B4E): L<<323.0,268.0>--<320.0,645.0>>

	* uni6B62 (U+6B62): L<<140.0,5.0>--<959.0,4.0>>

	* uni6B62 (U+6B62): L<<182.0,519.0>--<183.0,35.0>>

	* uni6B63 (U+6B63): L<<136.0,-10.0>--<954.0,-11.0>>

	* uni6B63 (U+6B63): L<<187.0,460.0>--<188.0,20.0>>

	* uni6B64 (U+6B64): L<<116.0,586.0>--<115.0,0.0>>

	* uni6B64 (U+6B64): L<<282.0,781.0>--<281.0,67.0>>

	* uni6B69 (U+6B69): L<<225.0,730.0>--<226.0,538.0>>

	* uni6B69 (U+6B69): L<<540.0,510.0>--<949.0,509.0>>

	* uni6B6A (U+6B6A): L<<156.0,-5.0>--<944.0,-6.0>>

	* uni6B6A (U+6B6A): L<<221.0,247.0>--<222.0,25.0>>

	* uni6B6F (U+6B6F): L<<102.0,492.0>--<103.0,43.0>>

	* uni6B6F (U+6B6F): L<<210.0,748.0>--<211.0,602.0>>

	* uni6B6F (U+6B6F): L<<563.0,318.0>--<780.0,319.0>>

	* uni6B73 (U+6B73): L<<225.0,764.0>--<226.0,626.0>>

	* uni6B74 (U+6B74): L<<319.0,240.0>--<320.0,11.0>>

	* uni6B8A (U+6B8A): L<<717.0,45.0>--<716.0,379.0>>

	* uni6BD4 (U+6BD4): L<<160.0,763.0>--<159.0,49.0>>

	* uni6BD8 (U+6BD8): L<<190.0,308.0>--<189.0,10.0>>

	* uni6C41 (U+6C41): L<<837.0,459.0>--<688.0,460.0>>

	* uni6C4E (U+6C4E): L<<497.0,719.0>--<724.0,720.0>>

	* uni6C4E (U+6C4E): L<<701.0,746.0>--<516.0,745.0>>

	* uni6C4E (U+6C4E): L<<730.0,703.0>--<731.0,45.0>>

	* uni6C50 (U+6C50): L<<597.0,660.0>--<839.0,661.0>>

	* uni6C50 (U+6C50): L<<815.0,689.0>--<597.0,688.0>>

	* uni6C68 (U+6C68): L<<493.0,61.0>--<494.0,413.0>>

	* uni6C81 (U+6C81): L<<488.0,558.0>--<489.0,45.0>>

	* uni6CAB (U+6CAB): L<<676.0,421.0>--<940.0,422.0>>

	* uni6CBC (U+6CBC): L<<431.0,721.0>--<577.0,722.0>>

	* uni6CC4 (U+6CC4): L<<397.0,751.0>--<398.0,548.0>>

	* uni6CC4 (U+6CC4): L<<755.0,754.0>--<756.0,548.0>>

	* uni6CCA (U+6CCA): L<<370.0,642.0>--<371.0,45.0>>

	* uni6CCC (U+6CCC): L<<496.0,543.0>--<498.0,55.0>>

	* uni6CE2 (U+6CE2): L<<431.0,409.0>--<788.0,410.0>>

	* uni6D17 (U+6D17): L<<589.0,605.0>--<588.0,405.0>>

	* uni6D1B (U+6D1B): L<<739.0,718.0>--<541.0,717.0>>

	* uni6D44 (U+6D44): L<<684.0,725.0>--<496.0,724.0>>

	* uni6D5C (U+6D5C): L<<483.0,551.0>--<484.0,695.0>>

	* uni6D6C (U+6D6C): L<<456.0,406.0>--<455.0,557.0>>

	* uni6D6C (U+6D6C): L<<675.0,582.0>--<676.0,724.0>>

	* uni6DC0 (U+6DC0): L<<583.0,708.0>--<427.0,709.0>>

	* uni6DC0 (U+6DC0): L<<834.0,709.0>--<663.0,708.0>>

	* uni6DD8 (U+6DD8): L<<363.0,265.0>--<364.0,139.0>>

	* uni6DEB (U+6DEB): L<<817.0,11.0>--<460.0,12.0>>

	* uni6DEB (U+6DEB): L<<835.0,238.0>--<411.0,239.0>>

	* uni6DF7 (U+6DF7): L<<374.0,343.0>--<373.0,18.0>>

	* uni6E08 (U+6E08): L<<480.0,339.0>--<479.0,462.0>>

	* uni6E09 (U+6E09): L<<670.0,483.0>--<948.0,482.0>>

	* uni6E0B (U+6E0B): L<<426.0,730.0>--<427.0,484.0>>

	* uni6E20 (U+6E20): L<<560.0,235.0>--<937.0,236.0>>

	* uni6E29 (U+6E29): L<<318.0,1.0>--<967.0,0.0>>

	* uni6E29 (U+6E29): L<<456.0,491.0>--<457.0,615.0>>

	* uni6E5B (U+6E5B): L<<672.0,326.0>--<673.0,166.0>>

	* uni6E6F (U+6E6F): L<<451.0,281.0>--<848.0,282.0>>

	* uni6E7F (U+6E7F): L<<458.0,464.0>--<459.0,594.0>>

	* uni6E96 (U+6E96): L<<460.0,193.0>--<459.0,42.0>>

	* uni6EA2 (U+6EA2): L<<361.0,-30.0>--<957.0,-31.0>>

	* uni6EB6 (U+6EB6): L<<588.0,732.0>--<412.0,733.0>>

	* uni6EB6 (U+6EB6): L<<841.0,733.0>--<668.0,732.0>>

	* uni6F01 (U+6F01): L<<457.0,215.0>--<456.0,365.0>>

	* uni6F01 (U+6F01): L<<684.0,390.0>--<685.0,527.0>>

	* uni6F01 (U+6F01): L<<690.0,725.0>--<490.0,724.0>>

	* uni6F06 (U+6F06): L<<714.0,694.0>--<925.0,695.0>>

	* uni6F09 (U+6F09): L<<466.0,298.0>--<465.0,18.0>>

	* uni6F38 (U+6F38): L<<331.0,299.0>--<330.0,416.0>>

	* uni6F5C (U+6F5C): L<<453.0,35.0>--<452.0,166.0>>

	* uni6F5F (U+6F5F): L<<349.0,710.0>--<350.0,499.0>>

	* uni6F5F (U+6F5F): L<<446.0,301.0>--<853.0,302.0>>

	* uni6F70 (U+6F70): L<<859.0,533.0>--<402.0,534.0>>

	* uni6FA4 (U+6FA4): L<<407.0,408.0>--<940.0,406.0>>

	* uni6FE1 (U+6FE1): L<<483.0,244.0>--<482.0,81.0>>

	* uni6FE1 (U+6FE1): L<<562.0,666.0>--<361.0,667.0>>

	* uni6FE1 (U+6FE1): L<<855.0,667.0>--<642.0,666.0>>

	* uni7015 (U+7015): L<<454.0,483.0>--<571.0,482.0>>

	* uni7058 (U+7058): L<<439.0,268.0>--<437.0,559.0>>

	* uni7078 (U+7078): L<<326.0,714.0>--<533.0,715.0>>

	* uni7078 (U+7078): L<<529.0,744.0>--<348.0,743.0>>

	* uni70BA (U+70BA): L<<207.0,579.0>--<663.0,580.0>>

	* uni70BA (U+70BA): L<<270.0,277.0>--<862.0,278.0>>

	* uni70BA (U+70BA): L<<362.0,425.0>--<759.0,426.0>>

	* uni70BA (U+70BA): L<<639.0,604.0>--<209.0,603.0>>

	* uni70BA (U+70BA): L<<735.0,450.0>--<364.0,449.0>>

	* uni70D9 (U+70D9): L<<739.0,718.0>--<541.0,717.0>>

	* uni7114 (U+7114): L<<643.0,37.0>--<644.0,236.0>>

	* uni7114 (U+7114): L<<761.0,716.0>--<554.0,715.0>>

	* uni7164 (U+7164): L<<716.0,287.0>--<952.0,288.0>>

	* uni7194 (U+7194): L<<596.0,732.0>--<459.0,733.0>>

	* uni7194 (U+7194): L<<827.0,733.0>--<676.0,732.0>>

	* uni719F (U+719F): L<<631.0,609.0>--<775.0,610.0>>

	* uni71B1 (U+71B1): L<<631.0,609.0>--<775.0,610.0>>

	* uni71B1 (U+71B1): L<<707.0,639.0>--<585.0,638.0>>

	* uni71D5 (U+71D5): L<<346.0,796.0>--<347.0,656.0>>

	* uni71D5 (U+71D5): L<<453.0,285.0>--<454.0,436.0>>

	* uni71E5 (U+71E5): L<<836.0,271.0>--<690.0,272.0>>

	* uni721B (U+721B): L<<667.0,93.0>--<665.0,453.0>>

	* uni7247 (U+7247): L<<531.0,780.0>--<532.0,558.0>>

	* uni7248 (U+7248): L<<266.0,780.0>--<267.0,547.0>>

	* uni7248 (U+7248): L<<536.0,494.0>--<805.0,495.0>>

	* uni7252 (U+7252): L<<225.0,780.0>--<226.0,547.0>>

	* uni7252 (U+7252): L<<736.0,256.0>--<945.0,257.0>>

	* uni725B (U+725B): L<<815.0,308.0>--<540.0,309.0>>

	* uni725F (U+725F): L<<815.0,239.0>--<540.0,240.0>>

	* uni7262 (U+7262): L<<460.0,712.0>--<183.0,713.0>>

	* uni7262 (U+7262): L<<806.0,713.0>--<540.0,712.0>>

	* uni7262 (U+7262): L<<808.0,252.0>--<182.0,253.0>>

	* uni7269 (U+7269): L<<515.0,606.0>--<858.0,607.0>>

	* uni727D (U+727D): L<<815.0,151.0>--<540.0,152.0>>

	* uni7280 (U+7280): L<<791.0,148.0>--<594.0,149.0>>

	* uni72AF (U+72AF): L<<824.0,704.0>--<825.0,370.0>>

	* uni72AF (U+72AF): L<<906.0,346.0>--<904.0,688.0>>

	* uni72B6 (U+72B6): L<<829.0,496.0>--<481.0,497.0>>

	* uni72C2 (U+72C2): L<<794.0,409.0>--<506.0,410.0>>

	* uni72C2 (U+72C2): L<<809.0,742.0>--<501.0,743.0>>

	* uni72C2 (U+72C2): L<<840.0,18.0>--<461.0,19.0>>

	* uni72DB (U+72DB): L<<433.0,632.0>--<434.0,45.0>>

	* uni72E2 (U+72E2): L<<749.0,718.0>--<541.0,717.0>>

	* uni72E9 (U+72E9): L<<610.0,721.0>--<458.0,722.0>>

	* uni72E9 (U+72E9): L<<848.0,722.0>--<690.0,721.0>>

	* uni72F8 (U+72F8): L<<475.0,386.0>--<474.0,554.0>>

	* uni72F8 (U+72F8): L<<697.0,579.0>--<698.0,744.0>>

	* uni731B (U+731B): L<<381.0,-23.0>--<967.0,-24.0>>

	* uni731F (U+731F): L<<782.0,563.0>--<783.0,366.0>>

	* uni731F (U+731F): L<<863.0,354.0>--<862.0,547.0>>

	* uni734F (U+734F): L<<417.0,579.0>--<418.0,384.0>>

	* uni7387 (U+7387): L<<460.0,225.0>--<459.0,42.0>>

	* uni7389 (U+7389): L<<146.0,8.0>--<952.0,7.0>>

	* uni738B (U+738B): L<<146.0,9.0>--<952.0,8.0>>

	* uni7396 (U+7396): L<<698.0,670.0>--<548.0,669.0>>

	* uni73BB (U+73BB): L<<446.0,409.0>--<785.0,410.0>>

	* uni73C0 (U+73C0): L<<435.0,642.0>--<436.0,45.0>>

	* uni73C8 (U+73C8): L<<392.0,552.0>--<538.0,553.0>>

	* uni73E0 (U+73E0): L<<699.0,374.0>--<955.0,375.0>>

	* uni73E0 (U+73E0): L<<700.0,45.0>--<699.0,374.0>>

	* uni73ED (U+73ED): L<<660.0,-21.0>--<953.0,-22.0>>

	* uni73FE (U+73FE): L<<681.0,326.0>--<682.0,48.0>>

	* uni7406 (U+7406): L<<692.0,594.0>--<693.0,734.0>>

	* uni7434 (U+7434): L<<319.0,182.0>--<607.0,183.0>>

	* uni7434 (U+7434): L<<621.0,213.0>--<361.0,212.0>>

	* uni7435 (U+7435): L<<195.0,339.0>--<194.0,10.0>>

	* uni745E (U+745E): L<<669.0,347.0>--<668.0,81.0>>

	* uni7460 (U+7460): L<<415.0,341.0>--<416.0,37.0>>

	* uni7483 (U+7483): L<<412.0,625.0>--<413.0,487.0>>

	* uni74E6 (U+74E6): L<<643.0,559.0>--<644.0,51.0>>

	* uni74F6 (U+74F6): L<<230.0,347.0>--<231.0,560.0>>

	* uni74F6 (U+74F6): L<<757.0,559.0>--<758.0,51.0>>

	* uni751A (U+751A): L<<822.0,344.0>--<177.0,345.0>>

	* uni751C (U+751C): L<<147.0,277.0>--<312.0,276.0>>

	* uni751C (U+751C): L<<147.0,41.0>--<316.0,40.0>>

	* uni751C (U+751C): L<<318.0,61.0>--<147.0,62.0>>

	* uni7532 (U+7532): L<<217.0,304.0>--<216.0,507.0>>

	* uni7533 (U+7533): L<<217.0,269.0>--<216.0,446.0>>

	* uni7533 (U+7533): L<<540.0,471.0>--<541.0,637.0>>

	* uni753B (U+753B): L<<252.0,584.0>--<253.0,229.0>>

	* uni7559 (U+7559): L<<165.0,334.0>--<166.0,30.0>>

	* uni755C (U+755C): L<<170.0,314.0>--<171.0,30.0>>

	* uni7560 (U+7560): L<<115.0,324.0>--<116.0,30.0>>

	* uni7560 (U+7560): L<<217.0,713.0>--<218.0,483.0>>

	* uni7562 (U+7562): L<<140.0,765.0>--<141.0,539.0>>

	* uni7565 (U+7565): L<<718.0,740.0>--<546.0,739.0>>

	* uni756A (U+756A): L<<202.0,313.0>--<203.0,30.0>>

	* uni756A (U+756A): L<<550.0,542.0>--<927.0,543.0>>

	* uni7573 (U+7573): L<<136.0,-17.0>--<957.0,-18.0>>

	* uni758F (U+758F): L<<553.0,218.0>--<554.0,379.0>>

	* uni759A (U+759A): L<<492.0,512.0>--<646.0,513.0>>

	* uni759A (U+759A): L<<642.0,541.0>--<514.0,540.0>>

	* uni75B2 (U+75B2): L<<384.0,329.0>--<773.0,330.0>>

	* uni767D (U+767D): L<<174.0,642.0>--<175.0,45.0>>

	* uni767E (U+767E): L<<179.0,519.0>--<180.0,32.0>>

	* uni7684 (U+7684): L<<67.0,642.0>--<68.0,152.0>>

	* uni7686 (U+7686): L<<175.0,778.0>--<174.0,464.0>>

	* uni7687 (U+7687): L<<146.0,-18.0>--<952.0,-19.0>>

	* uni7690 (U+7690): L<<826.0,119.0>--<540.0,120.0>>

	* uni76AE (U+76AE): L<<212.0,409.0>--<705.0,410.0>>

	* uni76BF (U+76BF): L<<141.0,9.0>--<962.0,8.0>>

	* uni76C3 (U+76C3): L<<141.0,-20.0>--<962.0,-21.0>>

	* uni76C6 (U+76C6): L<<141.0,-20.0>--<962.0,-21.0>>

	* uni76CA (U+76CA): L<<141.0,-23.0>--<962.0,-24.0>>

	* uni76D7 (U+76D7): L<<151.0,-30.0>--<952.0,-31.0>>

	* uni76DF (U+76DF): L<<141.0,-30.0>--<962.0,-31.0>>

	* uni76E3 (U+76E3): L<<141.0,-30.0>--<962.0,-31.0>>

	* uni76E4 (U+76E4): L<<141.0,-30.0>--<962.0,-31.0>>

	* uni76F4 (U+76F4): L<<830.0,29.0>--<191.0,30.0>>

	* uni76FE (U+76FE): L<<616.0,427.0>--<615.0,652.0>>

	* uni771B (U+771B): L<<692.0,405.0>--<948.0,406.0>>

	* uni773C (U+773C): L<<444.0,758.0>--<443.0,17.0>>

	* uni773C (U+773C): L<<527.0,43.0>--<528.0,420.0>>

	* uni7768 (U+7768): L<<374.0,717.0>--<375.0,443.0>>

	* uni77AC (U+77AC): L<<834.0,370.0>--<621.0,371.0>>

	* uni77AC (U+77AC): L<<848.0,144.0>--<618.0,145.0>>

	* uni7815 (U+7815): L<<747.0,649.0>--<748.0,463.0>>

	* uni7825 (U+7825): L<<949.0,126.0>--<948.0,257.0>>

	* uni7826 (U+7826): L<<280.0,778.0>--<278.0,462.0>>

	* uni7834 (U+7834): L<<476.0,409.0>--<813.0,410.0>>

	* uni783A (U+783A): L<<662.0,385.0>--<837.0,386.0>>

	* uni783A (U+783A): L<<819.0,415.0>--<668.0,414.0>>

	* uni786C (U+786C): L<<727.0,400.0>--<728.0,759.0>>

	* uni786F (U+786F): L<<704.0,301.0>--<705.0,34.0>>

	* uni7887 (U+7887): L<<638.0,708.0>--<516.0,709.0>>

	* uni7887 (U+7887): L<<839.0,709.0>--<718.0,708.0>>

	* uni7897 (U+7897): L<<619.0,687.0>--<468.0,688.0>>

	* uni7897 (U+7897): L<<824.0,688.0>--<699.0,687.0>>

	* uni7897 (U+7897): L<<834.0,460.0>--<835.0,267.0>>

	* uni78A7 (U+78A7): L<<527.0,724.0>--<528.0,520.0>>

	* uni793C (U+793C): L<<127.0,612.0>--<358.0,613.0>>

	* uni793E (U+793E): L<<112.0,612.0>--<343.0,613.0>>

	* uni7948 (U+7948): L<<120.0,617.0>--<293.0,618.0>>

	* uni7949 (U+7949): L<<120.0,617.0>--<293.0,618.0>>

	* uni7949 (U+7949): L<<443.0,5.0>--<964.0,4.0>>

	* uni7949 (U+7949): L<<452.0,519.0>--<453.0,35.0>>

	* uni7950 (U+7950): L<<120.0,617.0>--<263.0,618.0>>

	* uni7956 (U+7956): L<<121.0,617.0>--<294.0,618.0>>

	* uni7956 (U+7956): L<<407.0,-34.0>--<967.0,-35.0>>

	* uni795D (U+795D): L<<107.0,612.0>--<328.0,613.0>>

	* uni795E (U+795E): L<<121.0,617.0>--<294.0,618.0>>

	* uni795E (U+795E): L<<535.0,281.0>--<534.0,452.0>>

	* uni795E (U+795E): L<<739.0,477.0>--<740.0,627.0>>

	* uni7962 (U+7962): L<<120.0,617.0>--<267.0,618.0>>

	* uni7965 (U+7965): L<<120.0,617.0>--<267.0,618.0>>

	* uni7977 (U+7977): L<<120.0,617.0>--<263.0,618.0>>

	* uni7984 (U+7984): L<<120.0,617.0>--<274.0,618.0>>

	* uni7985 (U+7985): L<<120.0,617.0>--<263.0,618.0>>

	* uni798D (U+798D): L<<120.0,617.0>--<263.0,618.0>>

	* uni798E (U+798E): L<<141.0,617.0>--<268.0,618.0>>

	* uni798F (U+798F): L<<120.0,617.0>--<293.0,618.0>>

	* uni79BE (U+79BE): L<<557.0,482.0>--<957.0,483.0>>

	* uni79BF (U+79BF): L<<569.0,571.0>--<947.0,572.0>>

	* uni79C0 (U+79C0): L<<289.0,334.0>--<592.0,335.0>>

	* uni79C0 (U+79C0): L<<569.0,601.0>--<942.0,602.0>>

	* uni79C0 (U+79C0): L<<574.0,359.0>--<291.0,358.0>>

	* uni79D8 (U+79D8): L<<539.0,543.0>--<540.0,55.0>>

	* uni79DF (U+79DF): L<<440.0,-2.0>--<967.0,-3.0>>

	* uni79E3 (U+79E3): L<<719.0,422.0>--<918.0,423.0>>

	* uni79E4 (U+79E4): L<<849.0,327.0>--<724.0,328.0>>

	* uni79E6 (U+79E6): L<<540.0,198.0>--<831.0,199.0>>

	* uni7A14 (U+7A14): L<<545.0,419.0>--<766.0,420.0>>

	* uni7A14 (U+7A14): L<<761.0,455.0>--<547.0,454.0>>

	* uni7A1C (U+7A1C): L<<705.0,580.0>--<706.0,447.0>>

	* uni7A3C (U+7A3C): L<<620.0,732.0>--<497.0,733.0>>

	* uni7A3C (U+7A3C): L<<840.0,733.0>--<700.0,732.0>>

	* uni7A50 (U+7A50): L<<583.0,642.0>--<584.0,16.0>>

	* uni7A50 (U+7A50): L<<655.0,765.0>--<490.0,764.0>>

	* uni7A74 (U+7A74): L<<460.0,656.0>--<214.0,657.0>>

	* uni7A74 (U+7A74): L<<806.0,657.0>--<540.0,656.0>>

	* uni7A76 (U+7A76): L<<188.0,278.0>--<647.0,279.0>>

	* uni7A76 (U+7A76): L<<460.0,721.0>--<214.0,722.0>>

	* uni7A76 (U+7A76): L<<556.0,689.0>--<557.0,511.0>>

	* uni7A76 (U+7A76): L<<623.0,308.0>--<243.0,307.0>>

	* uni7A76 (U+7A76): L<<653.0,266.0>--<654.0,51.0>>

	* uni7A76 (U+7A76): L<<806.0,722.0>--<540.0,721.0>>

	* uni7A79 (U+7A79): L<<460.0,729.0>--<231.0,730.0>>

	* uni7A79 (U+7A79): L<<772.0,730.0>--<540.0,729.0>>

	* uni7A7A (U+7A7A): L<<151.0,-20.0>--<943.0,-21.0>>

	* uni7A7A (U+7A7A): L<<460.0,721.0>--<204.0,722.0>>

	* uni7A7A (U+7A7A): L<<556.0,689.0>--<557.0,477.0>>

	* uni7A7A (U+7A7A): L<<806.0,722.0>--<540.0,721.0>>

	* uni7A7F (U+7A7F): L<<460.0,724.0>--<231.0,725.0>>

	* uni7A7F (U+7A7F): L<<781.0,725.0>--<540.0,724.0>>

	* uni7A81 (U+7A81): L<<460.0,734.0>--<203.0,735.0>>

	* uni7A81 (U+7A81): L<<556.0,702.0>--<557.0,514.0>>

	* uni7A81 (U+7A81): L<<806.0,735.0>--<540.0,734.0>>

	* uni7A83 (U+7A83): L<<547.0,702.0>--<548.0,535.0>>

	* uni7A83 (U+7A83): L<<670.0,360.0>--<815.0,361.0>>

	* uni7A83 (U+7A83): L<<806.0,735.0>--<540.0,734.0>>

	* uni7A84 (U+7A84): L<<460.0,732.0>--<231.0,733.0>>

	* uni7A84 (U+7A84): L<<781.0,733.0>--<540.0,732.0>>

	* uni7A92 (U+7A92): L<<460.0,745.0>--<202.0,746.0>>

	* uni7A92 (U+7A92): L<<780.0,746.0>--<540.0,745.0>>

	* uni7A93 (U+7A93): L<<309.0,192.0>--<310.0,30.0>>

	* uni7A93 (U+7A93): L<<460.0,739.0>--<202.0,740.0>>

	* uni7A93 (U+7A93): L<<564.0,721.0>--<565.0,577.0>>

	* uni7A93 (U+7A93): L<<786.0,740.0>--<540.0,739.0>>

	* uni7A9F (U+7A9F): L<<460.0,772.0>--<202.0,773.0>>

	* uni7A9F (U+7A9F): L<<780.0,773.0>--<540.0,772.0>>

	* uni7AAA (U+7AAA): L<<460.0,752.0>--<212.0,753.0>>

	* uni7AAA (U+7AAA): L<<770.0,753.0>--<540.0,752.0>>

	* uni7AAE (U+7AAE): L<<460.0,765.0>--<202.0,766.0>>

	* uni7AAE (U+7AAE): L<<780.0,766.0>--<540.0,765.0>>

	* uni7AAF (U+7AAF): L<<460.0,752.0>--<212.0,753.0>>

	* uni7AAF (U+7AAF): L<<770.0,753.0>--<540.0,752.0>>

	* uni7ABA (U+7ABA): L<<460.0,766.0>--<202.0,767.0>>

	* uni7ABA (U+7ABA): L<<696.0,193.0>--<697.0,39.0>>

	* uni7ABA (U+7ABA): L<<780.0,767.0>--<540.0,766.0>>

	* uni7AEF (U+7AEF): L<<706.0,347.0>--<705.0,81.0>>

	* uni7B51 (U+7B51): L<<740.0,427.0>--<741.0,50.0>>

	* uni7B67 (U+7B67): L<<558.0,222.0>--<559.0,48.0>>

	* uni7B86 (U+7B86): L<<175.0,266.0>--<174.0,25.0>>

	* uni7B94 (U+7B94): L<<416.0,464.0>--<417.0,45.0>>

	* uni7B97 (U+7B97): L<<177.0,559.0>--<178.0,290.0>>

	* uni7BA1 (U+7BA1): L<<455.0,551.0>--<192.0,552.0>>

	* uni7BA1 (U+7BA1): L<<831.0,552.0>--<535.0,551.0>>

	* uni7BC9 (U+7BC9): L<<583.0,195.0>--<937.0,196.0>>

	* uni7C38 (U+7C38): L<<610.0,319.0>--<826.0,320.0>>

	* uni7C4D (U+7C4D): L<<332.0,420.0>--<186.0,421.0>>

	* uni7C4D (U+7C4D): L<<340.0,526.0>--<159.0,527.0>>

	* uni7C73 (U+7C73): L<<545.0,449.0>--<952.0,450.0>>

	* uni7C7E (U+7C7E): L<<596.0,699.0>--<808.0,700.0>>

	* uni7C82 (U+7C82): L<<326.0,714.0>--<533.0,715.0>>

	* uni7C82 (U+7C82): L<<529.0,744.0>--<348.0,743.0>>

	* uni7C82 (U+7C82): L<<568.0,229.0>--<937.0,230.0>>

	* uni7C8B (U+7C8B): L<<749.0,649.0>--<750.0,522.0>>

	* uni7C95 (U+7C95): L<<463.0,642.0>--<464.0,45.0>>

	* uni7C9F (U+7C9F): L<<562.0,235.0>--<937.0,236.0>>

	* uni7CDE (U+7CDE): L<<586.0,683.0>--<907.0,684.0>>

	* uni7CE2 (U+7CE2): L<<418.0,579.0>--<419.0,408.0>>

	* uni7D10 (U+7D10): L<<470.0,-17.0>--<947.0,-18.0>>

	* uni7D10 (U+7D10): L<<523.0,392.0>--<957.0,391.0>>

	* uni7D14 (U+7D14): L<<475.0,497.0>--<476.0,311.0>>

	* uni7D2B (U+7D2B): L<<269.0,778.0>--<267.0,478.0>>

	* uni7D33 (U+7D33): L<<741.0,469.0>--<742.0,616.0>>

	* uni7D44 (U+7D44): L<<502.0,-23.0>--<967.0,-24.0>>

	* uni7D61 (U+7D61): L<<768.0,718.0>--<590.0,717.0>>

	* uni7DB1 (U+7DB1): L<<514.0,409.0>--<515.0,212.0>>

	* uni7DBB (U+7DBB): L<<643.0,708.0>--<512.0,709.0>>

	* uni7DBB (U+7DBB): L<<844.0,709.0>--<723.0,708.0>>

	* uni7DBE (U+7DBE): L<<738.0,304.0>--<591.0,303.0>>

	* uni7DCF (U+7DCF): L<<583.0,207.0>--<584.0,31.0>>

	* uni7DEF (U+7DEF): L<<520.0,725.0>--<762.0,726.0>>

	* uni7DEF (U+7DEF): L<<738.0,750.0>--<522.0,749.0>>

	* uni7E2B (U+7E2B): L<<790.0,740.0>--<653.0,739.0>>

	* uni7E2E (U+7E2E): L<<584.0,415.0>--<585.0,32.0>>

	* uni7E2E (U+7E2E): L<<627.0,721.0>--<493.0,722.0>>

	* uni7E2E (U+7E2E): L<<839.0,722.0>--<707.0,721.0>>

	* uni7E82 (U+7E82): L<<197.0,621.0>--<198.0,453.0>>

	* uni7F36 (U+7F36): L<<170.0,273.0>--<171.0,48.0>>

	* uni7F6E (U+7F6E): L<<830.0,11.0>--<190.0,12.0>>

	* uni7FE0 (U+7FE0): L<<791.0,383.0>--<212.0,384.0>>

	* uni7FE0 (U+7FE0): L<<846.0,140.0>--<162.0,141.0>>

	* uni7FFB (U+7FFB): L<<315.0,547.0>--<489.0,548.0>>

	* uni7FFB (U+7FFB): L<<80.0,298.0>--<81.0,30.0>>

	* uni8005 (U+8005): L<<362.0,6.0>--<363.0,164.0>>

	* uni800C (U+800C): L<<565.0,525.0>--<564.0,81.0>>

	* uni808C (U+808C): L<<586.0,760.0>--<717.0,761.0>>

	* uni808C (U+808C): L<<723.0,744.0>--<724.0,45.0>>

	* uni80AF (U+80AF): L<<150.0,573.0>--<934.0,572.0>>

	* uni8106 (U+8106): L<<720.0,729.0>--<567.0,728.0>>

	* uni811B (U+811B): L<<331.0,5.0>--<332.0,710.0>>

	* uni8133 (U+8133): L<<412.0,419.0>--<414.0,48.0>>

	* uni8154 (U+8154): L<<483.0,-15.0>--<947.0,-16.0>>

	* uni8154 (U+8154): L<<604.0,703.0>--<469.0,704.0>>

	* uni8154 (U+8154): L<<675.0,676.0>--<676.0,464.0>>

	* uni8154 (U+8154): L<<816.0,704.0>--<684.0,703.0>>

	* uni8155 (U+8155): L<<613.0,734.0>--<457.0,735.0>>

	* uni8155 (U+8155): L<<814.0,735.0>--<693.0,734.0>>

	* uni8155 (U+8155): L<<824.0,493.0>--<825.0,283.0>>

	* uni8178 (U+8178): L<<496.0,281.0>--<858.0,282.0>>

	* uni819C (U+819C): L<<437.0,579.0>--<438.0,384.0>>

	* uni81EA (U+81EA): L<<180.0,642.0>--<181.0,46.0>>

	* uni81ED (U+81ED): L<<194.0,716.0>--<195.0,392.0>>

	* uni81FC (U+81FC): L<<124.0,683.0>--<125.0,45.0>>

	* uni8210 (U+8210): L<<953.0,73.0>--<952.0,204.0>>

	* uni8218 (U+8218): L<<866.0,702.0>--<749.0,701.0>>

	* uni822A (U+822A): L<<643.0,474.0>--<759.0,475.0>>

	* uni822A (U+822A): L<<765.0,458.0>--<766.0,45.0>>

	* uni8235 (U+8235): L<<668.0,676.0>--<550.0,677.0>>

	* uni8236 (U+8236): L<<524.0,642.0>--<525.0,45.0>>

	* uni8266 (U+8266): L<<459.0,-30.0>--<967.0,-31.0>>

	* uni82A5 (U+82A5): L<<327.0,399.0>--<326.0,277.0>>

	* uni82AF (U+82AF): L<<313.0,403.0>--<314.0,45.0>>

	* uni82B1 (U+82B1): L<<537.0,510.0>--<538.0,50.0>>

	* uni82D1 (U+82D1): L<<777.0,478.0>--<778.0,297.0>>

	* uni82E7 (U+82E7): L<<460.0,509.0>--<203.0,510.0>>

	* uni82E7 (U+82E7): L<<771.0,510.0>--<540.0,509.0>>

	* uni8303 (U+8303): L<<871.0,310.0>--<870.0,486.0>>

	* uni8304 (U+8304): L<<124.0,462.0>--<411.0,463.0>>

	* uni8309 (U+8309): L<<579.0,338.0>--<844.0,339.0>>

	* uni834F (U+834F): L<<820.0,6.0>--<481.0,7.0>>

	* uni834F (U+834F): L<<840.0,269.0>--<441.0,270.0>>

	* uni839E (U+839E): L<<460.0,570.0>--<218.0,571.0>>

	* uni839E (U+839E): L<<781.0,571.0>--<540.0,570.0>>

	* uni83B1 (U+83B1): L<<574.0,303.0>--<924.0,304.0>>

	* uni83C5 (U+83C5): L<<460.0,566.0>--<192.0,567.0>>

	* uni83C5 (U+83C5): L<<826.0,567.0>--<540.0,566.0>>

	* uni83CA (U+83CA): L<<653.0,321.0>--<511.0,322.0>>

	* uni83DC (U+83DC): L<<550.0,241.0>--<937.0,242.0>>

	* uni83DF (U+83DF): L<<589.0,565.0>--<375.0,564.0>>

	* uni83F1 (U+83F1): L<<601.0,253.0>--<400.0,252.0>>

	* uni840E (U+840E): L<<575.0,488.0>--<937.0,489.0>>

	* uni8431 (U+8431): L<<460.0,586.0>--<182.0,587.0>>

	* uni8431 (U+8431): L<<798.0,587.0>--<540.0,586.0>>

	* uni843D (U+843D): L<<738.0,565.0>--<547.0,564.0>>

	* uni8449 (U+8449): L<<581.0,189.0>--<944.0,190.0>>

	* uni8466 (U+8466): L<<279.0,562.0>--<637.0,563.0>>

	* uni8466 (U+8466): L<<613.0,587.0>--<287.0,586.0>>

	* uni8471 (U+8471): L<<216.0,554.0>--<768.0,555.0>>

	* uni8471 (U+8471): L<<301.0,181.0>--<302.0,32.0>>

	* uni84C4 (U+84C4): L<<190.0,254.0>--<191.0,30.0>>

	* uni84C9 (U+84C9): L<<456.0,598.0>--<208.0,599.0>>

	* uni84C9 (U+84C9): L<<782.0,599.0>--<536.0,598.0>>

	* uni84CB (U+84CB): L<<141.0,-30.0>--<962.0,-31.0>>

	* uni8543 (U+8543): L<<202.0,257.0>--<203.0,31.0>>

	* uni8557 (U+8557): L<<753.0,554.0>--<591.0,553.0>>

	* uni8568 (U+8568): L<<372.0,447.0>--<371.0,223.0>>

	* uni8569 (U+8569): L<<451.0,211.0>--<848.0,212.0>>

	* uni857E (U+857E): L<<460.0,549.0>--<162.0,550.0>>

	* uni857E (U+857E): L<<860.0,550.0>--<540.0,549.0>>

	* uni85AC (U+85AC): L<<314.0,566.0>--<315.0,391.0>>

	* uni85AC (U+85AC): L<<559.0,204.0>--<937.0,205.0>>

	* uni85C1 (U+85C1): L<<589.0,157.0>--<932.0,158.0>>

	* uni85CD (U+85CD): L<<141.0,-35.0>--<962.0,-36.0>>

	* uni85E9 (U+85E9): L<<690.0,421.0>--<930.0,422.0>>

	* uni85FB (U+85FB): L<<820.0,215.0>--<669.0,216.0>>

	* uni8607 (U+8607): L<<331.0,555.0>--<192.0,554.0>>

	* uni862D (U+862D): L<<532.0,61.0>--<530.0,350.0>>

	* uni8650 (U+8650): L<<733.0,151.0>--<305.0,152.0>>

	* uni8650 (U+8650): L<<774.0,31.0>--<346.0,32.0>>

	* uni86AF (U+86AF): L<<472.0,-18.0>--<962.0,-19.0>>

	* uni86AF (U+86AF): L<<548.0,447.0>--<937.0,446.0>>

	* uni86C6 (U+86C6): L<<472.0,-18.0>--<962.0,-19.0>>

	* uni86CE (U+86CE): L<<679.0,368.0>--<846.0,369.0>>

	* uni86DB (U+86DB): L<<746.0,374.0>--<952.0,375.0>>

	* uni86DB (U+86DB): L<<747.0,45.0>--<746.0,374.0>>

	* uni8702 (U+8702): L<<749.0,740.0>--<590.0,739.0>>

	* uni871C (U+871C): L<<460.0,750.0>--<194.0,751.0>>

	* uni871C (U+871C): L<<814.0,751.0>--<540.0,750.0>>

	* uni874E (U+874E): L<<470.0,251.0>--<471.0,122.0>>

	* uni8776 (U+8776): L<<736.0,256.0>--<945.0,257.0>>

	* uni8840 (U+8840): L<<131.0,-14.0>--<967.0,-15.0>>

	* uni885B (U+885B): L<<394.0,715.0>--<563.0,716.0>>

	* uni885B (U+885B): L<<539.0,740.0>--<396.0,739.0>>

	* uni8861 (U+8861): L<<537.0,725.0>--<390.0,724.0>>

	* uni887F (U+887F): L<<116.0,617.0>--<262.0,618.0>>

	* uni887F (U+887F): L<<500.0,283.0>--<758.0,284.0>>

	* uni887F (U+887F): L<<758.0,314.0>--<542.0,313.0>>

	* uni8882 (U+8882): L<<140.0,604.0>--<262.0,605.0>>

	* uni8896 (U+8896): L<<116.0,617.0>--<247.0,618.0>>

	* uni88AB (U+88AB): L<<116.0,617.0>--<247.0,618.0>>

	* uni88AB (U+88AB): L<<494.0,422.0>--<801.0,423.0>>

	* uni88B4 (U+88B4): L<<121.0,613.0>--<257.0,614.0>>

	* uni88B7 (U+88B7): L<<116.0,617.0>--<262.0,618.0>>

	* uni88D5 (U+88D5): L<<116.0,617.0>--<247.0,618.0>>

	* uni88DC (U+88DC): L<<116.0,617.0>--<247.0,618.0>>

	* uni88E1 (U+88E1): L<<126.0,623.0>--<252.0,624.0>>

	* uni88F3 (U+88F3): L<<461.0,694.0>--<203.0,695.0>>

	* uni88F3 (U+88F3): L<<806.0,695.0>--<538.0,694.0>>

	* uni88F8 (U+88F8): L<<116.0,617.0>--<248.0,618.0>>

	* uni88F8 (U+88F8): L<<503.0,461.0>--<502.0,585.0>>

	* uni8907 (U+8907): L<<121.0,617.0>--<273.0,618.0>>

	* uni8910 (U+8910): L<<121.0,617.0>--<257.0,618.0>>

	* uni8912 (U+8912): L<<838.0,471.0>--<665.0,472.0>>

	* uni8956 (U+8956): L<<121.0,613.0>--<257.0,614.0>>

	* uni8956 (U+8956): L<<682.0,469.0>--<802.0,470.0>>

	* uni895F (U+895F): L<<121.0,613.0>--<257.0,614.0>>

	* uni898B (U+898B): L<<558.0,326.0>--<559.0,48.0>>

	* uni898F (U+898F): L<<706.0,296.0>--<707.0,48.0>>

	* uni8996 (U+8996): L<<107.0,612.0>--<328.0,613.0>>

	* uni8996 (U+8996): L<<711.0,296.0>--<712.0,48.0>>

	* uni8997 (U+8997): L<<711.0,296.0>--<712.0,48.0>>

	* uni89D2 (U+89D2): L<<589.0,725.0>--<323.0,724.0>>

	* uni89E3 (U+89E3): L<<302.0,716.0>--<175.0,715.0>>

	* uni89E6 (U+89E6): L<<302.0,716.0>--<175.0,715.0>>

	* uni89E7 (U+89E7): L<<295.0,725.0>--<168.0,724.0>>

	* uni8A0A (U+8A0A): L<<551.0,669.0>--<552.0,363.0>>

	* uni8A0A (U+8A0A): L<<642.0,426.0>--<517.0,427.0>>

	* uni8A0A (U+8A0A): L<<767.0,723.0>--<768.0,472.0>>

	* uni8A0A (U+8A0A): L<<848.0,460.0>--<847.0,705.0>>

	* uni8A13 (U+8A13): L<<512.0,769.0>--<513.0,279.0>>

	* uni8A17 (U+8A17): L<<579.0,719.0>--<580.0,46.0>>

	* uni8A3C (U+8A3C): L<<491.0,475.0>--<492.0,11.0>>

	* uni8A3C (U+8A3C): L<<512.0,-14.0>--<954.0,-15.0>>

	* uni8A51 (U+8A51): L<<638.0,676.0>--<503.0,677.0>>

	* uni8A51 (U+8A51): L<<853.0,677.0>--<718.0,676.0>>

	* uni8A55 (U+8A55): L<<844.0,332.0>--<724.0,333.0>>

	* uni8A6B (U+8A6B): L<<573.0,469.0>--<574.0,42.0>>

	* uni8A6B (U+8A6B): L<<633.0,676.0>--<490.0,677.0>>

	* uni8A6B (U+8A6B): L<<856.0,677.0>--<713.0,676.0>>

	* uni8A6E (U+8A6E): L<<497.0,-6.0>--<959.0,-7.0>>

	* uni8A8C (U+8A8C): L<<549.0,294.0>--<550.0,33.0>>

	* uni8A8D (U+8A8D): L<<550.0,279.0>--<551.0,33.0>>

	* uni8A95 (U+8A95): L<<618.0,504.0>--<619.0,161.0>>

	* uni8A95 (U+8A95): L<<635.0,131.0>--<959.0,130.0>>

	* uni8A98 (U+8A98): L<<514.0,350.0>--<708.0,351.0>>

	* uni8A98 (U+8A98): L<<690.0,375.0>--<516.0,374.0>>

	* uni8A98 (U+8A98): L<<730.0,611.0>--<957.0,612.0>>

	* uni8ABC (U+8ABC): L<<467.0,-17.0>--<962.0,-18.0>>

	* uni8ADC (U+8ADC): L<<714.0,256.0>--<927.0,257.0>>

	* uni8ADC (U+8ADC): L<<736.0,782.0>--<737.0,664.0>>

	* uni8AF3 (U+8AF3): L<<567.0,39.0>--<566.0,188.0>>

	* uni8B00 (U+8B00): L<<726.0,287.0>--<952.0,288.0>>

	* uni8B0E (U+8B0E): L<<772.0,491.0>--<955.0,492.0>>

	* uni8C61 (U+8C61): L<<600.0,763.0>--<340.0,762.0>>

	* uni8C89 (U+8C89): L<<749.0,718.0>--<591.0,717.0>>

	* uni8CA0 (U+8CA0): L<<638.0,737.0>--<347.0,736.0>>

	* uni8CA9 (U+8CA9): L<<513.0,502.0>--<815.0,503.0>>

	* uni8CAF (U+8CAF): L<<649.0,721.0>--<526.0,722.0>>

	* uni8CAF (U+8CAF): L<<851.0,722.0>--<729.0,721.0>>

	* uni8CB4 (U+8CB4): L<<820.0,533.0>--<177.0,534.0>>

	* uni8CC0 (U+8CC0): L<<374.0,742.0>--<165.0,741.0>>

	* uni8CC2 (U+8CC2): L<<771.0,718.0>--<577.0,717.0>>

	* uni8CC3 (U+8CC3): L<<810.0,533.0>--<471.0,534.0>>

	* uni8CC3 (U+8CC3): L<<830.0,657.0>--<431.0,658.0>>

	* uni8CD3 (U+8CD3): L<<460.0,759.0>--<196.0,760.0>>

	* uni8CD3 (U+8CD3): L<<670.0,665.0>--<327.0,666.0>>

	* uni8CD3 (U+8CD3): L<<814.0,760.0>--<540.0,759.0>>

	* uni8CDC (U+8CDC): L<<540.0,355.0>--<862.0,356.0>>

	* uni8CDE (U+8CDE): L<<460.0,687.0>--<183.0,688.0>>

	* uni8CDE (U+8CDE): L<<816.0,688.0>--<540.0,687.0>>

	* uni8D64 (U+8D64): L<<640.0,5.0>--<641.0,511.0>>

	* uni8D66 (U+8D66): L<<407.0,0.0>--<408.0,498.0>>

	* uni8D6B (U+8D6B): L<<376.0,0.0>--<377.0,477.0>>

	* uni8D6B (U+8D6B): L<<803.0,0.0>--<804.0,477.0>>

	* uni8DBE (U+8DBE): L<<476.0,519.0>--<477.0,35.0>>

	* uni8DE1 (U+8DE1): L<<808.0,0.0>--<809.0,634.0>>

	* uni8DEF (U+8DEF): L<<784.0,728.0>--<601.0,727.0>>

	* uni8E5F (U+8E5F): L<<384.0,540.0>--<385.0,718.0>>

	* uni8E74 (U+8E74): L<<323.0,557.0>--<324.0,708.0>>

	* uni8E74 (U+8E74): L<<68.0,743.0>--<69.0,558.0>>

	* uni8EB0 (U+8EB0): L<<763.0,585.0>--<963.0,586.0>>

	* uni8ECA (U+8ECA): L<<267.0,280.0>--<266.0,404.0>>

	* uni8ECA (U+8ECA): L<<540.0,429.0>--<541.0,547.0>>

	* uni8ECC (U+8ECC): L<<760.0,515.0>--<761.0,51.0>>

	* uni8EE2 (U+8EE2): L<<139.0,280.0>--<138.0,409.0>>

	* uni8EFB (U+8EFB): L<<134.0,310.0>--<133.0,431.0>>

	* uni8F1D (U+8F1D): L<<175.0,780.0>--<173.0,415.0>>

	* uni8F1D (U+8F1D): L<<252.0,412.0>--<250.0,135.0>>

	* uni8F2A (U+8F2A): L<<134.0,310.0>--<133.0,432.0>>

	* uni8F38 (U+8F38): L<<134.0,310.0>--<133.0,432.0>>

	* uni8F44 (U+8F44): L<<141.0,310.0>--<140.0,432.0>>

	* uni8F44 (U+8F44): L<<841.0,722.0>--<724.0,721.0>>

	* uni8F4D (U+8F4D): L<<111.0,300.0>--<110.0,419.0>>

	* uni8F4D (U+8F4D): L<<220.0,444.0>--<221.0,562.0>>

	* uni8FB1 (U+8FB1): L<<824.0,221.0>--<180.0,222.0>>

	* uni8FBB (U+8FBB): L<<820.0,504.0>--<680.0,505.0>>

	* uni8FBF (U+8FBF): L<<384.0,652.0>--<385.0,212.0>>

	* uni8FC2 (U+8FC2): L<<782.0,753.0>--<501.0,754.0>>

	* uni8FC2 (U+8FC2): L<<832.0,504.0>--<682.0,505.0>>

	* uni8FC4 (U+8FC4): L<<479.0,105.0>--<829.0,106.0>>

	* uni8FD4 (U+8FD4): L<<406.0,554.0>--<773.0,555.0>>

	* uni8FE6 (U+8FE6): L<<384.0,602.0>--<528.0,603.0>>

	* uni8FF0 (U+8FF0): L<<813.0,617.0>--<668.0,618.0>>

	* uni8FF7 (U+8FF7): L<<698.0,489.0>--<930.0,490.0>>

	* uni8FF9 (U+8FF9): L<<761.0,150.0>--<762.0,657.0>>

	* uni9003 (U+9003): L<<497.0,816.0>--<496.0,691.0>>

	* uni9006 (U+9006): L<<384.0,512.0>--<385.0,312.0>>

	* uni9006 (U+9006): L<<596.0,618.0>--<595.0,372.0>>

	* uni9006 (U+9006): L<<674.0,372.0>--<675.0,618.0>>

	* uni900F (U+900F): L<<473.0,396.0>--<679.0,397.0>>

	* uni900F (U+900F): L<<661.0,421.0>--<475.0,420.0>>

	* uni900F (U+900F): L<<686.0,623.0>--<921.0,624.0>>

	* uni9014 (U+9014): L<<721.0,21.0>--<550.0,22.0>>

	* uni9020 (U+9020): L<<721.0,21.0>--<550.0,22.0>>

	* uni9022 (U+9022): L<<711.0,745.0>--<535.0,744.0>>

	* uni9038 (U+9038): L<<655.0,725.0>--<465.0,724.0>>

	* uni9055 (U+9055): L<<443.0,713.0>--<715.0,714.0>>

	* uni9055 (U+9055): L<<691.0,738.0>--<445.0,737.0>>

	* uni9061 (U+9061): L<<434.0,608.0>--<433.0,403.0>>

	* uni9063 (U+9063): L<<810.0,531.0>--<401.0,532.0>>

	* uni906E (U+906E): L<<537.0,614.0>--<538.0,421.0>>

	* uni90FD (U+90FD): L<<244.0,60.0>--<245.0,195.0>>

	* uni9154 (U+9154): L<<748.0,649.0>--<749.0,490.0>>

	* uni916A (U+916A): L<<776.0,718.0>--<627.0,717.0>>

	* uni9175 (U+9175): L<<727.0,175.0>--<952.0,176.0>>

	* uni919C (U+919C): L<<466.0,695.0>--<465.0,414.0>>

	* uni919C (U+919C): L<<540.0,369.0>--<541.0,510.0>>

	* uni919C (U+919C): L<<836.0,510.0>--<835.0,369.0>>

	* uni919C (U+919C): L<<910.0,415.0>--<911.0,642.0>>

	* uni91C6 (U+91C6): L<<540.0,403.0>--<927.0,404.0>>

	* uni91C6 (U+91C6): L<<541.0,45.0>--<540.0,403.0>>

	* uni91C7 (U+91C7): L<<540.0,352.0>--<927.0,353.0>>

	* uni91C7 (U+91C7): L<<541.0,45.0>--<540.0,352.0>>

	* uni91CC (U+91CC): L<<257.0,394.0>--<256.0,551.0>>

	* uni91CC (U+91CC): L<<540.0,576.0>--<541.0,732.0>>

	* uni91CE (U+91CE): L<<136.0,445.0>--<135.0,574.0>>

	* uni91CE (U+91CE): L<<308.0,599.0>--<309.0,727.0>>

	* uni91D1 (U+91D1): L<<159.0,-31.0>--<932.0,-32.0>>

	* uni91D6 (U+91D6): L<<298.0,427.0>--<146.0,428.0>>

	* uni91D8 (U+91D8): L<<307.0,427.0>--<155.0,428.0>>

	* uni91DC (U+91DC): L<<189.0,-28.0>--<902.0,-29.0>>

	* uni91DD (U+91DD): L<<357.0,415.0>--<163.0,416.0>>

	* uni91E3 (U+91E3): L<<318.0,427.0>--<166.0,428.0>>

	* uni91E6 (U+91E6): L<<367.0,415.0>--<173.0,416.0>>

	* uni91E7 (U+91E7): L<<318.0,427.0>--<166.0,428.0>>

	* uni91E7 (U+91E7): L<<512.0,769.0>--<513.0,279.0>>

	* uni920D (U+920D): L<<282.0,427.0>--<130.0,428.0>>

	* uni920D (U+920D): L<<433.0,481.0>--<434.0,293.0>>

	* uni920E (U+920E): L<<325.0,410.0>--<153.0,411.0>>

	* uni9234 (U+9234): L<<321.0,424.0>--<155.0,425.0>>

	* uni9237 (U+9237): L<<311.0,410.0>--<153.0,411.0>>

	* uni923F (U+923F): L<<316.0,417.0>--<152.0,418.0>>

	* uni9244 (U+9244): L<<311.0,410.0>--<153.0,411.0>>

	* uni9248 (U+9248): L<<342.0,410.0>--<153.0,411.0>>

	* uni9248 (U+9248): L<<853.0,677.0>--<733.0,676.0>>

	* uni9257 (U+9257): L<<325.0,425.0>--<143.0,426.0>>

	* uni925B (U+925B): L<<325.0,410.0>--<153.0,411.0>>

	* uni9262 (U+9262): L<<325.0,410.0>--<153.0,411.0>>

	* uni9262 (U+9262): L<<726.0,585.0>--<956.0,586.0>>

	* uni9264 (U+9264): L<<294.0,427.0>--<142.0,428.0>>

	* uni9266 (U+9266): L<<325.0,426.0>--<153.0,427.0>>

	* uni9266 (U+9266): L<<473.0,5.0>--<959.0,4.0>>

	* uni9266 (U+9266): L<<506.0,475.0>--<507.0,35.0>>

	* uni9271 (U+9271): L<<298.0,427.0>--<135.0,428.0>>

	* uni927E (U+927E): L<<320.0,410.0>--<158.0,411.0>>

	* uni9280 (U+9280): L<<346.0,410.0>--<163.0,411.0>>

	* uni9283 (U+9283): L<<316.0,410.0>--<158.0,411.0>>

	* uni9283 (U+9283): L<<582.0,400.0>--<581.0,269.0>>

	* uni9285 (U+9285): L<<308.0,427.0>--<144.0,428.0>>

	* uni9291 (U+9291): L<<321.0,410.0>--<163.0,411.0>>

	* uni9291 (U+9291): L<<645.0,598.0>--<644.0,413.0>>

	* uni9298 (U+9298): L<<346.0,410.0>--<149.0,411.0>>

	* uni929A (U+929A): L<<292.0,415.0>--<143.0,416.0>>

	* uni929B (U+929B): L<<298.0,415.0>--<149.0,416.0>>

	* uni92AD (U+92AD): L<<346.0,410.0>--<163.0,411.0>>

	* uni92D2 (U+92D2): L<<282.0,415.0>--<143.0,416.0>>

	* uni92D2 (U+92D2): L<<750.0,740.0>--<572.0,739.0>>

	* uni92E4 (U+92E4): L<<255.0,429.0>--<128.0,430.0>>

	* uni92EA (U+92EA): L<<332.0,391.0>--<163.0,392.0>>

	* uni92ED (U+92ED): L<<332.0,410.0>--<163.0,411.0>>

	* uni92F2 (U+92F2): L<<322.0,415.0>--<153.0,416.0>>

	* uni92F3 (U+92F3): L<<289.0,410.0>--<143.0,411.0>>

	* uni92F8 (U+92F8): L<<265.0,418.0>--<138.0,419.0>>

	* uni92FC (U+92FC): L<<280.0,427.0>--<133.0,428.0>>

	* uni92FC (U+92FC): L<<524.0,395.0>--<525.0,203.0>>

	* uni9306 (U+9306): L<<332.0,410.0>--<163.0,411.0>>

	* uni9310 (U+9310): L<<332.0,415.0>--<163.0,416.0>>

	* uni9318 (U+9318): L<<281.0,414.0>--<144.0,415.0>>

	* uni9320 (U+9320): L<<322.0,415.0>--<153.0,416.0>>

	* uni9320 (U+9320): L<<660.0,702.0>--<542.0,703.0>>

	* uni9326 (U+9326): L<<322.0,415.0>--<153.0,416.0>>

	* uni9328 (U+9328): L<<297.0,415.0>--<138.0,416.0>>

	* uni932B (U+932B): L<<302.0,429.0>--<153.0,430.0>>

	* uni932B (U+932B): L<<552.0,338.0>--<874.0,339.0>>

	* uni932C (U+932C): L<<290.0,427.0>--<143.0,428.0>>

	* uni932F (U+932F): L<<306.0,410.0>--<148.0,411.0>>

	* uni932F (U+932F): L<<568.0,24.0>--<567.0,164.0>>

	* uni9332 (U+9332): L<<331.0,410.0>--<153.0,411.0>>

	* uni934B (U+934B): L<<302.0,415.0>--<153.0,416.0>>

	* uni934D (U+934D): L<<260.0,418.0>--<133.0,419.0>>

	* uni9354 (U+9354): L<<312.0,415.0>--<163.0,416.0>>

	* uni935B (U+935B): L<<251.0,410.0>--<133.0,411.0>>

	* uni936C (U+936C): L<<278.0,425.0>--<140.0,426.0>>

	* uni9375 (U+9375): L<<251.0,410.0>--<133.0,411.0>>

	* uni937E (U+937E): L<<300.0,429.0>--<158.0,430.0>>

	* uni938C (U+938C): L<<287.0,415.0>--<149.0,416.0>>

	* uni9396 (U+9396): L<<307.0,415.0>--<158.0,416.0>>

	* uni9396 (U+9396): L<<646.0,777.0>--<647.0,582.0>>

	* uni9397 (U+9397): L<<285.0,426.0>--<145.0,427.0>>

	* uni939A (U+939A): L<<287.0,422.0>--<145.0,423.0>>

	* uni93A7 (U+93A7): L<<311.0,410.0>--<153.0,411.0>>

	* uni93AE (U+93AE): L<<311.0,410.0>--<153.0,411.0>>

	* uni93D1 (U+93D1): L<<291.0,410.0>--<153.0,411.0>>

	* uni93E1 (U+93E1): L<<311.0,430.0>--<153.0,431.0>>

	* uni9418 (U+9418): L<<304.0,410.0>--<143.0,411.0>>

	* uni9419 (U+9419): L<<268.0,426.0>--<139.0,427.0>>

	* uni9438 (U+9438): L<<268.0,426.0>--<139.0,427.0>>

	* uni9451 (U+9451): L<<265.0,410.0>--<140.0,411.0>>

	* uni9451 (U+9451): L<<452.0,-30.0>--<967.0,-31.0>>

	* uni9453 (U+9453): L<<265.0,410.0>--<140.0,411.0>>

	* uni9453 (U+9453): L<<864.0,531.0>--<619.0,532.0>>

	* uni9591 (U+9591): L<<665.0,371.0>--<538.0,372.0>>

	* uni962A (U+962A): L<<475.0,502.0>--<802.0,503.0>>

	* uni962F (U+962F): L<<433.0,519.0>--<434.0,35.0>>

	* uni9640 (U+9640): L<<603.0,676.0>--<433.0,677.0>>

	* uni9640 (U+9640): L<<853.0,677.0>--<683.0,676.0>>

	* uni9642 (U+9642): L<<457.0,426.0>--<783.0,427.0>>

	* uni964D (U+964D): L<<733.0,740.0>--<536.0,739.0>>

	* uni9650 (U+9650): L<<453.0,758.0>--<452.0,0.0>>

	* uni9650 (U+9650): L<<531.0,43.0>--<532.0,416.0>>

	* uni9662 (U+9662): L<<586.0,721.0>--<426.0,722.0>>

	* uni9662 (U+9662): L<<861.0,722.0>--<666.0,721.0>>

	* uni9665 (U+9665): L<<618.0,37.0>--<619.0,233.0>>

	* uni9665 (U+9665): L<<751.0,725.0>--<524.0,724.0>>

	* uni9675 (U+9675): L<<728.0,304.0>--<556.0,303.0>>

	* uni9676 (U+9676): L<<390.0,291.0>--<391.0,175.0>>

	* uni9686 (U+9686): L<<739.0,737.0>--<536.0,736.0>>

	* uni968E (U+968E): L<<377.0,782.0>--<376.0,477.0>>

	* uni968E (U+968E): L<<465.0,24.0>--<464.0,151.0>>

	* uni96C5 (U+96C5): L<<321.0,330.0>--<320.0,445.0>>

	* uni96C6 (U+96C6): L<<563.0,205.0>--<927.0,206.0>>

	* uni96CC (U+96CC): L<<65.0,586.0>--<64.0,27.0>>

	* uni96D1 (U+96D1): L<<132.0,705.0>--<288.0,706.0>>

	* uni96D1 (U+96D1): L<<294.0,693.0>--<295.0,512.0>>

	* uni96E2 (U+96E2): L<<75.0,625.0>--<76.0,487.0>>

	* uni96EA (U+96EA): L<<460.0,656.0>--<162.0,657.0>>

	* uni96EA (U+96EA): L<<860.0,657.0>--<540.0,656.0>>

	* uni96EB (U+96EB): L<<460.0,666.0>--<162.0,667.0>>

	* uni96EB (U+96EB): L<<860.0,667.0>--<540.0,666.0>>

	* uni96F0 (U+96F0): L<<460.0,666.0>--<173.0,667.0>>

	* uni96F0 (U+96F0): L<<860.0,667.0>--<540.0,666.0>>

	* uni96F2 (U+96F2): L<<157.0,635.0>--<460.0,636.0>>

	* uni96F2 (U+96F2): L<<540.0,636.0>--<856.0,635.0>>

	* uni96F6 (U+96F6): L<<460.0,680.0>--<173.0,681.0>>

	* uni96F6 (U+96F6): L<<836.0,681.0>--<540.0,680.0>>

	* uni96F7 (U+96F7): L<<460.0,656.0>--<162.0,657.0>>

	* uni96F7 (U+96F7): L<<860.0,657.0>--<540.0,656.0>>

	* uni96F9 (U+96F9): L<<460.0,666.0>--<162.0,667.0>>

	* uni96F9 (U+96F9): L<<860.0,667.0>--<540.0,666.0>>

	* uni96FB (U+96FB): L<<157.0,643.0>--<460.0,644.0>>

	* uni96FB (U+96FB): L<<540.0,644.0>--<856.0,643.0>>

	* uni9700 (U+9700): L<<352.0,244.0>--<351.0,81.0>>

	* uni9700 (U+9700): L<<460.0,666.0>--<162.0,667.0>>

	* uni9700 (U+9700): L<<549.0,244.0>--<548.0,81.0>>

	* uni9700 (U+9700): L<<860.0,667.0>--<540.0,666.0>>

	* uni9707 (U+9707): L<<460.0,701.0>--<162.0,702.0>>

	* uni9707 (U+9707): L<<860.0,702.0>--<540.0,701.0>>

	* uni970A (U+970A): L<<460.0,666.0>--<162.0,667.0>>

	* uni970A (U+970A): L<<860.0,667.0>--<540.0,666.0>>

	* uni970D (U+970D): L<<460.0,681.0>--<162.0,682.0>>

	* uni970D (U+970D): L<<860.0,682.0>--<540.0,681.0>>

	* uni971C (U+971C): L<<460.0,666.0>--<162.0,667.0>>

	* uni971C (U+971C): L<<860.0,667.0>--<540.0,666.0>>

	* uni971E (U+971E): L<<460.0,694.0>--<162.0,695.0>>

	* uni971E (U+971E): L<<860.0,695.0>--<540.0,694.0>>

	* uni9727 (U+9727): L<<454.0,704.0>--<173.0,705.0>>

	* uni9727 (U+9727): L<<816.0,705.0>--<536.0,704.0>>

	* uni9732 (U+9732): L<<460.0,694.0>--<172.0,695.0>>

	* uni9732 (U+9732): L<<784.0,413.0>--<601.0,412.0>>

	* uni9732 (U+9732): L<<828.0,695.0>--<540.0,694.0>>

	* uni9759 (U+9759): L<<746.0,725.0>--<598.0,724.0>>

	* uni9769 (U+9769): L<<287.0,796.0>--<288.0,641.0>>

	* uni9774 (U+9774): L<<136.0,786.0>--<137.0,660.0>>

	* uni9784 (U+9784): L<<136.0,786.0>--<137.0,660.0>>

	* uni978D (U+978D): L<<112.0,786.0>--<113.0,660.0>>

	* uni9798 (U+9798): L<<112.0,786.0>--<113.0,660.0>>

	* uni97A0 (U+97A0): L<<112.0,786.0>--<113.0,660.0>>

	* uni97AD (U+97AD): L<<109.0,786.0>--<110.0,660.0>>

	* uni97AD (U+97AD): L<<726.0,561.0>--<727.0,405.0>>

	* uni97AD (U+97AD): L<<797.0,400.0>--<798.0,759.0>>

	* uni97D3 (U+97D3): L<<569.0,715.0>--<769.0,716.0>>

	* uni97D3 (U+97D3): L<<745.0,740.0>--<571.0,739.0>>

	* uni97FB (U+97FB): L<<171.0,104.0>--<170.0,239.0>>

	* uni9813 (U+9813): L<<43.0,515.0>--<44.0,334.0>>

	* uni9817 (U+9817): L<<150.0,438.0>--<361.0,439.0>>

	* uni983B (U+983B): L<<323.0,483.0>--<479.0,482.0>>

	* uni9846 (U+9846): L<<164.0,486.0>--<163.0,604.0>>

	* uni984D (U+984D): L<<233.0,721.0>--<113.0,722.0>>

	* uni98A8 (U+98A8): L<<767.0,721.0>--<768.0,472.0>>

	* uni98A8 (U+98A8): L<<848.0,460.0>--<847.0,705.0>>

	* uni98E2 (U+98E2): L<<622.0,719.0>--<744.0,720.0>>

	* uni98E2 (U+98E2): L<<750.0,703.0>--<751.0,45.0>>

	* uni98EF (U+98EF): L<<552.0,502.0>--<815.0,503.0>>

	* uni98FE (U+98FE): L<<539.0,637.0>--<969.0,638.0>>

	* uni9905 (U+9905): L<<631.0,347.0>--<632.0,560.0>>

	* uni9910 (U+9910): L<<302.0,788.0>--<303.0,672.0>>

	* uni9999 (U+9999): L<<297.0,9.0>--<296.0,153.0>>

	* uni9999 (U+9999): L<<569.0,598.0>--<937.0,599.0>>

	* uni99A8 (U+99A8): L<<541.0,271.0>--<540.0,396.0>>

	* uni99B4 (U+99B4): L<<542.0,769.0>--<543.0,279.0>>

	* uni99C8 (U+99C8): L<<568.0,-9.0>--<957.0,-10.0>>

	* uni99C8 (U+99C8): L<<575.0,475.0>--<921.0,474.0>>

	* uni99D5 (U+99D5): L<<374.0,742.0>--<165.0,741.0>>

	* uni9AED (U+9AED): L<<263.0,309.0>--<261.0,30.0>>

	* uni9B44 (U+9B44): L<<53.0,639.0>--<54.0,169.0>>

	* uni9B45 (U+9B45): L<<756.0,481.0>--<952.0,482.0>>

	* uni9B4D (U+9B4D): L<<618.0,443.0>--<619.0,294.0>>

	* uni9B4F (U+9B4F): L<<281.0,599.0>--<434.0,600.0>>

	* uni9B5A (U+9B5A): L<<277.0,254.0>--<276.0,398.0>>

	* uni9B5A (U+9B5A): L<<552.0,423.0>--<553.0,554.0>>

	* uni9B5A (U+9B5A): L<<554.0,738.0>--<310.0,737.0>>

	* uni9B6F (U+9B6F): L<<576.0,763.0>--<310.0,762.0>>

	* uni9B74 (U+9B74): L<<187.0,254.0>--<186.0,384.0>>

	* uni9B74 (U+9B74): L<<339.0,725.0>--<204.0,724.0>>

	* uni9B83 (U+9B83): L<<305.0,725.0>--<180.0,724.0>>

	* uni9B8E (U+9B8E): L<<175.0,254.0>--<174.0,380.0>>

	* uni9B8E (U+9B8E): L<<352.0,725.0>--<192.0,724.0>>

	* uni9B91 (U+9B91): L<<305.0,725.0>--<180.0,724.0>>

	* uni9B92 (U+9B92): L<<160.0,254.0>--<159.0,380.0>>

	* uni9B92 (U+9B92): L<<312.0,725.0>--<177.0,724.0>>

	* uni9B93 (U+9B93): L<<169.0,254.0>--<168.0,384.0>>

	* uni9B93 (U+9B93): L<<321.0,725.0>--<186.0,724.0>>

	* uni9B96 (U+9B96): L<<289.0,725.0>--<169.0,724.0>>

	* uni9B97 (U+9B97): L<<289.0,725.0>--<169.0,724.0>>

	* uni9B97 (U+9B97): L<<774.0,692.0>--<593.0,691.0>>

	* uni9B9F (U+9B9F): L<<281.0,725.0>--<161.0,724.0>>

	* uni9BA0 (U+9BA0): L<<281.0,725.0>--<161.0,724.0>>

	* uni9BA0 (U+9BA0): L<<722.0,737.0>--<584.0,736.0>>

	* uni9BA8 (U+9BA8): L<<178.0,254.0>--<177.0,380.0>>

	* uni9BA8 (U+9BA8): L<<313.0,405.0>--<314.0,527.0>>

	* uni9BA8 (U+9BA8): L<<320.0,725.0>--<195.0,724.0>>

	* uni9BA8 (U+9BA8): L<<623.0,24.0>--<622.0,170.0>>

	* uni9BAA (U+9BAA): L<<170.0,254.0>--<169.0,380.0>>

	* uni9BAA (U+9BAA): L<<326.0,405.0>--<327.0,527.0>>

	* uni9BAA (U+9BAA): L<<342.0,725.0>--<187.0,724.0>>

	* uni9BAB (U+9BAB): L<<170.0,254.0>--<169.0,380.0>>

	* uni9BAB (U+9BAB): L<<305.0,405.0>--<306.0,527.0>>

	* uni9BAB (U+9BAB): L<<312.0,725.0>--<187.0,724.0>>

	* uni9BAD (U+9BAD): L<<170.0,254.0>--<169.0,380.0>>

	* uni9BAD (U+9BAD): L<<326.0,405.0>--<327.0,527.0>>

	* uni9BAD (U+9BAD): L<<342.0,725.0>--<187.0,724.0>>

	* uni9BAE (U+9BAE): L<<170.0,254.0>--<169.0,380.0>>

	* uni9BAE (U+9BAE): L<<326.0,405.0>--<327.0,527.0>>

	* uni9BAE (U+9BAE): L<<342.0,725.0>--<187.0,724.0>>

	* uni9BB4 (U+9BB4): L<<808.0,532.0>--<956.0,533.0>>

	* uni9BC9 (U+9BC9): L<<170.0,254.0>--<169.0,380.0>>

	* uni9BC9 (U+9BC9): L<<305.0,405.0>--<306.0,527.0>>

	* uni9BC9 (U+9BC9): L<<312.0,725.0>--<187.0,724.0>>

	* uni9BC9 (U+9BC9): L<<758.0,569.0>--<759.0,724.0>>

	* uni9BD6 (U+9BD6): L<<170.0,254.0>--<169.0,380.0>>

	* uni9BD6 (U+9BD6): L<<305.0,405.0>--<306.0,527.0>>

	* uni9BD6 (U+9BD6): L<<312.0,725.0>--<187.0,724.0>>

	* uni9BDB (U+9BDB): L<<305.0,725.0>--<180.0,724.0>>

	* uni9BE2 (U+9BE2): L<<426.0,720.0>--<427.0,446.0>>

	* uni9BE3 (U+9BE3): L<<283.0,725.0>--<163.0,724.0>>

	* uni9BE3 (U+9BE3): L<<569.0,338.0>--<880.0,339.0>>

	* uni9BE8 (U+9BE8): L<<305.0,725.0>--<180.0,724.0>>

	* uni9BF0 (U+9BF0): L<<283.0,725.0>--<163.0,724.0>>

	* uni9BF0 (U+9BF0): L<<581.0,453.0>--<790.0,454.0>>

	* uni9BF0 (U+9BF0): L<<788.0,482.0>--<589.0,481.0>>

	* uni9BF5 (U+9BF5): L<<283.0,725.0>--<163.0,724.0>>

	* uni9C10 (U+9C10): L<<288.0,725.0>--<168.0,724.0>>

	* uni9C3B (U+9C3B): L<<283.0,725.0>--<163.0,724.0>>

	* uni9C48 (U+9C48): L<<293.0,725.0>--<173.0,724.0>>

	* uni9C48 (U+9C48): L<<669.0,656.0>--<542.0,657.0>>

	* uni9C48 (U+9C48): L<<877.0,657.0>--<742.0,656.0>>

	* uni9CE9 (U+9CE9): L<<116.0,589.0>--<254.0,590.0>>

	* uni9CE9 (U+9CE9): L<<240.0,614.0>--<124.0,613.0>>

	* uni9CF3 (U+9CF3): L<<777.0,721.0>--<778.0,472.0>>

	* uni9CF3 (U+9CF3): L<<858.0,460.0>--<857.0,705.0>>

	* uni9D28 (U+9D28): L<<120.0,375.0>--<119.0,540.0>>

	* uni9DFA (U+9DFA): L<<774.0,771.0>--<601.0,770.0>>

	* uni9E78 (U+9E78): L<<207.0,781.0>--<206.0,602.0>>

	* uni9E7F (U+9E7F): L<<290.0,298.0>--<289.0,18.0>>

	* uni9E93 (U+9E93): L<<265.0,197.0>--<264.0,18.0>>

	* uni9E97 (U+9E97): L<<265.0,197.0>--<264.0,18.0>>

	* uni9ECD (U+9ECD): L<<569.0,633.0>--<917.0,634.0>>

	* uni9EF4 (U+9EF4): L<<498.0,336.0>--<499.0,462.0>>

	* uni9F20 (U+9F20): L<<144.0,750.0>--<145.0,549.0>>

	* uni9F2C (U+9F2C): L<<83.0,750.0>--<84.0,559.0>>

	* uni9F3B (U+9F3B): L<<215.0,729.0>--<216.0,537.0>>

	* uni9F52 (U+9F52): L<<122.0,492.0>--<123.0,43.0>>

	* uni9F52 (U+9F52): L<<230.0,748.0>--<231.0,602.0>>

	* uni9F5F (U+9F5F): L<<133.0,748.0>--<134.0,602.0>>

	* uni9F5F (U+9F5F): L<<77.0,492.0>--<78.0,43.0>>

	* uni9F61 (U+9F61): L<<136.0,748.0>--<137.0,602.0>>

	* uni9F61 (U+9F61): L<<82.0,492.0>--<83.0,43.0>>

	* uni9F62 (U+9F62): L<<133.0,748.0>--<134.0,602.0>>

	* uni9F62 (U+9F62): L<<75.0,492.0>--<76.0,43.0>>

	* uni9F63 (U+9F63): L<<136.0,748.0>--<137.0,602.0>>

	* uni9F63 (U+9F63): L<<82.0,492.0>--<83.0,43.0>>

	* uni9F6C (U+9F6C): L<<136.0,748.0>--<137.0,602.0>>

	* uni9F6C (U+9F6C): L<<654.0,589.0>--<789.0,590.0>>

	* uni9F6C (U+9F6C): L<<82.0,492.0>--<83.0,43.0>>

	* uniFF25 (U+FF25): L<<733.0,47.0>--<408.0,48.0>>

	* uniFF2C (U+FF2C): L<<664.0,47.0>--<408.0,48.0>>

	* uniFF30 (U+FF30): L<<586.0,735.0>--<150.0,736.0>> [code: found-semi-vertical]
</div></details><details><summary>⚠ <b>WARN:</b> Ensure soft_dotted characters lose their dot when combined with marks that replace the dot. (<a href="https://font-bakery.readthedocs.io/en/stable/fontbakery/profiles/Shaping Checks.html#com.google.fonts/check/soft_dotted">com.google.fonts/check/soft_dotted</a>)</summary><div>


* ⚠ **WARN** The dot of soft dotted characters used in orthographies _must_ disappear in the following strings: i̊ i̋ j̀ j́ j̃ j̄ j̈ j̑ į̀ į́ į̂ į̃ į̄ į̌

The dot of soft dotted characters _should_ disappear in other cases, for example: i̇ i̒ i̛̇ i̛̊ i̛̋ i̛̒ i̦̇ i̦̊ i̦̋ i̦̒ i̧̇ i̧̊ i̧̋ i̧̒ j̆ j̇ j̊ j̋ j̏ j̒

Your font fully covers the following languages that require the soft-dotted feature: Lithuanian (Latn, 2,357,094 speakers). 

Your font does *not* cover the following languages that require the soft-dotted feature: Makaa (Latn, 221,000 speakers), Navajo (Latn, 166,319 speakers), Kpelle, Guinea (Latn, 622,000 speakers), Dutch (Latn, 31,709,104 speakers), South Central Banda (Latn, 244,000 speakers), Aghem (Latn, 38,843 speakers), Mfumte (Latn, 79,000 speakers), Bete-Bendi (Latn, 100,000 speakers), Ebira (Latn, 2,200,000 speakers), Lugbara (Latn, 2,200,000 speakers), Dii (Latn, 71,000 speakers), Ijo, Southeast (Latn, 2,471,000 speakers), Belarusian (Cyrl, 10,064,517 speakers), Yala (Latn, 200,000 speakers), Basaa (Latn, 332,940 speakers), Mango (Latn, 77,000 speakers), Cicipu (Latn, 44,000 speakers), Ukrainian (Cyrl, 29,273,587 speakers), Kom (Latn, 360,685 speakers), Avokaya (Latn, 100,000 speakers), Gulay (Latn, 250,478 speakers), Southern Kisi (Latn, 360,000 speakers), Ma’di (Latn, 584,000 speakers), Ngbaka (Latn, 1,020,000 speakers), Koonzime (Latn, 40,000 speakers), Ekpeye (Latn, 226,000 speakers), Nzakara (Latn, 50,000 speakers), Sar (Latn, 500,000 speakers), Ejagham (Latn, 120,000 speakers), Igbo (Latn, 27,823,640 speakers), Bafut (Latn, 158,146 speakers), Dan (Latn, 1,099,244 speakers), Mundani (Latn, 34,000 speakers), Fur (Latn, 1,230,163 speakers), Nateni (Latn, 100,000 speakers), Zapotec (Latn, 490,000 speakers). [code: soft-dotted]
</div></details><br></div></details>

### Summary

| 💔 ERROR | ☠ FATAL | 🔥 FAIL | ⚠ WARN | 💤 SKIP | ℹ INFO | 🍞 PASS | 🔎 DEBUG |
|:-----:|:-----:|:-----:|:-----:|:-----:|:-----:|:-----:|:-----:|
| 0 | 0 | 3 | 15 | 125 | 7 | 110 | 0 |
| 0% | 0% | 1% | 6% | 48% | 3% | 42% | 0% |

**Note:** The following loglevels were omitted in this report:
* **SKIP**
* **INFO**
* **PASS**
* **DEBUG**

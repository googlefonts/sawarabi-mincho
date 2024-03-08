# Sawarabi Mincho

[![][Fontbakery]](https://googlefonts.github.io/sawarabi-mincho/fontbakery/fontbakery-report.html)
[![][Universal]](https://googlefonts.github.io/sawarabi-mincho/fontbakery/fontbakery-report.html)
[![][GF Profile]](https://googlefonts.github.io/sawarabi-mincho/fontbakery/fontbakery-report.html)
[![][Shaping]](https://googlefonts.github.io/sawarabi-mincho/fontbakery/fontbakery-report.html)

[Fontbakery]: https://img.shields.io/endpoint?url=https%3A%2F%2Fraw.githubusercontent.com%2Fgooglefonts%2Fsawarabi-mincho%2F%2Fgh-pages%2Fbadges%2Foverall.json
[GF Profile]: https://img.shields.io/endpoint?url=https%3A%2F%2Fraw.githubusercontent.com%2Fgooglefonts%2Fsawarabi-mincho%2F%2Fgh-pages%2Fbadges%2FGoogleFonts.json
[Outline Correctness]: https://img.shields.io/endpoint?url=https%3A%2F%2Fraw.githubusercontent.com%2Fgooglefonts%2Fsawarabi-mincho%2F%2Fgh-pages%2Fbadges%2FOut
lineCorrectnessChecks.json
[Shaping]: https://img.shields.io/endpoint?url=https%3A%2F%2Fraw.githubusercontent.com%2Fgooglefonts%2Fsawarabi-mincho%2F%2Fgh-pages%2Fbadges%2FShapingChecks.json
[Universal]: https://img.shields.io/endpoint?url=https%3A%2F%2Fraw.githubusercontent.com%2Fgooglefonts%2Fsawarabi-mincho%2F%2Fgh-pages%2Fbadges%2FUniversal.json

<a href="http://sawarabi-fonts.osdn.jp/">Sawarabi Mincho</a> (さわらび明朝) is a Japanese font by <a href="http://mshio.b.osdn.me/">mshio</a>.
With a delicate and beautiful design, it is suitable for text and headline usage.
It already has many hiragana, katakana, ruled lines, and so on, and this version includes 3297 kanji glyphs.
There is also another related family, Sawarabi Gothic.

## Building

Fonts are built automatically by GitHub Actions - take a look in the "Actions" tab for the latest build.

If you want to build fonts manually on your own computer:

* `make build` will produce font files.
* `make test` will run [FontBakery](https://github.com/googlefonts/fontbakery)'s quality assurance tests.
* `make proof` will generate HTML proof files.

The proof files and QA tests are also available automatically via GitHub Actions - look at https://googlefonts.github.io/sawarabi-mincho.

## Upstream

This repository is a fork of the original upstream repository, `git://git.osdn.net/gitroot/sawarabi-fonts/sawarabi-fonts.git`. To update this repository with future changes from upstream:

```
git remote add upstream git://git.osdn.net/gitroot/sawarabi-fonts/sawarabi-fonts.git
git fetch upstream
git merge upstream/master
```

## License

This Font Software is licensed under the SIL Open Font License, Version 1.1.
This license is available with a FAQ at
https://scripts.sil.org/OFL

## Repository Layout

This font repository structure is inspired by [Unified Font Repository v0.3](https://github.com/unified-font-repository/Unified-Font-Repository), modified for the Google Fonts workflow.

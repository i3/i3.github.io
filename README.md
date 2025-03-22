# ![Logo](docs/logo-30.png) i3wm.org: The website for the i3 tiling window manager

![Status](https://img.shields.io/website?url=https%3A%2F%2Fi3wm.org%2F)

This is the source code for the official i3 website: [https://i3wm.org/](https://i3wm.org/).

## Building

You will need [Hugo](https://gohugo.io/) and [AsciiDoc](http://asciidoc.org/).

To rebuild the website after making changes, run `hugo` (without parameters) and
hugo will generate the website into the `docs` directory.

To preview your changes, run `hugo serve`.

If you want to push changes to the documentation, update the relevant file(s) in
`content/_docs`, then:

1. Generate the docs from the `content/_docs` folder with `make -C content/_docs -j`.

1. Move the HTML files from `_docs` to `docs` (notice the underscore!): `mv content/_docs/*.html content/docs/`.

## Contributing

Changes to the docs should happen first on the i3 source code repository,
in the [docs](https://github.com/i3/i3/tree/next/docs) folder.
So, for example, if you want to make changes to the [userguide](https://i3wm.org/docs/userguide.html)
you will have to submit a pull request first to the i3 github repository and then
(optionally, if your change should be applied immediately to the userguide)
submit a PR in this repository as well.

Docs use the [AsciiDoc](https://asciidoctor.org/docs/asciidoc-syntax-quick-reference/) format.
Edit the file in `_docs`, then follow the building process above.
When submitting a pull request, include both the changed files in `_docs` and
the corresponding generated HTML files.

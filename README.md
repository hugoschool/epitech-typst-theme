# Epitech Typst Theme

A Typst theme for Epitech subjects & presentations.

## Install

Of course, [typst](https://typst.app) is required.

A simple makefile is provided for installation:

```sh
make
```

> This will install the package in the default cache path (`~/.cache/typst`). If you wish to change the cache path (maybe if you're using XDG_CACHE_HOME), you can use this:
>
> ```sh
> CACHE_PATH="/awesome/typst" make
> ```

## Usage

To compile a file:

```sh
typst compile <example_name>.typ
```

> [!NOTE]
>
> If you do not have the `Anton` or `IBM Plex Sans` installed / recognized by fontconfig, you might need to use the `--font-path` argument:
>
> ```sh
> typst compile example.typ --font-path ~/.cache/typst/packages/local/epitech-theme
> ```

## Examples

Examples are given inside the [examples](./examples/) folder.

```sh
typst compile subject.typ --root ..
```

> Only `package.typ` uses the locally installed `@local/epitech-theme` package, and therefore works without `--root`.

## Testing

For testing purposes, you can use the [examples](#examples).

To verify the font is working properly, a [docker script](./tests/docker.sh) is included in the tests directory.

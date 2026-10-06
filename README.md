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

## Examples

Examples are given inside the [examples](./examples/) folder

## Testing

For testing purposes, you can use the [examples](#examples).

To verify the font is working properly, a [docker script](./tests/docker.sh) is included in the tests directory.

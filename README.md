# Example for `haskell-overridez fetch` [![CircleCI](https://circleci.com/gh/adetokunbo/example-fetched-haskell-overridez.svg?style=svg)](https://circleci.com/gh/adetokunbo/example-fetched-haskell-overridez)

This is a demonstration project that provides a simple target for `haskell-overridez fetch`, a command that enables easy syncing of [nix][] override configuration between haskell projects that mange nix overrides with `haskell-overridez`.

## Usage

- Install `haskell-overridez`

  ```bash

  nix-env --install -f https://github.com/adetokunbo/haskell-overridez/archive/master.tar.gz

  ```

- Use `haskell-overridez fetch` to copy this project's override configuration

  ```bash

  haskell-overridez fetch https://github.com/adetokunbo/haskell-overridez

  ```

[haskell-overridez]: https://github.com/adetokunbo/haskell-overridez
[this feature request]: https://github.com/adetokunbo/haskell-overridez/issues/20
[nix]: https://nixos.org/nix/manual/#ch-about-nix

# Example: a project whose nix overrides can be fetched using [haskell-overridez][].

This is a demonstration project that provides a simple target for `haskell-overridez fetch`, a command that enables easy syncing of [nix][] override configuration between haskell projects that use `haskell-overridez`.

__Warning__ `haskell-overridez fetch` is not yet released. Track [this feature request][]; it can be used when that's closed.

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

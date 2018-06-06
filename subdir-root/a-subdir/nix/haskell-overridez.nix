let
  pkgs = import <nixpkgs> {};
  overridez = fetchTarball {
    url = "https://github.com/adetokunbo/haskell-overridez/archive/v0.10.0.0.tar.gz";
    sha256 = "1gjwwp6vsdr3vkzj49dqyxd0ikgbscnj6yy11kvznnzi4bk4qh4n";
  };
in
  import overridez { inherit pkgs; }

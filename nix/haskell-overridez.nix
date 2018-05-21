let
  pkgs = import <nixpkgs> {};
  overridez = fetchTarball {
    url = "https://github.com/adetokunbo/haskell-overridez/archive/v0.9.2.tar.gz";
    sha256 = "0slnz7n78ww13gpm8v4g8f5m9b8csaq6wbwb615jkqcrif8vjvqv";
  };
in
  import overridez { inherit pkgs; }

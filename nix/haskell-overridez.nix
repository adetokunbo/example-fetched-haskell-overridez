let
  pkgs = import <nixpkgs> {};
  overridez = fetchTarball {
    url = "https://github.com/adetokunbo/haskell-overridez/archive/master.tar.gz";
    sha256 = "0w3akza30rbayz23fyjlgh9w1vfhb4jxfb2vrn4ssanha9xsaaqy";
  };
in
  import overridez { inherit pkgs; }

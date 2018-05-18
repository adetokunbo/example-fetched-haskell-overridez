{ mkDerivation, base, bytestring, comonad, containers
, contravariant, criterion, fetchgit, hashable, mwc-random
, primitive, profunctors, semigroups, stdenv, text, transformers
, unordered-containers, vector, vector-builder
}:
mkDerivation {
  pname = "foldl";
  version = "1.4.0";
  src = fetchgit {
    url = "https://github.com/Gabriel439/Haskell-Foldl-Library";
    sha256 = "0y7lbgsp7xgyppc38zb15iqc925yx3jkw6phyciahnb7s5gw63v4";
    rev = "e6acbaf4d524c485553313f9f5a306e1a8a2484d";
  };
  libraryHaskellDepends = [
    base bytestring comonad containers contravariant hashable
    mwc-random primitive profunctors semigroups text transformers
    unordered-containers vector vector-builder
  ];
  benchmarkHaskellDepends = [ base criterion ];
  description = "Composable, streaming, and efficient left folds";
  license = stdenv.lib.licenses.bsd3;
}

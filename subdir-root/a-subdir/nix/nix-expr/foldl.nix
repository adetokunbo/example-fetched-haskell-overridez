{ mkDerivation, base, bytestring, comonad, containers
, contravariant, criterion, hashable, mwc-random, primitive
, profunctors, semigroupoids, semigroups, stdenv, text
, transformers, unordered-containers, vector, vector-builder
}:
mkDerivation {
  pname = "foldl";
  version = "1.4.5";
  sha256 = "19qjmzc7gaxfwgqbgy0kq4vhbxvh3qjnwsxnc7pzwws2if5bv80b";
  libraryHaskellDepends = [
    base bytestring comonad containers contravariant hashable
    mwc-random primitive profunctors semigroupoids semigroups text
    transformers unordered-containers vector vector-builder
  ];
  benchmarkHaskellDepends = [ base criterion ];
  description = "Composable, streaming, and efficient left folds";
  license = stdenv.lib.licenses.bsd3;
}

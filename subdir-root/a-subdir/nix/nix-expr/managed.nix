{ mkDerivation, base, fetchgit, stdenv, transformers }:
mkDerivation {
  pname = "managed";
  version = "1.0.6";
  src = fetchgit {
    url = "https://github.com/Gabriel439/Haskell-Managed-Library";
    sha256 = "1y0mq8wwp5rxqzk5j392x14i13x806s0qlik0s5gqx7hff1zxg6q";
    rev = "fe99fbdb097218a1e2ce50b19c9400e0adbaa0da";
  };
  libraryHaskellDepends = [ base transformers ];
  description = "A monad for managed values";
  license = stdenv.lib.licenses.bsd3;
}

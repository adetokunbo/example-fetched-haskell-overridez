{ mkDerivation, ansi-wl-pprint, base, bytestring, fetchgit, process
, QuickCheck, stdenv, transformers, transformers-compat
}:
mkDerivation {
  pname = "optparse-applicative";
  version = "0.14.2.0";
  src = fetchgit {
    url = "https://github.com/pcapriotti/optparse-applicative";
    sha256 = "1b19wjgsnlr5399qp0qhk2w1bqyzvabkkxr2iw3jkfx4f6zb2lp0";
    rev = "72ae4b69875e1702de36f083b32b106f6da6926e";
  };
  libraryHaskellDepends = [
    ansi-wl-pprint base process transformers transformers-compat
  ];
  testHaskellDepends = [ base bytestring QuickCheck ];
  homepage = "https://github.com/pcapriotti/optparse-applicative";
  description = "Utilities and combinators for parsing command line options";
  license = stdenv.lib.licenses.bsd3;
}

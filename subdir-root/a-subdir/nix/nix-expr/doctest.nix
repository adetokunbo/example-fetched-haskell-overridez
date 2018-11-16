{ mkDerivation, base, base-compat, code-page, deepseq, directory
, filepath, ghc, ghc-paths, hspec, HUnit, mockery, process
, QuickCheck, setenv, silently, stdenv, stringbuilder, syb
, transformers, with-location
}:
mkDerivation {
  pname = "doctest";
  version = "0.16.0.1";
  sha256 = "106pc4rs4cfym7754gzdgy36dm9aidwmnqpjm9k7yq1hfd4pallv";
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    base base-compat code-page deepseq directory filepath ghc ghc-paths
    process syb transformers
  ];
  executableHaskellDepends = [
    base base-compat code-page deepseq directory filepath ghc ghc-paths
    process syb transformers
  ];
  testHaskellDepends = [
    base base-compat code-page deepseq directory filepath ghc ghc-paths
    hspec HUnit mockery process QuickCheck setenv silently
    stringbuilder syb transformers with-location
  ];
  homepage = "https://github.com/sol/doctest#readme";
  description = "Test interactive Haskell examples";
  license = stdenv.lib.licenses.mit;
}

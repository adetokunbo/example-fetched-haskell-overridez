{ mkDerivation, base, base-compat, code-page, deepseq, directory
, filepath, ghc, ghc-paths, hspec, HUnit, mockery, process
, QuickCheck, setenv, silently, stdenv, stringbuilder, syb
, transformers, with-location
}:
mkDerivation {
  pname = "doctest";
  version = "0.15.0";
  sha256 = "13c1l8cc8rzbxgpnaa75x13z9vnr7kffng18czh8gwpv83vn5bpi";
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

{ mkDerivation, base, foldl, stdenv, text, turtle }:
mkDerivation {
  pname = "yagai-purojekuto";
  version = "1.0.0";
  src = ./.;
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [ base foldl text turtle ];
  license = stdenv.lib.licenses.bsd3;
}

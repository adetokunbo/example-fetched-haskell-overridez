{ mkDerivation, base, stdenv, transformers }:
mkDerivation {
  pname = "managed";
  version = "1.0.6";
  sha256 = "1kbrw99yh5x5blykmx2n88mplbbi4ss1ij5j17b7asw6q0ihm9zi";
  libraryHaskellDepends = [ base transformers ];
  description = "A monad for managed values";
  license = stdenv.lib.licenses.bsd3;
}

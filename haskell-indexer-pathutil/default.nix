{ mkDerivation, base, filepath, stdenv, text }:
mkDerivation {
  pname = "haskell-indexer-pathutil";
  version = "0.1.0.0";
  src = ./.;
  libraryHaskellDepends = [ base filepath text ];
  homepage = "https://github.com/google/haskell-indexer";
  description = "Utilities for dealing with filepaths";
  license = stdenv.lib.licenses.asl20;
}

{ mkDerivation, base, stdenv, text }:
mkDerivation {
  pname = "haskell-indexer-backend-core";
  version = "0.1.0.0";
  src = ./.;
  libraryHaskellDepends = [ base text ];
  homepage = "https://github.com/google/haskell-indexer";
  description = "Code common to all indexer backends";
  license = stdenv.lib.licenses.asl20;
}

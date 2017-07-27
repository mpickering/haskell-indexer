{ mkDerivation, base, bytestring, haskell-indexer-backend-core
, haskell-indexer-backend-ghc, haskell-indexer-pathutil
, haskell-indexer-pipeline-ghckythe, kythe-schema
, optparse-applicative, proto-lens, stdenv, text
}:
mkDerivation {
  pname = "haskell-indexer-pipeline-ghckythe-wrapper";
  version = "0.1.0.0";
  src = ./.;
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [
    base bytestring haskell-indexer-backend-core
    haskell-indexer-backend-ghc haskell-indexer-pathutil
    haskell-indexer-pipeline-ghckythe kythe-schema optparse-applicative
    proto-lens text
  ];
  homepage = "https://github.com/google/haskell-indexer";
  description = "Executable able to take GHC arguments and emitting Kythe entries";
  license = stdenv.lib.licenses.asl20;
}

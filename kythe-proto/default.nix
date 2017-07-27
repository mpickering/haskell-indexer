{ mkDerivation, base, Cabal, proto-lens-protoc, stdenv }:
mkDerivation {
  pname = "kythe-proto";
  version = "0.1.0.0";
  src = ./.;
  setupHaskellDepends = [ base Cabal proto-lens-protoc ];
  libraryHaskellDepends = [ base proto-lens-protoc ];
  homepage = "https://github.com/google/haskell-indexer";
  description = "Proto bindings for Kythe protobufs";
  license = stdenv.lib.licenses.asl20;
}

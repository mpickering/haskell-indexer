{ mkDerivation, base, bytestring, data-default, kythe-proto
, lens-family, proto-lens, proto-lens-combinators, stdenv, text
}:
mkDerivation {
  pname = "kythe-schema";
  version = "0.1.0.0";
  src = ./.;
  libraryHaskellDepends = [
    base bytestring data-default kythe-proto lens-family proto-lens
    proto-lens-combinators text
  ];
  homepage = "https://github.com/google/haskell-indexer";
  description = "Library for emitting Kythe schema entries";
  license = stdenv.lib.licenses.asl20;
}

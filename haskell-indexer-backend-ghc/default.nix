{ mkDerivation, base, bytestring, containers, filepath, ghc
, ghc-paths, hashable, haskell-indexer-backend-core
, haskell-indexer-translate, HUnit, mtl, reflection, semigroups
, stdenv, test-framework, test-framework-hunit, text, text-offset
, transformers, unix, unordered-containers
}:
mkDerivation {
  pname = "haskell-indexer-backend-ghc";
  version = "0.1.0.0";
  src = ./.;
  libraryHaskellDepends = [
    base containers filepath ghc ghc-paths hashable
    haskell-indexer-backend-core haskell-indexer-translate mtl
    reflection text transformers unix unordered-containers
  ];
  testHaskellDepends = [
    base bytestring filepath ghc haskell-indexer-backend-core
    haskell-indexer-translate HUnit semigroups test-framework
    test-framework-hunit text text-offset transformers
  ];
  homepage = "https://github.com/google/haskell-indexer";
  description = "Indexing code using GHC API";
  license = stdenv.lib.licenses.asl20;
}

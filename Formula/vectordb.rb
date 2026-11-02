class Vectordb < Formula
  desc "Concurrent, persistent HNSW vector database server with crash recovery"
  homepage "https://github.com/adeoluo/vectordb-go"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/adeoluo/vectordb-go/releases/download/v0.2.0/vectordb_v0.2.0_darwin_arm64.tar.gz"
      sha256 "de4061a1e87b8d9a55568a6cbe1fa4776e45c471a6e80fab19cb8cffa5802a1b"
    end
    on_intel do
      url "https://github.com/adeoluo/vectordb-go/releases/download/v0.2.0/vectordb_v0.2.0_darwin_amd64.tar.gz"
      sha256 "ec09f240b21db0e8698678e9486f65d3a3ada0ad050f7bcdfbb6753049bc8f77"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adeoluo/vectordb-go/releases/download/v0.2.0/vectordb_v0.2.0_linux_arm64.tar.gz"
      sha256 "19a9c1148ad9a3d04fffc8e53ff825dd79dd564c1ea76d89583a4a8ed16f87c0"
    end
    on_intel do
      url "https://github.com/adeoluo/vectordb-go/releases/download/v0.2.0/vectordb_v0.2.0_linux_amd64.tar.gz"
      sha256 "5a013fb33dd5445caecdac5f88b9bac0af318a852288239659a5700645e4cd79"
    end
  end

  def install
    bin.install "vectordb"
  end

  test do
    assert_match "HNSW vector database", shell_output("#{bin}/vectordb --help")
  end
end

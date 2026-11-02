class Vectordb < Formula
  desc "Concurrent, persistent HNSW vector database server with crash recovery"
  homepage "https://github.com/adeoluo/vectordb-go"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/adeoluo/vectordb-go/releases/download/v0.1.0/vectordb_v0.1.0_darwin_arm64.tar.gz"
      sha256 "6c80689a81014fc3c12070c69437f92c19a4703b624c2cb96bfeb0c315b13aa6"
    end
    on_intel do
      url "https://github.com/adeoluo/vectordb-go/releases/download/v0.1.0/vectordb_v0.1.0_darwin_amd64.tar.gz"
      sha256 "b6b9e4a1058646187d306310cc940b96167209be792db43184a79ae482b7450c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adeoluo/vectordb-go/releases/download/v0.1.0/vectordb_v0.1.0_linux_arm64.tar.gz"
      sha256 "77078ab7eb01809c093ffb2f2544b637d3970eb7c0830c38bf752557e86fd94f"
    end
    on_intel do
      url "https://github.com/adeoluo/vectordb-go/releases/download/v0.1.0/vectordb_v0.1.0_linux_amd64.tar.gz"
      sha256 "e8aa416e00a692cc32c76619d4a50388fc23a021c32008971b6977c7b1c62e8e"
    end
  end

  def install
    bin.install "vectordb"
  end

  test do
    assert_match "HNSW vector database", shell_output("#{bin}/vectordb --help")
  end
end

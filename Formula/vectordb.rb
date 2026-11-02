class Vectordb < Formula
  desc "Concurrent, persistent HNSW vector database server with crash recovery"
  homepage "https://github.com/adeoluo/vectordb-go"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/adeoluo/vectordb-go/releases/download/v0.1.1/vectordb_v0.1.1_darwin_arm64.tar.gz"
      sha256 "ef9ac466a8160c61604d5992958f5745453a2334a3443b3b980d05a8a82d1887"
    end
    on_intel do
      url "https://github.com/adeoluo/vectordb-go/releases/download/v0.1.1/vectordb_v0.1.1_darwin_amd64.tar.gz"
      sha256 "9f4aae0f8536b5296771e257ea7782e76a1d5ec4bec394aee04a50259fab135b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adeoluo/vectordb-go/releases/download/v0.1.1/vectordb_v0.1.1_linux_arm64.tar.gz"
      sha256 "58893841319baee4e2eec30fbea14f733582b1fbac51eb3e29b12d85e501dd9f"
    end
    on_intel do
      url "https://github.com/adeoluo/vectordb-go/releases/download/v0.1.1/vectordb_v0.1.1_linux_amd64.tar.gz"
      sha256 "ee54f875505e95b1625d18ed306c5002df77959cc874b79c07ec187ab53873b7"
    end
  end

  def install
    bin.install "vectordb"
  end

  test do
    assert_match "HNSW vector database", shell_output("#{bin}/vectordb --help")
  end
end

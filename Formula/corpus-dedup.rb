class CorpusDedup < Formula
  desc "Remove near-duplicate lines from JSONL corpora with MinHash and LSH"
  homepage "https://github.com/adeoluo/corpus-dedup-library"
  url "https://github.com/adeoluo/corpus-dedup-library/archive/refs/tags/v0.3.2.tar.gz"
  sha256 "1a8d3265b4c9a66deee2adf3cfc71367a70a5798db7590a44a140322652cd9b5"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "rust")
  end

  test do
    input = <<~JSONL
      {"text": "the quick brown fox jumps over the lazy dog"}
      {"text": "a completely different sentence about databases"}
      {"text": "The quick brown fox jumps over the lazy dog"}
    JSONL
    output = pipe_output("#{bin}/corpus-dedup", input, 0)
    assert_equal 2, output.lines.count
  end
end

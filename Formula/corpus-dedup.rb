class CorpusDedup < Formula
  desc "Remove near-duplicate lines from JSONL corpora with MinHash and LSH"
  homepage "https://github.com/adeoluo/corpus-dedup-library"
  url "https://github.com/adeoluo/corpus-dedup-library/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "6a810bc3a756c0cd02008c7fb496cc26ba18c36009c8c55b192b3be2dfa510bc"
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

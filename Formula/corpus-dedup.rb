class CorpusDedup < Formula
  desc "Remove near-duplicate lines from JSONL corpora with MinHash and LSH"
  homepage "https://github.com/adeoluo/corpus-dedup-library"
  url "https://github.com/adeoluo/corpus-dedup-library/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "b9015c136213300570fda91ddd44f108c712201ddba323f40a1017378b9e7d41"
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

class CorpusDedup < Formula
  desc "Remove near-duplicate lines from JSONL corpora with MinHash and LSH"
  homepage "https://github.com/adeoluo/corpus-dedup-library"
  url "https://github.com/adeoluo/corpus-dedup-library/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "149226b945bd567a22d9eac85d8d48a1fd77c4ad4c10476719b95defd300cd27"
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

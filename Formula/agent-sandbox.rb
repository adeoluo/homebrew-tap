class AgentSandbox < Formula
  desc "Policy-based sandbox for running AI agent tool calls"
  homepage "https://github.com/adeoluo/agent-sandbox"
  url "https://github.com/adeoluo/agent-sandbox/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "2fd6dae3b95d4351d06b3393a7f004071fa79267cf0ee1a21595f838a9e965e4"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "declarative policy", shell_output("#{bin}/agent-sandbox --help")
  end
end

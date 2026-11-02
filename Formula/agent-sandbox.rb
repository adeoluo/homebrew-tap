class AgentSandbox < Formula
  desc "Policy-based sandbox for running AI agent tool calls"
  homepage "https://github.com/adeoluo/agent-sandbox"
  url "https://github.com/adeoluo/agent-sandbox/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "591b1457e040e28aa81f4cec7fc4aba277b216bdb2baf37a08c13562f747b356"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "declarative policy", shell_output("#{bin}/agent-sandbox --help")
  end
end

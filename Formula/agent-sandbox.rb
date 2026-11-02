class AgentSandbox < Formula
  desc "Policy-based sandbox for running AI agent tool calls"
  homepage "https://github.com/adeoluo/agent-sandbox"
  url "https://github.com/adeoluo/agent-sandbox/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "81d69e94f621c9814aea731a466626ba7192f449918ddd0462811e3d24fa5cc1"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "declarative policy", shell_output("#{bin}/agent-sandbox --help")
  end
end

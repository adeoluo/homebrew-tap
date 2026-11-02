class ProfileForge < Formula
  desc "Generate a GitHub profile README from live repository metadata"
  homepage "https://github.com/adeoluo/profile-forge"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/adeoluo/profile-forge/releases/download/v0.3.1/profile-forge_v0.3.1_darwin_arm64.tar.gz"
      sha256 "43befe5b2b5108871a116bf8d2a642740e8a448a16a24df25d8f85ca3733c224"
    end
    on_intel do
      url "https://github.com/adeoluo/profile-forge/releases/download/v0.3.1/profile-forge_v0.3.1_darwin_amd64.tar.gz"
      sha256 "3486cc42c6344a5b6f1476c82d07db1b767a9ba53e424940cdd2560a1f6f0701"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adeoluo/profile-forge/releases/download/v0.3.1/profile-forge_v0.3.1_linux_arm64.tar.gz"
      sha256 "70c65b42fc27b4a9866bf9c74ae0873bd7c4513b7c31631f8a17211f0faa59ca"
    end
    on_intel do
      url "https://github.com/adeoluo/profile-forge/releases/download/v0.3.1/profile-forge_v0.3.1_linux_amd64.tar.gz"
      sha256 "2e8360beb7f6a1597550a8479e96be395cdc259539abe121751e1badb9ca19d2"
    end
  end

  def install
    bin.install "profile-forge"
  end

  test do
    assert_match "profile-forge", shell_output("#{bin}/profile-forge version")
  end
end

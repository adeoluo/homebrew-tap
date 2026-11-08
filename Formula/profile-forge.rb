class ProfileForge < Formula
  desc "Generate a GitHub profile README from live repository metadata"
  homepage "https://github.com/adeoluo/profile-forge"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/adeoluo/profile-forge/releases/download/v0.5.0/profile-forge_v0.5.0_darwin_arm64.tar.gz"
      sha256 "a62dd3f3dd7571f406f0eae67f1cdcea12c5d0bfbab79266c93abc9bfbf150d0"
    end
    on_intel do
      url "https://github.com/adeoluo/profile-forge/releases/download/v0.5.0/profile-forge_v0.5.0_darwin_amd64.tar.gz"
      sha256 "49d41de9cf5218afea504f0ab0420c9d924db4ada0e5ee610c242bb44a3b71f6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adeoluo/profile-forge/releases/download/v0.5.0/profile-forge_v0.5.0_linux_arm64.tar.gz"
      sha256 "6ca889f86ed8092ccde05539b2ad91abbdee274d593f56823d21aea976f79916"
    end
    on_intel do
      url "https://github.com/adeoluo/profile-forge/releases/download/v0.5.0/profile-forge_v0.5.0_linux_amd64.tar.gz"
      sha256 "a818131b70ddeffbfa6a9f7d396939b65e33f7b0fdea8ef740a1c78c55b905b3"
    end
  end

  def install
    bin.install "profile-forge"
  end

  test do
    assert_match "profile-forge", shell_output("#{bin}/profile-forge version")
  end
end

class ProfileForge < Formula
  desc "Generate a GitHub profile README from live repository metadata"
  homepage "https://github.com/adeoluo/profile-forge"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/adeoluo/profile-forge/releases/download/v0.2.1/profile-forge_v0.2.1_darwin_arm64.tar.gz"
      sha256 "5ef21be89215b210766dfacdbab94085fe7d5e6758d1fbba6e9b703b01c97c5d"
    end
    on_intel do
      url "https://github.com/adeoluo/profile-forge/releases/download/v0.2.1/profile-forge_v0.2.1_darwin_amd64.tar.gz"
      sha256 "bf1f1ee90ff13be782a12726dc0e5aaeaf94a8a73a680cd4002927ac522e81bf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adeoluo/profile-forge/releases/download/v0.2.1/profile-forge_v0.2.1_linux_arm64.tar.gz"
      sha256 "70a416557f2a3f09cef0dcb9f22d2255f2ac6e68e3f5859c4511ece2f6eb6a93"
    end
    on_intel do
      url "https://github.com/adeoluo/profile-forge/releases/download/v0.2.1/profile-forge_v0.2.1_linux_amd64.tar.gz"
      sha256 "ee25de15bfafb8627563ee75527d42e150eb346e2713416a32c92efa75d3cc6b"
    end
  end

  def install
    bin.install "profile-forge"
  end

  test do
    assert_match "profile-forge", shell_output("#{bin}/profile-forge version")
  end
end

class ProfileForge < Formula
  desc "Generate a GitHub profile README from live repository metadata"
  homepage "https://github.com/adeoluo/profile-forge"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/adeoluo/profile-forge/releases/download/v0.5.1/profile-forge_v0.5.1_darwin_arm64.tar.gz"
      sha256 "8bdee32d2e8de4073ca3b5495e2523c478f3da368d82f719dbad0c1f49e3aa7c"
    end
    on_intel do
      url "https://github.com/adeoluo/profile-forge/releases/download/v0.5.1/profile-forge_v0.5.1_darwin_amd64.tar.gz"
      sha256 "f21e1a1c8b191b720672f72bd0c3272217a695d6c5f5d183dea822260594a876"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adeoluo/profile-forge/releases/download/v0.5.1/profile-forge_v0.5.1_linux_arm64.tar.gz"
      sha256 "0a8cd633b27361ef7d8f9577ddbe42ff02164fa605edd3607167e723ca8b7e99"
    end
    on_intel do
      url "https://github.com/adeoluo/profile-forge/releases/download/v0.5.1/profile-forge_v0.5.1_linux_amd64.tar.gz"
      sha256 "2687a07b6fbd4a5fafcb4406876c1b5aef5e4befd45de3ac2fa95fe95ed5e750"
    end
  end

  def install
    bin.install "profile-forge"
  end

  test do
    assert_match "profile-forge", shell_output("#{bin}/profile-forge version")
  end
end

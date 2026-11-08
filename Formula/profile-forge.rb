class ProfileForge < Formula
  desc "Generate a GitHub profile README from live repository metadata"
  homepage "https://github.com/adeoluo/profile-forge"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/adeoluo/profile-forge/releases/download/v0.4.0/profile-forge_v0.4.0_darwin_arm64.tar.gz"
      sha256 "b8fcbedc0cffa76af54bd817d754f69efd83fbb3c712628ac49a2a46eb645ee4"
    end
    on_intel do
      url "https://github.com/adeoluo/profile-forge/releases/download/v0.4.0/profile-forge_v0.4.0_darwin_amd64.tar.gz"
      sha256 "b4f786c2b0d12acb26c35fc933d3cb03200582205aff1cc618071050a3129a68"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adeoluo/profile-forge/releases/download/v0.4.0/profile-forge_v0.4.0_linux_arm64.tar.gz"
      sha256 "14f3e6b0eea6bca7cd30b9f040289753cc9e8754ca1b5b7b0b088fd5e5fca6b1"
    end
    on_intel do
      url "https://github.com/adeoluo/profile-forge/releases/download/v0.4.0/profile-forge_v0.4.0_linux_amd64.tar.gz"
      sha256 "606188cf0c2e83b65e126754dcbe221da717d1373a1d34c557387038eaa7967e"
    end
  end

  def install
    bin.install "profile-forge"
  end

  test do
    assert_match "profile-forge", shell_output("#{bin}/profile-forge version")
  end
end

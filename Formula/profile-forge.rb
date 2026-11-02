class ProfileForge < Formula
  desc "Generate a GitHub profile README from live repository metadata"
  homepage "https://github.com/adeoluo/profile-forge"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/adeoluo/profile-forge/releases/download/v0.1.0/profile-forge_v0.1.0_darwin_arm64.tar.gz"
      sha256 "5b470817f07e941a033fa1bd2f023c4b30693e452603e901fac7622a601f2229"
    end
    on_intel do
      url "https://github.com/adeoluo/profile-forge/releases/download/v0.1.0/profile-forge_v0.1.0_darwin_amd64.tar.gz"
      sha256 "ffc7979e5898512aced538d6ede9d12d5682cd98c651a9ad09920eda2b38694b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adeoluo/profile-forge/releases/download/v0.1.0/profile-forge_v0.1.0_linux_arm64.tar.gz"
      sha256 "46a9bfc8014aa791acd576fed37e27729b8dc76a8856a0252219c4119945f4c3"
    end
    on_intel do
      url "https://github.com/adeoluo/profile-forge/releases/download/v0.1.0/profile-forge_v0.1.0_linux_amd64.tar.gz"
      sha256 "2b2bcbb0ad2b733747c0f691305b96b5ff70dd1a36fa596d398ebe0ee9c85a73"
    end
  end

  def install
    bin.install "profile-forge"
  end

  test do
    assert_match "profile-forge", shell_output("#{bin}/profile-forge version")
  end
end

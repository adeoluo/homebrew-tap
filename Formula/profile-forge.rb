class ProfileForge < Formula
  desc "Generate a GitHub profile README from live repository metadata"
  homepage "https://github.com/adeoluo/profile-forge"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/adeoluo/profile-forge/releases/download/v0.3.0/profile-forge_v0.3.0_darwin_arm64.tar.gz"
      sha256 "35ee48f331d1c4dc44ac567e623f7d2be13016e1ff0bfc19b757ceb52ab6b513"
    end
    on_intel do
      url "https://github.com/adeoluo/profile-forge/releases/download/v0.3.0/profile-forge_v0.3.0_darwin_amd64.tar.gz"
      sha256 "c264620e5c418768d4165711e0c28778b97b55c1dccaaad47b5a336717dedb4f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adeoluo/profile-forge/releases/download/v0.3.0/profile-forge_v0.3.0_linux_arm64.tar.gz"
      sha256 "9eff9e85f1efb923b7fb8d1204ad77fea5a22497f1d428adafc92c1535127d3e"
    end
    on_intel do
      url "https://github.com/adeoluo/profile-forge/releases/download/v0.3.0/profile-forge_v0.3.0_linux_amd64.tar.gz"
      sha256 "67d4f33264930e39f6bb2430e68cc490d8d201566bcc8951043d0ffb7a638576"
    end
  end

  def install
    bin.install "profile-forge"
  end

  test do
    assert_match "profile-forge", shell_output("#{bin}/profile-forge version")
  end
end

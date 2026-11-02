class ProfileForge < Formula
  desc "Generate a GitHub profile README from live repository metadata"
  homepage "https://github.com/adeoluo/profile-forge"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/adeoluo/profile-forge/releases/download/v0.2.0/profile-forge_v0.2.0_darwin_arm64.tar.gz"
      sha256 "b08f145c8e211dc9cc91d8d9ec8fce092584dbacacc0fb6001fdfa33bc65a9e2"
    end
    on_intel do
      url "https://github.com/adeoluo/profile-forge/releases/download/v0.2.0/profile-forge_v0.2.0_darwin_amd64.tar.gz"
      sha256 "3200b0f6bbc4c4b1071414bde0bcde4aa693f2133a7ccf586144664c095cfed6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adeoluo/profile-forge/releases/download/v0.2.0/profile-forge_v0.2.0_linux_arm64.tar.gz"
      sha256 "00dba2b9c532abbfd3bc02f6160ccf4cf16ccf8522405fa5382956aa020f17bb"
    end
    on_intel do
      url "https://github.com/adeoluo/profile-forge/releases/download/v0.2.0/profile-forge_v0.2.0_linux_amd64.tar.gz"
      sha256 "6c0cdd3b9ce844a319e3072e062572bd8a40534bfa2fe85157c1d458ee88f876"
    end
  end

  def install
    bin.install "profile-forge"
  end

  test do
    assert_match "profile-forge", shell_output("#{bin}/profile-forge version")
  end
end

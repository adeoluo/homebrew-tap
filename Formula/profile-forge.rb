class ProfileForge < Formula
  desc "Generate a GitHub profile README from live repository metadata"
  homepage "https://github.com/adeoluo/profile-forge"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/adeoluo/profile-forge/releases/download/v0.3.2/profile-forge_v0.3.2_darwin_arm64.tar.gz"
      sha256 "88859cc7b22c880bdf3028bc2235a66e91da5dfc01990bd8f3b5358b93113f83"
    end
    on_intel do
      url "https://github.com/adeoluo/profile-forge/releases/download/v0.3.2/profile-forge_v0.3.2_darwin_amd64.tar.gz"
      sha256 "1c87ecc813b35489dfc6482857a527ef08343a984619f51b95c52ba72184ed94"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/adeoluo/profile-forge/releases/download/v0.3.2/profile-forge_v0.3.2_linux_arm64.tar.gz"
      sha256 "da54da92532eb945ca4ef98c4f50ba260227429b86d360e18cd30c65e3b2583c"
    end
    on_intel do
      url "https://github.com/adeoluo/profile-forge/releases/download/v0.3.2/profile-forge_v0.3.2_linux_amd64.tar.gz"
      sha256 "1461d6b31746661163633d50074bae0d59e763b3f277f4634f0eaf3af40da74b"
    end
  end

  def install
    bin.install "profile-forge"
  end

  test do
    assert_match "profile-forge", shell_output("#{bin}/profile-forge version")
  end
end

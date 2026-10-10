class AndroidUse < Formula
  desc "Give AI agents fast, bounded access to one Android device"
  homepage "https://github.com/austinintelligence/android-use"
  version "1.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/austinintelligence/android-use/releases/download/v#{version}/android-use-v#{version}-macos-aarch64.tar.gz"
      sha256 "040e51f57dbf460b508b91e02583c386b4f8b8622a262f60ffbe124a95f806e1"
    end
    on_intel do
      url "https://github.com/austinintelligence/android-use/releases/download/v#{version}/android-use-v#{version}-macos-x86_64.tar.gz"
      sha256 "b8012aa98e229631b44c8e84f953354fee0eec2e74d2696120d9c65fad6d82c6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/austinintelligence/android-use/releases/download/v#{version}/android-use-v#{version}-linux-x86_64.tar.gz"
      sha256 "800039f52a3da033d91680abc89d96d0ef94c50affe6f9e6be7623035673996f"
    end
    on_arm do
      url "https://github.com/austinintelligence/android-use/releases/download/v#{version}/android-use-v#{version}-linux-aarch64.tar.gz"
      sha256 "4c2c8055b61a07661321fe27243145c8c2dbc1d307ae696ad140f1f51e81663c"
    end
  end

  def install
    bin.install "au"
    pkgshare.install "aubridge.apk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/au version")
  end
end

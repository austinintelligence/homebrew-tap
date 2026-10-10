class AndroidUse < Formula
  desc "Give AI agents fast, bounded access to one Android device"
  homepage "https://github.com/austinintelligence/android-use"
  version "1.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/austinintelligence/android-use/releases/download/v#{version}/android-use-v#{version}-macos-aarch64.tar.gz"
      sha256 "34ad4f1045b6d824b8a77bbc11446babeefad995460e065758d65e2dfd85cf49"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/austinintelligence/android-use/releases/download/v#{version}/android-use-v#{version}-linux-x86_64.tar.gz"
      sha256 "4a9f84ab9b455086206f7450bf0b52f21b046263a945131ebe696bdb34a21163"
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

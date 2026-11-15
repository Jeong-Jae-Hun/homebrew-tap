cask "mindow" do
  version "0.1.0"
  sha256 "5a0ddfdf58c36b8d307fa76d328fa92145100d06de333e1e0ca015770921f33d"

  url "https://github.com/Jeong-Jae-Hun/mindow/releases/download/v#{version}/Mindow-#{version}.zip"
  name "Mindow"
  desc "Keyboard-driven window manager that keeps your Spectacle shortcuts"
  homepage "https://github.com/Jeong-Jae-Hun/mindow"

  depends_on macos: ">= :sonoma"

  app "Mindow.app"

  zap trash: "~/Library/Preferences/io.github.jeong-jae-hun.mindow.plist"
end

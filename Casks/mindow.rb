cask "mindow" do
  version "0.2.0"
  sha256 "998174d6a5ee00dd203686421fa3f0076847e70270dbbf93828e18169285cc6a"

  url "https://github.com/Jeong-Jae-Hun/mindow/releases/download/v#{version}/Mindow-#{version}.zip"
  name "Mindow"
  desc "Keyboard-driven window manager that keeps your Spectacle shortcuts"
  homepage "https://github.com/Jeong-Jae-Hun/mindow"

  depends_on macos: ">= :sonoma"

  app "Mindow.app"

  zap trash: "~/Library/Preferences/io.github.jeong-jae-hun.mindow.plist"
end

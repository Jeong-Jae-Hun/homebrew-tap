cask "mindow" do
  version "0.1.1"
  sha256 "6b99900fea040fab8796694bacbd18655345148a2845e5cd41a4c89017997940"

  url "https://github.com/Jeong-Jae-Hun/mindow/releases/download/v#{version}/Mindow-#{version}.zip"
  name "Mindow"
  desc "Keyboard-driven window manager that keeps your Spectacle shortcuts"
  homepage "https://github.com/Jeong-Jae-Hun/mindow"

  depends_on macos: ">= :sonoma"

  app "Mindow.app"

  zap trash: "~/Library/Preferences/io.github.jeong-jae-hun.mindow.plist"
end

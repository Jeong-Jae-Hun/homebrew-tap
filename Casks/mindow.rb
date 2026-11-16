cask "mindow" do
  version "0.3.0"
  sha256 "e256d6919a0de056bb127267b2638932db9df3a742ee83213a5f45740fcfe308"

  url "https://github.com/Jeong-Jae-Hun/mindow/releases/download/v#{version}/Mindow-#{version}.zip"
  name "Mindow"
  desc "Keyboard-driven window manager that keeps your Spectacle shortcuts"
  homepage "https://github.com/Jeong-Jae-Hun/mindow"

  depends_on macos: ">= :sonoma"

  app "Mindow.app"

  zap trash: "~/Library/Preferences/io.github.jeong-jae-hun.mindow.plist"
end

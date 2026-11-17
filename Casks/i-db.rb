cask "i-db" do
  version "1.1.1"
  sha256 "a811e0ff17d7c42260f6e0ec4665aff672024fa3a864278631e5d0b464a687cf"

  url "https://github.com/Jeong-Jae-Hun/i-db/releases/download/v#{version}/i-db_darwin_arm64.zip"
  name "i-db"
  desc "Database GUI for DataGrip projects (PostgreSQL, Redis, read-only AWS sources)"
  homepage "https://github.com/Jeong-Jae-Hun/i-db"

  depends_on arch: :arm64
  depends_on macos: ">= :big_sur"

  app "i-db.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{appdir}/i-db.app"]
  end

  # ~/.config/db holds remote.json shared with the db CLI, so only the GUI's own files go
  zap trash: [
    "~/.config/db/gui.json",
    "~/Library/Preferences/io.github.jeong-jae-hun.i-db.plist",
    "~/Library/Saved Application State/io.github.jeong-jae-hun.i-db.savedState",
  ]
end

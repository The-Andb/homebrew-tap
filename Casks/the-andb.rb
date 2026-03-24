cask "the-andb" do
  version "3.1.0-beta.1"
  sha256 :no_check

  on_intel do
    url "https://github.com/The-Andb/andb-desktop/releases/download/v#{version}/The-Andb-#{version}-x64.dmg"
  end
  on_arm do
    url "https://github.com/The-Andb/andb-desktop/releases/download/v#{version}/The-Andb-#{version}-arm64.dmg"
  end

  name "TheAndb"
  desc "Professional Database Migration Architecture"
  homepage "https://theandb.com"

  app "TheAndb.app"

  zap trash: [
    "~/Library/Application Support/TheAndb",
    "~/Library/Preferences/com.anph.andb.v3.plist",
    "~/Library/Saved Application State/com.anph.andb.v3.savedState",
  ]
end

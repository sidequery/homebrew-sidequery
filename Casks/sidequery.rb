cask "sidequery" do
  version "0.0.16"
  sha256 "942f243f35f0b2e2c52cab69eae2ce3b33e9a8852b88b02216b7b774e9f929ea"

  url "https://github.com/sidequery/sidequery-native-releases/releases/download/v#{version}/Sidequery-#{version}.dmg"
  name "Sidequery"
  desc "Fast native DuckDB client for macOS"
  homepage "https://sidequery.com"

  app "Sidequery.app"

  zap trash: [
    "~/Library/Application Support/Sidequery",
    "~/Library/Preferences/com.sidequery.mac.plist",
    "~/Library/Saved Application State/com.sidequery.mac.savedState"
  ]
end

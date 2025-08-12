cask "sidequery" do
  version "0.0.6"
  sha256 "465c786bc29454a59f685cd717928dd90d11e1443a9045216b429701fd57f9a3"

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

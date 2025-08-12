cask "sidequery" do
  version "0.0.2"
  sha256 "b90faa3b2997e25e5cde4fa78322d783687362034612f774ecb6668a0b0683a8"

  url "https://github.com/sidequery/sidequery-native-releases/releases/download/v#{version}/Sidequery-#{version}.zip"
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

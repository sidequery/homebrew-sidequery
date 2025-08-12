cask "sidequery" do
  version "0.0.4"
  sha256 "07a8fa5c529c571b0e8606f3d7aeeb252f625682dbf72013ec1f2759069ae8ab"

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

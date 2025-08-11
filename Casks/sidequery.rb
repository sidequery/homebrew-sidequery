cask "sidequery" do
  version "0.0.1"
  sha256 "2233adbab4d3dae2b870ef9c840e6c824f7ed4d9400044fe61cb213d4750033f"

  url "https://github.com/sidequery/sidequery-native-releases/releases/download/v#{version}/Sidequery-#{version}.zip"
  name "Sidequery"
  desc "Fast native DuckDB client for macOS"
  homepage "https://sidequery.com"

  app "Sidequery.app"

  zap trash: [
    "~/Library/Application Support/Sidequery",
    "~/Library/Preferences/com.sidequery.sidequery.plist",
    "~/Library/Saved Application State/com.sidequery.sidequery.savedState"
  ]
end

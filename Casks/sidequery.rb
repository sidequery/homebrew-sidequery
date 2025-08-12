cask "sidequery" do
  version "0.0.3"
  sha256 "5030c80cfbed47f3b977f27000ae126a48a73c26f763de2071038be9186b2fdc"

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

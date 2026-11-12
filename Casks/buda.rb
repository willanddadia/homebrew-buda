cask "buda" do
  version "0.1.4"
  sha256 "10a16c8c2330e0644d29b6737a58971542b0a640be4bb66d4addddb2dc9af8bd"

  url "https://github.com/willanddadia/homebrew-buda/releases/download/v#{version}/Buda-#{version}.zip"
  name "Buda"
  desc "Small native editor for checking code"
  homepage "https://github.com/willanddadia/homebrew-buda"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Buda.app"
  binary "#{appdir}/Buda.app/Contents/Resources/buda"

  uninstall quit: "com.willanddadia.buda"

  zap trash: [
    "~/Library/Caches/com.willanddadia.buda",
    "~/Library/HTTPStorages/com.willanddadia.buda",
    "~/Library/Preferences/com.willanddadia.buda.plist",
    "~/Library/Saved Application State/com.willanddadia.buda.savedState",
    "~/Library/WebKit/com.willanddadia.buda",
  ]
end

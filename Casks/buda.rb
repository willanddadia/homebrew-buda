cask "buda" do
  version "0.1.3"
  sha256 "7462c86d6c3708c5ffb1ad2f60325ed0ad99c0ddea9c684f5343f8a73e0bbd0d"

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

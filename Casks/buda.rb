cask "buda" do
  version "0.1.0"
  sha256 "5c3c8a77580cec935294c9a2ce9e4b9612ee00dc1241a03fc5d70d6afa47f04a"

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

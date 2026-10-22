cask "buda" do
  version "0.1.1"
  sha256 "498c913dd35f189b86e0b689dbdac75c869d74cc8fe6434cb0d4e7ffdb868b4c"

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

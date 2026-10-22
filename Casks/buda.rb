cask "buda" do
  version "0.1.2"
  sha256 "d31b02f5b7408947f9d44e075369d5da0021101eaac0a0a0ee1d674217afa082"

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

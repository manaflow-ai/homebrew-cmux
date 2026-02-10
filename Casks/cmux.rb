cask "cmux" do
  version "1.24.0"
  sha256 "68df146c685c58a94d649e1ab8610d1cc2f995b3de47d4655b35f0a51061dceb"

  url "https://github.com/manaflow-ai/cmux/releases/download/v#{version}/cmux-macos.dmg"
  name "cmux"
  desc "Ghostty-based macOS terminal with vertical tabs for AI coding agents"
  homepage "https://cmux.sh"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "cmux.app"

  zap trash: [
    "~/Library/Application Support/cmux",
    "~/Library/Caches/com.cmuxterm.app",
    "~/Library/Preferences/com.cmuxterm.app.plist",
  ]
end

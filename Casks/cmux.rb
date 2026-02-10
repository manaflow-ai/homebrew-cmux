cask "cmux" do
  version "1.20.1"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"

  url "https://github.com/manaflow-ai/cmuxterm/releases/download/v#{version}/cmuxterm-macos.dmg"
  name "cmuxterm"
  desc "Ghostty-based macOS terminal with vertical tabs for AI coding agents"
  homepage "https://cmuxterm.com"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "cmuxterm.app"

  zap trash: [
    "~/Library/Application Support/cmuxterm",
    "~/Library/Caches/com.cmuxterm.app",
    "~/Library/Preferences/com.cmuxterm.app.plist",
  ]
end

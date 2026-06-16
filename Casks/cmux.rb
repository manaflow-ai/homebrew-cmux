cask "cmux" do
  version "0.64.16"
  sha256 "401ff67a606b033aa470a68bad55196a72b8a971d299ae027893363f01a19972"

  url "https://github.com/manaflow-ai/cmux/releases/download/v#{version}/cmux-macos.dmg"
  name "cmux"
  desc "Lightweight native macOS terminal with vertical tabs for AI coding agents"
  homepage "https://cmux.com"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "cmux.app"
  binary "#{appdir}/cmux.app/Contents/Resources/bin/cmux"

  zap trash: [
    "~/Library/Application Support/cmux",
    "~/Library/Caches/cmux",
    "~/Library/Preferences/ai.manaflow.cmuxterm.plist",
  ]
end

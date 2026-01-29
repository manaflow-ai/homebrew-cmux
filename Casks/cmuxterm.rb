cask "cmuxterm" do
  version "1.9.0"
  sha256 "ee959402b94548e1d8e56a02d6ea3de37b398ac2f3f784da5faa01543cc8bc3d"

  url "https://github.com/manaflow-ai/cmuxterm/releases/download/v#{version}/cmuxterm-macos.dmg"
  name "cmuxterm"
  desc "Lightweight native macOS terminal with vertical tabs for AI coding agents"
  homepage "https://github.com/manaflow-ai/cmuxterm"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "cmuxterm.app"

  zap trash: [
    "~/Library/Application Support/cmuxterm",
    "~/Library/Caches/cmuxterm",
    "~/Library/Preferences/ai.manaflow.cmuxterm.plist",
  ]
end

cask "cmux" do
  version "1.9.0"
  sha256 "ee959402b94548e1d8e56a02d6ea3de37b398ac2f3f784da5faa01543cc8bc3d"

  url "https://github.com/manaflow-ai/cmux/releases/download/v#{version}/cmux-macos.dmg"
  name "cmux"
  desc "Ghostty-based macOS terminal with vertical tabs for AI coding agents"
  homepage "https://github.com/manaflow-ai/cmux"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "cmux.app"

  zap trash: [
    "~/Library/Application Support/cmux",
    "~/Library/Caches/cmux",
    "~/Library/Preferences/ai.manaflow.cmux.plist",
  ]
end

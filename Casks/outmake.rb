cask "outmake" do
  version "0.8.6,20261106083646"
  sha256 "2cf94f785ceec8d76fe8c7c62899e64bfffc045f994db09a6e5d7cbf6f7b1e9f"

  url "https://outmake.app/updates/Outmake-#{version.csv.second}.dmg"
  name "Outmake"
  desc "Run local AI models for chat, pictures, video and voice"
  homepage "https://outmake.app/"

  livecheck do
    url "https://outmake.app/updates/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :tahoe"

  app "Outmake.app"

  zap trash: [
    "~/Library/Application Support/Outmake",
    "~/Library/Caches/app.outmake.Outmake",
    "~/Library/HTTPStorages/app.outmake.Outmake",
    "~/Library/Preferences/app.outmake.Outmake.plist",
    "~/Library/Saved Application State/app.outmake.Outmake.savedState",
  ]
end

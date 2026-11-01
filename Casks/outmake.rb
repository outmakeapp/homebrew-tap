cask "outmake" do
  version "0.8.1,20261101054401"
  sha256 "73b2e484cd31dbca85e3951ea373fb4d0a33687a356a9863fc3ce70b9abd8e21"

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

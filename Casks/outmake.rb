cask "outmake" do
  version "0.8.4,20261103154702"
  sha256 "89f7a9b674de0b8aaf41c4e7ac91cf36e1f322771e159e99bb72dcdac353dce6"

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

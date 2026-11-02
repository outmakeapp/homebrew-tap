cask "outmake" do
  version "0.8.3,20261102084002"
  sha256 "d30e649cf10f037826e982eb765d0ec23a363de627050e37f8f220768f9122a6"

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

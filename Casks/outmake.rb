cask "outmake" do
  version "0.7,20261028183355"
  sha256 "0b885e62705c791b640b9746a48e767a19cab56fc7f7494ec5a58606d4776e1b"

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

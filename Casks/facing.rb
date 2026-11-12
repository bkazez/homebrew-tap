cask "facing" do
  version "1.2"
  sha256 "3554a15a57623221f36b493e3bc54492dd259da48a84b4064d40d9fb166ecce4"

  url "https://www.impulsearc.com/facing/releases/Facing-#{version}.dmg"
  name "Facing"
  desc "Two-pane Markdown writing app"
  homepage "https://www.impulsearc.com/facing/"

  livecheck do
    url "https://www.impulsearc.com/facing/releases/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Facing.app"
  binary "#{appdir}/Facing.app/Contents/Helpers/facing"

  zap trash: [
    "~/Library/Group Containers/VQ6TS4BXMZ.com.impulsearc.facing",
    "~/Library/Preferences/com.impulsearc.facing.plist",
    "~/Library/Caches/com.impulsearc.facing",
    "~/Library/HTTPStorages/com.impulsearc.facing",
  ]
end

cask "facing" do
  version "1.1"
  sha256 "65e8e6fb66071d57831f32a932ce828b7fd03f2ce0e2117512e1cacd8890b66c"

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

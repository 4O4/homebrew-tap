cask "harmony-split-tunnel-enforcer" do
  version "0.7.0"
  sha256 "d5d2bedc6a025131ed3cdc78807b4a653be2cc8d72012eaf4913d4e1280ce0b5"

  url "https://github.com/4O4/harmony-split-tunnel-enforcer/releases/download/v#{version}/HarmonySplitTunnelEnforcer.dmg"
  name "Harmony Split Tunnel Enforcer"
  desc "Enforce split tunneling for Harmony SASE VPN"
  homepage "https://github.com/4O4/harmony-split-tunnel-enforcer"

  depends_on macos: ">= :ventura"

  app "Harmony Split Tunnel Enforcer.app"

  zap trash: [
    "~/Library/Preferences/net.rawbytes.harmony-split-tunnel-enforcer.plist",
  ]
end

cask "harmony-split-tunnel-enforcer" do
  version "0.3.0"
  sha256 "e8d4dd5dbc375e1f50128a353bc418d5435c6170adea09985f72c03ca9fbb6db"

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

cask "split-tunnel-enforcer" do
  version "0.1.0"
  sha256 "PLACEHOLDER"

  url "https://github.com/4O4/harmony-split-tunnel-enforcer/releases/download/v#{version}/HarmonySplitTunnelEnforcer.dmg"
  name "Split Tunnel Enforcer"
  desc "Enforce split tunneling for Harmony SASE VPN"
  homepage "https://github.com/4O4/harmony-split-tunnel-enforcer"

  depends_on macos: ">= :ventura"

  app "Split Tunnel Enforcer.app"

  zap trash: [
    "~/Library/Preferences/net.rawbytes.harmony-split-tunnel-enforcer.plist",
  ]
end

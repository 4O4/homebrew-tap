cask "harmony-split-tunnel-enforcer" do
  version "0.2.0"
  sha256 "ff960b6b7f5268c71abbbeed55146b8e096dcc28a78f0271045d5f7e5b52516f"

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

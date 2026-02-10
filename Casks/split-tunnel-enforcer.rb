cask "split-tunnel-enforcer" do
  version "0.1.0"
  sha256 "5fb50c7720b29d67eec68778585106cc5967309a522eacef61e6d2a911b6b2e8"

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

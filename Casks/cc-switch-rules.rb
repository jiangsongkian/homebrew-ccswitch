cask "cc-switch-rules" do
  version "4.0.34-fork.1"
  sha256 "de13f1d3f44d21fdf1e1af2d370e70e0cdb568611871a7824309a43b07a92b50"

  url "https://github.com/jiangsongkian/cc-switch/releases/download/rules-v#{version}/CC-Switch-rules-#{version}-macOS.dmg"
  name "CC Switch (Rules)"
  desc "CC Switch fork with cross-app rules management"
  homepage "https://github.com/jiangsongkian/cc-switch"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "CC Switch.app"

  uninstall quit: "com.ccswitch.desktop"

  # 和官方 cask 一致：升级交给应用内 updater，brew upgrade 默认跳过。
  # 需要强制重装时用 brew upgrade --cask --greedy cc-switch-rules
  auto_updates true
end

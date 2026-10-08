cask "tautulli" do
  arch arm: "arm64", intel: "x86_64"

  version "2.18.1"
  sha256 arm:   "1d1c35fd1ec34eb34cb068bf576884da99cbf5b86631c6bc00cb72299d96312d",
         intel: "15576d5e8bae2070bf68285515d9a0a2ddfb5127ffa776256b639e9791e18b4c"

  url "https://github.com/Tautulli/Tautulli/releases/download/v#{version}/Tautulli-macos-v#{version}-#{arch}.pkg",
      verified: "github.com/Tautulli/Tautulli/"
  name "Tautulli"
  desc "Monitoring, analytics and notifications tool for Plex Media Server"
  homepage "https://tautulli.com/"

  depends_on :macos

  pkg "Tautulli-macos-v#{version}-#{arch}.pkg"

  uninstall quit:       "com.Tautulli.Tautulli",
            login_item: "Tautulli",
            pkgutil:    "com.Tautulli.Tautulli",
            delete:     "/Applications/Tautulli.app"

  zap trash: "~/Library/Application Support/Tautulli"
end

cask "tautulli" do
  arch arm: "arm64", intel: "x86_64"

  version "2.18.2"
  sha256 arm:   "e35a6ce2db57ea306bf2098a7532086e1092651edeb204bd2fb1c21610f7160d",
         intel: "9963152e6126a840c6b14202df87a7feb1cd6017ecb8da725c4fa2199979ba12"

  url "https://github.com/Tautulli/Tautulli/releases/download/v#{version}/Tautulli-macos-v#{version}-#{arch}.pkg"
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

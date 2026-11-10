cask "tautulli" do
  arch arm: "arm64", intel: "x86_64"

  version "2.19.0"
  sha256 arm:   "b59228acfe11c45a483f2df92cb72e8dd8d796253e4e5024ebaed6a9d9f23b50",
         intel: "858221c65722837189b6428978550e2a4e756cfcd3a747425c0df23f3d837115"

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

cask "tautulli" do
  arch arm: "arm64", intel: "x86_64"

  version "2.19.1"
  sha256 arm:   "60bf5c905c139ba48c11d682eb4dd7d35fca7cb397466614aeda53cda98de9c7",
         intel: "944661423b4c099bbf80478bd3b0a5669bc9422240591661ceb84e867a8c5bc2"

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

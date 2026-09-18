class Dotfiles < Formula
  desc "Reconcile a Mac against the dotfiles bundle"
  homepage "https://github.com/jackemcpherson/dotfiles"
  url "https://github.com/jackemcpherson/homebrew-tap/releases/download/v0.5.1/dotfiles-darwin-arm64"
  sha256 "de4b4c37efc36d5add257a812cf6835f916fbbce134adb112d03d382f4048a57"
  version "0.5.1"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "dotfiles-darwin-arm64" => "dotfiles"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dotfiles version")
  end
end

class Dotfiles < Formula
  desc "Reconcile a Mac against the dotfiles bundle"
  homepage "https://github.com/jackemcpherson/dotfiles"
  url "https://github.com/jackemcpherson/homebrew-tap/releases/download/v0.7.0/dotfiles-darwin-arm64"
  sha256 "493ed5e72de4936cff30d4646e6c6a08c27ad412753e7162a4a3db4ee03a38f3"
  version "0.7.0"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "dotfiles-darwin-arm64" => "dotfiles"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dotfiles version")
  end
end

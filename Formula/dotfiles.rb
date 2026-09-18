class Dotfiles < Formula
  desc "Reconcile a Mac against the dotfiles bundle"
  homepage "https://github.com/jackemcpherson/dotfiles"
  url "https://github.com/jackemcpherson/homebrew-tap/releases/download/v0.5.0/dotfiles-darwin-arm64"
  sha256 "224e4d72394a7dcb7b7a8b493053540e80de7bf3196d10692a1c5532ed93014a"
  version "0.5.0"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "dotfiles-darwin-arm64" => "dotfiles"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dotfiles version")
  end
end

class Dotfiles < Formula
  desc "Reconcile a Mac against the dotfiles bundle"
  homepage "https://github.com/jackemcpherson/dotfiles"
  url "https://github.com/jackemcpherson/homebrew-tap/releases/download/v0.3.0/dotfiles-darwin-arm64"
  sha256 "4d8f08fbcb7960b90f1ea27a9b10a8867bbc3af950a412adffdff2731410d34d"
  version "0.3.0"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "dotfiles-darwin-arm64" => "dotfiles"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dotfiles version")
  end
end

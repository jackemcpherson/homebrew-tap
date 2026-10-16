class Dotfiles < Formula
  desc "Reconcile a Mac against the dotfiles bundle"
  homepage "https://github.com/jackemcpherson/dotfiles"
  url "https://github.com/jackemcpherson/homebrew-tap/releases/download/v0.7.3/dotfiles-darwin-arm64"
  sha256 "2cb8261f27b0c43ed5241d144c5c8942a7cfddb8809bc6ea0541f40498493d08"
  version "0.7.3"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "dotfiles-darwin-arm64" => "dotfiles"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dotfiles version")
  end
end

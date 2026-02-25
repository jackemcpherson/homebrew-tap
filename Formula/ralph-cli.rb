class RalphCli < Formula
  desc "CLI tool implementing the Ralph autonomous iteration pattern for Claude Code"
  homepage "https://github.com/jackemcpherson/ralph-cli"
  url "https://files.pythonhosted.org/packages/3a/3a/b58734d6f0f5d7569601f52caf7c32fb911702175db32b0fbc24ddf4544c/ralph_cli-2.2.0.tar.gz"
  sha256 "13a6bbf1f21360a5e5bd7e79e68f25ee1b3bd47cbba12c51d25101fb8cc3b8e1"
  license "MIT"

  depends_on "python@3.13"

  def install
    python3 = "python3.13"
    venv = libexec
    system python3, "-m", "venv", venv
    system venv/"bin/pip", "install", "--no-cache-dir", cached_download
    bin.install_symlink venv/"bin/ralph"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ralph --version")
  end
end

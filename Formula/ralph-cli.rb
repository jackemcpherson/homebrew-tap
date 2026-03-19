class RalphCli < Formula
  desc "CLI tool implementing the Ralph autonomous iteration pattern for Claude Code"
  homepage "https://github.com/jackemcpherson/ralph-cli"
  url "https://files.pythonhosted.org/packages/d2/6a/0dd3cdee3b4086465cedba1e41de7e2bd800dd65a059792e10831e749c51/ralph_cli-2.2.1.tar.gz"
  sha256 "8d50141a59f4319870ca2b384e3824a54fff4fddf647662b5b924fea66b000b7"
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

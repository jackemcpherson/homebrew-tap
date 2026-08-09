class RalphCli < Formula
  desc "Retired personal development workflow tool"
  homepage "https://github.com/jackemcpherson/ralph-cli"
  url "https://files.pythonhosted.org/packages/e1/40/d337f090c25a23c0cbabb9754df5b393f0e1a7562c38758d247d1f42da33/ralph_cli-2.2.2.tar.gz"
  sha256 "ad27cd28a7034efa317fe18abdcc5f50ffa36a72b2c82e1c87dea8ef3f2a5fed"
  license "MIT"

  disable! date: "2026-08-09", because: "is retired and no longer maintained"

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

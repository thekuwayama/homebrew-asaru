# To install:
#   brew tap thekuwayama/asaru
#   brew install asaru
#
# To remove:
#   brew uninstall asaru
#   brew untap thekuwayama/asaru

class Asaru < Formula
  version 'v0.3.3'
  desc 'Asana Tasks Search CLI'
  homepage 'https://github.com/thekuwayama/asaru'

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/thekuwayama/asaru/releases/download/#{version}/asaru-#{version}-x86_64-apple-darwin.tar.gz"
    sha256 '5ff07ae0c796c732e1b7ae042dc4c2d07e6f9ed42c994111f8cb43c495e6592a'
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/thekuwayama/asaru/releases/download/#{version}/asaru-#{version}-aarch64-apple-darwin.tar.gz"
    sha256 '62c769f57cbc3a1f6fa85d2b602b78868d0fd31a0f336fc72303179f48dad0f7'
  else
    warn '** not support **'
    exit 1
  end

  def install
    bin.install 'asaru'
  end
end

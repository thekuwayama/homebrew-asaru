# To install:
#   brew tap thekuwayama/asaru
#   brew install asaru
#
# To remove:
#   brew uninstall asaru
#   brew untap thekuwayama/asaru

class Asaru < Formula
  version 'v0.3.2'
  desc 'Asana Tasks Search CLI'
  homepage 'https://github.com/thekuwayama/asaru'

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/thekuwayama/asaru/releases/download/#{version}/asaru-#{version}-x86_64-apple-darwin.tar.gz"
    sha256 '2752996c222d992d97a90884a48b7e205035d982e90f5e6eaacd15b96159f428'
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/thekuwayama/asaru/releases/download/#{version}/asaru-#{version}-aarch64-apple-darwin.tar.gz"
    sha256 '3c928139fd905c0522063717cd7f8674a1433f8d5f3d829b864d1137ae66729b'
  else
    warn '** not support **'
    exit 1
  end

  def install
    bin.install 'asaru'
  end
end

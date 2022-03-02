# To install:
#   brew tap thekuwayama/asaru
#   brew install asaru
#
# To remove:
#   brew uninstall asaru
#   brew untap thekuwayama/asaru

class Asaru < Formula
  version 'v0.3.4'
  desc 'Asana Tasks Search CLI'
  homepage 'https://github.com/thekuwayama/asaru'

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/thekuwayama/asaru/releases/download/#{version}/asaru-#{version}-x86_64-apple-darwin.tar.gz"
    sha256 'd831a35fad1f95882bd8c60df31fbf00c03a9d737a18279760bbb77bc37f042b'
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/thekuwayama/asaru/releases/download/#{version}/asaru-#{version}-aarch64-apple-darwin.tar.gz"
    sha256 '1f999813b907a588d7964ca632b031dba0e80e2f0b9c3220da6b18bd86f3fd6c'
  end

  def install
    bin.install 'asaru'
  end
end

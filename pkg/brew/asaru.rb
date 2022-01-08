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

  if OS.mac?
    url "https://github.com/thekuwayama/asaru/releases/download/#{version}/asaru-#{version}-x86_64-apple-darwin.tar.gz"
    sha256 '2752996c222d992d97a90884a48b7e205035d982e90f5e6eaacd15b96159f428'
  elsif OS.linux?
    warn '** not support **'
    exit 1
  end

  def install
    bin.install 'asaru'
  end
end

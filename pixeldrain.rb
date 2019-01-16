require 'rbconfig'
class Pixeldrain < Formula
  desc "Pixeldrain client"
  homepage "https://github.com/jkawamoto/go-pixeldrain"
  version "0.3.0"

  if Hardware::CPU.is_64_bit?
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      :windows
    when /darwin|mac os/
      url "https://github.com/jkawamoto/go-pixeldrain/releases/download/v0.3.0/pd_v0.3.0_darwin_amd64.zip"
      sha256 "c31a45d8279b50df997f65a44c2c1d89f4bc7c13488339c817c4696b8bd159b7"
    when /linux/
      url "https://github.com/jkawamoto/go-pixeldrain/releases/download/v0.3.0/pd_v0.3.0_linux_amd64.tar.gz"
      sha256 "14c055c33293bef397c359e246185a15ad5b6bc08ecd00b3ca80a45767748efa"
    when /solaris|bsd/
      :unix
    else
      :unknown
    end
  else
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      :windows
    when /darwin|mac os/
      url "https://github.com/jkawamoto/go-pixeldrain/releases/download/v0.3.0/pd_v0.3.0_darwin_386.zip"
      sha256 "4af631263fb0a9b547aee3d9dee4ad1526354bf2a18fd43ab326b57a5a0055e6"
    when /linux/
      url "https://github.com/jkawamoto/go-pixeldrain/releases/download/v0.3.0/pd_v0.3.0_linux_386.tar.gz"
      sha256 "860158d445938a17e7308c614df07473b20b0c789fad9c690912a2386327295c"
    when /solaris|bsd/
      :unix
    else
      :unknown
    end
  end

  def install
    bin.install "pd"
  end

  test do
    system "pd"
  end

end

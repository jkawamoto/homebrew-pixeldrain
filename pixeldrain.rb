require 'rbconfig'
class Pixeldrain < Formula
  desc "Pixeldrain client"
  homepage "https://github.com/jkawamoto/go-pixeldrain"
  version "0.3.1"

  if Hardware::CPU.is_64_bit?
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      :windows
    when /darwin|mac os/
      url "https://github.com/jkawamoto/go-pixeldrain/releases/download/v0.3.1/pd_v0.3.1_darwin_amd64.zip"
      sha256 "16f31c4eb60fc6b8f6f17c3850af90420941b7d0e0e94d9f9bb3f1b2ab74aa01"
    when /linux/
      url "https://github.com/jkawamoto/go-pixeldrain/releases/download/v0.3.1/pd_v0.3.1_linux_amd64.tar.gz"
      sha256 "2e991bea1f61847c95a22bdc90cfca3a0f212b98854fbed93f428bd1264866bc"
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
      url "https://github.com/jkawamoto/go-pixeldrain/releases/download/v0.3.1/pd_v0.3.1_darwin_386.zip"
      sha256 "38f7fa0a24ba8cf1ea3ed24f0a99a7b5eefc9fca45eb9213438d99ad6b535c7b"
    when /linux/
      url "https://github.com/jkawamoto/go-pixeldrain/releases/download/v0.3.1/pd_v0.3.1_linux_386.tar.gz"
      sha256 "55e6c2b62a4c721e2403d8da1c6ec2e65e0f92bc99a8fe744aad0afbb0af459f"
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

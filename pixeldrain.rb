require 'rbconfig'
class Pixeldrain < Formula
  desc "Pixeldrain client"
  homepage "https://github.com/jkawamoto/go-pixeldrain"
  version "0.2.0"

  if Hardware::CPU.is_64_bit?
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      :windows
    when /darwin|mac os/
      url "https://github.com/jkawamoto/go-pixeldrain/releases/download/0.2.0/pd_v0.2.0_darwin_amd64.zip"
      sha256 "a23ed774e1b359a602af71b84c7a452c6a5f4c8f9d33c0584e938ef1b544e334"
    when /linux/
      url "https://github.com/jkawamoto/go-pixeldrain/releases/download/0.2.0/pd_v0.2.0_linux_amd64.tar.gz"
      sha256 "62b0acdd1c5e3158f6cd12d7c41df46db4e081cb5db0a20f0df391cac9d53356"
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
      url "https://github.com/jkawamoto/go-pixeldrain/releases/download/0.2.0/pd_v0.2.0_darwin_386.zip"
      sha256 "7bbeaf335477a54bb2dbbd9ba97785fd51f448b7bea6439e8aa2c9168f8d08a5"
    when /linux/
      url "https://github.com/jkawamoto/go-pixeldrain/releases/download/0.2.0/pd_v0.2.0_linux_386.tar.gz"
      sha256 "bdf826ac7aacc0d57b5163ec0e2ec190dbab5e4f169e55c1f20eeed6c153f0b2"
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

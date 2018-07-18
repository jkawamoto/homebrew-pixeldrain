require 'rbconfig'
class Pixeldrain < Formula
  desc "Pixeldrain client"
  homepage "https://github.com/jkawamoto/go-pixeldrain"
  version "0.2.1"

  if Hardware::CPU.is_64_bit?
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      :windows
    when /darwin|mac os/
      url "https://github.com/jkawamoto/go-pixeldrain/releases/download/v0.2.1/pd_v0.2.1_darwin_amd64.zip"
      sha256 "782a8171c5aa341f19e264c9383fa8644e6b1cc758cdca845456158883975fca"
    when /linux/
      url "https://github.com/jkawamoto/go-pixeldrain/releases/download/v0.2.1/pd_v0.2.1_linux_amd64.tar.gz"
      sha256 "4631a6103ae21f4a0a920294eaf0dc9fb5aa985d62f15a969dee6f5d7f3e4a22"
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
      url "https://github.com/jkawamoto/go-pixeldrain/releases/download/v0.2.1/pd_v0.2.1_darwin_386.zip"
      sha256 "60171b2d536353dc74992f136a7a7840d011392cf78fce340ab272b054b2b91c"
    when /linux/
      url "https://github.com/jkawamoto/go-pixeldrain/releases/download/v0.2.1/pd_v0.2.1_linux_386.tar.gz"
      sha256 "1ef1313067c0c5246cf78a0bbf25bf55e82f04a9854ae1aa1f83847f5f4b7e54"
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

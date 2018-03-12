require 'rbconfig'
class Go-Pixeldrain < Formula
  desc "Pixeldrain client"
  homepage "https://github.com/jkawamoto/go-pixeldrain"
  version "0.1.0"

  if Hardware::CPU.is_64_bit?
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      :windows
    when /darwin|mac os/
      url "https://github.com/jkawamoto/go-pixeldrain/releases/download/v0.1.0/pd_0.1.0_darwin_amd64.zip"
      sha256 "ffbf03dd5570ca50dcd6fa9d93a81cff8090f35e168a752fdbe4fccfeae20469"
    when /linux/
      url "https://github.com/jkawamoto/go-pixeldrain/releases/download/v0.1.0/pd_0.1.0_linux_amd64.tar.gz"
      sha256 "8ced3c14d57e2ffd9c728b921aa905d083254ce87cb557a4bb57dcca971dbf72"
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
      url "https://github.com/jkawamoto/go-pixeldrain/releases/download/v0.1.0/pd_0.1.0_darwin_386.zip"
      sha256 "7d92ee9686a8826f1aa9c42470365e744c2462bbeafe672e463c3a2ae226f1e4"
    when /linux/
      url "https://github.com/jkawamoto/go-pixeldrain/releases/download/v0.1.0/pd_0.1.0_linux_386.tar.gz"
      sha256 "8f61e4f175194a23f9fdce46b335d809caa9a58f3eb6cb6bb8747af5573708ba"
    when /solaris|bsd/
      :unix
    else
      :unknown
    end
  end

  def install
    bin.install "go-pixeldrain"
  end

  test do
    system "go-pixeldrain"
  end

end

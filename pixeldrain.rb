require 'rbconfig'
class Pixeldrain < Formula
  desc "Pixeldrain client"
  homepage "https://github.com/jkawamoto/go-pixeldrain"
  version "0.1.1"

  if Hardware::CPU.is_64_bit?
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      :windows
    when /darwin|mac os/
      url "https://github.com/jkawamoto/go-pixeldrain/releases/download/v0.1.1/pd_0.1.1_darwin_amd64.zip"
      sha256 "bc0627707aae5ad5f62da5c891646980d0924eaab6285f48cb787591a5cbcdb3"
    when /linux/
      url "https://github.com/jkawamoto/go-pixeldrain/releases/download/v0.1.1/pd_0.1.1_linux_amd64.tar.gz"
      sha256 "f1549ae54e79d58e2c6f267ee83c30bcb688a27779ad2cc4456f799262bba1a7"
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
      url "https://github.com/jkawamoto/go-pixeldrain/releases/download/v0.1.1/pd_0.1.1_darwin_386.zip"
      sha256 "8559eda56a45ad5ff8e0e59186793be8f672db8d68a38f7190c6f727636745eb"
    when /linux/
      url "https://github.com/jkawamoto/go-pixeldrain/releases/download/v0.1.1/pd_0.1.1_linux_386.tar.gz"
      sha256 "2c432bd217fcac24b2e2486e0adbc19283cd27484b33dba621e89d629aeabe7d"
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

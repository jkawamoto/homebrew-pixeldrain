# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pixeldrain < Formula
  desc "Share files with decentralized cloud storage."
  homepage "https://jkawamoto.github.io/go-pixeldrain/"
  version "0.6.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jkawamoto/go-pixeldrain/releases/download/v0.7.0/pd_0.7.0_darwin_arm64.tar.gz"
      sha256 "ad1fc0faeb655a23c905bf17ce6745eb4955193f4d0d22a53563342add84090e"

      def install
        bin.install "pd"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/jkawamoto/go-pixeldrain/releases/download/v0.7.0/pd_0.7.0_darwin_amd64.tar.gz"
      sha256 "7cbbd97c510f390d109ea11af74e3b57330c30ec0877f2acdff337e612e347c4"

      def install
        bin.install "pd"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/jkawamoto/go-pixeldrain/releases/download/v0.7.0/pd_0.7.0_linux_arm64.tar.gz"
      sha256 "a98f114bfcdd2df341421168d81c42a99558a5a61f9ce29e4f1510147f493815"

      def install
        bin.install "pd"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/jkawamoto/go-pixeldrain/releases/download/v0.7.0/pd_0.7.0_linux_amd64.tar.gz"
      sha256 "a8bc76de18622f6289367f8dd7ca8e2be7274af45dec874ac485dec8f8d87485"

      def install
        bin.install "pd"
      end
    end
  end
end

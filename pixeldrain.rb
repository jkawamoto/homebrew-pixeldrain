# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pixeldrain < Formula
  desc "Share files with decentralized cloud storage."
  homepage "https://jkawamoto.github.io/go-pixeldrain/"
  version "0.7.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jkawamoto/go-pixeldrain/releases/download/v0.7.1/pd_0.7.1_darwin_arm64.tar.gz"
      sha256 "537b89e98af700f237f62bfaec7bf5e052d1f39d1b2863a37b1173bfc91086df"

      def install
        bin.install "pd"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/jkawamoto/go-pixeldrain/releases/download/v0.7.1/pd_0.7.1_darwin_amd64.tar.gz"
      sha256 "3bda2f0e07753bd62c594e7963f8b41a28dae6b877555c80f64cdc10acafa2da"

      def install
        bin.install "pd"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/jkawamoto/go-pixeldrain/releases/download/v0.7.1/pd_0.7.1_linux_arm64.tar.gz"
      sha256 "81a116adc94be8470fd85138fedd175b683c39a4ae67df8742a7e803cd3bff57"

      def install
        bin.install "pd"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/jkawamoto/go-pixeldrain/releases/download/v0.7.1/pd_0.7.1_linux_amd64.tar.gz"
      sha256 "cba8d8d348d25a3ec53f1fbe3bb0cd93bd31df2cd061b198f5c2ee3ecfb286e8"

      def install
        bin.install "pd"
      end
    end
  end
end

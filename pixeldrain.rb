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
      url "https://github.com/jkawamoto/go-pixeldrain/releases/download/v0.6.3/pd_0.6.3_darwin_arm64.tar.gz"
      sha256 "01152fe8449fb1544810d76bb07f3d9c7381b01f9ed57e8f6f5b7686a1a8764f"

      def install
        bin.install "pd"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/jkawamoto/go-pixeldrain/releases/download/v0.6.3/pd_0.6.3_darwin_amd64.tar.gz"
      sha256 "738ebf193d07bf24d74cd2ae29658860fb2d6e69d3e6e8ba028e1f6ac91ab18e"

      def install
        bin.install "pd"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/jkawamoto/go-pixeldrain/releases/download/v0.6.3/pd_0.6.3_linux_arm64.tar.gz"
      sha256 "35fe331331699e8d23b8e1b6afcef71c656e973be374152a8880507c10670327"

      def install
        bin.install "pd"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/jkawamoto/go-pixeldrain/releases/download/v0.6.3/pd_0.6.3_linux_amd64.tar.gz"
      sha256 "5d095bab9180d259edb14c1dbf2e3afc38db2ec531f7818c3f5351e09b8efcd6"

      def install
        bin.install "pd"
      end
    end
  end
end

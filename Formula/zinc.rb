# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Zinc < Formula
  desc "Zinc is a search engine that does full text indexing. It is a lightweight
alternative to elasticsearch that requires significantly less resources. It uses
bluge as the underlying indexing library.

It is very simple and easy to operate as opposed to elasticsearch which
requires a couple dozen knobs to understand and tune.

It is a drop-in replacement for elasticsearch if you are just ingesting
data using APIs and searching using kibana (Kibana is not supported with
zinc. Zinc provides its own UI).
"
  homepage "https://github.com/zinclabs/zinc"
  version "0.2.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/zinclabs/zinc/releases/download/v0.2.3/zinc_0.2.3_Darwin_x86_64.tar.gz"
      sha256 "081a325921e59f0fb01766f4030d60bc126dc2e21379bc8c8f008cabc35066b0"

      def install
        bin.install "zinc"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/zinclabs/zinc/releases/download/v0.2.3/zinc_0.2.3_Darwin_arm64.tar.gz"
      sha256 "3846d901dc92d34451c4c6e0be494aa794e4384bc144a55d6f8c63aa9b6e90e4"

      def install
        bin.install "zinc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/zinclabs/zinc/releases/download/v0.2.3/zinc_0.2.3_Linux_x86_64.tar.gz"
      sha256 "9942b8f6df579e9d4baf654e26d50c00b6a67531a6c3c29ffcce2cc192278c52"

      def install
        bin.install "zinc"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/zinclabs/zinc/releases/download/v0.2.3/zinc_0.2.3_Linux_armv6.tar.gz"
      sha256 "0033554ffcd7a91d6613386fbf834d9364e8665aa270804267037cee226c2284"

      def install
        bin.install "zinc"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/zinclabs/zinc/releases/download/v0.2.3/zinc_0.2.3_Linux_arm64.tar.gz"
      sha256 "f1e9553838517f90b2ace94b9fa83db5fdcacbe1af6395d22133a21ad7fe6e0d"

      def install
        bin.install "zinc"
      end
    end
  end
end

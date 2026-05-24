class Starblog < Formula
  desc "StarBlog Publisher CLI - 博客发布命令行工具和 MCP Server"
  homepage "https://github.com/star-blog/starblog-publisher"
  license "Apache-2.0"
  version "2.1.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/star-blog/starblog-publisher/releases/download/v2.1.2/StarBlogCli-macOS-arm64-2.1.2.tar.gz"
      sha256 "fc9f2634170fe2c0b80a28ee7eea31e1ad57ccba08be1083b68d09b1df12f3bf"
    else
      url "https://github.com/star-blog/starblog-publisher/releases/download/v2.1.2/StarBlogCli-macOS-2.1.2.tar.gz"
      sha256 "93fd2790f55d86e18602e54ae5e7b6b4f8bc9a1ca96e9bee6c7dfb6baaf4ecac"
    end
  end

  on_linux do
    url "https://github.com/star-blog/starblog-publisher/releases/download/v2.1.2/StarBlogCli-linux-2.1.2.tar.gz"
    sha256 "4e9f8b301fbfe2d6b2c24cd05c3bc3fd883706582ee0d39775e8aa8c96f64077"
  end

  def install
    bin.install "StarBlogPublisher.Cli" => "starblog"
  end

  test do
    system "#{bin}/starblog", "--help"
  end
end

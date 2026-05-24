class Starblog < Formula
  desc "StarBlog Publisher CLI - 博客发布命令行工具和 MCP Server"
  homepage "https://github.com/star-blog/starblog-publisher"
  license "Apache-2.0"
  version "2.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/star-blog/starblog-publisher/releases/download/v2.1.0/StarBlogCli-macOS-arm64-2.1.0.tar.gz"
      sha256 "cb7e2f8724441f5a65d8c9cb80d0b365e483a298dab04bf7b02ea5c5038bc102"
    else
      url "https://github.com/star-blog/starblog-publisher/releases/download/v2.1.0/StarBlogCli-macOS-2.1.0.tar.gz"
      sha256 "e3d32c7955564d270339c1b3f65b560f6b104a4a7c5eccd3c4b4d9b5a65cba76"
    end
  end

  on_linux do
    url "https://github.com/star-blog/starblog-publisher/releases/download/v2.1.0/StarBlogCli-linux-2.1.0.tar.gz"
    sha256 "e358849934009f4c6ccb422ab4bcf877e0f5402ee36e76a02b8cd5067f00c519"
  end

  def install
    bin.install "StarBlogPublisher.Cli" => "starblog"
  end

  test do
    system "#{bin}/starblog", "--help"
  end
end

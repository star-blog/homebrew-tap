class Starblog < Formula
  desc "StarBlog Publisher CLI - 博客发布命令行工具和 MCP Server"
  homepage "https://github.com/star-blog/starblog-publisher"
  license "Apache-2.0"
  version "2.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/star-blog/starblog-publisher/releases/download/v2.2.0/StarBlogCli-macOS-arm64-2.2.0.tar.gz"
      sha256 "a406150bf1848ca86a59b7c3e776bafd8c3d68223c85a6e963b71384342b3ebe"
    else
      url "https://github.com/star-blog/starblog-publisher/releases/download/v2.2.0/StarBlogCli-macOS-2.2.0.tar.gz"
      sha256 "9cd8cf50acb8d5a62ec78d4ba0016ae716f6db0a85d4d642ffce93349d9fc57e"
    end
  end

  on_linux do
    url "https://github.com/star-blog/starblog-publisher/releases/download/v2.2.0/StarBlogCli-linux-2.2.0.tar.gz"
    sha256 "c6f4441bf5ccfa16716969db6e75503b9d1eb9511d1ddb16900b426f96aa37ee"
  end

  def install
    bin.install "StarBlogPublisher.Cli" => "starblog"
  end

  test do
    system "#{bin}/starblog", "--help"
  end
end

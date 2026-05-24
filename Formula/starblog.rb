class Starblog < Formula
  desc "StarBlog Publisher CLI - 博客发布命令行工具和 MCP Server"
  homepage "https://github.com/star-blog/starblog-publisher"
  license "Apache-2.0"
  version "0.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/star-blog/starblog-publisher/releases/download/v#{version}/StarBlogCli-macOS-arm64-#{version}.tar.gz"
      sha256 ""
    else
      url "https://github.com/star-blog/starblog-publisher/releases/download/v#{version}/StarBlogCli-macOS-#{version}.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    url "https://github.com/star-blog/starblog-publisher/releases/download/v#{version}/StarBlogCli-linux-#{version}.tar.gz"
    sha256 ""
  end

  def install
    bin.install "StarBlogPublisher.Cli" => "starblog"
  end

  test do
    system "#{bin}/starblog", "--help"
  end
end

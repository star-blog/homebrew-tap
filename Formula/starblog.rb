class Starblog < Formula
  desc "StarBlog Publisher CLI - 博客发布命令行工具和 MCP Server"
  homepage "https://github.com/star-blog/starblog-publisher"
  license "Apache-2.0"
  version "2.3.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/star-blog/starblog-publisher/releases/download/v2.3.1/StarBlogCli-macOS-arm64-2.3.1.tar.gz"
      sha256 "29afbc3866ccf20d3f777fbbdc49357fcd1a7193e36c5ded234e319441ee090e"
    else
      url "https://github.com/star-blog/starblog-publisher/releases/download/v2.3.1/StarBlogCli-macOS-2.3.1.tar.gz"
      sha256 "6033844c52c45f747d9dbdd550f7784782a04609e553b71271c824a7b9c74808"
    end
  end

  on_linux do
    url "https://github.com/star-blog/starblog-publisher/releases/download/v2.3.1/StarBlogCli-linux-2.3.1.tar.gz"
    sha256 "a68085efb02054e64acd7799ab372efde61089096bccc7b373448c997bcae9d1"
  end

  def install
    bin.install "StarBlogPublisher.Cli" => "starblog"
  end

  test do
    system "#{bin}/starblog", "--help"
  end
end

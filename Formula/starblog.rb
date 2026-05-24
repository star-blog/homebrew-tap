class Starblog < Formula
  desc "StarBlog Publisher CLI - 博客发布命令行工具和 MCP Server"
  homepage "https://github.com/star-blog/starblog-publisher"
  license "Apache-2.0"
  version "2.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/star-blog/starblog-publisher/releases/download/v2.1.1/StarBlogCli-macOS-arm64-2.1.1.tar.gz"
      sha256 "50f4d32caf618546ce512650c210ced4736c8f17be3851747adda98e6cb2253b"
    else
      url "https://github.com/star-blog/starblog-publisher/releases/download/v2.1.1/StarBlogCli-macOS-2.1.1.tar.gz"
      sha256 "3254eb5b9187019d976dec9c3f365481b27b06f2b0bbb49253fa910998ad34fe"
    end
  end

  on_linux do
    url "https://github.com/star-blog/starblog-publisher/releases/download/v2.1.1/StarBlogCli-linux-2.1.1.tar.gz"
    sha256 "ceda89d6d048bcc102fcb24245bb19f8738a8e06c0b15c65c768d307e58f86f6"
  end

  def install
    bin.install "StarBlogPublisher.Cli" => "starblog"
  end

  test do
    system "#{bin}/starblog", "--help"
  end
end

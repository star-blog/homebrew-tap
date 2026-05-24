class Starblog < Formula
  desc "StarBlog Publisher CLI - 博客发布命令行工具和 MCP Server"
  homepage "https://github.com/star-blog/starblog-publisher"
  license "Apache-2.0"
  version "2.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/star-blog/starblog-publisher/releases/download/v2.0.1/StarBlogCli-macOS-arm64-2.0.1.tar.gz"
      sha256 "5cc4c2c6d8a4f99430725675951d6380f7a8d14a2104593fbcdfa3a159dc73c3"
    else
      url "https://github.com/star-blog/starblog-publisher/releases/download/v2.0.1/StarBlogCli-macOS-2.0.1.tar.gz"
      sha256 "7f3908a76be35a39b2ca4f9c3f5c0d2078a67831c480046e01b77dc3d86870db"
    end
  end

  on_linux do
    url "https://github.com/star-blog/starblog-publisher/releases/download/v2.0.1/StarBlogCli-linux-2.0.1.tar.gz"
    sha256 "1fee73d76f933ef7973b20d841c6022c885efe4eaa514a541ba76c82bd71b5a6"
  end

  def install
    bin.install "StarBlogPublisher.Cli" => "starblog"
  end

  test do
    system "#{bin}/starblog", "--help"
  end
end

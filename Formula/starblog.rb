class Starblog < Formula
  desc "StarBlog Publisher CLI - 博客发布命令行工具和 MCP Server"
  homepage "https://github.com/star-blog/starblog-publisher"
  license "Apache-2.0"
  version "2.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/star-blog/starblog-publisher/releases/download/v2.3.0/StarBlogCli-macOS-arm64-2.3.0.tar.gz"
      sha256 "027f2c4ab6d1c8d63c8ddbd6fe5d5890fb7079aa1365ddbc402d68614d0c1be2"
    else
      url "https://github.com/star-blog/starblog-publisher/releases/download/v2.3.0/StarBlogCli-macOS-2.3.0.tar.gz"
      sha256 "af0ada852d46b2e4ca798dc3e0b11938a513e96c4467803449633105f18d0c6e"
    end
  end

  on_linux do
    url "https://github.com/star-blog/starblog-publisher/releases/download/v2.3.0/StarBlogCli-linux-2.3.0.tar.gz"
    sha256 "07a052f0e70f4a0b93b1ecd67a84099230bca37158fc83518a8fc2730345319d"
  end

  def install
    bin.install "StarBlogPublisher.Cli" => "starblog"
  end

  test do
    system "#{bin}/starblog", "--help"
  end
end

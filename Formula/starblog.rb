class Starblog < Formula
  desc "StarBlog Publisher CLI - 博客发布命令行工具和 MCP Server"
  homepage "https://github.com/star-blog/starblog-publisher"
  license "Apache-2.0"
  version "2.3.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/star-blog/starblog-publisher/releases/download/v2.3.3/StarBlogCli-macOS-arm64-2.3.3.tar.gz"
      sha256 "002b72f4daf1f20d1a1322c89c0589719ce9a1f956c356a37d36aaeee9981b96"
    else
      url "https://github.com/star-blog/starblog-publisher/releases/download/v2.3.3/StarBlogCli-macOS-2.3.3.tar.gz"
      sha256 "1f03bf70763e0b087e0ad5f7cee516f36ee86f9d366168429e1ecb03aa37c607"
    end
  end

  on_linux do
    url "https://github.com/star-blog/starblog-publisher/releases/download/v2.3.3/StarBlogCli-linux-2.3.3.tar.gz"
    sha256 "dc946b19310344041c8cf565baffb136ae7743977a1c3830e2ce04262650aa7a"
  end

  def install
    bin.install "StarBlogPublisher.Cli" => "starblog"
  end

  test do
    system "#{bin}/starblog", "--help"
  end
end

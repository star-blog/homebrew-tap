class Starblog < Formula
  desc "StarBlog Publisher CLI - 博客发布命令行工具和 MCP Server"
  homepage "https://github.com/star-blog/starblog-publisher"
  license "Apache-2.0"
  version "2.0.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/star-blog/starblog-publisher/releases/download/v2.0.2/StarBlogCli-macOS-arm64-2.0.2.tar.gz"
      sha256 "fc38faac7379771a4bbadaf14f2bb91b5ecd4aa92002271fa1978ded64d9ece9"
    else
      url "https://github.com/star-blog/starblog-publisher/releases/download/v2.0.2/StarBlogCli-macOS-2.0.2.tar.gz"
      sha256 "08a2d16c8eb1f37ac043f12332879bfe496473181300f25a0a7df5dc6fa5fc2b"
    end
  end

  on_linux do
    url "https://github.com/star-blog/starblog-publisher/releases/download/v2.0.2/StarBlogCli-linux-2.0.2.tar.gz"
    sha256 "53d9211b4156a5ac553422c5b55df0e9d55504234ae707438b0a60c244cfb6eb"
  end

  def install
    bin.install "StarBlogPublisher.Cli" => "starblog"
  end

  test do
    system "#{bin}/starblog", "--help"
  end
end

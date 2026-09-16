class Starblog < Formula
  desc "StarBlog Publisher CLI - 博客发布命令行工具和 MCP Server"
  homepage "https://github.com/star-blog/starblog-publisher"
  license "Apache-2.0"
  version "2.3.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/star-blog/starblog-publisher/releases/download/v2.3.4/StarBlogCli-macOS-arm64-2.3.4.tar.gz"
      sha256 "afae6d986caa994b81e8639956a455cb45a14f906830302c3b6310386a5c7d50"
    else
      url "https://github.com/star-blog/starblog-publisher/releases/download/v2.3.4/StarBlogCli-macOS-2.3.4.tar.gz"
      sha256 "f1443170ee22b9539223d7841180eb557a30876bbbe319a511bed6732a3e3818"
    end
  end

  on_linux do
    url "https://github.com/star-blog/starblog-publisher/releases/download/v2.3.4/StarBlogCli-linux-2.3.4.tar.gz"
    sha256 "658790dd3b4ed88df530b39117c37a256b2cae96a11cf5e38eb49b485fe2023c"
  end

  def install
    bin.install "StarBlogPublisher.Cli" => "starblog"
  end

  test do
    system "#{bin}/starblog", "--help"
  end
end

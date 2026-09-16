class Starblog < Formula
  desc "StarBlog Publisher CLI - 博客发布命令行工具和 MCP Server"
  homepage "https://github.com/star-blog/starblog-publisher"
  license "Apache-2.0"
  version "2.3.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/star-blog/starblog-publisher/releases/download/v2.3.2/StarBlogCli-macOS-arm64-2.3.2.tar.gz"
      sha256 "0a3bd9999b2dc71e100aabed6892c909192d9c1653f16d5ef19cbfc14e3ad4e5"
    else
      url "https://github.com/star-blog/starblog-publisher/releases/download/v2.3.2/StarBlogCli-macOS-2.3.2.tar.gz"
      sha256 "2fbdfc423be217a249a43f0692610e7ee7e5c3a410eea0edbb778c39dd625a37"
    end
  end

  on_linux do
    url "https://github.com/star-blog/starblog-publisher/releases/download/v2.3.2/StarBlogCli-linux-2.3.2.tar.gz"
    sha256 "860a49eef60252c23b1128dd8836fbe41949434624ca4727344a26d46d683c82"
  end

  def install
    bin.install "StarBlogPublisher.Cli" => "starblog"
  end

  test do
    system "#{bin}/starblog", "--help"
  end
end

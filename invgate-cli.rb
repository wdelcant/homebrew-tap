class InvgateCli < Formula
  desc "Runtime OpenAPI/Swagger CLI — works with any Swagger/OpenAPI spec"
  homepage "https://github.com/wdelcant/invgate-cli"
  license "MIT"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wdelcant/invgate-cli/releases/download/v0.1.1/invgate-cli_0.1.1_macOS_arm64.tar.gz"
      sha256 "SKIP"
    else
      url "https://github.com/wdelcant/invgate-cli/releases/download/v0.1.1/invgate-cli_0.1.1_macOS_amd64.tar.gz"
      sha256 "SKIP"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/wdelcant/invgate-cli/releases/download/v0.1.1/invgate-cli_0.1.1_Linux_arm64.tar.gz"
      sha256 "SKIP"
    else
      url "https://github.com/wdelcant/invgate-cli/releases/download/v0.1.1/invgate-cli_0.1.1_Linux_amd64.tar.gz"
      sha256 "SKIP"
    end
  end

  def install
    bin.install "invgate-cli"
  end

  test do
    system "#{bin}/invgate-cli", "--version"
  end
end

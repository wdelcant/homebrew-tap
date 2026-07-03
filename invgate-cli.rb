class InvgateCli < Formula
  desc "Runtime OpenAPI/Swagger CLI — works with any Swagger/OpenAPI spec"
  homepage "https://github.com/wdelcant/invgate-cli"
  license "MIT"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wdelcant/invgate-cli/releases/download/v0.1.0/invgate-cli_0.1.0_macOS_arm64.tar.gz"
      sha256 "1b9203d29b0b74ceaa174d94ddbdab13fe38c17e0c1a662b751d856688e272ca"
    else
      url "https://github.com/wdelcant/invgate-cli/releases/download/v0.1.0/invgate-cli_0.1.0_macOS_amd64.tar.gz"
      sha256 "68e4995788eff0234a8eaf5a583a77a8a74537f9faec6b221067de1b470c27d1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/wdelcant/invgate-cli/releases/download/v0.1.0/invgate-cli_0.1.0_Linux_arm64.tar.gz"
      sha256 "bd990a907a6c66c29c7920f0c037c707886133d97b17aed097325cad117faf91"
    else
      url "https://github.com/wdelcant/invgate-cli/releases/download/v0.1.0/invgate-cli_0.1.0_Linux_amd64.tar.gz"
      sha256 "25732c41212a30dc6dcb52ef8bc7302ff77cd366d0dc11f04be4045a9417d34b"
    end
  end

  def install
    bin.install "invgate-cli"
  end

  test do
    system "#{bin}/invgate-cli", "--version"
  end
end

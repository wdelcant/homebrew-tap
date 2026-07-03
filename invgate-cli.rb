class InvgateCli < Formula
  desc "Runtime OpenAPI/Swagger CLI — works with any Swagger/OpenAPI spec"
  homepage "https://github.com/wdelcant/invgate-cli"
  license "MIT"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wdelcant/invgate-cli/releases/download/v0.1.1/invgate-cli_0.1.1_macOS_arm64.tar.gz"
      sha256 "5e7de179d7016a5034350fb78ea9532b086c9255f14a8ff7fc1b8664147439ce"
    else
      url "https://github.com/wdelcant/invgate-cli/releases/download/v0.1.1/invgate-cli_0.1.1_macOS_amd64.tar.gz"
      sha256 "acda3bc2b6a2c6a7a9b9218829b42ac3af6e3d9ef2a030868972c76650089896"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/wdelcant/invgate-cli/releases/download/v0.1.1/invgate-cli_0.1.1_Linux_arm64.tar.gz"
      sha256 "34aba54b87d74f9c46bd1f307b4a4412f96c928f17364874d3249f7398c83304"
    else
      url "https://github.com/wdelcant/invgate-cli/releases/download/v0.1.1/invgate-cli_0.1.1_Linux_amd64.tar.gz"
      sha256 "c54d77fbcf4dd4839da9fb99a70e2a0512eaafd620e27d683a823b2742edd93d"
    end
  end

  def install
    bin.install "invgate-cli"
  end

  test do
    system "#{bin}/invgate-cli", "--version"
  end
end

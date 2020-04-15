class Relay < Formula
  version ""
  homepage "https://relay.sh/"
  url "https://github.com/puppetlabs/relay/releases/download/#{version}/nebula-#{version}-darwin-amd64", 
    :using => :nounzip
  sha256 ""

  def install
    bin.install "nebula-#{version}-darwin-amd64" => "relay"
  end

  test do
    system "#{bin}/relay", "help"
  end

end

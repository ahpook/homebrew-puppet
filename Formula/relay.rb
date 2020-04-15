class Relay < Formula
  version "v3.4.0"
  homepage "https://relay.sh/"
  url "https://github.com/puppetlabs/relay/releases/download/#{version}/nebula-#{version}-darwin-amd64", 
    :using => :nounzip
  sha256 "thisisiafakesha"

  def install
    bin.install "nebula-#{version}-darwin-amd64" => "relay"
  end

  test do
    system "#{bin}/relay", "help"
  end

end

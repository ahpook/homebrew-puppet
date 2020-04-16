class Relay < Formula
  version "v4.0.1"
  homepage "https://relay.sh/"
  url "https://github.com/puppetlabs/relay/releases/download/#{version}/nebula-#{version}-darwin-amd64", 
    :using => :nounzip
  sha256 "01ba4719c80b6fe911b091a7c05124b64eeece964e09c058ef8f9805daca546b"

  def install
    bin.install "nebula-#{version}-darwin-amd64" => "relay"
  end

  test do
    system "#{bin}/relay", "help"
  end

end

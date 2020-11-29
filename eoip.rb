class Eoip < Formula
  desc "Userspace EoIP implementation"
  homepage "https://github.com/Nat-Lab/eoip"

  head do
    url "https://github.com/Nat-Lab/eoip.git"
  end

  def install
    system "make"
    mkdir bin.to_s
    cp "eoip", "#{bin}/eoip"
  end

  test do
    system "#{bin}/eoip"
  end
end

class Fnt < Formula
   desc "APT for fonts, the missing font manager for macOS/linux"
   homepage "https://github.com/alexmyczko/fnt/"
   url "https://github.com/alexmyczko/fnt/archive/refs/tags/1.4.tar.gz"
   sha256 "af1977a15f79557c5017d19be406460ca2b65a71468ccd37117a1aadba662383"
   license "MIT"

   depends_on "chafa"
   depends_on "lcdf-typetools"

   def install
     bin.install "fnt"
     man.install "fnt.1"
   end

   test do
     system "#{bin}/fnt", "update"
     system "#{bin}/fnt", "install agave"
     assert_match "Installing fonts-fonts-agave", shell_output("#{bin}/fnt install agave")
   end
 end
 

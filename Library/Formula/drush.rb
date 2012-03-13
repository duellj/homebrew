require 'formula'

class Drush < Formula
  homepage 'http://drupal.org/project/drush'
  url 'http://ftp.drupal.org/files/projects/drush-7.x-5.0-rc4.tar.gz'
  md5 'f1ecf4a0ae20b8dd28dd3e78033c5c6f'
  head 'http://git.drupal.org/project/drush.git', :using => :git

  def install
    libexec.install Dir['*']
    bin.install_symlink libexec+'drush'
  end
end

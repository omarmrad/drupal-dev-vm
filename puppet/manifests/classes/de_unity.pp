class de_unity {
  include de_browsers

  exec { 'desktop environment':
    command => 'sudo apt-get install --no-install-recommends --yes --fix-missing ubuntu-desktop lightdm &&
echo "ubuntu-desktop-installed" > /home/vagrant/flag-ubuntu-desktop.txt',
    timeout => 0,
    unless => 'ls /home/vagrant/flag-ubuntu-desktop.txt',
    path      => "/usr/bin:/usr/sbin:/bin:/usr/local/bin:/opt/local/bin",
    logoutput => true,
  }
}

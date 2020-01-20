# Ikke's personal Vagrant files

This repos exists for me to sync my Vagrant files across the different
linux boxes.

On CentOS 8 I had to do the following steps to prepare for Vagrant (installing bunch of dependencies for vagrant-libvirt plugin):

1. dnf install https://releases.hashicorp.com/vagrant/2.2.6/vagrant_2.2.6_x86_64.rpm
2. dnf groupinstall 'Development Tools'
3. dnf install libvirt-devel libxslt-devel libxml2-devel libvirt-devel libguestfs-tools-c
3. vagrant plugin install vagrant-libvirt
4. cd $HOME; git clone https://github.com/ikke-t/vagrant.git

Naturally, check for the latest vagrant version at the time you are doing this.

If you find something useful, feel free to re-use.

BR,

Ilkka Tengvall

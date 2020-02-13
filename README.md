# Ikke's personal Vagrant files

This repos exists for me to sync my Vagrant files across the different
linux boxes.

On CentOS 8 I had to do the following steps to prepare for Vagrant (installing bunch of dependencies for vagrant-libvirt plugin):

```
dnf install https://releases.hashicorp.com/vagrant/2.2.7/vagrant_2.2.7_x86_64.rpm
dnf groupinstall 'Development Tools' 'Virtualization Host'
dnf install libvirt-devel libxslt-devel libxml2-devel libvirt-devel libguestfs-tools-c
CONFIGURE_ARGS='with-ldflags=-L/opt/vagrant/embedded/lib with-libvirt-include=/usr/include/libvirt with-libvirt-lib=/usr/lib' \ 
  GEM_HOME=~/.vagrant.d/gems GEM_PATH=$GEM_HOME:/opt/vagrant/embedded/gems  \
  PATH=/opt/vagrant/embedded/bin:$PATH \
  vagrant plugin install vagrant-libvirt
cd $HOME; git clone https://github.com/ikke-t/vagrant.git
```

Naturally, check for the latest vagrant version at the time you are doing this.

If you find something useful, feel free to re-use.

BR,

Ilkka Tengvall

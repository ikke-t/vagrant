# boxes at: http://kashyyk.usersys.redhat.com/
subscription-manager register
# --username ''
# --password ''
subscription-manager attach --pool 8a85f98c60c2c2b40160c32445b41b29
#subscription-manager repos --disable=*
subscription-manager repos --enable=rhel-7-server-rpms \
        --enable=rhel-7-server-optional-rpms \
        --enable=rhel-7-server-rh-common-rpms \
        --enable=rhel-7-server-extras-rpms
#yum install -y yum-plugin-priorities wget yum-utils vim
sudo yum update -y
#systemctl stop NetworkManager
#systemctl disable NetworkManager

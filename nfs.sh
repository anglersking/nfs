dpkg -s nfs-kernel-serve || true
sudo apt-get install -y nfs-kernel-server

sudo mkdir -p /opt/4412/rootfs
sudo chmod -R 777  /opt/4412
sudo service nfs-kernel-server restart

sudo mount -t nfs localhost:/opt/4412/rootfs /mnt
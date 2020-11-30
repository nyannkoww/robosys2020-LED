make
sudo insmod myled.ko
sudo ichmod /dev/myled0
sudo mknod /dev/myled c 507 0
sudo chmod 666 /dev/myled0

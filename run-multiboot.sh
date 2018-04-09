IMAGE=$1
CMDLIN="earlyprintk=serial console=ttyS0 root=/dev/sda1"

#/Users/wkozaczuk/projects/hyperkit/build/hyperkit -x -A -m 512M -s 0:0,hostbridge \
/Users/wkozaczuk/projects/hyperkit/build/hyperkit -A -m 512M -s 0:0,hostbridge \
  -s 31,lpc \
  -l com1,stdio \
  -s 4,virtio-blk,test.img \
  -f multiboot,$IMAGE

# -s 2:0,virtio-net \
# -s 4,virtio-blk,empty.img \

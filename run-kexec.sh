KERNEL=$1
INITRD=$2
CMDLIN="earlyprintk=serial console=ttyS0 root=/dev/sda1"

/Users/wkozaczuk/projects/hyperkit/build/hyperkit -A -m 512M -s 0:0,hostbridge \
  -s 31,lpc \
  -l com1,stdio \
  -f kexec,$KERNEL,$INITRD,$CMDLIN

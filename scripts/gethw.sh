
#!/bin/bash

nropc=$1;
echo '----------------------------------------------------------------' > $nropc-system.hard;
echo ' # uname -a' >> $nropc-system.hard;
echo '----------------------------------------------------------------' >> $nropc-system.hard;
uname -a >> $nropc-system.hard;

echo '----------------------------------------------------------------' >> $nropc-system.hard;
echo ' # cat /proc/cpuinfo' >> $nropc-system.hard;
echo '----------------------------------------------------------------' >> $nropc-system.hard;
sudo cat /proc/cpuinfo >> $nropc-system.hard;


echo '----------------------------------------------------------------' >> $nropc-system.hard;
echo ' # lscpu' >> $nropc-system.hard;
echo '----------------------------------------------------------------' >> $nropc-system.hard;
lscpu >> $nropc-system.hard;

echo '----------------------------------------------------------------' >> $nropc-system.hard;
echo ' # lshw' >> $nropc-system.hard;
echo '----------------------------------------------------------------' >> $nropc-system.hard;
sudo lshw >> $nropc-system.hard;

echo '----------------------------------------------------------------' >> $nropc-system.hard;
echo ' Genera archivo html----' >> $nropc-system.hard;
echo '----------------------------------------------------------------' >> $nropc-system.hard;
sudo lshw -html > $nropc.computer.html

echo '----------------------------------------------------------------' >> $nropc-system.hard;
echo ' # hwinfo' >> $nropc-system.hard;
echo '----------------------------------------------------------------' >> $nropc-system.hard;
sudo hwinfo >> $nropc-system.hard;

echo '----------------------------------------------------------------' >> $nropc-system.hard;
echo ' # lspci' >> $nropc-system.hard;
echo '----------------------------------------------------------------' >> $nropc-system.hard;
sudo lspci >> $nropc-system.hard;

echo '----------------------------------------------------------------' >> $nropc-system.hard;
echo ' # lsscsi' >> $nropc-system.hard;
echo '----------------------------------------------------------------' >> $nropc-system.hard;
sudo lsscsi >> $nropc-system.hard;

echo '----------------------------------------------------------------' >> $nropc-system.hard;
echo ' # lsblk' >> $nropc-system.hard;
echo '----------------------------------------------------------------' >> $nropc-system.hard;
sudo lsblk >> $nropc-system.hard;







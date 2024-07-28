#ethercat upload --position 4 --type int16 0x603f 0x00 #查看故障
#ethercat upload --position 5 --type int16 0x603f 0x00 #查看故障
#ethercat upload --position 6 --type int16 0x603f 0x00 #查看故障
#ethercat upload --position 7 --type int16 0x603f 0x00 #查看故障
#ethercat upload --position 8 --type int16 0x603f 0x00 #查看故障
#ethercat upload --position 9 --type int16 0x603f 0x00 #查看故障
#ethercat upload --position 10 --type int16 0x603f 0x00 #查看故障
#ethercat upload --position 11 --type int16 0x603f 0x00 #查看故障
#ethercat upload --position 12 --type int16 0x603f 0x00 #查看故障
#ethercat upload --position 13 --type int16 0x603f 0x00 #查看故障
#ethercat upload --position 14 --type int16 0x603f 0x00 #查看故障
#ethercat upload --position 15 --type int16 0x603f 0x00 #查看故障
#
#
#ethercat download -p 4 -t uint16 0x6040 0 128 
#ethercat download -p 5 -t uint16 0x6040 0 128 
#ethercat download -p 6 -t uint16 0x6040 0 128 
#ethercat download -p 7 -t uint16 0x6040 0 128 
#ethercat download -p 8 -t uint16 0x6040 0 128 
#ethercat download -p 9 -t uint16 0x6040 0 128 
#ethercat download -p 10 -t uint16 0x6040 0 128 
#ethercat download -p 11 -t uint16 0x6040 0 128 
#ethercat download -p 12 -t uint16 0x6040 0 128 
#ethercat download -p 13 -t uint16 0x6040 0 128 
#ethercat download -p 14 -t uint16 0x6040 0 128 
#ethercat download -p 15 -t uint16 0x6040 0 128

ethercat download -p 4 -t uint16 0x6040 0 128 
ethercat download -p 4 -t uint16 0x6040 0 16384 
sleep 10
#Script generated on: 20:20:38
 if [ $# -eq 0 ]
  then
    echo "[*] Please add vm name!"
    echo "[*] Available vms:"
    VBoxManage list vms | awk -F'"' {' print $2 '} | sed 's/"//g'
    exit
fi 
# VBoxManage setextradata "$1" VBoxInternal/Devices/pcbios/0/Config/DmiBIOSFirmwareMajor	** No value to retrieve **
# VBoxManage setextradata "$1" VBoxInternal/Devices/pcbios/0/Config/DmiBIOSFirmwareMinor	** No value to retrieve **
VBoxManage setextradata "$1" VBoxInternal/Devices/pcbios/0/Config/DmiBIOSReleaseDate	'04/09/2009'
# VBoxManage setextradata "$1" VBoxInternal/Devices/pcbios/0/Config/DmiBIOSReleaseMajor	** No value to retrieve **
# VBoxManage setextradata "$1" VBoxInternal/Devices/pcbios/0/Config/DmiBIOSReleaseMinor	** No value to retrieve **
VBoxManage setextradata "$1" VBoxInternal/Devices/pcbios/0/Config/DmiBIOSVendor	'Award Software International, Inc.'
VBoxManage setextradata "$1" VBoxInternal/Devices/pcbios/0/Config/DmiBIOSVersion	'F3'
# VBoxManage setextradata "$1" VBoxInternal/Devices/pcbios/0/Config/DmiBoardAssetTag	** No value to retrieve **
# VBoxManage setextradata "$1" VBoxInternal/Devices/pcbios/0/Config/DmiBoardBoardType	** No value to retrieve **
# VBoxManage setextradata "$1" VBoxInternal/Devices/pcbios/0/Config/DmiBoardLocInChass	** No value to retrieve **
VBoxManage setextradata "$1" VBoxInternal/Devices/pcbios/0/Config/DmiBoardProduct	'string:G41M-ES2L'
VBoxManage setextradata "$1" VBoxInternal/Devices/pcbios/0/Config/DmiBoardSerial	'2'
VBoxManage setextradata "$1" VBoxInternal/Devices/pcbios/0/Config/DmiBoardVendor	'Gigabyte Technology Co., Ltd.'
VBoxManage setextradata "$1" VBoxInternal/Devices/pcbios/0/Config/DmiBoardVersion	'x.x'
VBoxManage setextradata "$1" VBoxInternal/Devices/pcbios/0/Config/DmiChassisAssetTag	' '
VBoxManage setextradata "$1" VBoxInternal/Devices/pcbios/0/Config/DmiChassisSerial	'string:2'
VBoxManage setextradata "$1" VBoxInternal/Devices/pcbios/0/Config/DmiChassisType	'3'
VBoxManage setextradata "$1" VBoxInternal/Devices/pcbios/0/Config/DmiChassisVendor	'Gigabyte Technology Co., Ltd.'
VBoxManage setextradata "$1" VBoxInternal/Devices/pcbios/0/Config/DmiChassisVersion	' '
# VBoxManage setextradata "$1" VBoxInternal/Devices/pcbios/0/Config/DmiOEMVBoxRev	** No value to retrieve **
# VBoxManage setextradata "$1" VBoxInternal/Devices/pcbios/0/Config/DmiOEMVBoxVer	** No value to retrieve **
VBoxManage setextradata "$1" VBoxInternal/Devices/pcbios/0/Config/DmiProcManufacturer	'Intel'
VBoxManage setextradata "$1" VBoxInternal/Devices/pcbios/0/Config/DmiProcVersion	'Pentium(R) Dual-Core CPU E6'
VBoxManage setextradata "$1" VBoxInternal/Devices/pcbios/0/Config/DmiSystemFamily	' '
VBoxManage setextradata "$1" VBoxInternal/Devices/pcbios/0/Config/DmiSystemProduct	'G41M-ES2L'
VBoxManage setextradata "$1" VBoxInternal/Devices/pcbios/0/Config/DmiSystemSKU	' '
VBoxManage setextradata "$1" VBoxInternal/Devices/pcbios/0/Config/DmiSystemSerial	'D'
VBoxManage setextradata "$1" VBoxInternal/Devices/pcbios/0/Config/DmiSystemUuid	'64D90A44-BAD1-4740-AC31-22076F352750'
VBoxManage setextradata "$1" VBoxInternal/Devices/pcbios/0/Config/DmiSystemVendor	'Gigabyte Technology Co., Ltd.'
VBoxManage setextradata "$1" VBoxInternal/Devices/pcbios/0/Config/DmiSystemVersion	'string: '
controller=`VBoxManage showvminfo "$1" --machinereadable | grep SATA`
if [[ -z "$controller" ]]; then
VBoxManage setextradata "$1" VBoxInternal/Devices/piix3ide/0/Config/PrimaryMaster/ModelNumber	'SAMSUNG HD502IJ'
VBoxManage setextradata "$1" VBoxInternal/Devices/piix3ide/0/Config/PrimaryMaster/SerialNumber	'8AA7E14CBB2C49'
VBoxManage setextradata "$1" VBoxInternal/Devices/piix3ide/0/Config/PrimaryMaster/FirmwareRevision	'1AA01118'
else
VBoxManage setextradata "$1" VBoxInternal/Devices/ahci/0/Config/Port0/ModelNumber	'SAMSUNG HD502IJ'
VBoxManage setextradata "$1" VBoxInternal/Devices/ahci/0/Config/Port0/SerialNumber	'8AA7E14CBB2C49'
VBoxManage setextradata "$1" VBoxInternal/Devices/ahci/0/Config/Port0/FirmwareRevision	'1AA01118'
fi
if [[ -z "$controller" ]]; then
VBoxManage setextradata "$1" VBoxInternal/Devices/piix3ide/0/Config/PrimarySlave/ATAPIVendorId	'SONY'
VBoxManage setextradata "$1" VBoxInternal/Devices/piix3ide/0/Config/PrimarySlave/ATAPIRevision	'KY01'
VBoxManage setextradata "$1" VBoxInternal/Devices/piix3ide/0/Config/PrimarySlave/ATAPIProductId	'DVD RW'
VBoxManage setextradata "$1" VBoxInternal/Devices/piix3ide/0/Config/PrimarySlave/ATAPISerialNumber	'AC398438CA144A309C6D3E62D158BB0F'
else
VBoxManage setextradata "$1" VBoxInternal/Devices/ahci/0/Config/Port1/ATAPIVendorId	'SONY'
VBoxManage setextradata "$1" VBoxInternal/Devices/ahci/0/Config/Port1/ATAPIRevision	'KY01'
VBoxManage setextradata "$1" VBoxInternal/Devices/ahci/0/Config/Port1/ATAPIProductId	'DVD RW'
VBoxManage setextradata "$1" VBoxInternal/Devices/ahci/0/Config/Port1/ATAPISerialNumber	'AC398438CA144A309C6D3E62D158BB0F'
fi
VBoxManage setextradata "$1" "VBoxInternal/Devices/acpi/0/Config/CustomTable"	/home/gongora/foo/antivmdetection/DSDT_G41M-ES2L.bin
VBoxManage setextradata "$1" VBoxInternal/Devices/acpi/0/Config/AcpiOemId	'GBT'
VBoxManage setextradata "$1" VBoxInternal/Devices/acpi/0/Config/AcpiCreatorId	'string:MSFT'
VBoxManage setextradata "$1" VBoxInternal/Devices/acpi/0/Config/AcpiCreatorRev	'0100000C'
VBoxManage modifyvm "$1" --macaddress1	00241d55a347
VBoxManage setextradata "$1" VBoxInternal/CPUM/HostCPUID/80000002/eax  0x746e6550	
VBoxManage setextradata "$1" VBoxInternal/CPUM/HostCPUID/80000002/ebx  0x286d7569	
VBoxManage setextradata "$1" VBoxInternal/CPUM/HostCPUID/80000002/ecx  0x44202952	
VBoxManage setextradata "$1" VBoxInternal/CPUM/HostCPUID/80000002/edx  0x2d6c6175	
VBoxManage setextradata "$1" VBoxInternal/CPUM/HostCPUID/80000003/eax  0x65726f43	
VBoxManage setextradata "$1" VBoxInternal/CPUM/HostCPUID/80000003/ebx  0x50432020	
VBoxManage setextradata "$1" VBoxInternal/CPUM/HostCPUID/80000003/ecx  0x20202055	
VBoxManage setextradata "$1" VBoxInternal/CPUM/HostCPUID/80000003/edx  0x45202020	
VBoxManage setextradata "$1" VBoxInternal/CPUM/HostCPUID/80000004/eax  0x30303536	
VBoxManage setextradata "$1" VBoxInternal/CPUM/HostCPUID/80000004/ebx  0x20402020	
VBoxManage setextradata "$1" VBoxInternal/CPUM/HostCPUID/80000004/ecx  0x33392e32	
VBoxManage setextradata "$1" VBoxInternal/CPUM/HostCPUID/80000004/edx  0x007a4847	
cpu_count=$(VBoxManage showvminfo --machinereadable "$1" | grep cpus=[0-9]* | sed "s/cpus=//")	
if [ $cpu_count -lt "2" ]; then echo "[WARNING] CPU count is less than 2. Consider adding more!"; fi	
memory_size=$(VBoxManage showvminfo --machinereadable "$1" | grep memory=[0-9]* | sed "s/memory=//")	
if [ $memory_size -lt "2048" ]; then echo "[WARNING] Memory size is 2GB or less. Consider adding more memory!"; fi	
hostint_ip=$(VBoxManage list hostonlyifs | grep IPAddress: | awk {' print $2 '} | grep '192.168.56.1')	
if [ "$hostint_ip" == '192.168.56.1' ]; then echo "[WARNING] You are using the default IP/IP-range. Consider changing the IP and the range used!"; fi	
virtualization_type=$(VBoxManage showvminfo --machinereadable "$1" | grep -i ^paravirtprovider | cut -d "=" -f2 | sed 's/"//g')	
if [ ! $virtualization_type == 'none' ]; then echo "[WARNING] Please switch paravirtualization interface to: None!"; fi	
audio=$(VBoxManage showvminfo --machinereadable "$1" | grep audio | cut -d "=" -f2 | sed 's/"//g' | head -1)	
if [ $audio == 'none' ]; then echo "[WARNING] Please consider adding an audio device!"; fi	
devman_arc=$(VBoxManage showvminfo --machinereadable "$1" | grep ostype | cut -d "=" -f2 | grep -o "(.*)" | sed 's/(//;s/)//;s/-bit//')	
arc_devman=$(file -b DevManView.exe | grep -o '80386\|64' | sed 's/80386/32/')	
if [ $devman_arc != $arc_devman ]; then echo "[WARNING] Please use the DevManView version that coresponds to the guest architecture: $devman_arc "; fi	

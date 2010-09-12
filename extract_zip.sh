# !/bin/bash

if [ "$1" != "" ]; then
loc=`dirname $0`
echo Zip file = $1
echo Source location = $loc

unzip -o -j $1 system/lib/egl/libGLES_qcom.so -d $loc

unzip -o $1 system/lib/libdss.so system/lib/libgsdi_exp.so system/lib/libmmgsdilib.so system/lib/libqmi.so system/lib/liboncrpc.so \
system/lib/libril-qc-1.so system/lib/libwmsts.so system/lib/libwms.so system/lib/libdiag.so system/lib/libqueue.so system/lib/libgstk_exp.so \
system/lib/hw/sensors.default.so system/lib/libnv.so system/lib/libdsm.so system/lib/libril-qcril-hook-oem.so system/lib/libcm.so system/wifi/iwconfig \
system/wifi/device.bin system/wifi/caldata.bin.ar6002 system/wifi/loadART.sh system/wifi/ar6000.ko system/wifi/athwlan.bin.z77 \
system/wifi/athtcmd_ram.bin system/wifi/caldata.bin.ar6102 system/wifi/artagent system/wifi/loadecho.sh system/wifi/data.patch.hw2_0.bin.ar6002 \
system/wifi/udp_server system/wifi/data.patch.hw2_0.bin.ar6102 system/wifi/iwlist system/bin/akmd2 system/bin/hci_qcomm_init system/bin/qmuxd -d $loc/include/
cp -R $loc/include/system/* $loc/include/
rm -r $loc/include/system/

else
echo You must enter a zip file name.
fi

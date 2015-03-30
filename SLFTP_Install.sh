#!/bin/bash
#SLFTP - FPC Install Script 0.1
FPCVERSION="2.4.2"



function downloadfpc {
wget $FPCURL/fp-utils_$FPCVERSION-0_$FPCFILEARCH.deb
wget $FPCURL/fp-units-rtl_$FPCVERSION-0_$FPCFILEARCH.deb
wget $FPCURL/fp-units-net_$FPCVERSION-0_$FPCFILEARCH.deb
#wget $FPCURL/fp-units-multimedia_$FPCVERSION-0_$FPCFILEARCH.deb
wget $FPCURL/fp-units-misc_$FPCVERSION-0_$FPCFILEARCH.deb
wget $FPCURL/fp-units-math_$FPCVERSION-0_$FPCFILEARCH.deb
wget $FPCURL/fp-units-i386_$FPCVERSION-0_$FPCFILEARCH.deb
wget $FPCURL/fp-units-gfx_$FPCVERSION-0_$FPCFILEARCH.deb
wget $FPCURL/fp-units-fv_$FPCVERSION-0_$FPCFILEARCH.deb
wget $FPCURL/fp-units-fcl_$FPCVERSION-0_$FPCFILEARCH.deb
wget $FPCURL/fp-units-db_$FPCVERSION-0_$FPCFILEARCH.deb
wget $FPCURL/fp-units-base_$FPCVERSION-0_$FPCFILEARCH.deb
wget $FPCURL/fp-docs_$FPCVERSION-0_all.deb
wget $FPCURL/fpc-source_$FPCVERSION-0_all.deb
wget $FPCURL/fp-compiler_$FPCVERSION-0_$FPCFILEARCH.deb
#wget $FPCURL/fp-ide_$FPCVERSION-0_$FPCFILEARCH.deb
#wget $FPCURL/fp-units-gtk2_$FPCVERSION-0_$FPCFILEARCH.deb
#wget $FPCURL/fp-units-gtk_$FPCVERSION-0_$FPCFILEARCH.deb
#wget $FPCURL/fp-units-gnome1_$FPCVERSION-0_$FPCFILEARCH.deb
#wget $FPCURL/fpc_$FPCVERSION-0_i386.changes
}


function installfpc {
dpkg -i fp-units-rtl_$FPCVERSION-0_$FPCFILEARCH.deb
dpkg -i fp-compiler_$FPCVERSION-0_$FPCFILEARCH.deb
dpkg -i fp-docs_$FPCVERSION-0_all.deb
#dpkg -i fp-ide_$FPCVERSION-0_$FPCFILEARCH.deb
dpkg -i fp-units-base_$FPCVERSION-0_$FPCFILEARCH.deb
dpkg -i fp-units-fcl_$FPCVERSION-0_$FPCFILEARCH.deb
dpkg -i fp-units-db_$FPCVERSION-0_$FPCFILEARCH.deb
dpkg -i fp-units-fv_$FPCVERSION-0_$FPCFILEARCH.deb
dpkg -i fp-units-gfx_$FPCVERSION-0_$FPCFILEARCH.deb
dpkg -i fp-units-misc_$FPCVERSION-0_$FPCFILEARCH.deb
dpkg -i fp-units-net_$FPCVERSION-0_$FPCFILEARCH.deb
dpkg -i fpc-source_$FPCVERSION-0_all.deb
dpkg -i fp-utils_$FPCVERSION-0_$FPCFILEARCH.deb
#dpkg -i fp-units-gtk_$FPCVERSION-0_$FPCFILEARCH.deb
#dpkg -i fp-units-gtk2_$FPCVERSION-0_$FPCFILEARCH.deb
dpkg -i fp-units-math_$FPCVERSION-0_$FPCFILEARCH.deb
#dpkg -i fp-units-multimedia_$FPCVERSION-0_$FPCFILEARCH.deb
#dpkg -i fp-units-gnome1_$FPCVERSION-0_$FPCFILEARCH.deb
#dpkg -i fpc_$FPCVERSION-0_all.deb
}


case "$1" in
x86)
FPCARCH="i386-linux"
FPCFILEARCH="i386"
FPCURL="ftp://ftp.freepascal.org/pub/fpc/dist/$FPCVERSION/$FPCARCH/deb"
mkdir -p /usr/src/fpc-$FPCVERSION/ && cd /usr/src/fpc-$FPCVERSION/
downloadfpc
installfpc
;;


x64)
FPCARCH="x86_64-linux"
FPCFILEARCH="amd64"
FPCURL="ftp://ftp.freepascal.org/pub/fpc/dist/$FPCVERSION/$FPCARCH/deb"

mkdir -p /usr/src/fpc-$FPCVERSION/ && cd /usr/src/fpc-$FPCVERSION/
downloadfpc
installfpc
;;


*)
echo -e "\033[1;34mUsage: $0 {x86|x64} \033[0m"
exit 1
;;

esac

exit 0


echo "done install pack autotrade my bro :) "

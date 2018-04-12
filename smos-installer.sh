#!/bin/bash
# easymine-zero-installer.sh
# Installs Optiminer for Zero and MNX on Ubuntu 16.04 SMOS
# ATTENTION: THIS FILE WAS MADE BY EASYMINE.ROCKS TO SUPPORT ZERO
# EASYMINE.ROCKS DOES NOT WARRENT THE WORKING OF THIS SOFTWARE

echo "\nTHE USER INDEMNIFIES EASYMINE.ROCKS FOR USE OF THIS SCRIPT\n"


if [ "$(whoami)" != "root" ]; then

  echo "Script must be run as user: root"
  echo "Please use SUDO"

  exit -1

fi

while true; do

  printf "\nDo you agree to the there is no warrenty with this script? (Y/n)"

   read REPLY

   if [ ${REPLY} == "Y" ]; then

      break

   else

      if [ ${REPLY} == "n" ]; then

        exit

      fi

   fi

done

while true; do

 if [ -d optiminer-zcash ]; then

   printf "\noptiminer-zcash folder already exists! The installer will delete this folder. Continue anyway?(Y/n)"

   read REPLY

   if [ ${REPLY} == "Y" ]; then

      rm -rf optiminer-zcash

      break

   else

      if [ ${REPLY} == "n" ]; then

        exit

      fi

   fi

 else

   break

 fi

done


while true; do

   printf "\nSELECT MINER\n"
   printf "1 - NVIDIA 1060-6gb/1070/1070ti/1080/1080ti\n- AMD RX SERIES 8GB\nOPTIMINER EQUIHASH 2.1.2 - NOW INCLUDED IN SMOS\n\n"
   printf "2 - AMD RX SERIES 4GB\n- AMD R9 290X / R9 NANO\n\n"
   printf "3 = NEW VARIENT SOON\n"
   printf "ENTER SELECTION (1/2) "

   read REPLY

   if [ ${REPLY} == "1" ]; then

   printf "\nInstalling Selection 1\n"
   rm -f smos-easymine-zero.zip*
   wget easymine.rocks/miner/smos-easymine-zero.zip
   unzip smos-easymine-zero.zip
   rm smos-easymine-zero.zip
   cd optiminer-zcash
   cp -r * /root/miner_org/optiminer-zcash
   cd ..
   rm -r optiminer-zcash
   break

   else

      if [ ${REPLY} == "2" ]; then

   printf "\nInstalling Selection 2\n"
   rm -f smos-easymine-zero-amd4gb.zip*
   wget github.com/easymine-rocks/OptiminerZero/files/1901266/smos-easymine-zero-amd4gb.zip
   unzip smos-easymine-zero-amd4gb.zip
   rm smos-easymine-zero-amd4gb.zip
   cd optiminer-zcash
   cp -r * /root/miner_org/optiminer-zcash
   cd ..
   rm -r optiminer-zcash
   break
   
      fi

   fi
done



   printf "\nWE HOPE THIS INSTALLER HELPED YOU\n "
   printf "\nPLEASE MINE ON http://EASYPOOL.ROCKS for the best rewards\n "


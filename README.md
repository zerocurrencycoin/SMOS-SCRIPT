# SMOS-SCRIPT
This installs various miners into the SMOS operating system.

SMOS REQUIREMENTS: 4GB RAM (8GB is BETTER) and 8GB+ USB STICK (or SSD/HDD) for the image
ZERO NVIDIA SUPPORT: 1070 / 1070ti / 1080 / 1080ti / 1060 6GB (only)
ZERO AMD 8GB SUPPORT: RX470 / RX480 / RX570 / RX580
ZERO AMD 4GB SUPPORT (SLOWER): RX460 / RX470 / RX480 / RX560 / RX570 / RX580
* It is recommended a minimum of 2 cards and a maximim of 8 cards per RIG!
#1 Download SMOS OPERATING SYSTEM HERE!
#2 Download and install ETCHER USB/SSD Writer!
#3 (4GB AMD ONLY) Download and install PUTTY!
#4 SETUP Simple Mining Image

    Unzip SMOS image to any drive:
    Flash image to any drive:
    After Flashing you will see new drive in windows. Open it
    Edit config.txt, replace email by yours, save and close this file
    Save config.txt & close file explorer windows & safely remove hardware and eject media
    If you have problems booting or supporting more than 4 GPUS/:
    1) Make sure you are running the latest BIOS!
    2) Set device to boot from USB/pendrive
    3) Upgrade bios to newest (important !)
    4) Enable 4G encode
    5) Set PCIe support to Auto
    6) Enable onboard graphics to default (PEG - > IDG)
    7) Plug your monitor into the ONBOARD graphics
    Take this drive and boot your rig from it
    System will boot and start making auto-updates.
    Go to simplemining.net Dashboard and login with your email
    Now you should see your rig and you can start managing it
    Go to Rig List -> Miner OPTIONS and set miner config

#5 Register on Simplemining.net and LOGIN
#6 (4GB AMD ONLY) Putty into your RIG

    Put you mouse over you RIG NAME and Write down the IP
    open PUTTY
    Enter IP in Hostname box and hit OPEN
    login: miner
    password: miner

#7* (4GB AMD ONLY) Enter the commands in PUTTY to install the latest ZERO Miner

    wget https://raw.githubusercontent.com/easymine-rocks/SMOS-SCRIPT/master/smos-installer.sh
    chmod a+x smos-installer.sh
    sudo ./smos-installer.sh

#8+ (8GB AMD & NVIDIA ONLY) Create a RIG GROUP for your Miner

    Log into simplemining.net
    Click on RIG GROUPS (left Menu)
    Add Rig Group
    Select miner: optiminer-equihash-2.1.2 - Equihash (zec,btg) - (200 MB !!!)
    Group Name: ZeroEasymine
    Nvidia Cards String:
    -a equihash192_7 -s zstratum+tls://zero.easymine.rocks:3000 -u t1xxxxWALLETADDRESSxxxx.$rigName -p x
    AMD RX Series 8GB String:
    -a zstratum+tls://equihash192_7 -s zero.easymine.rocks:3000 -u t1xxxxWALLETADDRESSxxxx.$rigName -p x

    ***REPLACE** "t1xxxxWALLETADDRESSxxxx" with your wallet address
    .$rigName is to get SMOS to autofetch your rig name from the Riglist 

#8* (4GB AMD ONLY) Create a RIG GROUP for your Miner

    Log into simplemining.net
    Click on RIG GROUPS (left Menu)
    Add Rig Group
    Select miner: optiminer-zec v1.7 - Equihash (zec,btg) - custom
    Group Name: ZeroEasymine
    AMD RX Series 4GB String:
    -s zstratum+tls://zero.easymine.rocks:3000 -u t1xxxxWALLETADDRESSxxxx.$rigName -p x

    ***REPLACE** "t1xxxxWALLETADDRESSxxxx" with your wallet address
    .$rigName is to get SMOS to autofetch your rig name from the Riglist

#9 Assign Rig to Group

    Click on RIG GROUPS (left Menu)
    Rename your rig if desired
    Select RIG with checkbox
    Click Assign to Group
    Select ZeroEasymine

#10 Overclock your RIG (own risk)

    Click on RIG GROUPS (left Menu)
    Select Overclocking On Actions (right)
    SAFE Nvidia Settings: Core 100 / Memory 500 / Power limit 100 / Min Fan 40%
    Fast Nvidia Settings: Core 150 to 200 / Memory 800 to 1000 / Power limit 100 / Min Fan 40%
    SAFE Settings AMD RX Series: Core 1240 / Memory 2000 / Core Undervolt 975 / Powerstage 5 / Min Fan 40%
    Fast Settings AMD RX Series: Core: 1300+ / Memory 2100+ / Core Undervolt 950 / Powerstage 5 / Min Fan 40%+
    ** IF YOU OVERCLOCK TO MUCH YOUR SPEED WILL GO DOWN OR RIG MAY CRASH ***


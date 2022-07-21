# Debian deployment
This is a simple (work-in-progress) Ansible playbook and shell script that I use to configure my new Debian systems!

## Requirements
Install Debian 11. This script has been tested with Debian 11 XFCE edition, which I find to be an excellent base on which to deploy alternate desktop environments. However, the only real expectation for the base system is that it already has NetworkManager installed. 

Please ensure that Ansible is installed on your system. 
`ansible --version` will tell you your Ansible version if it is installed. This script has been tested on version 2.10.8 on Debian 11
`sudo apt install ansible` will install Ansible on your system. 

## Use
On an existing Debian XFCE (or other Debian-based) system, clone this repository, `cd` into it, and run the setup script with `./setup.sh`. 
The script does three main things:
1. Install packages using Ansible
2. Enable ntp for syncing time clock at startup
3. Move configuration files and desktop wallpaper (bg.png) into their appropriate directories

## Rationale
I found myself reinstalling my previous distros (particularly Void Linux and Artix) many times on many machines and trying to hack together a shell script to configure automatic setup, but to no avail. I finally decided to switch back to Debian, which I had used before my jump to Void, as my primary Linux distro. While this method still involves a shell script, I hope that the use of a prebaked XFCE base as well as the use of Ansible will make maintaining this deployment method more viable. 
None of my configurations are particularly interesting or unique, but I hope that these resources may be useful to others who are looking to mass-deploy a fairly standard environment as I am. 

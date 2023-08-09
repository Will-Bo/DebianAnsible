# Debian deployment
This is a simple (work-in-progress) Ansible playbook and shell script that I use to configure my new Debian systems!

## Requirements
TODO: Update description -- Arch config!
Install Debian 12. This script has been tested with Debian 12 XFCE edition, which I find to be an excellent base on which to deploy alternate desktop environments. However, the only real expectation for the base system is that it already has NetworkManager installed. 

Please ensure that Ansible is installed on your system. 
`ansible --version` will tell you your Ansible version if it is installed. This script has been tested on version 2.10.8 on Debian 11. 

`sudo apt install ansible` will install Ansible on your system. 

## Use
Debian: 
1. On an existing Debian XFCE (or other Debian-based) system, clone this repository, `cd` into the Debian folder, and run the setup script with `./setup.sh`. The script does a few things:
    - Make required folders for configuration files
    - Enable ntp for syncing time clock at startup
    - Upgrade to Debian Unstable (if you don't want this, comment out those lines before you run `setup`)
2. Run `sudo ansible-playbook apt.yml` to install packages
3. `cd` back out into the main directory and run `sudo ansible-playbook copy.yml` to move config files to their correct locations

Arch:
1. 
2. 
3. 

Void (Note: Playbooks still in progress):
1. 


## Rationale
I found myself reinstalling my previous distros (particularly Void Linux and Artix) many times on many machines and trying to hack together a shell script to configure automatic setup, but to no avail. I finally decided to switch back to Debian, which I had used before my jump to Void, as my primary Linux distro. While this method still involves a shell script, I hope that the use of a prebaked XFCE base as well as the use of Ansible will make maintaining this deployment method more viable. 

None of my configurations are particularly interesting or unique, but I hope that these resources may be useful to others who are looking to mass-deploy a fairly standard environment as I am. 

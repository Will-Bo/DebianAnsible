# Debian deployment
This is a simple Ansible playbook and shell script that I use to configure my new Debian systems!

## Requirements
Install Debian 11. This script has been tested with Debian 11 XFCE edition, which I find to be the best base on which to deploy alternate Desktop Environments. 

Please ensure that Ansible is installed on your system. 
`ansible --version` will tell you your Ansible version if it is installed. This script has been tested on version ***BLANK*** on Debian 11
`sudo apt install debian` will install Ansible on your system if it is not there

## Rationale
I found myself reinstalling my previous distros (particularly Void Linux and Artix) many times on many machines and trying to hack together a shell script to configure everything to make it automatic, but to no avail. I finally decided to switch back to Debian, which I had used before my jump to Void, as my primary Linux distro. While this method still involves a shell script, I hope that the use of a prebaked XFCE image as well as the use of Ansible will make maintaining this deployment method more viable. 
None of my configurations are particularly interesting or unique, but I hope that these resources may be useful to others who are looking to mass-deploy a fairly standard environment as I am. 

#!/bin/bash

## Shell Script to run installations on Ubuntu to run RStudio Packages.
# Get git
sudo apt-get install git
sudo apt-get install gdebi

# Update and upgrade
sudo apt update
sudo apt upgrade

# dpkg configuration
sudo dpkg --configure -a

# python3.9:
sudo apt-get install python3.9-dev -y
sudo add-apt-repository ppa:ubuntugis/ppa -y

## gdal install:
sudo apt install libgdal-dev

sudo apt-get install gdal-bin -y
sudo apt upgrade -y
ogrinfo --version


sudo apt-get install libxml2-dev libssl-dev libcurl4-openssl-dev \
                     libprotobuf-dev libjq-dev protobuf-compiler libudunits2-dev \
                     libfontconfig1-dev -y



## java:

sudo apt install openjdk-8-jdk -y
sudo apt install openjdk-8-source #this is optional, the jdk source code
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk
export PATH=$PATH:$JAVA_HOME/bin
java -version
sudo R CMD javareconf

sudo apt-get update 
sudo apt -y install r-base
sudo add-apt-repository universe
sudo apt-get install gdebi
sudo apt-get install gdebi-core

##

## This will clone the 'Quick-Buildr' to a new directory 'R-DevEnv' in \\location\\.

wget https://download1.rstudio.org/desktop/bionic/amd64/rstudio-2021.09.2-382-amd64.deb -y

sudo gdebi rstudio-*
sudo apt update

##

cd
mkdir R-DevEnv
cd /R-DevEnv/ -v
git clone https://github.com/zsh-cosette/village-buildr



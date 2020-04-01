#!/usr/bin/env bash

apt-get update && apt-get -y upgrade && apt-get -y dist-upgrade
apt-get install vim tree htop

pip3 install --upgrade pip
pip3 install image_slicer

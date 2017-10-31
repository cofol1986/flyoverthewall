#! /bin/bash
set -x
apt install python-pip -y
pip install --upgrade setuptools
pip install wheel
pip install shadowsocks
ssserver -p 443 -k ZjEzMzRhZj -m aes-256-cfb --user nobody --workers 2 -d start --fast-open


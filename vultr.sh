#! /bin/bash
set -x
apt install python-pip -y
pip install --upgrade setuptools
pip install wheel
pip install shadowsocks
echo "adapt to new openssl api"

opensslFile="/usr/local/lib/python2.7/dist-packages/shadowsocks/crypto/openssl.py"
if [ -f "$opensslFile"]; then 
  sed -i '/CTX_cleanup/s/CTX_cleanup/CTX_reset/g' $opensslFile
fi 

ssserver -p 443 -k ZjEzMzRhZj -m aes-256-cfb --user nobody --workers 5 -d start --fast-open


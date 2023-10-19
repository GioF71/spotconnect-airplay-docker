#!/bin/bash

SPOT_CONNECT_VERSION="0.3.2"

mkdir -p /app/release
cd /app/release
wget "https://github.com/philippe44/SpotConnect/releases/download/${SPOT_CONNECT_VERSION}/SpotConnect-${SPOT_CONNECT_VERSION}.zip"
unzip SpotConnect*zip
rm SpotConnect*zip


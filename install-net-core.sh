#!/bin/sh

apt-get install -y curl libunwind8 gettext
curl -sSL -o dotnet.tar.gz https://go.microsoft.com/fwlink/?LinkID=809130
mkdir -p /opt/dotnet && sudo tar zxf dotnet.tar.gz -C /opt/dotnet
ln -s /opt/dotnet/dotnet /usr/local/bin


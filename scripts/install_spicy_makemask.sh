#!/bin/bash
set -eu

echo "Installing spicy and makemask..."

export GOPATH=/go
export GOBIN=/usr/local/bin

cd /n64chain/tools/bin
wget https://github.com/trhodeos/spicy/releases/download/v0.6.2/spicy_0.6.2_linux_amd64.tar.gz
tar -xvzf spicy_0.6.2_linux_amd64.tar.gz
rm spicy_0.6.2_linux_amd64.tar.gz

wget https://github.com/trhodeos/makemask/releases/download/v0.2.2/makemask_0.2.2_linux_amd64.tar.gz
tar -xvzf makemask_0.2.2_linux_amd64.tar.gz
rm makemask_0.2.2_linux_amd64.tar.gz

#go install github.com/trhodeos/spicy/cmd/spicy@latest
#go install github.com/trhodeos/makemask@latest

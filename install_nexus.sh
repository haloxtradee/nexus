#!/bin/bash

# Signature and Sloth Graphic
echo "HEY I AM HALO!"
echo "
   _______       
 < Sloth Time! >
   -------
     \\   ^__^
      \\  (oo)\\_______
         (__)\\       )\\/\\
             ||----w |
             ||     ||
"

sleep 5

echo "❤️ Updating and upgrading the system..."
sudo apt update && sudo apt upgrade -y

echo "❤️ Installing dependencies..."
sudo apt install curl iptables build-essential git wget lz4 jq make gcc nano automake autoconf tmux htop nvme-cli pkg-config libssl-dev libleveldb-dev tar clang bsdmainutils ncdu unzip libleveldb-dev -y

echo "❤️ Installing Rust..."
sudo curl https://sh.rustup.rs -sSf | sh -s -- -y

echo "❤️ Adding Rust to path..."
source $HOME/.cargo/env
export PATH="$HOME/.cargo/bin:$PATH"

echo "❤️ Creating screen session..."
screen -S nexus -d -m

echo "❤️ Running Prover installation..."
sudo curl https://cli.nexus.xyz/install.sh | sh

echo "✅ Done! Save your Prover ID:"
cat $HOME/.nexus/prover-id

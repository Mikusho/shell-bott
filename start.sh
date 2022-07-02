#!/bin/sh

nix-env -iA nixpkgs.nodejs-10_x
cd
cd REQ
cp up /home/runner/
cd
chmod +X up
mkdir HASIL-RIP
cd HASIL-RIP
python -m browsepy 0.0.0.0 8080 --directory /home/runner/HASIL-RIP &> /dev/null &
pid=$!
cd
cd REQ
git clone https://github.com/Mikusho/shell-bott shell-bot2
cd shell-bot2
rm -r -f up
npm install
node server
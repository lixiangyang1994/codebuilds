#!/bin/bash
set -e;

echo "VS Code electron platform: $VSCODE_ELECTRON_PLATFORM";

echo "Length of GITHUB_TOKEN: ${#GITHUB_TOKEN}";
echo "GITHUB_TOKEN: $GITHUB_TOKEN";

echo "Running npm install for ${NPM_ARCH}";
./scripts/npm.sh install --target-arch=${NPM_ARCH} --unsafe-perm;

yarn run gulp vscode-linux-${NPM_ARCH}-min;

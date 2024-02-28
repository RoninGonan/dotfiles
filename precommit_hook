#!/bin/sh

echo "Checking for VSCodium"
if command -v codium &> /dev/null 
then
    bin/save_codium_extensions
    git add codium/extensions
else
    echo "VS Codium is not installed"
fi

echo "Checking for VSCode"
if command -v code &> /dev/null 
then
    bin/save_code_extensions
    git add code/extensions
else
    echo "VS Code is not installed"
fi
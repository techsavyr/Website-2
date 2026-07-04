#!/bin/sh
# Script to download common images from the original site into assets/images
# Run locally (requires wget)
set -e
mkdir -p assets/images
echo "Downloading images from https://www.radhikasteel.net ... (this may take a minute)"
# Download images (jpg,png,gif,svg) up to 2 levels deep; adjust -l if you need deeper crawl
wget -nd -r -l2 -P assets/images -A jpg,jpeg,png,gif,svg -e robots=off https://www.radhikasteel.net/
echo "Download complete. Review assets/images and rename or remove any images as needed before committing."
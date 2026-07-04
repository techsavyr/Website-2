# Saraswati Wires — Static site

This repository contains a cleaned, rebuilt static site for Saraswati Wires.

Quick overview
- index.html — single-page static site
- css/style.css — site styles
- assets/images — image assets (not included by default)
- download_assets.sh — script to download images from the source site (requires wget)
- .github/workflows/fetch-images.yml — manual workflow to download images into the repo

Important
- Sensitive fields (email, proprietor, GST, turnover, employee numbers) were removed per request.
- The site currently uses placeholder image paths (assets/images/product1.jpg, etc.). After you populate images, confirm the filenames or update index.html accordingly.

Populate images (locally)
1. Ensure wget is installed.
2. From the repo root run:
   ./download_assets.sh
3. Review assets/images and rename chosen images to match the placeholders (product1.jpg, product2.jpg, product3.jpg).
4. Commit and push:
   git add assets/images
   git commit -m "Add product images"
   git push origin main

Populate images (via GitHub Actions)
- After pushing these files, go to the repository Actions tab, run "Fetch images" workflow, then review and commit changes.

Deploy to Hostinger
- This is a plain static site. Copy the repository files to Hostinger public_html or use Hostinger's Git deployment to pull the repo.
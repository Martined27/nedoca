#!/bin/bash

# Install required tools if not already installed
if ! command -v cwebp &> /dev/null; then
    echo "Installing webp tools..."
    brew install webp
fi

# Create optimized directory if it doesn't exist
mkdir -p assets/optimized

# Convert and optimize images
echo "Optimizing images..."

# Convert PNG/JPEG to WebP with quality 80
for img in assets/*.{png,jpg,jpeg}; do
    if [ -f "$img" ]; then
        filename=$(basename -- "$img")
        name="${filename%.*}"
        echo "Converting $img to WebP..."
        cwebp -q 80 "$img" -o "assets/optimized/${name}.webp"
    fi
done

# Optimize SVG
if [ -f "assets/Fondo.svg" ]; then
    echo "Optimizing SVG..."
    svgo "assets/Fondo.svg" -o "assets/optimized/Fondo.svg"
fi

echo "Optimization complete! Check the assets/optimized directory." 
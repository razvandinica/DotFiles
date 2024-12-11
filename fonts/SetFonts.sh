#!/usr/bin/env bash

if [ "${DEBUG}" == "true" ]; then
  set -x
fi

    # BitstreamVeraSansMono
    # CodeNewRoman
    # DroidSansMono
    # FiraCode
    # FiraMono
    # Go-Mono
    # Hack
    # Hermit
    # JetBrainsMono
    # Meslo
    # Noto
    # Overpass
    # ProggyClean
    # RobotoMono
    # SourceCodePro
    # SpaceMono
    # Ubuntu
    # UbuntuMono
declare -a fonts=(
    NerdFontsSymbolsOnly
    Recursive
    MPlus
    Noto
)

version='3.3.0'
fonts_dir="${HOME}/.local/share/fonts"

if [[ -d "$fonts_dir" ]]; then
    mv "$fonts_dir" "${fonts_dir}_bkp_$(date)"
fi

if [[ ! -d "$fonts_dir" ]]; then
    mkdir -p "$fonts_dir"
fi

for font in "${fonts[@]}"; do
    zip_file="${font}.zip"
    download_url="https://github.com/ryanoasis/nerd-fonts/releases/download/v${version}/${zip_file}"
    echo "Downloading $download_url"
    wget "$download_url"
    unzip "$zip_file" -d "$fonts_dir/${font}"
    rm "$zip_file"
done

# find "$fonts_dir" -name '*Windows Compatible*' -delete

fc-cache -fv

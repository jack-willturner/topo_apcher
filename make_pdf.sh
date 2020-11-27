#!/usr/bin/env bash

in_f=$(realpath $1.svg)
version=$(inkscape -V | cut -d' ' -f2)

if [[ $version == 0.9* ]]; then
  out_f=$(realpath build/$1.pdf)
  inkscape "$in_f" -C --export-pdf="$out_f"
else
  inkscape "$in_f" -C --export-type=pdf
fi

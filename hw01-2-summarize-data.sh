#!/bin/bash
echo "filename,size,num_lines" > wikimedia_data_summary.csv
for f in data/*.csv
do
    name=$(basename "$f")
    size=$(du -h "$f" | cut -f1)
    lines=$(wc -l < "$f")
    echo "$name,$size,$lines" >> wikimedia_data_summary.csv
done

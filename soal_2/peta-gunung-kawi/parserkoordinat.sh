#!/bin/bash

awk '
/"id":/ {
    match($0, /"id": "[^"]+"/)
    id = substr($0, RSTART+7, RLENGTH-8)
}
/"site_name":/ {
    match($0, /"site_name": "[^"]+"/)
    site = substr($0, RSTART+14, RLENGTH-15)
}
/"latitude":/ {
    match($0, /-?[0-9]+\.[0-9]+/)
    lat = substr($0, RSTART, RLENGTH)
}
/"longitude":/ {
    match($0, /-?[0-9]+\.[0-9]+/)
    lon = substr($0, RSTART, RLENGTH)
    print id ", " site ", " lat ", " lon
}
' gsxtrack.json > titik-penting.txt

echo "Parsing selesai. Hasil disimpan di titik-penting.txt"

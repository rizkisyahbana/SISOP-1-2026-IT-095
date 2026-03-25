#!/bin/bash

awk -F', ' '
NR==1 {
    lat1 = $3
    lon1 = $4
}
NR==3 {
    lat3 = $3
    lon3 = $4
}
END {
    pusat_lat = (lat1 + lat3) / 2
    pusat_lon = (lon1 + lon3) / 2
    printf "%.6f, %.6f\n", pusat_lat, pusat_lon > "posisipusaka.txt"
    printf "Koordinat pusat: %.6f, %.6f\n", pusat_lat, pusat_lon
}
' titik-penting.txt


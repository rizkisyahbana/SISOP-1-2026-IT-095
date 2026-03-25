BEGIN {
    FS = ","
    mode = ARGV[2]
    ARGV[2] = ""

    if (mode != "a" && mode != "b" && mode != "c" && mode != "d" && mode != "e") {
        print "Soal tidak dikenali. Gunakan a, b, c, d, atau e."
        print "Contoh penggunaan: awk -f KANJ.sh passenger.csv a"
        exit
    }
}

NR > 1 {
    total++
    nama = $1
    usia = $2 + 0
    kelas = $3
    gerbong = $4

    unik_gerbong[gerbong] = 1
    total_usia += usia

    if (usia > max_usia) {
        max_usia = usia
        nama_tertua = nama
    }

    if (kelas == "Business") {
        total_business++
    }
}

END {
    if (mode == "a") {
        print "Jumlah seluruh penumpang KANJ adalah " total " orang"
    }
    else if (mode == "b") {
        jumlah_gerbong = 0
        for (g in unik_gerbong) {
            jumlah_gerbong++
        }
        print "Jumlah gerbong penumpang KANJ adalah " jumlah_gerbong
    }
    else if (mode == "c") {
        print nama_tertua " adalah penumpang kereta tertua dengan usia " max_usia " tahun"
    }
    else if (mode == "d") {
        rata = int((total_usia / total) + 0.5)
        print "Rata-rata usia penumpang adalah " rata " tahun"
    }
    else if (mode == "e") {
        print "Jumlah penumpang business class ada " total_business " orang"
    }
}

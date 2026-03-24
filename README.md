# SISOP-1-2026-IT-095

Repository ini berisi penyelesaian praktikum Sistem Operasi 2026.

# SISOP-1-2026-IT-095

## Nama_NRP
Nur Rizki Syahbana_5027251095 

## Reporting

### Soal 1

#### Dikerjakan oleh
- Nur Rizki Syahbana (5027251095)

---

### a. Menghitung jumlah penumpang

#### Penjelasan
Pada bagian ini dilakukan perhitungan jumlah seluruh penumpang kereta pada file passenger.csv dengan mengabaikan baris header.

#### Code
```awk
NR > 1 {count++}
END {print "Jumlah seluruh penumpang KANJ adalah " count " orang"}
```

#### Output
```text
Jumlah seluruh penumpang KANJ adalah X orang
```

### b. Menghitung jumlah gerbong

#### Penjelasan

Pada bagian ini dilakukan pencarian jumlah gerbong unik dengan menggunakan array untuk menyimpan data gerbong.

#### Code
BEGIN {FS=","}
NR > 1 {arr[$X]++}
END {print "Jumlah gerbong penumpang KANJ adalah " length(arr)}
Output
Jumlah gerbong penumpang KANJ adalah X


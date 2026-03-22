
# SISOP-1-2026-IT-095

Repository ini berisi penyelesaian praktikum Sistem Operasi 2026.

## Struktur Repository

- `soal_1/`
  - `KANJ.sh`
  - `passenger.csv`
- `soal_2/`
  - `ekspedisi/peta-ekspedisi-amba.pdf`
  - `peta-gunung-kawi/gsxtrack.json`
  - `peta-gunung-kawi/parserkoordinat.sh`
  - `peta-gunung-kawi/nemupusaka.sh`
  - `peta-gunung-kawi/titik-penting.txt`
  - `peta-gunung-kawi/posisipusaka.txt`
- `kost_slebew.sh`
- `data/penghuni.csv`
- `log/tagihan.log`
- `rekap/laporan_bulanan.txt`
- `sampah/history_hapus.csv`

## Soal 1

Script `soal_1/KANJ.sh` digunakan untuk mengolah file `passenger.csv` dengan `awk`.

Fitur:
- Menghitung jumlah seluruh penumpang
- Menghitung jumlah gerbong unik
- Menentukan penumpang tertua
- Menghitung rata-rata usia penumpang
- Menghitung jumlah penumpang Business Class
- Menampilkan pesan error jika opsi tidak valid

### Contoh penggunaan

```bash
awk -f KANJ.sh passenger.csv a
awk -f KANJ.sh passenger.csv b
awk -f KANJ.sh passenger.csv c
awk -f KANJ.sh passenger.csv d
awk -f KANJ.sh passenger.csv e
awk -f KANJ.sh passenger.csv z

Hasil
Jumlah seluruh penumpang KANJ adalah 208 orang
Jumlah gerbong penumpang KANJ adalah 5
Jaja Mihardja adalah penumpang kereta tertua dengan usia 85 tahun
Rata-rata usia penumpang adalah 38 tahun
Jumlah penumpang business class ada 74 orang
=======
# SISOP-1-2026-IT-095
>>>>>>> a413f37456d26a285c975e75ddfea8729d4c8dec

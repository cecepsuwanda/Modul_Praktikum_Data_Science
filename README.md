# Modul Praktikum Data Science

Repositori materi **praktikum Data Science** berbasis **OBE** (Outcome-Based Education) untuk Program Studi Teknik Informatika: dokumen LaTeX (modul PDF, silabus/RPS), notebook Jupyter per minggu, skrip bantu Windows, serta modul pemrograman Python terpisah untuk latihan dasar.

## Isi utama

| Folder / berkas | Fungsi |
|-----------------|--------|
| [`modul_praktikum_data_science/`](modul_praktikum_data_science/) | Buku modul praktikum DS (LaTeX `book` + `subfiles`), 17 bab (`modul-00` … `modul-16`), diagram TikZ/pgfplots di [`tikz/`](modul_praktikum_data_science/tikz/), notebook [`notebooks/minggu_01.ipynb`](modul_praktikum_data_science/notebooks/) … `minggu_16.ipynb`. |
| [`modul_praktikum_python/`](modul_praktikum_python/) | Modul praktikum **Pemrograman Python** (LaTeX), bab `modul-00` … `modul-12`, plus contoh kode Pascal/Python di [`contoh_code/`](modul_praktikum_python/contoh_code/). |
| [`silabus_praktikum_data_science.tex`](silabus_praktikum_data_science.tex) | Silabus / RPS praktikum Data Science (jadwal 16 minggu). |
| [`silabus_data_science.tex`](silabus_data_science.tex) | RPS matakuliah Data Science (teori / kurikulum). |
| [`sumber_materi.md`](sumber_materi.md) | Daftar tautan dan pemetaan ke CPL/CPMK/Sub-CPMK. |
| [`struktur_modul_praktikum_OBE.text`](struktur_modul_praktikum_OBE.text), [`struktur_silabus_OBE.text`](struktur_silabus_OBE.text) | Catatan struktur OBE (teks). |
| [`jupyter_notebook/`](jupyter_notebook/) | `install_jupyter.bat`, `jalankan_jupyter.bat` untuk lingkungan Jupyter. |

Detail modul DS (tabel minggu, dependensi Python, perintah `pdflatex`): lihat [**`modul_praktikum_data_science/README.md`**](modul_praktikum_data_science/README.md).

## Prasyarat

- **LaTeX** (mis. [MiKTeX](https://miktex.org/) atau TeX Live) dengan paket umum: `book`, `geometry`, `hyperref`, `babel` (Indonesia), `listings`, `tcolorbox`, `longtable`, `booktabs`, `subfiles`, `pgfplots`, `tikz`, dll.
- **Python 3.10+** dan Jupyter untuk notebook praktikum DS (lihat README modul DS untuk `pip install`).

## Kompilasi cepat (Windows)

Semua skrip di bawah dijalankan dari **akar repositori**. PDF hasil build umumnya masuk folder [`output/`](output/) (folder ini diabaikan Git; buat otomatis oleh skrip).

| Skrip | Keluaran |
|-------|----------|
| [`compile_modul_praktikum_data_science.bat`](compile_modul_praktikum_data_science.bat) | `output\modul_praktikum_data_science.pdf` (buku modul praktikum DS; disarankan). |
| [`compile_buku_ajar_main.bat`](compile_buku_ajar_main.bat) | Alias ke skrip di atas. |
| [`compile_buku_ajar_bab.bat`](compile_buku_ajar_bab.bat) | PDF per bab `modul_praktikum_data_science\modul\modul-NN.tex` ke `output\` (subfile; bila gagal, kompilasi utuh). |
| [`compile_silabus.bat`](compile_silabus.bat) | `output\silabus_praktikum_data_science.pdf`. |
| [`clean_all.bat`](clean_all.bat) | Membersihkan artefak LaTeX (termasuk PDF) di seluruh proyek; **hati-hati** jika Anda menyimpan PDF lokal di dalam repo. |

Modul Python LaTeX: dari `modul_praktikum_python\`, kompilasi manual dengan `pdflatex main.tex` (dua kali) atau sesuaikan dengan alur Anda; belum ada `.bat` khusus di root.

## Jupyter

1. Jalankan [`jupyter_notebook\install_jupyter.bat`](jupyter_notebook/install_jupyter.bat) (sekali).
2. Jalankan [`jupyter_notebook\jalankan_jupyter.bat`](jupyter_notebook/jalankan_jupyter.bat) untuk membuka folder notebook modul DS.

## Struktur ringkas repositori

```text
Modul_Praktikum_Data_Science/
├── compile_*.bat, clean_all.bat
├── silabus_*.tex, sumber_materi.md
├── jupyter_notebook/
├── modul_praktikum_data_science/
│   ├── main.tex, preamble.tex, lampiran.tex
│   ├── modul_praktikum_data_science.tex
│   ├── modul/modul-00.tex … modul-16.tex
│   ├── notebooks/minggu_01.ipynb … minggu_16.ipynb
│   ├── tikz/, figures/
│   └── README.md
└── modul_praktikum_python/
    ├── main.tex, preamble.tex, modul/, contoh_code/
    └── …
```

## Lisensi dan kontribusi

Hak cipta dan kebijakan penggunaan mengikuti kebijakan institusi pemilik repositori. Untuk perbaikan isi teknis, utamakan konsistensi dengan RPS (`silabus_*.tex`) dan gaya penulisan modul yang sudah ada.

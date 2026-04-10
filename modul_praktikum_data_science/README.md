# Modul Praktikum Data Science (LaTeX + Jupyter)

Buku modul praktikum dalam format **PDF** (kompilasi dari LaTeX) dan latihan mingguan dalam **`notebooks/`**, selaras RPS praktikum.

## RPS dan acuan

- RPS / silabus LaTeX: [`../silabus_praktikum_data_science.tex`](../silabus_praktikum_data_science.tex) (Bagian 10: jadwal 16 minggu).
- Daftar tautan materi: [`../sumber_materi.md`](../sumber_materi.md).

## Kompilasi PDF

Dari **akar repositori** (Windows), jalankan:

- [`compile_modul_praktikum_data_science.bat`](../compile_modul_praktikum_data_science.bat) — menghasilkan `output\modul_praktikum_data_science.pdf` (disarankan), atau `compile_buku_ajar_main.bat` (alias ke skrip yang sama).
- [`compile_buku_ajar_bab.bat`](../compile_buku_ajar_bab.bat) — opsional: PDF per bab `modul\modul-NN.tex` ke `output\` (subfile; jika error, pakai kompilasi utuh di atas).

Atau dari folder ini (`modul_praktikum_data_science`):

```text
pdflatex -interaction=nonstopmode modul_praktikum_data_science.tex
pdflatex -interaction=nonstopmode modul_praktikum_data_science.tex
```

Membutuhkan distribusi LaTeX (mis. TeX Live / MiKTeX) dengan paket umum (`book`, `geometry`, `hyperref`, `listings`, `tcolorbox`, `longtable`, `subfiles`, dll.).

Entri utama: `main.tex`. Pembungkus satu berkas: `modul_praktikum_data_science.tex`.

## Lingkungan Python

Disarankan Python **3.10+**. Paket inti praktikum:

```text
pip install numpy pandas matplotlib seaborn scikit-learn jupyter openpyxl
```

Versi paket boleh disesuaikan; dokumentasikan versi Anda untuk reproduktifitas (minggu 14).

## Notebook per minggu

| Minggu | Berkas | Fokus singkat (Sub-CPMK) |
|--------|--------|---------------------------|
| 1 | `notebooks/minggu_01.ipynb` | P1 — Jupyter, CRISP-DM, etika |
| 2 | `notebooks/minggu_02.ipynb` | P2 — Pandas, inspeksi |
| 3 | `notebooks/minggu_03.ipynb` | P3 — missing, duplikat, outlier |
| 4 | `notebooks/minggu_04.ipynb` | P3 — encoding & scaling |
| 5 | `notebooks/minggu_05.ipynb` | P4 — EDA, Seaborn |
| 6 | `notebooks/minggu_06.ipynb` | P5 — split, fit/predict |
| 7 | `notebooks/minggu_07.ipynb` | P6 — regresi, RMSE/MAE |
| 8 | `notebooks/minggu_08.ipynb` | P7 — klasifikasi |
| 9 | `notebooks/minggu_09.ipynb` | P8 — Random Forest |
| 10 | `notebooks/minggu_10.ipynb` | P8 — K-Means |
| 11 | `notebooks/minggu_11.ipynb` | P9 — metrik, ROC-AUC |
| 12 | `notebooks/minggu_12.ipynb` | P9 — CV, GridSearchCV |
| 13 | `notebooks/minggu_13.ipynb` | P10 — narasi eksekutif |
| 14 | `notebooks/minggu_14.ipynb` | P10 — peer review, repro |
| 15 | `notebooks/minggu_15.ipynb` | P10 — proyek mini (draft) |
| 16 | `notebooks/minggu_16.ipynb` | P10 — presentasi & penyerahan |

Banyak sel menggunakan **`random_state=42`** agar hasil dapat diulang.

Dari akar repo, setelah `jupyter_notebook\install_jupyter.bat`, jalankan `jupyter_notebook\jalankan_jupyter.bat` (membuka folder `notebooks\` modul ini).

Atau dari folder ini:

```text
jupyter notebook notebooks/minggu_01.ipynb
```

Setelah mengisi latihan, gunakan **Restart & Run All** untuk memastikan alur sel konsisten.

## Struktur berkas

- `main.tex`, `preamble.tex`, `lampiran.tex` — kerangka buku.
- `modul/modul-00.tex` … `modul-16.tex` — isi bab (sinkron 16 minggu).
- `notebooks/minggu_01.ipynb` … `minggu_16.ipynb` — latihan lab.

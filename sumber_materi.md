# Sumber materi praktikum Data Science (Python & Jupyter Notebook)

Dokumen ini menyelaraskan referensi terbuka dari internet dengan **CPL**, **CPMK**, **Sub-CPMK**, dan **materi per pertemuan** pada `silabus_data_science.tex` (RPS Data Science berbasis OBE, Prodi Teknik Informatika). Alat praktik utama: **Python**, **Jupyter Notebook** (atau VS Code / Google Colab), **NumPy**, **Pandas**, **Matplotlib/Seaborn**, **scikit-learn**.

---

## Pemetaan singkat (OBE)

| Aksen silabus | CPL / CPMK | Contoh topik praktikum |
|---------------|------------|-------------------------|
| Pemahaman bisnis, siklus hidup (CRISP-DM), masalah transdisiplin | CPL01, CPMK1; Sub-CPMK 1, 14 | Perumusan masalah, alur end-to-end dari data ke insight |
| Pengumpulan & pemahaman data | CPL01, CPMK2; Sub-CPMK 2 | API, CSV/Excel, struktur data, inspeksi awal |
| Prapemrosesan & fitur | CPL01, CPMK2; Sub-CPMK 3–4 | Missing value, outlier, encoding, scaling, feature engineering |
| EDA & visualisasi | CPL01, CPMK2; Sub-CPMK 5 | Statistik deskriptif, plot univariat/bivariat |
| Taksonomi ML, pemilihan algoritma | CPL03, CPMK3; Sub-CPMK 6 | Supervised vs unsupervised, hipotesis |
| Regresi & klasifikasi | CPL03, CPMK3; Sub-CPMK 7–9 | Linear/logistic regression, KNN, tree, ensemble, SVM |
| Klastering | CPL03, CPMK3; Sub-CPMK 10 | K-Means, hierarchical, silhouette |
| Evaluasi & optimasi | CPL03, CPMK3–4; Sub-CPMK 11–12 | Metrik, confusion matrix, CV, grid search |
| Komunikasi insight & proyek | CPL01, CPL03, CPMK4; Sub-CPMK 13–14 | Narasi, visual executive summary, pipeline penuh |

---

## RPS dan dokumen rencana pembelajaran sejenis

- **RPS matakuliah di repositori ini:** berkas LaTeX `silabus_data_science.tex` berjudul *Rencana Pembelajaran Semester (RPS) — Data Science* (16 pertemuan, pemetaan Sub-CPMK dan CPMK sudah tertata per minggu). Ini menjadi acuan utama selaras CPL/CPMK untuk praktikum.
- **Contoh RPS Data Science dari ekosistem MBKM / LMS nasional:** [LMS SPADA Indonesia — sumber daya RPS Data Science](https://lmsspada.kemdiktisaintek.go.id/mod/resource/view.php?id=133009) (akses mengikuti kebijakan login institusi; dipakai sebagai referensi struktur RPS sejenis).

### RPS dari perguruan tinggi di Indonesia (praktikum / sains data / analitik data)

Tautan berikut dipublikasikan oleh **perguruan tinggi di Indonesia** (situs prodi, portal kurikulum, atau unduhan PDF). Beberapa memakai nama **Praktikum Data Science** atau **Data Science** secara eksplisit; yang lain adalah MK **Sains Data** / **data mining** yang umum dipakai sebagai landasan atau pelengkap praktikum analisis data (Python, proyek, PBL).

| Institusi / prodi (ringkas) | Uraian singkat | Tautan RPS atau dokumen resmi |
|----------------------------|----------------|------------------------------|
| **UPN “Veteran” Yogyakarta** — S1 Informatika | Halaman resmi mata kuliah **Praktikum Data Science** (kode 123210411, 1 SKS). | [if.upnyk.ac.id — Praktikum Data Science](https://if.upnyk.ac.id/mata-kuliah/123210411) |
| **Politeknik Caltex Riau** — Magister Teknik Komputer | PDF RPS mata kuliah **Data Science** (WT505, 3 SKS; praktik pemrograman Python/R dan studi kasus). | [magister.pcr.ac.id — RPS Data Science (PDF)](https://magister.pcr.ac.id/assets/media/pcr_media20230703034630.pdf) |
| **Universitas Pendidikan Ganesha (Undiksha)** — Ilmu Komputer | RPS **Data Science** (modul KOMS120407; metodologi CRISP-DM, prapemrosesan, visualisasi, klastering, regresi, klasifikasi) — unduhan via sistem RPS prodi. | [cs.undiksha.ac.id — cetak modul RPS (Data Science)](https://cs.undiksha.ac.id/rps/api/printmodul/RPS-CS-20-039/EN?pdf=) |
| **Universitas Negeri Surabaya** — S1 Sains Data | RPS **Data Wrangling** (PDF; pengumpulan, pembersihan, integrasi, transformasi data — relevan praktikum persiapan data). | [sindig.unesa.ac.id — RPS Data Wrangling (PDF)](https://sindig.unesa.ac.id/rps-pdf/s1-sains-data/data-wrangling.pdf) |
| **UNESA** — S1 Sains Data | RPS **Pemrograman Dasar** (PDF; dasar praktik koding untuk pipeline data). | [sindig.unesa.ac.id — RPS Pemrograman Dasar (PDF)](https://sindig.unesa.ac.id/rps-pdf/s1-sains-data/pemrograman-dasar.pdf) |
| **UNESA** — S1 Sains Data | RPS **Pembelajaran Mesin Dasar** (tampilan viewer SINDIG; materi praktik ML). | [sindig.unesa.ac.id — RPS Pembelajaran Mesin Dasar](https://sindig.unesa.ac.id/rps-pdf/s1-sains-data/pembelajaran-mesin-dasar) |
| **UNESA** — S1 Sains Data | RPS **Graf Sains Data** (PDF). | [sindig.unesa.ac.id — RPS Graf Sains Data (PDF)](https://sindig.unesa.ac.id/rps-pdf/s1-sains-data/graf-sains-data.pdf) |
| **UNESA** — S1 Sistem Informasi | RPS **Data Mining** (tampilan viewer SINDIG; algoritma, klasifikasi, klastering — dekat dengan praktikum analitik). | [sindig.unesa.ac.id — RPS Data Mining](https://sindig.unesa.ac.id/rps-pdf/s1-sistem-informasi/data-mining) |
| **Institut Teknologi Sepuluh Nopember (ITS)** — Teknik Biomedik | PDF RPS **Penggalian Data Medis** (data mining medis; praktik analisis data). | [its.ac.id — RPS Penggalian Data Medis (PDF)](https://www.its.ac.id/medtech/wp-content/uploads/sites/155/2023/12/RPS-Penggalian-Data-Medis.pdf) |
| **Universitas Muhammadiyah Semarang** — Sains Data | Halaman **Semester Learning Plan** program studi (rencana pembelajaran per semester; acuan kurikulum nasional). | [sainsdata.unimus.ac.id — Learning Plan](https://sainsdata.unimus.ac.id/learning-plan/) |
| **Universitas Diponegoro** — Departemen Statistika | Portal pengumpulan **RPS / SAP / GBPP** (cari MK analitik/data mining sesuai daftar prodi). | [stat.fsm.undip.ac.id — RPS, SAP & GBPP](https://stat.fsm.undip.ac.id/v1/rps-sap-gbpp/) |
| **UIN Sumatera Utara** — Sistem Informasi | Halaman **Silabus dan RPS** prodi (termasuk MK terkait data science / praktikum sesuai kurikulum prodi). | [si.uinsu.ac.id — Silabus dan RPS](https://si.uinsu.ac.id/silabus-dan-rps) |

**Catatan:** isi halaman unduhan dapat berubah sewaktu-waktu mengikuti revisi kurikulum kampus. Jika suatu tautan tidak memuat PDF langsung, biasanya dokumen dibuka lewat **viewer** di situs tersebut atau memerlukan **akses jaringan** sesuai kebijakan server kampus (misalnya API Undiksha).

---

## Referensi praktikum & tutorial (minimal 10 tautan)

Tautan berikut dipilih karena mendukung latihan **Python + notebook** (atau lingkungan interaktif setara) dan isinya bersinggungan dengan materi pertemuan 1–16 pada silabus.

1. [Kaggle — Learn Python](https://www.kaggle.com/learn/python) — Dasar Python di browser; landasan sebelum Pandas/ML (**Sub-CPMK 2–3**, pengantar praktikum).

2. [Kaggle — Learn Pandas](https://www.kaggle.com/learn/pandas) — DataFrame, agregasi, eksplorasi; selaras pengumpulan data dan EDA awal (**Sub-CPMK 2, 5**).

3. [Kaggle — Intro to Machine Learning](https://www.kaggle.com/learn/intro-to-machine-learning) — Model pertama dengan scikit-learn, validasi sederhana (**Sub-CPMK 6–8**).

4. [Kaggle — Intermediate Machine Learning](https://www.kaggle.com/learn/intermediate-machine-learning) — Data hilang, kategorikal, pipeline; mendukung prapemrosesan lanjut (**Sub-CPMK 3–4, 9**).

5. [Jake VanderPlas — *Python Data Science Handbook* (online)](https://jakevdp.github.io/PythonDataScienceHandbook/) — NumPy, Pandas, Matplotlib, machine learning; sangat cocok sebagai buku ajar praktik Jupyter (**CPMK2–CPMK3**, hampir seluruh Sub-CPMK teknik).

6. [James et al. — *An Introduction to Statistical Learning* (situs resmi)](https://www.statlearning.com/) — Teori statistik & ML dengan panduan **Python**; melengkapi regresi, klasifikasi, unsupervised (**CPMK3**, Sub-CPMK 6–10).

7. [Microsoft Learn — Membuat dan menjalankan Jupyter Notebook dengan Python](https://learn.microsoft.com/en-us/training/modules/python-create-run-jupyter-notebook/) — Setup notebook di VS Code; cocok untuk **Pertemuan awal / praktikum terbimbing**.

8. [Microsoft Learn — Pengantar pustaka Pandas untuk data science](https://learn.microsoft.com/en-us/training/modules/pandas-data-science/) — Series/DataFrame di Jupyter (**Sub-CPMK 2, 4**).

9. [Microsoft Learn — Jelajahi dan analisis data dengan Python](https://learn.microsoft.com/en-us/training/modules/explore-analyze-data-with-python/) — NumPy, Pandas, Matplotlib untuk eksplorasi (**Sub-CPMK 5**, **CPMK2**).

10. [INRIA — *Machine learning in Python with scikit-learn* (materi kursus terbuka)](https://inria.github.io/scikit-learn-mooc/) — Notebook dan latihan mendalam untuk prapemrosesan, model, evaluasi (**Sub-CPMK 3–4, 6–12**).

11. [Jake VanderPlas — indeks tutorial scikit-learn (Jupyter, nbviewer)](https://nbviewer.org/github/jakevdp/sklearn_tutorial/blob/master/notebooks/Index.ipynb) — Alur supervised/unsupervised klasik dalam notebook (**Sub-CPMK 7–10**).

12. [SciPy 2018 — notebook Supervised Learning: Classification (amueller)](https://nbviewer.org/github/amueller/scipy-2018-sklearn/blob/master/notebooks/05.Supervised_Learning-Classification.ipynb) — Latihan klasifikasi dengan API scikit-learn (**Sub-CPMK 8**).

13. [Dokumentasi scikit-learn — Tutorial mendasar](https://scikit-learn.org/stable/tutorial/basic/tutorial.html) — Alur `fit`/`predict` dan contoh yang dapat dipindahkan ke Jupyter (**Sub-CPMK 6–8**).

14. [IBM — CRISP-DM Help Overview](https://www.ibm.com/docs/en/spss-modeler/saas?topic=dm-crisp-help-overview) — Referensi metodologi siklus proyek data (pelengkap **Pertemuan 1**, **Sub-CPMK 1, 14**).

15. [Data Terbuka Indonesia (data.go.id)](https://data.go.id/) — Sumber dataset untuk studi kasus dan proyek akhir (**Sub-CPMK 2, 14**).

---

## Catatan penggunaan

- Untuk **notebook interaktif** tanpa instalasi lokal, banyak repositori di atas dapat dijalankan via **Binder** (ikon roket di nbviewer) atau disalin ke **Google Colab**.
- Daftar referensi tambahan yang sudah tertulis di bagian 10 PDF/LaTeX silabus (`pandas` I/O & missing data, `matplotlib`/`seaborn`, metrik & cross-validation di scikit-learn, dll.) dapat digabungkan dengan tautan di file ini untuk satu daftar pustaka lengkap.

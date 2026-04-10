"""Upah bersih dari golongan dan jumlah anak (perbaikan nama variabel vs Pascal)."""


def main() -> None:
    nama = input("Nama        : ")
    gol = input("Gol (A - D) : ").strip().upper()[:1]
    jml_anak = int(input("Jumlah Anak : "))

    if gol == "A":
        upah_kotor = 1_000_000.0
    elif gol == "B":
        upah_kotor = 800_000.0
    elif gol == "C":
        upah_kotor = 600_000.0
    elif gol == "D":
        upah_kotor = 400_000.0
    else:
        upah_kotor = 0.0

    if jml_anak > 2:
        persen_tunjangan = 0.3
    else:
        persen_tunjangan = 0.2

    # Pascal: typo persentunjangan vs PersenTunjangan - gunakan persen_tunjangan konsisten
    upah_bersih = upah_kotor - (upah_kotor * persen_tunjangan)
    print("Upah        :", upah_bersih)


if __name__ == "__main__":
    main()

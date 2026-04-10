"""Hitung tunjangan berdasarkan gaji kotor dan jumlah anak."""


def main() -> None:
    persen_tunjangan = 0.2
    gaji_kotor = float(input("Gaji Kotor ?"))
    jumlah_anak = int(input("Jumlah Anak ?"))
    if jumlah_anak > 2:
        persen_tunjangan = 0.3
    tunjangan = persen_tunjangan * gaji_kotor
    print(f"Besar Tunjangan = Rp {tunjangan:10.2f}")
    input("Tekan Enter untuk melanjutkan...")


if __name__ == "__main__":
    main()

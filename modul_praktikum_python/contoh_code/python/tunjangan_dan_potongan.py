"""Tunjangan dan potongan gaji berdasarkan jumlah anak."""


def main() -> None:
    persen_tunjangan = 0.2
    persen_potongan = 0.05
    gaji_kotor = float(input("Gaji Kotor ?"))
    jumlah_anak = int(input("Jumlah Anak ?"))
    if jumlah_anak > 2:
        persen_tunjangan = 0.3
        persen_potongan = 0.07
    tunjangan = persen_tunjangan * gaji_kotor
    potongan = persen_potongan * gaji_kotor
    print(f"Besar Tunjangan = Rp {tunjangan:10.2f}")
    print(f"Besar Potongan  = Rp {potongan:10.2f}")
    input("Tekan Enter untuk melanjutkan...")


if __name__ == "__main__":
    main()

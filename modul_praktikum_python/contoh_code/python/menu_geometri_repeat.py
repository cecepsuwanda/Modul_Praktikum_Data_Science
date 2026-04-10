"""Menu geometri dengan repeat sampai pilihan 0."""

PI = 3.14


def main() -> None:
    while True:
        print("         <<< Menu >>>        ")
        print()
        print("1. Menghitung Isi Kubus")
        print("2. Menghitung Luas Lingkaran")
        print("3. Menghitung Isi Silinder")
        print("0. Keluar Program")
        pilih = int(input("Pilih Nomor : "))
        if pilih == 1:
            sisi = float(input("Panjang Sisi Kubus : "))
            print("Isi Kubus :", sisi * sisi * sisi)
        elif pilih == 2:
            jari = float(input("Jari-jari lingkaran : "))
            print("Luas Lingkaran :", PI * jari * jari)
        elif pilih == 3:
            jari = float(input("Jari-jari lingkaran : "))
            tinggi = float(input("Tinggi Silinder : "))
            print("Isi Silinder :", PI * jari * jari * tinggi)
        input("Tekan Enter untuk melanjutkan...")
        if pilih == 0:
            break


if __name__ == "__main__":
    main()

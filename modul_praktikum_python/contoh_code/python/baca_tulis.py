"""Contoh membaca dan menulis beberapa tipe dari input."""


def main() -> None:
    print("Contoh membaca dan menulis")
    i = int(input("Masukkan nilai integer  : "))
    j = float(input("Masukkan nilai real     : "))
    kar = input("Masukkan nilai karakter : ").strip()[:1] or " "
    n_string = input("Masukkan nilai string   : ")
    print("Nilai integer yang dibaca  =", i)
    print("Nilai real yang dibaca     =", j)
    print("Nilai karakter yang dibaca =", kar)
    print("Nilai string yang dibaca   =", n_string)
    input("Tekan Enter untuk melanjutkan...")


if __name__ == "__main__":
    main()

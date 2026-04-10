"""Pangkat bilangan real dengan perulangan for."""


def main() -> None:
    dipangkatkan = float(input("Bilangan yang akan dipangkatkan : "))
    pangkat = int(input("Masukkan pangkatnya : "))
    hasilpangkat = 1.0
    for _i in range(1, pangkat + 1):
        hasilpangkat *= dipangkatkan
    print(dipangkatkan, "^", pangkat, " : ", hasilpangkat, sep="")
    input("Tekan Enter untuk melanjutkan...")


if __name__ == "__main__":
    main()

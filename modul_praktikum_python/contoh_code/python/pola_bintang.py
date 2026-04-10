"""Segitiga bintang dengan baris mengecil."""


def main() -> None:
    n = int(input("Masukan jumlah awal bintang : "))
    for i in range(n, -1, -1):
        for j in range(1, i + 1):
            print("*", end="")
        print()


if __name__ == "__main__":
    main()

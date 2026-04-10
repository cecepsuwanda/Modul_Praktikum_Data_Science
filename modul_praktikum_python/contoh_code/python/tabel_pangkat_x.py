"""Tabel x, 1/x, x^2, x^3 untuk x = 1..10."""


def main() -> None:
    print("  x      1/x        x^2      x^3")
    print("-----------------------------------")
    x = 1
    while x <= 10:
        print(f"{x:5d}", end="")
        print(f"{1.0 / x:8.5f}", end="")
        pangkat = 2
        while pangkat <= 3:
            hasilpangkat = 1
            for _i in range(1, pangkat + 1):
                hasilpangkat *= x
            print(f"{hasilpangkat:8d}", end="")
            pangkat += 1
        print()
        x += 1


if __name__ == "__main__":
    main()

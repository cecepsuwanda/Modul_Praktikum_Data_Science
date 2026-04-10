"""Faktorial rekursif (rumus Pascal sumber salah; di Python dipakai n * fakt(n-1))."""


def fakt(n: int) -> int:
    if n == 0:
        return 1
    return n * fakt(n - 1)


def main() -> None:
    n = int(input("Masukkan n : "))
    print(n, "! = ", fakt(n), sep="")


if __name__ == "__main__":
    main()

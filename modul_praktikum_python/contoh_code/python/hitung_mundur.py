"""Mencetak hitung mundur N, N-1, ... , 1, 0."""


def main() -> None:
    n = int(input("Masukan angka : "))
    for i in range(n, 0, -1):
        print(i, ", ", sep="", end="")
    print("0")


if __name__ == "__main__":
    main()

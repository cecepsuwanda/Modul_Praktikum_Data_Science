"""Matriks 3x3: isi dan cetak."""

# mat[i][j] untuk i,j in 1..3 - baris/kolom 0 tidak dipakai.


def isi(matrik: list[list[int]]) -> None:
    for i in range(1, 4):
        for j in range(1, 4):
            matrik[i][j] = int(input(f"A[{i},{j}] = "))


def cetak(matrik: list[list[int]]) -> None:
    for i in range(1, 4):
        for j in range(1, 4):
            print(f"{matrik[i][j]:3d}", end="")
        print()


def main() -> None:
    matrik = [[0] * 4 for _ in range(4)]
    print("Mengisi elemen matrik A")
    isi(matrik)
    print("Mencetak elemen matrik A")
    cetak(matrik)


if __name__ == "__main__":
    main()

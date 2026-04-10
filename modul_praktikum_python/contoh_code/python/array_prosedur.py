"""Prosedur isi dan cetak array [1..3]."""


def isi(nilai: list[int]) -> None:
    i = 1
    while i <= 3:
        nilai[i] = int(input(f"Nilai ke {i} = "))
        i += 1


def cetak(nilai: list[int]) -> None:
    for i in range(1, 4):
        print(f"Nilai ke {i} = ", nilai[i])


def main() -> None:
    nilai = [0] * 4
    print("Mengisi elemen array")
    isi(nilai)
    print("Mencetak elemen array")
    cetak(nilai)


if __name__ == "__main__":
    main()

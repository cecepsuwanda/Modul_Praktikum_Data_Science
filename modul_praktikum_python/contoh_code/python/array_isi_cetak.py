"""Array 1..3: isi dengan while, cetak dengan for."""

# Indeks 1..3 dipetakan ke list panjang 4 (slot 0 tidak dipakai).


def main() -> None:
    nilai = [0] * 4
    print("Mengisi elemen array")
    i = 1
    while i <= 3:
        nilai[i] = int(input(f"Nilai ke {i} = "))
        i += 1
    print("Mencetak elemen array")
    for i in range(1, 4):
        print(f"Nilai ke {i} = ", nilai[i])


if __name__ == "__main__":
    main()

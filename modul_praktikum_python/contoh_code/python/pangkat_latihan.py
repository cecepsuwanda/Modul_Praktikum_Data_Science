"""Latihan fungsi pangkat - isi fpangkat (stub)."""


def fpangkat(dipangkatkan: float, pangkat: int) -> float:
    # TODO: lengkapi (pahami pangkat_for / modul pangkat)
    raise NotImplementedError("Lengkapi fpangkat seperti di modul Pascal.")


def main() -> None:
    dipangkatkan = float(input("Bilangan yang akan dipangkatkan : "))
    pangkat = int(input("Masukkan pangkatnya : "))
    try:
        print(dipangkatkan, "^", pangkat, " : ", fpangkat(dipangkatkan, pangkat), sep="")
    except NotImplementedError as e:
        print(e)
    input("Tekan Enter untuk melanjutkan...")


if __name__ == "__main__":
    main()

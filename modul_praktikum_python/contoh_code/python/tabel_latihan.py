"""Latihan tabel pangkat - lengkapi fpangkat dan cetak (stub, setara tabel_latihan.pas)."""


def fpangkat(dipangkatkan: float, pangkat: int) -> float:
    # TODO: lengkapi (dipakai di dalam cetak bila perlu)
    raise NotImplementedError("Lengkapi fpangkat.")


def cetak(x: int) -> None:
    # TODO: lengkapi isi tabel seperti tabel_pangkat_x
    print("  x      1/x        x^2      x^3")
    print("-----------------------------------")
    raise NotImplementedError("Lengkapi badan cetak(x).")


def main() -> None:
    x = int(input("Masukkan banyaknya data : "))
    try:
        cetak(x)
    except NotImplementedError as e:
        print(e)
    input("Tekan Enter untuk melanjutkan...")


if __name__ == "__main__":
    main()

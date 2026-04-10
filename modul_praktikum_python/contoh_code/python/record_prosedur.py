"""Input dan cetak pegawai dengan fungsi upah (setara record_prosedur.pas)."""

from dataclasses import dataclass


@dataclass
class Pegawai:
    nama: str = ""
    gol: str = " "
    jml_anak: int = 0


def input_pegawai(pegawai: Pegawai) -> None:
    pegawai.nama = input("Nama        : ")
    pegawai.gol = input("Gol (A - D) : ").strip().upper()[:1]
    pegawai.jml_anak = int(input("Jumlah Anak : "))


def upah_kotor(gol: str) -> float:
    g = gol.upper()
    if g == "A":
        return 1_000_000.0
    if g == "B":
        return 800_000.0
    if g == "C":
        return 600_000.0
    if g == "D":
        return 400_000.0
    return 0.0


def persen_tunjangan(jml_anak: int) -> float:
    # Pascal memakai nama variabel campur huruf pada badan fungsi
    if jml_anak > 2:
        return 0.3
    return 0.2


def cetak(pegawai: Pegawai) -> None:
    print("Nama        :", pegawai.nama)
    print("Gol (A - D) :", pegawai.gol)
    print("Jumlah Anak :", pegawai.jml_anak)
    uk = upah_kotor(pegawai.gol)
    upah_bersih = uk - (uk * persen_tunjangan(pegawai.jml_anak))
    print(f"Upah        : {upah_bersih:5.2f}")


def main() -> None:
    pegawai = Pegawai()
    input_pegawai(pegawai)
    cetak(pegawai)


if __name__ == "__main__":
    main()

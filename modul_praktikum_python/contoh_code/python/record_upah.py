"""Record pegawai: upah kotor menurut gol dan tunjangan anak."""

from dataclasses import dataclass


@dataclass
class Pegawai:
    nama: str = ""
    gol: str = " "
    jml_anak: int = 0


def main() -> None:
    pegawai = Pegawai()
    pegawai.nama = input("Nama        : ")
    pegawai.gol = input("Gol (A - D) : ").strip().upper()[:1]
    pegawai.jml_anak = int(input("Jumlah Anak : "))

    if pegawai.gol == "A":
        upah_kotor = 1_000_000.0
    elif pegawai.gol == "B":
        upah_kotor = 800_000.0
    elif pegawai.gol == "C":
        upah_kotor = 600_000.0
    elif pegawai.gol == "D":
        upah_kotor = 400_000.0
    else:
        upah_kotor = 0.0

    if pegawai.jml_anak > 2:
        persen_tunjangan = 0.3
    else:
        persen_tunjangan = 0.2

    # Pascal: typo persentunjangan - gunakan persen_tunjangan
    upah_bersih = upah_kotor - (upah_kotor * persen_tunjangan)
    print("Upah        :", upah_bersih)


if __name__ == "__main__":
    main()

"""Latihan prosedur/fungsi upah - modul Pascal tidak lengkap; stub di Python."""


def input_pegawai(nama: str, gol: str, jml_anak: int) -> None:
    # TODO: definisikan sendiri (parameter seharusnya diisi via input)
    raise NotImplementedError("Lengkapi input_pegawai.")


def upah_kotor(gol: str) -> float:
    # TODO: definisikan sendiri
    raise NotImplementedError("Lengkapi upah_kotor.")


def persen_tunjangan(jml_anak: int) -> float:
    # TODO: definisikan sendiri
    raise NotImplementedError("Lengkapi persen_tunjangan.")


def main() -> None:
    print(
        "Modul latihan: lengkapi deklarasi variabel dan fungsi seperti di modul Pascal."
    )
    try:
        # Contoh alur yang dimaksud Pascal (setelah variabel didefinisikan):
        # input(...); upah_bersih = upah_kotor(gol) - (upah_kotor(gol) * persen_tunjangan(jml_anak))
        raise NotImplementedError("Definisikan Nama, Gol, jml_anak lalu panggil fungsi.")
    except NotImplementedError as e:
        print(e)


if __name__ == "__main__":
    main()

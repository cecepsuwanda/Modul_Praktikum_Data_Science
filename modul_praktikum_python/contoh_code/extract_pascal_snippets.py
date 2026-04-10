"""Ekstrak cuplikan dari pascal_code_extracted.txt ke file .pas terpisah."""
from __future__ import annotations

import re
from pathlib import Path

ROOT = Path(__file__).resolve().parent
SOURCE = ROOT / "pascal_code_extracted.txt"
OUT_DIR = ROOT / "pascal"

BEGIN = re.compile(r"^--------------- Begin Program ke (\d+) ----------------------\s*$")
END = re.compile(r"^--------------- End Program ke (\d+) ----------------------\s*$")

FILENAMES = [
    "hello.pas",
    "hello2.pas",
    "demo_tipe_data.pas",
    "baca_tulis.pas",
    "operasi_boolean_dan_numerik.pas",
    "assignment_real.pas",
    "tunjangan_anak.pas",
    "tunjangan_dan_potongan.pas",
    "cek_tombol_a.pas",
    "cek_huruf_besar.pas",
    "diskriminan_kuadrat.pas",
    "akar_persamaan_kuadrat.pas",
    "upah_golongan.pas",
    "menu_geometri_case.pas",
    "huruf_mutu.pas",
    "pangkat_for.pas",
    "hitung_mundur.pas",
    "rata_rata_data.pas",
    "pola_bintang.pas",
    "tabel_pangkat_x.pas",
    "menu_geometri_repeat.pas",
    "balik_bilangan.pas",
    "pangkat_latihan.pas",
    "faktorial.pas",
    "tabel_latihan.pas",
    "prosedur_upah_latihan.pas",
    "array_isi_cetak.pas",
    "array_prosedur.pas",
    "matriks_3x3.pas",
    "record_upah.pas",
    "record_prosedur.pas",
    "daf_pegawai_array.pas",
]


def main() -> None:
    if len(FILENAMES) != 32:
        raise SystemExit("FILENAMES harus berisi 32 entri")
    text = SOURCE.read_text(encoding="utf-8")
    lines = text.splitlines(keepends=True)

    OUT_DIR.mkdir(parents=True, exist_ok=True)

    current_n: int | None = None
    buffer: list[str] = []

    for line in lines:
        raw = line.rstrip("\r\n")
        mb = BEGIN.match(raw)
        me = END.match(raw)
        if mb:
            current_n = int(mb.group(1))
            buffer = []
            continue
        if me:
            n = int(me.group(1))
            if current_n != n:
                raise SystemExit(f"End ke {n} tidak cocok dengan Begin ke {current_n}")
            if not (1 <= n <= 32):
                raise SystemExit(f"Nomor program di luar 1..32: {n}")
            path = OUT_DIR / FILENAMES[n - 1]
            body = "".join(buffer)
            path.write_text(body, encoding="utf-8")
            current_n = None
            buffer = []
            continue
        if current_n is not None:
            buffer.append(line)

    if current_n is not None:
        raise SystemExit(f"Blok tidak tertutup (masih di program ke {current_n})")


if __name__ == "__main__":
    main()


import os
import re

mapping = {
    "modul-01.tex": ["hello.py", "hello2.py"],
    "modul-02.tex": ["demo_tipe_data.py", "assignment_real.py", "baca_tulis.py", "operasi_boolean_dan_numerik.py"],
    "modul-03.tex": ["akar_persamaan_kuadrat.py", "diskriminan_kuadrat.py", "cek_huruf_besar.py", "huruf_mutu.py", "menu_geometri_case.py", "upah_golongan.py", "tunjangan_dan_potongan.py", "tunjangan_anak.py"],
    "modul-04.tex": ["hitung_mundur.py", "menu_geometri_repeat.py", "pangkat_for.py", "pola_bintang.py", "tabel_pangkat_x.py", "cek_tombol_a.py", "rata_rata_data.py", "pangkat_latihan.py", "balik_bilangan.py"],
    "modul-05.tex": ["faktorial.py", "prosedur_upah_latihan.py", "tabel_latihan.py"],
    "modul-06.tex": ["matriks_3x3.py", "array_isi_cetak.py", "array_prosedur.py", "daf_pegawai_array.py", "record_upah.py", "record_prosedur.py"]
}

base_dir = r"C:\Matakuliah\Modul_Praktikum_Python\modul_praktikum_python"
python_src_dir = os.path.join(base_dir, r"contoh_code\python")
modul_dir = os.path.join(base_dir, "modul")

for modul_file, py_files in mapping.items():
    tex_path = os.path.join(modul_dir, modul_file)
    if not os.path.exists(tex_path):
        print(f"File not found: {tex_path}")
        continue
    
    with open(tex_path, "r", encoding="utf-8") as f:
        content = f.read()

    new_section_content = "\n\n\\section{Studi Kasus dan Contoh Kode}\n\nBerikut adalah contoh-contoh program Python yang mengimplementasikan konsep-konsep pada modul ini.\n"
    
    for py_file in py_files:
        py_path = os.path.join(python_src_dir, py_file)
        if not os.path.exists(py_path):
            print(f"Warning: {py_file} not found.")
            continue
            
        with open(py_path, "r", encoding="utf-8") as f:
            py_code = f.read()
            
        # Clean up Pascal comments if any
        # Matches: # Pascal: ...
        py_code = re.sub(r"#\s*Pascal:.*?\n", "", py_code)
        
        escaped_file = py_file.replace("_", r"\_")
        new_section_content += f"\n\\subsection{{Kode: \\texttt{{{escaped_file}}}}}\n"
        new_section_content += f"\\begin{{lstlisting}}[language=Python,caption={{\\texttt{{{escaped_file}}}}}]\n"
        new_section_content += py_code
        if not py_code.endswith("\n"):
            new_section_content += "\n"
        new_section_content += "\\end{lstlisting}\n"
    
    # Insert new_section_content before \section{Referensi sesi} or \end{document}
    if "\\section{Referensi sesi}" in content:
        content = content.replace("\\section{Referensi sesi}", new_section_content + "\n\\section{Referensi sesi}")
    elif "\\end{document}" in content:
        content = content.replace("\\end{document}", new_section_content + "\n\\end{document}")
    else:
        content += new_section_content

    with open(tex_path, "w", encoding="utf-8") as f:
        f.write(content)
        
    print(f"Updated {modul_file}")


@echo off
REM Menghapus artefak LaTeX rekursif dari root repo + mengosongkan output\
REM Tidak menyentuh folder jupyter_notebook\ ^(seluruh isi, termasuk venv^).
setlocal

set "ROOT=%~dp0"
cd /d "%ROOT%"
pushd "%ROOT%"

echo ============================================================
echo Pembersihan rekursif: file sampingan kompilasi LaTeX
echo Termasuk .pdf dan .log di folder proyek ^(rekursif^)
echo Kecuali folder: jupyter_notebook\ ^(tidak dibersihkan^)
echo ============================================================
echo.
echo Root: %ROOT%
echo Cakupan: silabus, modul_praktikum_data_science, modul_praktikum_python, dll.
echo PERINGATAN: Semua berkas dengan ekstensi di bawah ini akan dihapus.
echo.

REM Ekstensi umum hasil / sampingan LaTeX
REM Rekursif per folder tingkat atas, kecuali jupyter_notebook\ ^(del /s tidak punya --exclude^)
for /d %%D in ("%ROOT%*") do (
    if /i not "%%~nxD"=="jupyter_notebook" (
        pushd "%%D"
        for %%E in (
            aux
            bbl
            blg
            bcf
            out
            toc
            lof
            lot
            lol
            fls
            fdb_latexmk
            log
            pdf
            dvi
            xdv
            ps
            synctex
            synctex.gz
            pdfsync
            run.xml
            nav
            snm
            vrb
            idx
            ilg
            ind
            acn
            acr
            alg
            glg
            glo
            gls
            ist
            xdy
            spl
            fmt
        ) do (
            del /s /q "*.%%E" 2>nul
        )
        popd
    )
)
REM Berkas artefak langsung di root repo ^(bukan di dalam subfolder^)
for %%E in (
    aux
    bbl
    blg
    bcf
    out
    toc
    lof
    lot
    lol
    fls
    fdb_latexmk
    log
    pdf
    dvi
    xdv
    ps
    synctex
    synctex.gz
    pdfsync
    run.xml
    nav
    snm
    vrb
    idx
    ilg
    ind
    acn
    acr
    alg
    glg
    glo
    gls
    ist
    xdy
    spl
    fmt
) do (
    del /q "%ROOT%*.%%E" 2>nul
)

REM Isi folder output jika ada (hasil kompilasi terpusat)
if exist "output\" (
    echo Membersihkan isi folder output\ ...
    del /s /q "output\*.*" 2>nul
    for /d %%D in ("output\*") do rmdir /s /q "%%D" 2>nul
)

popd

echo.
echo ============================================================
echo Selesai: file sampingan LaTeX ^(.pdf, .log, .aux, dll.^) telah dibersihkan.
echo ============================================================
echo.
pause
exit /b 0

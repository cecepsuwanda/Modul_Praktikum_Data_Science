@echo off
setlocal enabledelayedexpansion

set "ROOT_DIR=%~dp0"
set "OUTPUT_DIR=%ROOT_DIR%output"
set "MODUL_DIR=%ROOT_DIR%modul_praktikum_data_science"
set "SOURCE_DIR=%MODUL_DIR%\modul"

if not exist "%SOURCE_DIR%" (
    echo ERROR: Folder tidak ditemukan: %SOURCE_DIR%
    goto :end
)

if not exist "%OUTPUT_DIR%" mkdir "%OUTPUT_DIR%"

echo ============================================================
echo Modul Praktikum Data Science - kompilasi per bab ^(subfiles^)
echo Folder sumber: %SOURCE_DIR%
echo PDF per bab:   %OUTPUT_DIR%\
echo Catatan: bab adalah subfile; jika gagal, kompilasi dari
echo          compile_modul_praktikum_data_science.bat ^(utuh^).
echo ============================================================

pushd "%SOURCE_DIR%"

set "FAIL=0"
for %%F in (modul-*.tex) do (
    set "FILE_NAME=%%~nF"
    echo.
    echo ------------------------------------------------------------
    echo Kompilasi %%F ...
    echo ------------------------------------------------------------

    pdflatex -interaction=nonstopmode -halt-on-error "%%F"
    if !errorlevel! neq 0 (
        echo ERROR: Gagal pass 1 - %%F
        set "FAIL=1"
    ) else (
        pdflatex -interaction=nonstopmode -halt-on-error "%%F"
        if !errorlevel! neq 0 (
            echo ERROR: Gagal pass 2 - %%F
            set "FAIL=1"
        ) else (
            if exist "%%~nF.pdf" (
                echo Memindahkan %%~nF.pdf ke output...
                move /y "%%~nF.pdf" "%OUTPUT_DIR%\%%~nF.pdf"
            ) else (
                echo PERINGATAN: %%~nF.pdf tidak ditemukan setelah kompilasi.
            )
        )
    )
)

popd

echo Membersihkan file bantu di folder modul...
call :cleanup "%SOURCE_DIR%"

echo.
if "!FAIL!"=="1" (
    echo Selesai dengan beberapa kegagalan. Periksa log di atas.
) else (
    echo Selesai. PDF per bab ada di: %OUTPUT_DIR%
)
goto :end

:cleanup
set "TARGET_FOLDER=%~1"
if not exist "%TARGET_FOLDER%" exit /b 0
pushd "%TARGET_FOLDER%"
for %%E in (aux bbl blg bcf out toc lof lot fls fdb_latexmk nav snm vrb idx ilg ind acn acr alg glg glo gls ist xdy run.xml synctex pdfsync synctex.gz) do (
    del /s /q "*.%%E" 2>nul
)
popd
exit /b 0

:end
echo.
pause
exit /b 0

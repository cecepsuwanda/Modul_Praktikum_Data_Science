@echo off
setlocal

set "ROOT_DIR=%~dp0"
set "OUTPUT_DIR=%ROOT_DIR%output"
set "MODUL_DIR=%ROOT_DIR%modul_praktikum_data_science"
set "MAIN_TEX=modul_praktikum_data_science.tex"

if not exist "%MODUL_DIR%\%MAIN_TEX%" (
    if exist "%MODUL_DIR%\main.tex" (
        set "MAIN_TEX=main.tex"
    ) else (
        echo ERROR: Tidak ditemukan: %MODUL_DIR%\modul_praktikum_data_science.tex atau main.tex
        goto :end
    )
)

if not exist "%OUTPUT_DIR%" mkdir "%OUTPUT_DIR%"

echo ============================================================
echo Modul Praktikum Data Science ^(LaTeX book + subfiles^)
echo Sumber: %MODUL_DIR%\%MAIN_TEX%
for %%I in ("%MAIN_TEX%") do echo Keluaran PDF: %OUTPUT_DIR%\%%~nI.pdf
echo ============================================================

pushd "%MODUL_DIR%"

where latexmk >nul 2>nul
if errorlevel 1 (
    echo Latexmk not found. Using pdflatex - 2 passes...
    goto :pdflatex_only
) else (
    where perl >nul 2>nul
    if errorlevel 1 (
        echo Latexmk found but Perl is missing. Skipping latexmk.
        goto :pdflatex_only
    ) else (
        echo Latexmk and Perl found. Using latexmk...
        latexmk -pdf -interaction=nonstopmode -output-directory="%OUTPUT_DIR%" "%MAIN_TEX%"
        if errorlevel 1 (
            echo Latexmk failed. Falling back to pdflatex...
            goto :pdflatex_only
        ) else (
            goto :after_build
        )
    )
)

:pdflatex_only
echo Running pdflatex pass 1...
pdflatex -interaction=nonstopmode -halt-on-error -output-directory="%OUTPUT_DIR%" "%MAIN_TEX%"
if errorlevel 1 goto :failed

echo Running pdflatex pass 2 - TOC / referensi silang...
pdflatex -interaction=nonstopmode -halt-on-error -output-directory="%OUTPUT_DIR%" "%MAIN_TEX%"
if errorlevel 1 goto :failed

:after_build
popd

echo Membersihkan file bantu di output dan folder modul...
call :cleanup "%OUTPUT_DIR%"
call :cleanup "%MODUL_DIR%"

echo.
echo Selesai.
for %%I in ("%MAIN_TEX%") do echo PDF: %OUTPUT_DIR%\%%~nI.pdf
if /i not "%MAIN_TEX%"=="main.tex" (
    if exist "%OUTPUT_DIR%\main.pdf" (
        echo ^(Catatan: main.pdf masih ada jika pernah dikompilasi dari main.tex^)
    )
)
goto :end

:failed
popd
echo.
echo ERROR: Kompilasi modul praktikum Data Science gagal.
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

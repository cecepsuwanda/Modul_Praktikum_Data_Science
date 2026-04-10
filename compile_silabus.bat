@echo off
REM Kompilasi silabus/RPS praktikum: silabus_praktikum_data_science.tex ke output\
REM Modul lab LaTeX: compile_modul_praktikum_data_science.bat
REM Silabus teori (silabus_data_science.tex): kompilasi terpisah jika diperlukan
setlocal

set "ROOT_DIR=%~dp0"
set "OUTPUT_DIR=%ROOT_DIR%output"
set "SOURCE_DIR=%ROOT_DIR%"
set "TEX_MAIN=silabus_praktikum_data_science.tex"

if not exist "%OUTPUT_DIR%" mkdir "%OUTPUT_DIR%"

if not exist "%SOURCE_DIR%%TEX_MAIN%" (
    echo ERROR: Tidak ditemukan: %SOURCE_DIR%%TEX_MAIN%
    goto :failed
)

echo ============================================================
echo Silabus Praktikum Data Science ^(RPS praktikum^)
echo Berkas: %TEX_MAIN%
echo ============================================================
pushd "%SOURCE_DIR%"
call :try_build "%TEX_MAIN%"
if errorlevel 1 (
    popd
    goto :failed
)
popd

echo.
echo Membersihkan file bantu...
call :cleanup "%OUTPUT_DIR%"
call :cleanup_silabus_root "%ROOT_DIR%"

echo.
echo Selesai.
echo PDF: %OUTPUT_DIR%\silabus_praktikum_data_science.pdf
echo.
echo Modul praktikum ^(buku lab^): compile_modul_praktikum_data_science.bat
goto :end

:failed
echo.
echo ERROR: Kompilasi silabus praktikum gagal.
goto :end

:try_build
setlocal
set "TEX_FILE=%~1"
where latexmk >nul 2>nul
if errorlevel 1 goto :use_pdflatex
where perl >nul 2>nul
if errorlevel 1 goto :use_pdflatex
latexmk -pdf -interaction=nonstopmode -output-directory="%OUTPUT_DIR%" "%TEX_FILE%"
if errorlevel 1 goto :use_pdflatex
endlocal & exit /b 0

:use_pdflatex
pdflatex -interaction=nonstopmode -halt-on-error -output-directory="%OUTPUT_DIR%" "%TEX_FILE%"
if errorlevel 1 endlocal & exit /b 1
pdflatex -interaction=nonstopmode -halt-on-error -output-directory="%OUTPUT_DIR%" "%TEX_FILE%"
if errorlevel 1 endlocal & exit /b 1
endlocal & exit /b 0

:cleanup
set "TARGET_FOLDER=%~1"
if not exist "%TARGET_FOLDER%" exit /b 0
pushd "%TARGET_FOLDER%"
for %%E in (aux bbl blg bcf out toc lof lot fls fdb_latexmk nav snm vrb idx ilg ind acn acr alg glg glo gls ist xdy run.xml synctex pdfsync synctex.gz) do (
    del /s /q "*.%%E" 2>nul
)
popd
exit /b 0

:cleanup_silabus_root
set "R=%~1"
for %%E in (aux bbl blg bcf out toc lof lot fls fdb_latexmk nav snm vrb idx ilg ind acn acr alg glg glo gls ist xdy run.xml synctex pdfsync synctex.gz log) do (
    del /q "%R%silabus_praktikum_data_science.%%E" 2>nul
)
exit /b 0

:end
echo.
pause
exit /b 0

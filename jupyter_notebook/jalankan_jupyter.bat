@echo off
setlocal
set "HERE=%~dp0"
set "REPO=%HERE%.."
set "NB_DIR=%REPO%\modul_praktikum_data_science\notebooks"

cd /d "%HERE%"

if not exist "venv\Scripts\activate.bat" (
    echo ERROR: Virtual environment belum ada.
    echo Jalankan install_jupyter.bat di folder ini terlebih dahulu.
    pause
    exit /b 1
)

if not exist "%NB_DIR%" (
    echo ERROR: Folder notebook tidak ditemukan:
    echo %NB_DIR%
    pause
    exit /b 1
)

echo Mengaktifkan venv dan membuka Jupyter di:
echo %NB_DIR%
echo.

call "%HERE%venv\Scripts\activate.bat"
cd /d "%NB_DIR%"
jupyter notebook
exit /b %errorlevel%

@echo off
setlocal
cd /d "%~dp0"

echo ========================================================
echo Lingkungan Jupyter untuk Praktikum Data Science
echo Folder kerja: %CD%
echo ========================================================
echo.

echo [1/4] Membuat virtual environment ^(venv^)...
python -m venv venv
if errorlevel 1 (
    echo ERROR: python -m venv gagal. Pastikan Python 3.10+ terpasang.
    pause
    exit /b 1
)

echo [2/4] Mengaktifkan virtual environment...
call "%~dp0venv\Scripts\activate.bat"

echo [3/4] Upgrade pip...
python -m pip install --upgrade pip

echo [4/4] Menginstal Jupyter dan paket praktikum ^(selaras README modul^)...
pip install notebook jupyter numpy pandas matplotlib seaborn scikit-learn openpyxl

echo.
echo ========================================================
echo INSTALASI SELESAI
echo.
echo Jalankan notebook dari folder modul:
echo   jalankan_jupyter.bat
echo ========================================================
pause
exit /b 0

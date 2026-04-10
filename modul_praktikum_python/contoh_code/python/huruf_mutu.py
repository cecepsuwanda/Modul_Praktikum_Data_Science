"""Konversi nilai akhir ke huruf mutu A-E."""


def main() -> None:
    quiz = 40.0
    absen = 100.0
    uts = 60.0
    uas = 50.0
    tugas = 80.0
    print(f"Absen = {absen:5.2f} UTS = {uts:5.2f}")
    print(f"Tugas = {tugas:5.2f} UAS = {uas:5.2f}")
    print(f"Quiz = {quiz:5.2f}")
    nilai = (
        (0.1 * absen) + (0.2 * tugas) + (0.3 * quiz) + (0.4 * uts) + (0.5 * uas)
    ) / 2
    huruf_mutu = ""
    if 85 < nilai <= 100:
        huruf_mutu = "A"
    elif 70 < nilai <= 85:
        huruf_mutu = "B"
    elif 55 < nilai <= 70:
        huruf_mutu = "C"
    elif 40 < nilai <= 55:
        huruf_mutu = "D"
    elif 0 <= nilai <= 40:
        huruf_mutu = "E"
    print("Huruf Mutu : ", huruf_mutu)


if __name__ == "__main__":
    main()

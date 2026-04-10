"""Cek apakah karakter termasuk huruf besar A..Z."""


def main() -> None:
    s = input("Masukkan Suatu Karakter :").strip()
    a = s[0] if s else ""
    print()
    if "A" <= a <= "Z":
        print("Anda menekan huruf besar")
        print("Huruf yang anda tekan, Huruf ", a)
    else:
        print("Anda tidak menekan huruf besar")
        print("Karakter yang anda tekan, Karakter ", a)
    input("Tekan Enter untuk melanjutkan...")


if __name__ == "__main__":
    main()

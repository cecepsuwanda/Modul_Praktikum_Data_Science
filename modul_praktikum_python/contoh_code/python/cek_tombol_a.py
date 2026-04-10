"""Cek apakah pengguna menekan huruf A besar."""


def main() -> None:
    s = input("Masukkan Suatu Karakter :").strip()
    a = s[0] if s else ""
    print()
    if a == "A":
        print("Anda menekan A besar")
    else:
        print("Anda tidak menekan A besar")
    input("Tekan Enter untuk melanjutkan...")


if __name__ == "__main__":
    main()

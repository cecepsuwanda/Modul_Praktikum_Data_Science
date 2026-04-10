"""Menentukan jenis akar persamaan kuadrat dari diskriminan."""


def main() -> None:
    print("Menentukan Jenis Akar Persamaan Kuadrat")
    print("      Persamaan Umum : ax^2+bx+c       ")
    print()
    a = float(input("a = "))
    b = float(input("b = "))
    c = float(input("c = "))
    print()
    d = (b * b) - (4 * a * c)
    print("Nilai Diskriminan :", d)
    print("Jenis Akar : ", end="")
    if d == 0:
        print("Kembar", end="")
    elif d > 0:
        print("Berlainan", end="")
    elif d < 0:
        print("imajiner berlainan", end="")
    print()
    input("Tekan Enter untuk melanjutkan...")


if __name__ == "__main__":
    main()

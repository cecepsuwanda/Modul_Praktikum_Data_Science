"""Mencari akar persamaan kuadrat (rumus benar; kode Pascal sumber berisi typo)."""

import math


def main() -> None:
    print("    Mencari Akar Persamaan Kuadrat     ")
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
        x1 = (-b) / (2 * a)
        print("Kembar")
        print(f"x1=x2={x1:10.2f}")
    elif d > 0:
        # Pascal salah menulis kedua akar dengan +sqrt(D); di sini dipakai + dan -
        x1 = (-b + math.sqrt(d)) / (2 * a)
        x2 = (-b - math.sqrt(d)) / (2 * a)
        print("Berlainan")
        print(f"x1 = {x1:10.2f}")
        print(f"x2 = {x2:10.2f}")
    else:
        # sqrt(-D), bukan -d kecil (typo Pascal)
        x1 = (-b) / (2 * a)
        x2 = math.sqrt(-d) / (2 * a)
        print("2 akar imajiner berlainan")
        print(f"x1 = {x1:5.2f}+{x2:5.2f}i")
        print(f"x2 = {x1:5.2f}-{x2:5.2f}i")


if __name__ == "__main__":
    main()

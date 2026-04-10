"""Input N data dan hitung total serta rata-rata."""

# Pascal tidak menginisialisasi Total; di Python mulai dari 0.0 agar benar.


def main() -> None:
    n = int(input("Banyaknya data : "))
    total = 0.0
    for i in range(1, n + 1):
        data = float(input(f"Data ke {i} : "))
        total += data
    rata = total / n
    print("Banyaknya Data       : ", n)
    print("Total Nilai Data     : ", f"{total:5.2f}")
    print("Rata-rata nilai Data : ", f"{rata:5.2f}")


if __name__ == "__main__":
    main()

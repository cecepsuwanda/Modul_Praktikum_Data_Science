"""Rantai assignment pada variabel float."""


def main() -> None:
    i = 3.0
    b = 2.0
    c = 0.0
    i = i + i
    b = b + i
    c = c * i
    print(f"Nilai i={i} b={b} c={c}", end="")


if __name__ == "__main__":
    main()

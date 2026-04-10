"""Mencetak digit bilangan dari belakang (mod/div)."""


def main() -> None:
    i = 2345
    print("Bilangan : ", i)
    print("Dibalik  : ", end="")
    while i != 0:
        print(i % 10, end="")
        i //= 10


if __name__ == "__main__":
    main()

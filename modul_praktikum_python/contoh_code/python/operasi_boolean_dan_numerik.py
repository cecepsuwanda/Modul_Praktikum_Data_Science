"""Tabel kebenaran boolean dan operasi numerik int/float."""


def main() -> None:
    def fmt_bool(v: object, width: int) -> str:
        s = str(v)
        return f"{s:>{width}}"

    print("tabel kebenaran")
    print("-----------------------------------------------------")
    print("|   x1  |   x2  |     x1 and x2     |    x1 or x2  |")
    print("----------------------------------------------------")
    print(
        "| true  | true  |"
        + fmt_bool(True and True, 12)
        + f"{'|':>8}"
        + fmt_bool(True or True, 10)
        + f"{'|':>8}"
    )
    print(
        "| true  | false |"
        + fmt_bool(True and False, 12)
        + f"{'|':>8}"
        + fmt_bool(True or False, 10)
        + f"{'|':>8}"
    )
    print(
        "| false | true  |"
        + fmt_bool(False and True, 12)
        + f"{'|':>8}"
        + fmt_bool(False or True, 10)
        + f"{'|':>8}"
    )
    print(
        "| false | false |"
        + fmt_bool(False and False, 12)
        + f"{'|':>8}"
        + fmt_bool(False or False, 10)
        + f"{'|':>8}"
    )
    print("----------------------------------------------------")

    i, j = 5, 2
    print("operasi numerik pada tipe data integer")
    print("---------------------------")
    print("| operasi | hasil operasi |")
    print("---------------------------")
    print(f"| {i} + {j}   | {i + j:6d}        |")
    print(f"| {i} - {j}   | {i - j:6d}        |")
    print(f"| {i} * {j}   | {i * j:6d}        |")
    print(f"| {i} / {j}   | {i / j:6.2f}        |")
    print(f"| {i} div {j} | {i // j:6d}        |")
    print(f"| {i} mod {j} | {i % j:6d}        |")
    print("---------------------------")
    print("Tekan enter untuk meneruskan . . .")
    input()

    x, y = 5.0, 2.0
    print("operasi numerik pada tipe data float")
    print("---------------------------")
    print("| operasi | hasil operasi |")
    print("---------------------------")
    print(f"| {x:3.1f} + {y:3.1f}   | {x + y:6.1f}    |")
    print(f"| {x:3.1f} - {y:3.1f}   | {x - y:6.1f}    |")
    print(f"| {x:3.1f} * {y:3.1f}   | {x * y:6.1f}    |")
    print(f"| {x:3.1f} / {y:3.1f}   | {x / y:6.1f}    |")
    print("---------------------------")

    tf = x != y
    print("5.0 <> 2.0 adalah=", tf)
    tf = x < y
    print("5.0 < 2.0 adalah=", tf)
    input("Tekan Enter untuk melanjutkan...")


if __name__ == "__main__":
    main()

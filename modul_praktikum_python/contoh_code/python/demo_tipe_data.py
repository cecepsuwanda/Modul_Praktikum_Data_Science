"""Demonstrasi beberapa tipe data (integer, besar, byte, float, string)."""


def main() -> None:
    # KAMUS / ALGORITMA - setara demo_tipe_data.pas
    shello = "Hello, dunia"
    i = -1234
    j = 60000  # setara word (non-negatif, di Python int bebas)
    k = 3  # byte
    lr = 3.14  # real (hindari nama 'l' tunggal)
    print(shello)
    print(f"Nilai i (integer)= {i:5d}")
    print(f"Nilai j (word)   = {j:5d}")
    print(f"Nilai k (byte)   = {k:5d}")
    print(f"Nilai l (real)   = {lr:5.2f}")
    input("Tekan Enter untuk melanjutkan...")


if __name__ == "__main__":
    main()

import argparse
import json
import re
from pathlib import Path
from typing import Any


HEADING_RE = re.compile(
    r"(^|\n)\s{0,3}#{1,6}\s*(Latihan|Asesmen|Checklist|Rangkuman)\b",
    flags=re.IGNORECASE,
)
KATA_KUNCI_RE = re.compile(
    r"(^|\n)\s{0,3}(#{1,6}\s*)?\*{0,2}Kata\s*kunci\*{0,2}\b",
    flags=re.IGNORECASE,
)


def cell_text(cell: dict[str, Any]) -> str:
    src = cell.get("source", "")
    if isinstance(src, list):
        return "".join(src)
    return str(src)


def should_drop_markdown_cell(text: str) -> bool:
    # Only drop cells that contain a clear section heading/label.
    return bool(HEADING_RE.search(text) or KATA_KUNCI_RE.search(text))


def process_notebook(path: Path, *, dry_run: bool) -> tuple[int, int]:
    data = json.loads(path.read_text(encoding="utf-8"))
    cells = data.get("cells", [])
    kept: list[dict[str, Any]] = []
    dropped = 0

    for cell in cells:
        if cell.get("cell_type") == "markdown":
            text = cell_text(cell)
            if should_drop_markdown_cell(text):
                dropped += 1
                continue
        kept.append(cell)

    if dropped and not dry_run:
        data["cells"] = kept
        path.write_text(
            json.dumps(data, ensure_ascii=False, indent=1) + "\n",
            encoding="utf-8",
        )

    return len(cells), dropped


def main() -> int:
    ap = argparse.ArgumentParser(
        description="Remove Latihan/Asesmen/Checklist/Rangkuman/Kata kunci markdown cells from notebooks."
    )
    ap.add_argument(
        "--root",
        default="modul_praktikum_data_science/notebooks",
        help="Notebook directory (relative or absolute).",
    )
    ap.add_argument("--dry-run", action="store_true", help="Don't write changes.")
    args = ap.parse_args()

    root = Path(args.root)
    if not root.exists():
        raise SystemExit(f"Root directory not found: {root}")

    nb_paths = sorted(root.glob("*.ipynb"))
    if not nb_paths:
        print(f"No notebooks found under: {root}")
        return 0

    total_dropped = 0
    for p in nb_paths:
        total_cells, dropped = process_notebook(p, dry_run=args.dry_run)
        total_dropped += dropped
        status = "OK"
        if dropped:
            status = f"DROPPED={dropped}"
        print(f"{p.name}\t{status}\t(total_cells={total_cells})")

    print(f"\nTotal notebooks: {len(nb_paths)}")
    print(f"Total markdown cells dropped: {total_dropped}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())


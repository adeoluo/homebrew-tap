"""Point a prebuilt-binary formula at a new release, using the release's checksums.txt.

Usage: python3 scripts/bump.py <formula> <owner/repo> <vX.Y.Z>
Example: python3 scripts/bump.py vectordb adeoluo/vectordb-go v0.1.1

Rewrites the version, every download URL, and every sha256 in Formula/<formula>.rb.
Each URL's archive name is looked up in checksums.txt, so a missing platform fails
loudly instead of leaving a stale hash.
"""

from __future__ import annotations

import re
import subprocess
import sys
from pathlib import Path


def main() -> None:
    if len(sys.argv) != 4:
        raise SystemExit(__doc__)
    formula, repo, tag = sys.argv[1:]
    if not re.fullmatch(r"v\d+\.\d+\.\d+", tag):
        raise SystemExit(f"not a version tag: {tag}")
    path = Path(__file__).resolve().parent.parent / "Formula" / f"{formula}.rb"
    text = path.read_text()
    checksums = subprocess.run(
        ["gh", "release", "download", tag, "-R", repo, "-p", "checksums.txt", "-O", "-"],
        check=True,
        capture_output=True,
        text=True,
    ).stdout
    sums = {name: digest for digest, name in (line.split() for line in checksums.splitlines())}

    text = re.sub(r'version "[^"]+"', f'version "{tag[1:]}"', text, count=1)

    def replace(match: re.Match[str]) -> str:
        url = re.sub(r"/download/v[^/]+/", f"/download/{tag}/", match.group(1))
        url = re.sub(r"_v\d+\.\d+\.\d+_", f"_{tag}_", url)
        name = url.rsplit("/", 1)[1]
        if name not in sums:
            raise SystemExit(f"{name} is not in {tag}'s checksums.txt")
        return f'url "{url}"\n{match.group(2)}sha256 "{sums[name]}"'

    text, count = re.subn(r'url "([^"]+)"\n(\s+)sha256 "[0-9a-f]{64}"', replace, text)
    if count == 0:
        raise SystemExit("no url/sha256 pairs found")
    path.write_text(text)
    print(f"{formula}: {count} archives now point at {tag}")


if __name__ == "__main__":
    main()

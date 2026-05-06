#!/usr/bin/env -S uv run --script

# this exists to write the path of fdignore in ripgrepconfig correctly, with
# normalized slashes for the os (e.g. windows)

from pathlib import Path

DOTFILES_DIR = Path(__file__).resolve().parent
RIPGREPCONFIG_PATH = DOTFILES_DIR.joinpath("ripgrepconfig")
FDIGNORE_PATH = DOTFILES_DIR.joinpath("stow_folder", ".config", "fd", "ignore")

RIPGREPCONFIG_PATH.write_text(f"""--hidden

--smart-case

--no-ignore
--ignore-file={FDIGNORE_PATH}

--max-columns=150
--max-columns-preview
""")

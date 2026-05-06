alias i := install

install:
    stow -R -S stow_folder
    uv run --script gen-ripgrepconfig.py

clean-env:
    stow -D stow_folder

alias i := install

install:
    stow -R -S stow_folder

clean-env:
    stow -D stow_folder

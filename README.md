# DOTFILES for Arch Linux + Hyprland

## Disclaimer

This is for my personal use and it's working in progress, so files can be deleted, things can break, etc. If you want to try it, it`s for your own risk.

## Arch Linux + Hyprland + This Dotfiles

See: https://github.com/raphaelbruno/aha

## Automatic Install

Just run this code and see the magic

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/raphaelbruno/dotfiles/main/install.sh)"
```

## Manual Install

- Clone the repo

  ```
  git clone https://github.com/raphaelbruno/dotfiles.git /tmp/dotfiles
  ```

- Copy files

  ```
  cp -R /tmp/dotfiles/. $HOME
  ```

- Remove Unused files

  ```
  rm -rf ~/.git ~/install.sh ~/README.md
  ```

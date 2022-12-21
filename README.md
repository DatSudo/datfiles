# Datfiles

Ayu-dark Arch config files.

<div align=center>
    <img src="https://github.com/DatSudo/datfiles/blob/main/.images/ayu-dark.png">
</div>

---

## Installation

I'm using [GNU Stow](https://www.gnu.org/software/stow/) for managing dotfiles, so to put these files easily, install `stow` first and clone this repository in your `$HOME`:

```bash
git clone https://github.com/datsudo/datfiles .dotfiles/
```

> :warning: You might want to backup first your config files before the next step.

Then stow them:

```bash
cd .dotfiles/

# If you want all the files
stow .

# If you want some specific files/directory
stow .config/nvim
stow .Xresources
```


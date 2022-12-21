# Datfiles

My Arch config files.

Available color schemes (see other branches):

<div>
<details>
<summary><b>Gruv</b></summary>

<img src="https://github.com/DatSudo/datfiles/blob/main/.images/gruv.png">
</img>
</div>


<div>
<details>
<summary><b>Ayu-dark</b></summary>

<img src="https://github.com/DatSudo/datfiles/blob/main/.images/ayu-dark.png">
</img>
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


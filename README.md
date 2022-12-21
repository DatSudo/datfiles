# Datfiles

My Arch config files.

Available color schemes (see other branch):

<div>
<details>
<summary><b>Gruv</b></summary>

<img src=".images/gruv">
</img>
</div>


<div>
<details>
<summary><b>Ayu-dark</b></summary>

<img src=".images/ayu-dark">
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


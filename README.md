# dotfiles

This dotfiles repo uses `gnu-stow` to mange all of the app configurations

In case my future self forget how to use all of this, let me tell you what you did back then.

### Prerequisites

- GNU Stow (you can use `homebrew` if you like)

## Installation

At repo root

```bash
stow .
```

If any conflict occurs.

```bash
stow --adopt .
```

> **Note:** Be careful, this will override some files in `~/dotfiles`, so make sure that you have the previous state commited in git.

Now you should be good to go my friend, if not, have a good time Googling byeeeeeeee

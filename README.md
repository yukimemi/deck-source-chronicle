# deck-source-chronicle

This is a [hrsh7th/nvim-deck](https://github.com/hrsh7th/nvim-deck) source for [chronicle.vim](https://github.com/yukimemi/chronicle.vim).

# Requirements

- [hrsh7th/nvim-deck](https://github.com/hrsh7th/nvim-deck)
- [yukimemi/chronicle.vim](https://github.com/yukimemi/chronicle.vim)

# Usage

Two sources are registered for the source of the deck.

```vim
:Deck chronicle_read
```

```vim
:Deck chronicle_write
```

# Sample configuration

```lua
vim.keymap.set('n', 'mw', '<Cmd>Deck chronicle_write<CR>', { desc = 'Chronicle write' })
vim.keymap.set('n', 'mr', '<Cmd>Deck chronicle_read<CR>', { desc = 'Chronicle read' })
```

# License

Licensed under MIT License.

Copyright (c) 2025 yukimemi


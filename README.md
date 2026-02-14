# Multipurpose Neovim Config

## Dependencies

### Installation

The repository contains two arch-specific package lists for official and aur
repositories that contain most of the required tools. Other tools are installed
from mason.

Install required packages that are in the official repos:

```shell
pacman -S --needed - < pkglist.txt
```

Install required packages that are in the aur:

```shell
yay -S --needed - < pkglist-aur.txt
```

### LSPs

| Language   | LSP                        |
| ---------- | -------------------------- |
| bash       | bash-language-server       |
| C/C++      | clangd                     |
| cmake      | neocmake                   |
| css        | vscode-css-languageserver  |
| html       | vscode-html-languageserver |
| java       | jdtls                      |
| javascript | deno                       |
| json       | vscode-json-languageserver |
| latex      | texlab                     |
| LaTeX      | texlab                     |
| lua        | lua-language-server        |
| markdown   | marksman                   |
| python     | ty                         |

### Formatters

| Language    | Formatter   |
| ----------- | ----------- |
| css         | prettierd   |
| htmldjango  | django-lint |
| html        | prettierd   |
| Java script | prettierd   |
| jsonc       | prettierd   |
| json        | prettierd   |
| LaTeX       | tex-fmt     |
| lua         | stylua      |
| markdown    | prettierd   |
| xml         | prettierd   |

### Linters

| Language   | Linter        |
| ---------- | ------------- |
| htmldjango | django-lint   |
| markdown   | markdown-cli2 |

## Notes

### keybindings

- gq - format

### commands

- :vimgrep - search for pattern
- :filetype detect - manually detect the filetype

## Latex

Texlab lsp
Vimtex for nvim latex support
Okular for preview

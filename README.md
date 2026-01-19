# P6's POSIX.2: p6df-git

## Table of Contents

- [Badges](#badges)
- [Summary](#summary)
- [Contributing](#contributing)
- [Code of Conduct](#code-of-conduct)
- [Usage](#usage)
  - [Aliases](#aliases)
  - [Functions](#functions)
- [Hierarchy](#hierarchy)
- [Author](#author)

## Badges

[![License](https://img.shields.io/badge/License-Apache%202.0-yellowgreen.svg)](https://opensource.org/licenses/Apache-2.0)

## Summary

TODO: Add a short summary of this module.

## Contributing

- [How to Contribute](<https://github.com/p6m7g8-dotfiles/.github/blob/main/CONTRIBUTING.md>)

## Code of Conduct

- [Code of Conduct](<https://github.com/p6m7g8-dotfiles/.github/blob/main/CODE_OF_CONDUCT.md>)

## Usage

### Aliases

- `g` -> `git`
- `gA` -> `p6_git_cli_add_all`
- `ga` -> `p6_git_cli_add`
- `gb` -> `p6_git_cli_branch_verbose_verbose`
- `gbc` -> `p6_git_cli_branch_create`
- `gbD` -> `p6_git_cli_branch_Delete`
- `gc` -> `p6_git_cli_commit_verbose`
- `gC` -> `p6_git_cli_commit_with_message`
- `gcl` -> `p6_git_cli_commit_last_edit`
- `gco` -> `p6_git_cli_checkout`
- `gcod` -> `p6_git_util_checkout_default`
- `gCPF` -> `p6_git_util_commit_push_fix`
- `gCPSF` -> `p6_git_util_commit_push_squashed_fix`
- `gd` -> `p6_git_cli_diff`
- `gdd` -> `p6_git_util_diff_default`
- `gdh` -> `p6_git_cli_diff_head`
- `gdp` -> `p6_git_cli_diff_previous`
- `gf` -> `p6_git_cli_fetch_all`
- `gg` -> `p6_git_cli_grep`
- `ggf` -> `p6_git_cli_grep_files`
- `gl` -> `p6_git_util_log`
- `gm` -> `p6_git_cli_merge`
- `gP` -> `p6_git_cli_push_u`
- `gp` -> `p6_git_cli_pull_rebase_autostash_ff_only`
- `gPF` -> `p6_git_cli_push_fu`
- `gPt` -> `p6_git_cli_push_tags`
- `gR` -> `p6_git_cli_restore`
- `gra` -> `p6_git_cli_rebase_abort`
- `grc` -> `p6_git_cli_rebase_continue`
- `grhh` -> `p6_git_cli_reset_hard_head`
- `gs` -> `p6_git_cli_status_s`
- `gSync` -> `p6_git_util_sync`
- `gT` -> `p6_git_cli_revert`
- `gU` -> `p6_git_util_update`

### Functions

#### p6df-git

##### p6df-git/init.zsh

- `p6df::modules::git::aliases::init()`
- `p6df::modules::git::deps()`
- `p6df::modules::git::external::brew()`
- `p6df::modules::git::home::symlink()`
- `p6df::modules::git::init(_module, dir)`
- `p6df::modules::git::prompt::init()`
- `p6df::modules::git::prompt::mod()`
- `p6df::modules::git::prompt_precmd()`
- `p6df::modules::git::vcs_info()`
- `str str = p6_git_prompt_info()`

## Hierarchy

```text
.
├── init.zsh
├── README.md
└── share

2 directories, 2 files
```

## Author

Philip M. Gollucci <pgollucci@p6m7g8.com>

# P6's POSIX.2: p6df-git

## Table of Contents

## Badges

[![License](https://img.shields.io/badge/License-Apache%202.0-yellowgreen.svg)](https://opensource.org/licenses/Apache-2.0)

## Summary

## Contributing

- [How to Contribute](<https://github.com//.github/blob/main/CONTRIBUTING.md>)

## Code of Conduct

- [Code of Conduct](<https://github.com//.github/blob/main/CODE_OF_CONDUCT.md>)

## Usage

### Aliases

- g IS git
- ga IS p6_git_cli_add
- gA IS p6_git_cli_add_all
- gb IS p6_git_cli_branch_verbose_verbose
- gbc IS p6_git_cli_branch_create
- gbD IS p6_git_cli_branch_Delete
- gC IS p6_git_cli_commit_with_message
- gc IS p6_git_cli_commit_verbose
- gcl IS p6_git_cli_commit_last_edit
- gco IS p6_git_cli_checkout
- gcod IS p6_git_util_checkout_default
- gCPF IS p6_git_util_commit_push_fix
- gCPSF IS p6_git_util_commit_push_squashed_fix
- gd IS p6_git_cli_diff
- gdd IS p6_git_util_diff_default
- gdh IS p6_git_cli_diff_head
- gdp IS p6_git_cli_diff_previous
- gf IS p6_git_cli_fetch_all
- gg IS p6_git_cli_grep
- ggf IS p6_git_cli_grep_files
- gl IS p6_git_util_log
- gm IS p6_git_cli_merge
- gp IS p6_git_cli_pull_rebase_autostash_ff_only
- gP IS p6_git_cli_push_u
- gPF IS p6_git_cli_push_fu
- gPt IS p6_git_cli_push_tags
- gR IS p6_git_cli_restore
- gra IS p6_git_cli_rebase_abort
- grc IS p6_git_cli_rebase_continue
- grhh IS p6_git_cli_reset_hard_head
- gs IS p6_git_cli_status_s
- gSync IS p6_git_util_sync
- gT IS p6_git_cli_revert
- gU IS p6_git_util_update

### Functions

## p6df-git

### p6df-git/init.zsh

- p6df::modules::git::aliases::init()
- p6df::modules::git::deps()
- p6df::modules::git::external::brew()
- p6df::modules::git::home::symlink()
- p6df::modules::git::init(_module, dir)
- p6df::modules::git::prompt::init()
- p6df::modules::git::prompt::mod()
- p6df::modules::git::prompt_precmd()
- p6df::modules::git::vcs_info()
- str str = p6_git_prompt_info()

## Hierarchy

```text
.
├── init.zsh
├── README.md
└── share

2 directories, 2 files
```

## Author

Philip M . Gollucci <pgollucci@p6m7g8.com>

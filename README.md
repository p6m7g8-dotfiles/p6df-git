# p6df-git

## Table of Contents


### p6df-git
- [p6df-git](#p6df-git)
  - [Badges](#badges)
  - [Distributions](#distributions)
  - [Summary](#summary)
  - [Contributing](#contributing)
  - [Code of Conduct](#code-of-conduct)
  - [Usage](#usage)
  - [Author](#author)

### Badges

[![License](https://img.shields.io/badge/License-Apache%202.0-yellowgreen.svg)](https://opensource.org/licenses/Apache-2.0)
[![Gitpod ready-to-code](https://img.shields.io/badge/Gitpod-ready--to--code-blue?logo=gitpod)](https://gitpod.io/#https://github.com/p6m7g8/p6df-git)
[![Mergify](https://img.shields.io/endpoint.svg?url=https://gh.mergify.io/badges/p6m7g8/p6df-git/&style=flat)](https://mergify.io)
[![codecov](https://codecov.io/gh/p6m7g8/p6df-git/branch/master/graph/badge.svg?token=14Yj1fZbew)](https://codecov.io/gh/p6m7g8/p6df-git)
[![Gihub repo dependents](https://badgen.net/github/dependents-repo/p6m7g8/p6df-git)](https://github.com/p6m7g8/p6df-git/network/dependents?dependent_type=REPOSITORY)
[![Gihub package dependents](https://badgen.net/github/dependents-pkg/p6m7g8/p6df-git)](https://github.com/p6m7g8/p6df-git/network/dependents?dependent_type=PACKAGE)

## Summary

## Contributing

- [How to Contribute](CONTRIBUTING.md)

## Code of Conduct

- [Code of Conduct](https://github.com/p6m7g8/.github/blob/master/CODE_OF_CONDUCT.md)

## Usage


### Aliases

- g -> git
- gA -> p6_git_cli_add_all
- gC -> p6_git_cli_commit_with_message
- gP -> p6_git_cli_push_u
- gPt -> p6_git_cli_push_tags
- gR -> p6_git_cli_restore
- gSync -> p6_git_util_sync
- gT -> p6_git_cli_revert
- gU -> p6_git_util_update
- ga -> p6_git_cli_add
- gb -> p6_git_cli_branch_verbose_verbose
- gbD -> p6_git_cli_branch_Delete
- gbc -> p6_git_cli_branch_create
- gc -> p6_git_cli_commit_verbose
- gcl -> p6_git_cli_commit_last_edit
- gco -> p6_git_cli_checkout
- gcod -> p6_git_util_checkout_default
- gd -> p6_git_cli_diff
- gdd -> p6_git_util_diff_default
- gdh -> p6_git_cli_diff_head
- gdp -> p6_git_cli_diff_previous
- gf -> p6_git_cli_fetch_all
- gg -> p6_git_cli_grep
- ggf -> p6_git_cli_grep_files
- gl -> p6_git_util_log
- gm -> p6_git_cli_merge
- gp -> p6_git_cli_pull_rebase_autostash_ff_only
- gra -> p6_git_cli_rebase_abort
- grc -> p6_git_cli_rebase_continue
- grhh -> p6_git_cli_reset_hard_head
- gs -> p6_git_cli_status_s

### Functions

### p6df-git:

#### p6df-git/init.zsh:

- p6df::modules::git::aliases::init()
- p6df::modules::git::deps()
- p6df::modules::git::external::brew()
- p6df::modules::git::home::symlink()
- p6df::modules::git::init(_module, dir)
- p6df::modules::git::prompt::init()
- p6df::modules::git::prompt::line()
- p6df::modules::git::prompt_precmd()
- p6df::modules::git::vcs_info()
- str str = p6_git_prompt_info()



## Author

Philip M . Gollucci <pgollucci@p6m7g8.com>

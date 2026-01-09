# shellcheck shell=bash
######################################################################
#<
#
# Function: p6df::modules::git::deps()
#
#>
######################################################################
p6df::modules::git::deps() {
  ModuleDeps=(
    p6m7g8-dotfiles/p6df-zsh
    p6m7g8-dotfiles/p6git
  )
}

######################################################################
#<
#
# Function: p6df::modules::git::external::brew()
#
#>
######################################################################
p6df::modules::git::external::brew() {

  p6df::modules::homebrew::cli::brew::install git
  p6df::modules::homebrew::cli::brew::install git-delta
  p6df::modules::homebrew::cli::brew::install git-extras
  p6df::modules::homebrew::cli::brew::install git-lfs
  p6df::modules::homebrew::cli::brew::install git-quick-stats
  p6df::modules::homebrew::cli::brew::install git-secret

  p6df::modules::homebrew::cli::brew::install tig
  p6_file_copy "$HOMEBREW_PREFIX"/opt/tig/share/tig/examples/tigrc "$HOMEBREW_PREFIX"/etc/tigrc

  git lfs install

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::git::home::symlink()
#
#  Environment:	 P6_DFZ_SRC_P6M7G8_DOTFILES_DIR
#>
######################################################################
p6df::modules::git::home::symlink() {

  p6_file_symlink "$P6_DFZ_SRC_P6M7G8_DOTFILES_DIR/p6df-git/share/.gitconfig" ".gitconfig"
  p6_file_symlink "$P6_DFZ_SRC_P6M7G8_DOTFILES_DIR/p6df-git/share/.gitignore_global" ".gitignore_global"

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::git::init(_module, dir)
#
#  Args:
#	_module -
#	dir -
#
#>
######################################################################
p6df::modules::git::init() {
  local _module="$1"
  local dir="$2"

  p6df::modules::git::prompt::init

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::git::aliases::init()
#
#  Environment:	 CPF CPSF
#>
######################################################################
p6df::modules::git::aliases::init() {

  p6_alias "g" "git"

  p6_alias "gcod" "p6_git_util_checkout_default"
  p6_alias "gdd" "p6_git_util_diff_default"
  p6_alias "gl" "p6_git_util_log"
  p6_alias "gSync" "p6_git_util_sync"
  p6_alias "gU" "p6_git_util_update"
  p6_alias "gCPSF" "p6_git_util_commit_push_squashed_fix"
  p6_alias "gCPF" "p6_git_util_commit_push_fix"

  p6_alias "gA" "p6_git_cli_add_all"
  p6_alias "ga" "p6_git_cli_add"
  p6_alias "gb" "p6_git_cli_branch_verbose_verbose"
  p6_alias "gbc" "p6_git_cli_branch_create"
  p6_alias "gbD" "p6_git_cli_branch_Delete"
  p6_alias "gc" "p6_git_cli_commit_verbose"
  p6_alias "gC" "p6_git_cli_commit_with_message"
  p6_alias "gcl" "p6_git_cli_commit_last_edit"
  p6_alias "gco" "p6_git_cli_checkout"
  p6_alias "gd" "p6_git_cli_diff"
  p6_alias "gdh" "p6_git_cli_diff_head"
  p6_alias "gdp" "p6_git_cli_diff_previous"
  p6_alias "gf" "p6_git_cli_fetch_all"
  p6_alias "gg" "p6_git_cli_grep"
  p6_alias "ggf" "p6_git_cli_grep_files"
  p6_alias "gm" "p6_git_cli_merge"
  p6_alias "gp" "p6_git_cli_pull_rebase_autostash_ff_only"
  p6_alias "gP" "p6_git_cli_push_u"
  p6_alias "gPF" "p6_git_cli_push_fu"
  p6_alias "gPt" "p6_git_cli_push_tags"
  p6_alias "gR" "p6_git_cli_restore"
  p6_alias "gra" "p6_git_cli_rebase_abort"
  p6_alias "grc" "p6_git_cli_rebase_continue"
  p6_alias "grhh" "p6_git_cli_reset_hard_head"
  p6_alias "gs" "p6_git_cli_status_s"
  p6_alias "gT" "p6_git_cli_revert"

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::git::prompt::init()
#
#>
######################################################################
p6df::modules::git::prompt::init() {

  add-zsh-hook precmd p6df::modules::git::prompt_precmd
  p6df::core::prompt::line::add p6df::modules::git::prompt::line
}

######################################################################
#<
#
# Function: p6df::modules::git::prompt_precmd()
#
#>
######################################################################
p6df::modules::git::prompt_precmd() {

  p6df::modules::git::vcs_info
}

######################################################################
#<
#
# Function: p6df::modules::git::vcs_info()
#
#>
######################################################################
p6df::modules::git::vcs_info() {

  if p6_git_util_inside_tree; then
    g_org=$(p6_git_util_org_from_origin)
    g_repo=$(p6_git_util_repo_from_origin)
    g_shortsha=$(p6_git_util_sha_short_get)
    g_branch=$(p6_git_branch_get)
    g_status=$(p6_git_util_dirty_get)
  else
    unset g_org
    unset g_repo
    unset g_shortsha
    unset g_branch
    unset g_status
  fi
}

######################################################################
#<
#
# Function: p6df::modules::git::prompt::line()
#
#>
######################################################################
p6df::modules::git::prompt::line() {

  p6_git_prompt_info
}

######################################################################
#<
#
# Function: str str = p6_git_prompt_info()
#
#  Returns:
#	str - str
#
#>
######################################################################
p6_git_prompt_info() {

  local str
  if ! p6_string_blank "$g_org"; then
    str="git:\t\t  $g_org/$g_repo @ $g_shortsha ($g_branch) [$g_status]"
  fi

  p6_return_str "$str"
}

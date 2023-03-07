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

  brew install git
  brew install git-delta
  brew install git-extras
  brew install git-lfs
  brew install git-quick-stats
  brew install git-secret

  brew install tig
 
  brew install gitter-cli

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
# Function: p6df::modules::git::init()
#
#>
######################################################################
p6df::modules::git::init() {

  p6df::modules::git::prompt::init

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::git::aliases::init()
#
#>
######################################################################
p6df::modules::git::aliases::init() {

  ## my aliases (finally!)
  alias g='p6_git_cmd'
  alias ga='p6_git_p6_add'
  alias gA='p6_git_p6_add_all'
  alias gb='p6_git_p6_branch'
  alias gc='p6_git_p6_clone'
  alias gc='p6_git_p6_commit'
  alias gcb='p6_git_p6_branch_create'
  alias gcl='p6_git_p6_commit_last_edit'
  alias gco='p6_git_p6_checkout'
  alias gcod='p6_git_p6_checkout_default'
  alias gd='p6_git_p6_diff'
  alias gdd='p6_git_p6_diff_default'
  alias gdh='p6_git_p6_diff_head'
  alias gdp='p6_git_p6_diff_previous'
  alias gf='p6_git_p6_fetch'
  alias gg='p6_git_p6_grep'
  alias ggf='p6_git_p6_grep_files'
  alias gl='p6_git_p6_log'
  alias gm='p6_git_p6_merge'
  alias gp='p6_git_p6_pull'
  alias gP='p6_git_p6_push'
  alias gPt='p6_git_p6_push_tags'
  alias gR='p6_git_p6_restore'
  alias gra='p6_git_p6_rebase_abort'
  alias grc='p6_git_p6_rebase_continue'
  alias gs='p6_git_p6_status'
  alias gS='p6_git_p6_sync'
  alias gT='p6_git_p6_revert'
  alias grhh='p6_git_p6_reset_head_hard'
  alias gU='p6_git_p6_update'

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

  if p6_git_inside_tree; then
    g_org=$(p6_git_org_org_get)
    g_repo=$(p6_git_org_repo_get)
    g_shortsha=$(p6_git_sha_short_get)
    g_branch=$(p6_git_branch_get)
    g_status=$(p6_git_dirty_get)
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

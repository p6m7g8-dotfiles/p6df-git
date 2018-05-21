p6df::modules::git::version() { echo "0.0.1" }
p6df::modules::git::deps()    {
	ModuleDeps=(
		sorin-ionescu/prezto:modules/git
		p6m7g8/p6git
	)
}

p6df::modules::git::external::brew() {

  brew install git --without-completions
  brew install git-extras
  brew install git-lfs
  brew install git-quick-stats
  brew install git-secret

  git lfs install
}

p6df::modules::git::init() {

  p6df::modules::git::prompt
}

p6df::modules::git::prompt() {

  add-zsh-hook precmd p6df::modules::git::prompt_precmd
}

p6df::modules::git::prompt_precmd() {
  p6df::modules::git::vcs_info
}

p6df::modules::git::vcs_info() {
  
  if git rev-parse --is-inside-work-tree &> /dev/null; then
    org=ORG
    repo=REPO
    shortsha=$(p6_git_sha_short_get)
    branch=$(p6_git_branch_get)
#    status=$(p6_git_dirty_get)
  fi
}

p6df::prompt::git::line() {

 if git rev-parse --is-inside-work-tree &> /dev/null; then
   echo "git:\t$org/$repo @ $shortsha ($branch)"
 fi
}

p6df::modules::git::init

#PROMPT='$(kube_ps1) '
PROMPT+='$(git_prompt_info)'
#PROMPT+='%{$fg[blue]%}%~ >>%{$reset_color%} '
PROMPT+='%{$fg[blue]%}%~ $%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[magenta]%}(%{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
#ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[magenta]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[magenta]%})"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[magenta]%})"


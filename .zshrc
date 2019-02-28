export PATH=$PATH:/Users/keisukemori/.nodebrew/current/bin
export PATH=$PATH:/Users/keisukemori/Library/Android/sdk/platform-tools
# 履歴ファイルの保存先
export HISTFILE=${HOME}/.zsh_history

# メモリに保存される履歴の件数
export HISTSIZE=1000

# 履歴ファイルに保存される履歴の件数
export SAVEHIST=100000

# GOのPATH
export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"

# 重複を記録しない
setopt hist_ignore_dups

# 開始と終了を記録
setopt EXTENDED_HISTORY

# alias config
source ~/.zsh_alias

# Git
autoload -Uz compinit && compinit
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
# PROMPT=\$vcs_info_msg_0_'%# '
zstyle ':vcs_info:git:*' formats '%b'

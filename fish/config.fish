#set -x PATH $PATH 

function peco_sync_select_history
  history-merge
  peco_select_history $argv
end

function fish_user_key_bindings
  bind \cr 'peco_sync_select_history (commandline -b)'
end

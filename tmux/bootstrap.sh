#!/bin/bash

install_tmux () {
  local base="${DOTFILES_DIR}/tmux"
  local overwrite_all=false backup_all=false skip_all=false
  local files=(".tmux.conf" ".tmux.monokai.conf")
  for file in "${files[@]}"; do
    link_file "${base}/${file}" "${HOME}/${file}"
  done
  mkdir -p "${HOME}/.tmux/plugins"
  clone "${HOME}/.tmux/plugins/tpm" "git@github.com:tmux-plugins/tpm.git" "master"
}

install_tmux

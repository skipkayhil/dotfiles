#!/usr/bin/env bash
#
# Common utils for shell initialization
#
# https://github.com/andrewthauer/dotfiles/blob/8e0d24bcfcdb5857e5d5f43a7f7d7770a907b395/lib/utils.sh

#
# Prepends a path to the path variable (avoiding duplicates)
#
# usage:
#   prepend_path [path_to_prepend]
#   prepend_path [first_path] [second_path]
#
# examples:
#   prepend_path "/some/path"
#   # PATH="/some/path:/usr/bin:/bin"
#
#   prepend_path "/path/abc" "/path/xyz"
#   # PATH="/path/abc:/path/xyz:/usr/bin:/bin"
#
prepend_path() {
  paths=("$1")
  for ((i = $#; i > 0; i--)); do
    arg=${paths[i]}
    if [ -d "$arg" ] && [[ ":$PATH:" != *":$arg:"* ]]; then
      PATH="$arg${PATH:+":$PATH"}"
    fi
  done
}

#
# Appends paths to the path variable (avoiding duplicates)
#
# usage:
#   append_path [path_to_append]
#   append_path [first_path] [second_path]
#
# examples:
#   append_path "/some/path"
#   # PATH="/usr/bin:/bin:/some/path"
#
#   append_path "/path/abc" "/path/xyz"
#   # PATH="/usr/bin:/bin:/path/abc:/path/xyz"
#
append_path() {
  for arg in "$@"; do
    if [ -d "$arg" ] && [[ ":$PATH:" != *":$arg:"* ]]; then
      PATH="${PATH:+"$PATH:"}$arg"
    fi
  done
}

#
# Sources files only once
#
# examples:
#   source_file "/path/to/file.sh"
#
__SOURCED_FILES=()
source_file() {
  file=$1
  if [[ -f ${file} ]] && [[ ! "${__SOURCED_FILES[*]}" =~ ${file} ]]; then
    # shellcheck disable=SC1090
    source "$file"
    __SOURCED_FILES+=("${file}")
  fi
}

#
# Sources files in a glob
#
# examples:
#   source_files_in ${XDG_CONFIG_HOME}/profile.d/*.sh
#
source_files_in() {
  for file in "$@"; do
    if [[ -n "$PROFILE_STARTUP" ]]; then
      # eval function name for profiling
      fn=$(basename "$file")
      eval "$fn() { source_file $file }; $fn"
    else
      source_file "$file"
    fi
  done

  unset file
}

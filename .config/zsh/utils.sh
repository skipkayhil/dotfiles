#!/usr/bin/env bash
#
# Common utils for shell initialization
#
# https://github.com/andrewthauer/dotfiles/blob/8e0d24bcfcdb5857e5d5f43a7f7d7770a907b395/lib/utils.sh

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

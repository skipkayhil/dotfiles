if [[ ! -d "$XDG_CACHE_HOME/asdf" ]]; then
  return
fi

export ASDF_CONFIG_FILE="$XDG_CONFIG_HOME/asdf/asdfrc"
export ASDF_DATA_DIR="$XDG_CACHE_HOME/asdf"
export ASDF_DEFAULT_TOOL_VERSIONS_FILENAME="$XDG_CONFIG_HOME/asdf/tool-versions"

. $XDG_CACHE_HOME/asdf/asdf.sh
fpath=(${ASDF_DIR}/completions $fpath)

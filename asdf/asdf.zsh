export ASDF_CONFIG_FILE="$DOT_CONFIG_HOME/asdf/asdfrc"
export ASDF_DATA_DIR="$DOT_CACHE_HOME/asdf"
export ASDF_DEFAULT_TOOL_VERSIONS_FILENAME="$DOT_CONFIG_HOME/asdf/tool-versions"

. $DOT_CACHE_HOME/asdf/asdf.sh
fpath=(${ASDF_DIR}/completions $fpath)

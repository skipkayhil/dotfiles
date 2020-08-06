if [[ "${OSTYPE}" != darwin* ]]; then
  return
fi

# Put GNU utils ahead of BSD utils in Path/Manpath

# coreutils
prepend_path "/usr/local/opt/coreutils/libexec/gnubin"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

# gnu-sed
prepend_path "/usr/local/opt/gnu-sed/libexec/gnubin"
export MANPATH="/usr/local/opt/gnu-sed/libexec/gnuman:$MANPATH"

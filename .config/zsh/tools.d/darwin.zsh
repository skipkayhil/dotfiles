if [[ "${OSTYPE}" != darwin* ]]; then
  return
fi

# Put GNU utils ahead of BSD utils in Path/Manpath

# coreutils
path=("/usr/local/opt/coreutils/libexec/gnubin" $path)
manpath=("/usr/local/opt/coreutils/libexec/gnuman" $manpath)

# gnu-sed
path=("/usr/local/opt/gnu-sed/libexec/gnubin" $path)
manpath=("/usr/local/opt/gnu-sed/libexec/gnuman" $manpath)

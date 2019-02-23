# Old
# export PS1="%B%~ %b$ "

# New
autoload -U colors && colors
export PS1=" %{$fg[cyan]%}%~ %{$reset_color%}% $ "

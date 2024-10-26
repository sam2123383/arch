abbr pi "yay -S"
abbr pu "yay -R"
abbr pc "yay -Yc; yay -Sc; yay"

# Yazi
function yy
  set tmp (mktemp -t "yazi-cwd.XXXXXX")
  yazi $argv --cwd-file="$tmp"
  if set cwd (command cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
    builtin cd -- "$cwd"
  end
  rm -f -- "$tmp"
end

starship init fish | source

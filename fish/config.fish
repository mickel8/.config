# env vars
set EDITOR vim
set BROWSER qutebrowser

set PATH /usr/local/go/bin $PATH

# asdf
#. $HOME/.asdf/completions/asdf.fish

# prompt
function fish_prompt
	set_color 04edd5
	printf '%s ' (whoami)
	set_color 0490ed
	echo -n (basename $PWD)
	set_color 04ed61
	printf '%s ' (__fish_git_prompt)
	set_color ed0490
	echo -n "> "
	set_color normal
end

# abbr
abbr --add --global ll ls -all

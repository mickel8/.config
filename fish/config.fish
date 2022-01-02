if status is-interactive
    # Commands to run in interactive sessions can go here
end

# map caps lock to escape
setxkbmap -option caps:escape

# asdf
source ~/.asdf/asdf.fish

set PATH /home/michal/.local/bin $PATH

# abbreviations
abbr --add --global ll ls -al

function fish_prompt
	set_color brblack
	echo -n "["(date "+%H:%M")"] "
	set_color blue
	echo -n (cat /etc/hostname)
	if [ $PWD != $HOME ]
		set_color brblack
		echo -n ':'
		set_color yellow
		echo -n (basename $PWD)
	end
	set_color green
	printf '%s ' (__fish_git_prompt)
	set_color red
	echo -n '| '
	set_color normal
end

function fish_greeting
	echo "Welcome back, sir!"
	neofetch
end

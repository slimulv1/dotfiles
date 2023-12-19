function fish_prompt -d "Write out the prompt"
    # This shows up as USER@HOST /home/user/ >, with the directory colored
    # $USER and $hostname are set by fish, so you can just use them
    # instead of using `whoami` and `hostname`
    printf '%s@%s %s%s%s > ' $USER $hostname \
        (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
end

if status is-interactive
    # Commands to run in interactive sessions can go here
    set fish_greeting

end
alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
starship init fish | source

# function fish_prompt
#   set_color cyan; echo (pwd) 
#   set_color green; echo '> '
# end
function update-ags
    sh ~/.config/hypr/scripts/update-ags.sh
end
function fish_prompt --description 'Custom prompt'
    set last_status $status
    if not set -q __fish_prompt_normal
        set -g __fish_prompt_normal (set_color normal)
    end

    if not set -q __fish_prompt_cwd
        set -g __fish_prompt_cwd (set_color $fish_color_cwd)
    end

    printf '[%s] %s %s%s%s%s' (date "+%H:%M:%S") "$USER" "$__fish_prompt_cwd" (prompt_pwd) (__fish_vcs_prompt) "$__fish_prompt_normal"
    if test $last_status -eq 0
        printf "> " (set_color -o green) (set_color white) "$__fish_prompt_normal"
    else
        printf "[%s%s%s] > " (set_color red --bold) "$last_status" "$__fish_prompt_normal"
    end
end

function git_check_all_repos --description 'check all git repositories'
    for git_repo in (find . -name .git -exec dirname \{\} \;)
        echo $git_repo
        git -C $git_repo status -s
    end
end

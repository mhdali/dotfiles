function git_keep_empty_dir --description 'Add empty .keep file in any empty directoy'
    if git status > /dev/null 2>&1
        find . -type d -empty -exec echo "Keeping {} directory" \; -exec touch \{\}/.keep \;
    end
end

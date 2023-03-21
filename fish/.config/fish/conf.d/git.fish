# Interactive branch selector
function gch
    git checkout $(git for-each-ref refs/heads/ --format='%(refname:short)' | fzf)
end

# Copy the current branch name to the clipboard
function cbn
    git rev-parse --abbrev-ref HEAD | tr -d '\n' | pbcopy
end

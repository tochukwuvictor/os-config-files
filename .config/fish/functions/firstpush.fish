function firstpush
    set -x url git@(pwd | awk -F 'go/src/' '{print $NF}' | sed '0,/com\//s//com:/').git
    git push --set-upstream $url (git rev-parse --abbrev-ref HEAD)
    git remote add origin $url
end

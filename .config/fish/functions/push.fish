function push
    if test -n "$argv"
        if ! command git push "$argv"
            set branch (git push 2>&1 >/dev/null | grep git | cut -d " " -f 9)
            command git push --set-upstream origin "$branch" "$argv"
        end
    else
        if ! command git push
            set branch (git push 2>&1 >/dev/null | grep git | cut -d " " -f 9)
            command git push --set-upstream origin "$branch"
        end
    end
end

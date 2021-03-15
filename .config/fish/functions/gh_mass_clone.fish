function gh_mass_clone
    if test (count $argv) -ne 1
        echo "Provide a single GitHub org or user! i.e. gh_mass_clone tochukwuvictor"
        return 1
    else
        gh ssh_urls "$argv" | while read url; ghq get -u "$url"; end
    end
end

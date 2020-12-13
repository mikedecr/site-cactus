#!/usr/bin/env bash

# blog is sourced in one directory: `source`
# and then built into another: `mikedecr.github.io`

# This file ... 
# 1) builds site from `source` to `mikedecr.github.io`
# 2) commits and pushes changes in `mikedecr.github.io`

# Committing changes to source should be done by hand to have more informative messages.


# build site
Rscript build-site.R


# get parameters for commit messages
export LC_TIME=en_US.UTF-8
MESSAGE="Site build $(date)"

msg() {
    printf "\033[1;32m :: %s\n\033[0m" "$1"
}



# commit changes to public directory
cd ../mikedecr.github.io


git add .
git commit -m "$MESSAGE"
git push


msg "Public repository committed and pushed"




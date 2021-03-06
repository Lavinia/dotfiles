# Simple git pair. Like "hitch" but simpler/less buggy for me.
# Also see prompt.sh.

getpair() { echo "`git config user.name` <`git config user.email`>"; }

alias pair='echo Committing as: `getpair`'
alias unpair="git config --remove-section user 2> /dev/null; echo Unpaired.; pair"

# Amend the last commit with the current pair (when you forget to set the pair until after committing.)
alias pair!='git commit --amend -C HEAD --author="`getpair`"; git show --format="Author: %an <%ae>" --quiet'

setpair() { git config user.pair "$1" && git config user.email "$2" && git config user.name "$3"; pair; }

# Add one of these for every pair. Each pair should be in alphabetical order by first name.
alias paira='setpair  AR+HN  all+albert+henrik@barsoom.se  "Albert Ramstedt and Henrik Nyh"'
alias pairj='setpair  HN+JK  all+henrik+jocke@barsoom.se   "Henrik Nyh and Joakim Kolsjö"'
alias pairk='setpair  HN+KE  all+henrik+kenneth@barsoom.se "Henrik Nyh and Kenneth Eriksson"'
alias pairt='setpair  HN+TS  all+henrik+tomas@barsoom.se   "Henrik Nyh and Tomas Skogberg"'
alias pairv='setpair  HN+VA  all+henrik+victor@barsoom.se  "Henrik Nyh and Victor Arias"'
alias pairl='setpair  HN+LF  all+henrik+lennart@barsoom.se  "Henrik Nyh and Lennart Fridén"'
alias pairf='setpair  FH+HN  all+fabian+henrik@barsoom.se  "Fabian Hoffmann and Henrik Nyh"'
alias pairc='setpair  CE+HN  all+calle+henrik@barsoom.se  "Calle Erlandsson and Henrik Nyh"'
alias pairmob='setpair MOB devs@auctionet.com "Mob"'

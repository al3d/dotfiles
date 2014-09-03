#Directory listing
alias la='ls -lAFG --color=auto'
alias al='la'
alias lsd='ls | grep "^d"'

# Navigation
alias ..="cd .. && la"
alias ...="cd ../.. && la"

# Disk usage
alias du='du -skh'

# Number of files
alias filecount='find . -type f | wc -l'

# File size
alias fs="stat -f \"%z bytes\""

# Grepping
alias grep='grep --color=auto'

# Tailing
alias tail='tail -f'

# Text editing
alias pico='pico -w'

# Alias sudo
alias _="sudo"

# Enable aliases to be sudo'ed
alias sudo="sudo "

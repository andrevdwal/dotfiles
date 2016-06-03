# GO
export GOOS=linux
export GOARCH=amd64
export GOBIN=$HOME/dev/go/bin
export GOPATH=$HOME/dev/go
export GOROOTBIN=/usr/local/go/bin

export PATH=$PATH:$GOBIN:$GOROOTBIN

# Git Aliases
alias gitpd='for d in $(find $PWD -name ".git"); do cd $d && cd .. && echo $PWD && git pull; done'

# GO Aliases
alias goim='for d in $(go list -f {{.Dir}} ./...); do goimports -w $d/*.go; done'
alias gopc="clear && goim && golint ./... && go test ./... -cover"
alias goc="go test -coverprofile=coverage.out && go tool cover -func=coverage.out"
alias goh="go test -coverprofile=coverage.out && go tool cover -html=coverage.out"

# Aliases
alias ll='ls -lAF'


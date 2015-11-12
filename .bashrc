# GO
export GOOS=linux
export GOARC=amd64
export GOBIN=$HOME/dev/go/bin
export GOPATH=$HOME/dev/go
export GOROOTBIN=/usr/local/go/bin

export PATH=$PATH:$GOBIN:$GOROOTBIN

# GO Aliases
alias goim='for d in $(go list -f {{.Dir}} ./...); do goimports -w $d/*.go; done'
alias gopc="clear && goim && golint ./... && go test ./... -cover"
alias goc="go test -coverprofile=coverage.out && go tool cover -func=coverage.out"
alias goh="go test -coverprofile=coverage.out && go tool cover -html=coverage.out"

# Aliases
alias ll='ls -lAF'


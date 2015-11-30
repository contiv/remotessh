all: test

reflex-test: vagrantup
	reflex -r '\.go' make test

test: vagrantup
	godep go test -v ./... -check.v

vagrantup:
	vagrant up

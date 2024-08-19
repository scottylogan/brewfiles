HOSTNAME=$(shell hostname -s)

.PHONY: Brewfile.$(HOSTNAME)

Brewfile.$(HOSTNAME):
	brew bundle dump --verbose --describe --force --file $@


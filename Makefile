HOSTNAME=$(shell hostname -s)

.PHONY: Brewfile.$(HOSTNAME)

Brewfile.$(HOSTNAME):
	@brew bundle dump --verbose --force --file $@
	@git commit -m "updated $(HOSTNAME)" $@


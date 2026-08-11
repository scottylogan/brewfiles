HOSTNAME=$(shell hostname -s)

.PHONY: Brewfile.$(HOSTNAME)

Brewfile.$(HOSTNAME):
	@brew bundle dump --verbose --force --file $@
	@git status -s >/dev/null && git commit -m "updated $(HOSTNAME)" $@ || true


hi:
	nix-build packages.nix -A $@


install-deps:
	nix-shell packages.nix -A hi --command true


test: hi
	result/bin/hi ||:


.PHONY: hi test install-deps

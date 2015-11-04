hi:
	nix-build packages.nix -A $@

test: hi
	result/bin/hi ||:

.PHONY: hi test

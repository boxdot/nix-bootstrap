
hi:
	nix-build -A $@

test: hi
	# smoke test
	result/bin/hi

deploy: STORE_DIR=$(shell readlink result)
deploy:
	nix-copy-closure --to $(DEPLOY_USER)@$(DEPLOY_HOST) $(STORE_DIR)
	ssh $(DEPLOY_USER)@$(DEPLOY_HOST) "nix-env -i $(STORE_DIR)"


# nix related rules

install-deps:
	# dependencies are cached
	nix-shell packages.nix -A hi --command true

configure-nix:
	sudo mkdir -p -m 0755 /nix
	sudo chown $(USER) /nix
	echo ". $(HOME)/.nix-profile/etc/profile.d/nix.sh" >> ~/.bashrc

install-nix:
	# nix will be installed only if it was not restored from cache
	if [ ! -e /nix \
			-o ! "$$(ls -A /nix)" \
			-o ! -e ~/.nix-defexpr \
	    	-o ! -e ~/.nix-channels \
	    	-o ! -e ~/.nix-profile ]; \
	then \
		curl https://nixos.org/nix/install | sh; \
	fi


.PHONY: hi test deploy install-deps configure-nix install-nix

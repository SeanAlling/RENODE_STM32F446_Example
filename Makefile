.DEFAULT_GOAL: help

.PHONY: help
help:
	@$(info    ======valid targets======)
	@$(info    build   : Build application)
	@$(info    rebuild : Delet all build files, then remake application)
	@$(info    sim     : Start renode with build aplication)
	@$(info    clean   : Deleate all build files)
	@:


.PHONY: build
build:
	@$(MAKE) -C ./Software

.PHONY: rebuild
rebuild:
	@$(MAKE) clean -C ./Software
	@$(MAKE) -C ./Software

.PHONY: sim
sim:
	renode .\stm32f446.resc

.PHONY: clean
clean:
	@$(MAKE) clean -C ./Software
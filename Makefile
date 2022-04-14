.DEFAULT_GOAL: help

.PHONY: help
help:
	@$(info    ======valid targets======)
	@$(info    build     : Build application)
	@$(info    rebuild   : Delet all build files, then remake application)
	@$(info    build-sim : Build application for use in RENODE)
	@$(info    run-sim   : Start RENODE with build aplication)
	@$(info    clean     : Deleate all build files)
	@:


.PHONY: build
build:
	@$(MAKE) -C ./Software

.PHONY: rebuild
rebuild:
	@$(MAKE) clean -C ./Software
	@$(MAKE) -C ./Software

.PHONY: build-sim
build-sim:
	$(MAKE) -C ./Software RENODE=-DRENODE_SIMULATION

.PHONY: run-sim
run-sim:
	renode .\stm32f446.resc

.PHONY: clean
clean:
	@$(MAKE) clean -C ./Software
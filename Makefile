DOTFILES_EXCLUDES := .DS_Store .git
DOTFILES_TARGET := $(wildcard .??*)
DOTFILES_DIR := $(PWD)
DOTFILES_FILES := $(filter-out $(DOTFILES_EXCLUDES), $(DOTFILES_TARGET))

.PHONY: setup
setup:
	brew bundle

.PHONY: deploy
deploy:
	$(foreach file, $(DOTFILES_FILES), ln -sfnv $(abspath $(file)) $(HOME)/$(file))

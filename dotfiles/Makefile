
.PHONY: all git

OS := $(shell lsb_release -si)

.ONESHELL:
.SILENT:
all: git vim

.ONESHELL:
.SILENT:
git:
	echo "Installing .gitconfig on $(OS) .."
	if [ -f $(HOME)/.gitconfig ]; then
		echo ".gitconfig exist:$(HOME)/.gitconfig"
		mv $(HOME)/.gitconfig $(HOME)/.gitconfig_bak
	fi;
	echo "cp .gitconfig on $(OS) .."
	cp ./git/.gitconfig $(HOME)/.gitconfig

.ONESHELL:
.SILENT:
vim:
	echo "Installing vim on $(OS) .."
	if !command -v vim >/dev/null; then
		echo "$(OS)"
	fi

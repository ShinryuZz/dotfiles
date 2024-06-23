#!/bin/bash

# create symbolic links to the config files

set -eu

CUR_DIR=$(
	cd $(dirname $0) || exit 1
	pwd
)
cd $CUR_DIR

CONFIG_HOME=${XDG_CONFIG_HOME:-$HOME/.config}

declare -a DIRS=(
	"zsh"
	"alacritty"
	"nvim"
	"tmux"
)

for dir in "${DIRS[@]}"; do
	dst_dir=$CONFIG_HOME/$dir
	if [ -e $dst_dir ]; then
		echo "$dst_dir already exists, skipping..."
	else
		ln -sf $CUR_DIR/$dir $dst_dir
	fi
done

HS_PATH=${CUR_DIR}/hammerspoon
if [ -e $HS_PATH ]; then
	echo "$HS_PATH already exists, skipping..."
else
	ln -sf $CUR_DIR/hammerspoon ~/.hammerspoon
fi

echo "### Setup completed! ###"

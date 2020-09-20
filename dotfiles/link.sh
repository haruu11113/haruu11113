#!/bin/bash

dotfiles=(.tmux.conf .vimrc .zshrc .bashrc .bash_profile .emacs.d)
for f in ${dotfiles[@]}; do
    echo "リンク作成を開始します"
    if [ -e ~/${f} ]; then
        echo "./old/に${f}を移動"
        mv ~/${f} ./old/
        echo "'~' に${f}のリンクを作成"
        ln -s ${PWD}/${f} ~
        echo "======"
    else
        echo "'~' に${f}のリンクを作成"
        ln -s ${PWD}/${f} ~
        echo "====="
    fi
done


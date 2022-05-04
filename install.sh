cp .bashrc ~
echo "Coppied .bashrc"
cp .vimrc ~
echo "Coppied .vimrc"
cp .tmux.conf ~
echo "Coppied .tmux.conf"
cp scripts/* /usr/local/bin
echo "Installed user scripts"

BASE16_SHELL="$HOME/.config/base16-shell/"

if [ -d "$BASE16_SHELL" ]; then
    echo "Themes already installed"
else
    mkdir ~/.config
    git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
    [ -n "$PS1" ] && \
        [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
            eval "$("$BASE16_SHELL/profile_helper.sh")"
    base16_isotope
fi

# If ~/.inputrc doesn't exist yet: First include the original /etc/inputrc
# so it won't get overriden
if [ ! -a ~/.inputrc ]; then echo '$include /etc/inputrc' > ~/.inputrc; fi

# Add shell-option to ~/.inputrc to enable case-insensitive tab completion
echo 'set completion-ignore-case On' >> ~/.inputrc

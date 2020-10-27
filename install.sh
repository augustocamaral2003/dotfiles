cp .bashrc ~/
echo "Coppied .bashrc"
cp .vimrc ~/
echo "Coppied .vimrc"
cp .tmux.conf ~/
echo "Coppied .tmux.conf"
cp scripts/* /usr/local/bin
echo "Installed user scripts"

git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"
base16_isotope

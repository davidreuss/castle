# Thanks https://github.com/sjl/dotfiles/blob/master/zsh/vagrant.zsh
function turnoffthedamnboxvagrant () {
    VBoxManage list vms | grep "$1" | cut -d' ' -f1 | tr -d '"\n ' | xargs -0 -I BOX VBoxManage controlvm BOX poweroff
}

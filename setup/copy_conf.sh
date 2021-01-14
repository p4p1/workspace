#!/bin/bash
# current-file-name
# Created on: Thu 07 Jan 2021 12:45:50 AM CET
#
#  ____   __  ____  __
# (  _ \ /. |(  _ \/  )
#  )___/(_  _))___/ )(
# (__)    (_)(__)  (__)
#
# Description:

echo /root/.vimrc /home/user/.vimrc | xargs -n 1 cp -r /conf/backup/.vimrc
echo /root/.vim /home/user/.vim | xargs -n 1 cp -r /conf/backup/.vim
echo /root/.bashrc /home/user/.bashrc | xargs -n 1 cp -r /conf/backup/.bashrc
echo /root/.inputrc /home/user/.inputrc | xargs -n 1 cp -r /conf/backup/.inputrc
echo /root/.fzf /home/user/.fzf | xargs -n 1 cp -r /conf/backup/.fzf
echo /root/.fzf.bash /home/user/.fzf.bash | xargs -n 1 cp -r /conf/backup/.fzf.bash
echo /root/.peda /home/user/.peda | xargs -n 1 cp -r /conf/backup/.peda
echo /root/.gdbinit /home/user/.gdbinit | xargs -n 1 cp -r /conf/backup/.gdbinit
echo /root/.tmux.conf /home/user/.tmux.conf | xargs -n 1 cp -r /conf/backup/.tmux.conf
echo /root/.tmux /home/user/.tmux | xargs -n 1 cp -r /conf/backup/.tmux
echo /root/.tigrc /home/user/.tigrc | xargs -n 1 cp -r /conf/backup/.tigrc

#!/bin/bash
echo "need wget, tar, and bzip2 packages installed already"
wget rawgit.com/transcode-open/apt-cyg/master/apt-cyg -P /bin/
chmod +x /bin/apt-cyg
apt-cyg install git bash-completion ca-certificates curl git python openssh nano bind-utils
git clone https://github.com/karlin/mintty-colors-solarized ${HOME}/mintty-colors-solarized
chmod +x ${HOME}/mintty-colors-solarized/mintty-solarized-dark.sh
echo "${HOME}/mintty-colors-solarized/mintty-solarized-dark.sh" >> ${HOME}/.bashrc

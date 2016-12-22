FROM ubuntu:16.04
MAINTAINER "https://github.com/zigius"

SHELL ["/bin/bash", "-c"]
RUN \

    # set locale
    locale-gen en_US.UTF-8 && \
    dpkg-reconfigure locales && \

    # install ubuntu stuff
    sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list && \
    mkdir -p /var/run/sshd && \
    apt-get update && \
    apt-get -y upgrade && \
    apt-get install -y make gcc g++ automake autoconf libc6-dev build-essential libtool openssl libssl-dev libxslt-dev libxml2-dev && \
    apt-get install -y gfortran libopenblas-dev liblapack-dev python-dev && \
    apt-get install -y libsqlite3-dev libbz2-dev libxslt1-dev libffi-dev ncurses-dev cmake && \
    apt-get install -y software-properties-common byobu curl git htop man unzip vim wget supervisor vim-gnome xclip xsel && \
    apt-get install -y nodejs npm silversearcher-ag && \
    rm -rf /var/lib/apt/lists/*

RUN \

    # install pyenv
    git clone git://github.com/yyuu/pyenv.git /root/.pyenv && \
    echo 'after first clone' && \
    git clone https://github.com/yyuu/pyenv-virtualenv.git /root/.pyenv/plugins/pyenv-virtualenv && \
    echo 'after second clone' && \
    echo -e '\n\n# pyenv' >> /root/.bashrc && \
    echo 'export PYENV_ROOT="/root/.pyenv"' >> /root/.bashrc && \
    echo 'export PATH="$PYENV_ROOT/bin:$PYENV_ROOT/shims:/usr/texbin:$PATH"' >> /root/.bashrc && \
    echo 'eval "$(pyenv init -)"' >> /root/.bashrc && \
    echo 'eval "$(pyenv virtualenv-init -)"' >> /root/.bashrc

# create pyenv environments. Interactive shell because we need the bashrc
RUN ["/bin/bash", "-ic", "pyenv install 3.4.1"]
RUN ["/bin/bash", "-ic", "pyenv install 2.7.9"]
RUN ["/bin/bash", "-ic", "pyenv rehash"]
RUN ["/bin/bash", "-ic", "pyenv virtualenv 3.4.1 neovim3"]
RUN ["/bin/bash", "-ic", "pyenv virtualenv 2.7.9 neovim2"]
RUN ["/bin/bash", "-ic", "pyenv activate neovim3; pip install neovim"]
RUN ["/bin/bash", "-ic", "pyenv activate neovim2; pip install neovim"]

RUN \

    # Install neovim
    add-apt-repository -y ppa:neovim-ppa/unstable && \
    apt-get update && \
    apt-get install -y neovim && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN \

    # download vim plug
    curl -fLo /root/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim && \

    # install custom configurations
    git clone https://github.com/zigius/vimrc.git /root/.vim_runtime3 && \
    sh /root/.vim_runtime3/install.sh

RUN \

    # make directories and symlinks for neovim
    mkdir /root/.config && \
    ln -s /root/.vim /root/.config/nvim && \
    ln -s /root/.vimrc /root/.config/nvim/init.vim

# Install plugins
RUN vim +PlugInstall +qall

# Set environment variables.
ENV HOME /root

# for ultisnips or ycm
ENV PYTHON_CONFIGURE_OPTS "--enable-shared"

# Define working directory.
WORKDIR /root

# Define default command.
CMD ["bash"]

# Crucial instructions for mac users to enable clipboard tunneling: 
# 1. make sure XQuartz is installed and running
# 2. make sure allow connections in xquartz is enabled.
# 3. make sure to open xquartz app from iterm after xquartz is opened using : open -a XQuartz
# 4. get your display ip using the following command (for multiple displays the solution is currently not tested): 
# IP=$(ifconfig en0 | grep inet | awk '$1=="inet" {print $2}') xhost + $IP

# to automatically add ip to xhost add the following lines to your bashrc file
# export IP=$(ifconfig en0 | grep inet | awk '$1=="inet" {print $2}')
# xhost + $IP

# Based on the following links: 
# https://forums.docker.com/t/how-to-run-gui-apps-in-containiers-in-osx-docker-for-mac/17797/7
# https://fredrikaverpil.github.io/2016/07/31/docker-for-mac-and-gui-applications/

# 5. docker run with the following command : 
# docker run -it -e DISPLAY=$IP:0 -v /tmp/.X11-unix:/tmp/.X11-unix neovimtest:one bash

FROM ppcelery/dockerfile-base
MAINTAINER "ppcelery@gmail.com"

# install pyenv
RUN \
    # install pyenv
    git clone git://github.com/yyuu/pyenv.git .pyenv && \
    echo 'after first clone' && \
    git clone https://github.com/yyuu/pyenv-virtualenv.git .pyenv/plugins/pyenv-virtualenv && \
    echo -e '\n\n# pyenv' >> /root/.bashrc && \
    echo 'export PYENV_ROOT="/root/.pyenv"' >> /root/.bashrc && \
    echo 'export PATH="$PYENV_ROOT/bin:$PYENV_ROOT/shims:/usr/texbin:$PATH"' >> /root/.bashrc && \
    echo 'eval "$(pyenv init -)"' >> /root/.bashrc && \
    echo 'eval "$(pyenv virtualenv-init -)"' >> /root/.bashrc && \

    # install python
    source /root/.bashrc && \
    pyenv install 3.4.1 && \
    pyenv install 2.7.9 && \

    # config
    pyenv global 3.4.1 && \
    pyenv rehash && \
    echo 'after rehash' && \
    source /root/.bashrc && \
    echo 'after source' && \

    pyenv virtualenv 3.4.1 neovim3 && \
    pyenv activate neovim3 && \
    pip install neovim && \

    pyenv virtualenv 2.7.9 neovim2 && \
    pyenv activate neovim2 && \
    pip install neovim && \

    add-apt-repository -y ppa:neovim-ppa/unstable && \
    apt-get update && \
    apt-get install -y neovim && \

    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Set environment variables.
ENV HOME /root

# Define working directory.
WORKDIR /root

# Define default command.
CMD ["bash"]

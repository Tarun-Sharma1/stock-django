#!/bin/bash

# Install pyenv (if not already installed)
curl https://pyenv.run | bash

# Add pyenv to the PATH
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv virtualenv-init -)"

# Use Python 3.10
python_version="3.10.0"

# Install or upgrade Python using pyenv
pyenv install $python_version
pyenv global $python_version

# Install project dependencies
pip install -r requirements.txt

# Run collectstatic
python manage.py collectstatic --noinput --clear

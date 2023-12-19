# Use Python 3.10
python_version="3.10.0"

# Install or upgrade Python using pyenv
pyenv install $python_version
pyenv global $python_version

# Install project dependencies
pip install -r requirements.txt

# Run collectstatic
python manage.py collectstatic --noinput --clear

#!/bin/bash

# Activate your virtual environment if needed
# source /path/to/your/virtualenv/bin/activate

# Install dependencies
pip install -r requirements.txt

# Run Django migrations
python manage.py migrate

# Start the Django development server
python manage.py runserver 0.0.0.0:$PORT

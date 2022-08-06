"""
WSGI config for rhizomatic project.

It exposes the WSGI callable as a module-level variable named ``application``.

For more information on this file, see
https://docs.djangoproject.com/en/4.0/howto/deployment/wsgi/
"""

import os
import django
from django.contrib.staticfiles.handlers import StaticFilesHandler
from django.conf import settings


from django.core.wsgi import get_wsgi_application

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'settings')
os.environ['LC_ALL']="en_US.UTF-8"
os.environ['LC_LANG']="en_US.UTF-8"

application = get_wsgi_application()

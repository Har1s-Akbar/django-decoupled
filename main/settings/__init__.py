from split_settings.tools import optional, include
from decouple import config
import os

include('development.py')

if 'dev' == config('PROJ_ENV'):
    include('development.py')
elif 'prod'== config('PROJ_ENV'):
    include('production.py')
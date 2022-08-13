clue-django
===========
A simple JSON server built with Django REST Framework

## About
This is a basic implementation of the Django REST Framework containing a single dataset; the API is available at www.clueresearch.com/api/ocaf

## requirements.txt
Use pip to install the Python packages listed in requirements.txt.  A virtual environment is recommended.

## wsgi.py
The application framework uses a Web Server Gateway Interface (WSGI) to control an HTTP server.

## main/settings.py
The settings.py module controls the application framework.

The database is constructed with PostgreSQL using the SQL files contained in the api/ folder. Database credentials can be placed in a file named '.env' and referenced via:

    env = environ.Env()
    env.read_env(env.str(str(BASE_DIR),'.env'))

## api/views.py
The 'browsable' api main view is classed from generics.ListAPIView and references 'OcafSerializer' from api/serializers.py and 'Ocaf' from api/models.py 

## api/serializers.py
'OcafSerializer' is classed from serializers.ModelSerializer and references 'Ocaf' from api/models.py

## api/models.py
'Ocaf' is classed from models.Model and references the db_table 'ocaf' from the postgresql database

## api/postgresql
The table 'ocaf' is constructed via ocaf.sql, which includes the full dataset as a COPY statement.

For future years, the file upsert.sql creates an empty table with which to append new records.

Both operations are defined in the psql scripts contained in the batch files ocaf.bat and upsert.bat

## api/postgresql/ocaf_model.csv
The full dataset is available here as CSV.

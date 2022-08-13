clue-django
===========
A basic JSON server built with Django REST Framework

## About
This is a basic implementation of the Django REST Framework containing a single dataset; the API is available at www.clueresearch.com/api/ocaf

## requirements.txt
Use pip to install the Python packages listed in requirements.txt.  A virtual environment is recommended.

## Start the Django Development Server
Use `npm run dev` to start the development server on `http:/localhost:8000`.

During development, set `DEBUG = TRUE` in the settings.py module and comment out the code under the following comment headings:

SSL/HTTPS
Strict-Transport-Security
Cookies

To run the application on a production server, set `DEBUG = FALSE` and uncomment the code under the above comment headings.

## wsgi.py
The application framework uses a Web Server Gateway Interface (WSGI) to control an HTTP server.

## main/settings.py
The settings.py module controls the application framework.

The database can be constructed with PostgreSQL using the SQL files contained in the api/ folder. Database credentials can be placed in a file named '.env' and referenced via:

    env = environ.Env()
    env.read_env(env.str(str(BASE_DIR),'.env'))

    DATABASES = {
        'default': {
            'ENGINE': 'django.db.backends.postgresql',
            'NAME': env('DATABASE_NAME'),
            'USER': env('DATABASE_USER'),
            'PASSWORD': env('DATABASE_PASS'),
            'HOST': '127.0.0.1',
            'PORT': '5432',
        }
    }

## api/views.py
The 'browsable' api main view is classed from generics.ListAPIView and references 'OcafSerializer' from api/serializers.py and 'Ocaf' from api/models.py 

The filterset fields and corresponding list of conditions control how the dataset can be queried via the url such as:
    www.clueresearch.com/api/ocaf?year__gte=2018&state__in=Ohio,Nevada

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

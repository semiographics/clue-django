import webbrowser
from django.http import FileResponse, Http404, HttpResponse
from django.shortcuts import render
import environ, os
from pathlib import Path
import webbrowser
import urllib.request

# Build paths inside the project like this: BASE_DIR / 'subdir'.
BASE_DIR = Path(__file__).resolve().parent.parent

## read environmental variables
env = environ.Env()
env.read_env(env.str(str(BASE_DIR),'.env'))

AWS_STORAGE_BUCKET_NAME = env('AWS_STORAGE_BUCKET_NAME')
AWS_S3_CUSTOM_DOMAIN = f'{AWS_STORAGE_BUCKET_NAME}.s3.amazonaws.com'
AWS_LOCATION = 'static'

def fhv_pdf(request):
    try:
        return FileResponse(open('static/chicagoFHVs_2022.pdf','rb'), content_type='application/pdf')
    except FileNotFoundError:
        raise Http404()

def portfolio_pdf(request):
    try:
        return FileResponse(open('static/Childers_GISportfolio.pdf','rb'), content_type='application/pdf')
    except FileNotFoundError:
        raise Http404()

def resume_pdf(request):
    try:
        STATIC_URL = f'https://{AWS_S3_CUSTOM_DOMAIN}/{AWS_LOCATION}/Childers.Adam.Resume.220928.pdf'
        # return FileResponse(open(STATIC_URL,'rb'), content_type='application/pdf')
        return webbrowser.open(STATIC_URL)
        # return os.system("start \"\" "STATIC_URL)
        # with urllib.request.urlopen(STATIC_URL) as response:
        #     html = response.read()
        #     headers = response.info()
        #     return html
    except FileNotFoundError:
        raise Http404()

def rhizomatic(request):
    return render(request, 'rhizomatic.html')

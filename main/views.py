from django.http import FileResponse, Http404, HttpResponse
from django.shortcuts import render

def fhv_pdf(request):
    try:
        return FileResponse(open('chicagoFHVs_2022.pdf','rb'), content_type='application/pdf')
    except FileNotFoundError:
        raise Http404()

def portfolio_pdf(request):
    try:
        return FileResponse(open('Childers_GISportfolio.pdf','rb'), content_type='application/pdf')
    except FileNotFoundError:
        raise Http404()

def resume_pdf(request):
    try:
        return FileResponse(open('Childers.Adam.Resume.220928.pdf','rb'), content_type='application/pdf')
    except FileNotFoundError:
        raise Http404()

def rhizomatic(request):
    return render(request, 'rhizomatic.html')

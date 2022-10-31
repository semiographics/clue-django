from django.http import FileResponse, Http404

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

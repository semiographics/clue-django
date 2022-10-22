from django.http import FileResponse, Http404

def pdf_view(request):
    try:
        return FileResponse(open('chicagoFHVs_2022.pdf','rb'), content_type='application/pdf')
    except FileNotFoundError:
        raise Http404()

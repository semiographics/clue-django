from django.urls import include, path
from rest_framework.urlpatterns import format_suffix_patterns
from django.views.generic import TemplateView
from . import views

urlpatterns = [
    path('', TemplateView.as_view(template_name="index.html")), ##views.index, name='index'
    path('api/', include('api.urls')),
    path('tableau/chicago-FHV-industry-2022', views.pdf_view, name='pdfView'),
    path('taxi/', TemplateView.as_view(template_name="taxi.html")),
]

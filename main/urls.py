from django.urls import include, path
from rest_framework.urlpatterns import format_suffix_patterns
from django.views.generic import TemplateView
from . import views

urlpatterns = [
    path('', TemplateView.as_view(template_name="index.html")), ##views.index, name='index'
    path('api/', include('api.urls')),
    path('tableau/chicago-FHV-industry-2022', views.fhv_pdf, name='ChicagoFHVs'),
    path('viz/portfolio', views.portfolio_pdf, name='VizPortfolio'),
    path('adam/resume', views.resume_pdf, name='CurrentResume'),
    path('rhizomatic/', views.rhizomatic, name='rhizomatic'),
    path('taxi/', TemplateView.as_view(template_name="taxi.html")),
]

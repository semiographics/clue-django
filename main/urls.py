from django.urls import include, path
from rest_framework.urlpatterns import format_suffix_patterns
from django.views.generic import TemplateView

urlpatterns = [
    path('', TemplateView.as_view(template_name="index.html")), ##views.index, name='index'
    path('api/', include('api.urls')),
    path('tableau/', TemplateView.as_view(template_name="tableau.html")),
]
from django.urls import include, path
from rest_framework.urlpatterns import format_suffix_patterns
from django.views.generic import TemplateView

urlpatterns = [
    path('', TemplateView.as_view(template_name="index.html")), ##views.index, name='index'
    path('api/', include('api.urls')),
    # path('<int:pk>/', views.snippet_detail),
    # path('<int:pk>/', views.TaxiDetail.as_view()),
    # path('', views.OcafList.as_view()),
]
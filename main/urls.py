from django.urls import include, path
from rest_framework.urlpatterns import format_suffix_patterns
from django.views.generic import TemplateView

urlpatterns = [
    # path('', views.snippet_list),
    path('api/', include('api.urls')),
    # path('<int:pk>/', views.snippet_detail),
    # path('<int:pk>/', views.TaxiDetail.as_view()),
    # path('', views.OcafList.as_view()),
    path('mike/', TemplateView.as_view(template_name="main/mike.html")), ##views.index, name='index'

]

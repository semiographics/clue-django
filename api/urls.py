from django.urls import path
from rest_framework.urlpatterns import format_suffix_patterns
from api import views
from django.views.generic import TemplateView

urlpatterns = [
    # path('', views.snippet_list),
    # path('<int:pk>/', views.snippet_detail),
    # path('<int:pk>/', views.TaxiDetail.as_view()),
    path('ocaf', views.OcafList.as_view()),
    path('mike/', TemplateView.as_view(template_name="main/templates/ocaf/ocaf.html")), ##views.index, name='index'

]

urlpatterns = format_suffix_patterns(urlpatterns)

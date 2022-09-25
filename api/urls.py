from django.urls import path
from rest_framework.urlpatterns import format_suffix_patterns
from api import views

urlpatterns = [
    path('ocaf', views.OperatingCostAdjustmentFactors.as_view()),
    path('edges', views.TaxiEdges1Week.as_view()),
]

urlpatterns = format_suffix_patterns(urlpatterns)

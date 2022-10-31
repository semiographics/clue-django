from django.urls import path
from rest_framework.urlpatterns import format_suffix_patterns
from . import views

urlpatterns = [
    path('ocaf', views.OperatingCostAdjustmentFactors.as_view()),
    path('edges', views.TaxiEdges1Week.as_view(), name='edges api'),
    path('edges/<start>/<end>',views.index, name='edges view'),
]

urlpatterns = format_suffix_patterns(urlpatterns)

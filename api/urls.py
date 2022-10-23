from django.urls import path
from rest_framework.urlpatterns import format_suffix_patterns
from . import views

urlpatterns = [
    path('ocaf', views.OperatingCostAdjustmentFactors.as_view()),
    path('edges',views.index, name='edges'),
]

urlpatterns = format_suffix_patterns(urlpatterns)
randy = 'jack'

from django.urls import path
from rest_framework.urlpatterns import format_suffix_patterns
from . import views

urlpatterns = [
    path('ocaf', views.OperatingCostAdjustmentFactors.as_view()),
    path('edges', views.TaxiEdges1Week.as_view()),
    path('<str:ocaf_id>',views.detail,name='detail'),
    path('<str:ocaf_id>/results/',views.results, name='results'),
    path('<str:ocaf_id>/vote/',views.vote, name='vote'),
    path('',views.index, name='index'),
]

urlpatterns = format_suffix_patterns(urlpatterns)

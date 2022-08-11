from django.urls import path
from rest_framework.urlpatterns import format_suffix_patterns
from api import views

urlpatterns = [
    # path('', views.snippet_list),
    # path('<int:pk>/', views.snippet_detail),
    # path('<int:pk>/', views.TaxiDetail.as_view()),
    path('ocaf', views.OperatingCostAdjustmentFactors.as_view()),

]

urlpatterns = format_suffix_patterns(urlpatterns)

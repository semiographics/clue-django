from django.http import HttpResponse
from django_filters.rest_framework import DjangoFilterBackend

from rest_framework import generics
from api.models import Ocaf, edges1week
from api.serializers import OcafSerializer, edges1weekSerializer
from rest_framework_csv import renderers as r


# class TaxiList(generics.ListAPIView):
#     queryset = ChicagoTaxi.objects.all()
#     serializer_class = TaxiSerializer
#     filter_backends = [DjangoFilterBackend]
#     filterset_fields = ['trip_id','taxi_id']

class OperatingCostAdjustmentFactors(generics.ListAPIView):
    queryset = Ocaf.objects.all()
    serializer_class = OcafSerializer
    filter_backends = [DjangoFilterBackend]
    filterset_fields = {'year': ["in", "gte", "gt", "lte", "lt", "range"],
                        'state': ["in", "iexact", "istartswith", "icontains"]}

class TaxiEdges1Week(generics.ListAPIView):
    queryset = edges1week.objects.all()
    serializer_class = edges1weekSerializer
    filter_backends = [DjangoFilterBackend]
    filterset_fields = {'interval': ["in", "gte", "gt", "lte", "lt", "range"],
                        'Pickup_Community_Area': ["in", "gte", "gt", "lte", "lt", "range"],
                        'Dropoff_Community_Area': ["in", "gte", "gt", "lte", "lt", "range"]}

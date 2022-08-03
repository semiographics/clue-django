from django.http import HttpResponse
from django_filters.rest_framework import DjangoFilterBackend

from rest_framework import generics
from api.models import Ocaf
from api.serializers import OcafSerializer

# class TaxiList(generics.ListAPIView):
#     queryset = ChicagoTaxi.objects.all()
#     serializer_class = TaxiSerializer
#     filter_backends = [DjangoFilterBackend]
#     filterset_fields = ['trip_id','taxi_id']

class OcafList(generics.ListAPIView):
    queryset = Ocaf.objects.all()
    serializer_class = OcafSerializer
    filter_backends = [DjangoFilterBackend]
    filterset_fields = {'year': ["in", "gte", "gt", "lte", "lt", "range"],
                        'state': ["in", "iexact", "istartswith", "icontains"]}

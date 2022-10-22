from django.http import HttpResponse, Http404
from django_filters.rest_framework import DjangoFilterBackend

from rest_framework import generics
from api.models import Ocaf, edges1week
from api.serializers import OcafSerializer, edges1weekSerializer
from rest_framework_csv import renderers as r
from django.shortcuts import get_object_or_404, render
from django.views import generic

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

class ListView(generic.ListView):
    model = Ocaf
    template_name = 'taxi.html'

def detail(request, ocaf_id):
    try:
        ocaf_items = Ocaf.objects.get(pk=ocaf_id)
    except Ocaf.DoesNotExist:
        raise Http404("the record does not exist")
    return HttpResponse("You're looking at Ocaf %s." % ocaf_items)

def results(request, ocaf_id):
    response = "You're looking at the results of Ocaf %s."
    return HttpResponse(response % ocaf_id)

def vote(request, ocaf_id):
    return HttpResponse("You're voting on Ocaf %s." % ocaf_id)

def index(request):
    edge_items = edges1week.objects.order_by('interval')[:10]
    context = { 'johnny': edge_items, }
    return render(request, 'taxi.html', context)

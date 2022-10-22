from rest_framework import serializers
from api.models import Ocaf, edges1week

# class TaxiSerializer(serializers.ModelSerializer):
#     class Meta:
#         model = ChicagoTaxi
#         fields = ['trip_id',
#                   'taxi_id',
#                   'trip_start_timestamp',
#                   'trip_end_timestamp',
#                 #   'trip_seconds',
#                 #   'trip_miles',
#                 #   'pickup_census_tract',
#                 #   'dropoff_census_tract',
#                 #   'pickup_community_area',
#                 #   'dropoff_community_area',
#                 #   'fare',
#                 #   'tips',
#                 #   'tolls',
#                 #   'extras',
#                 #   'trip_total',
#                 #   'payment_type',
#                 #   'company',
#                 #   'pickup_centroid_latitude',
#                 #   'pickup_centroid_longitude',
#                 #   'pickup_centroid_location',
#                 #   'dropoff_centroid_latitude',
#                 #   'dropoff_centroid_longitude',
#                 #   'dropoff_centroid_location'
#                 ]

class OcafSerializer(serializers.ModelSerializer):
    class Meta:
        model = Ocaf
        fields = ['year',
                  'state',
                  'ocaf',
                  'sewer',
                  'wages',
                  'benefits',
                  'goods',
                  'insurance',
                  'proptax',
                  'elec',
                  'gas',
                  'oil'
                ]

class edges1weekSerializer(serializers.ModelSerializer):
    class Meta:
        model = edges1week
        fields = ['interval',
                  'Pickup_Community_Area',
                  'Dropoff_Community_Area',
                  'tripcount',
                  'faresum',
                  'fareavg',
                  'farestddevp',
                  'faremedian',
                  'timeavg',
                  'timestddevp',
                  'timemedian',
                  'mileavg',
                  'milestddevp',
                  'milemedian'
                ]

from django.db import models

# class ChicagoTaxi(models.Model):
#     trip_id = models.CharField(db_column='Trip_ID', primary_key=True, max_length=40)  # Field name made lowercase.
#     taxi_id = models.CharField(db_column='Taxi_ID', max_length=128, blank=True, null=True)  # Field name made lowercase.
#     trip_start_timestamp = models.DateTimeField(db_column='Trip_Start_Timestamp')  # Field name made lowercase.
#     trip_end_timestamp = models.DateTimeField(db_column='Trip_End_Timestamp', blank=True, null=True)  # Field name made lowercase.
#     trip_seconds = models.IntegerField(db_column='Trip_Seconds', blank=True, null=True)  # Field name made lowercase.
#     trip_miles = models.DecimalField(db_column='Trip_Miles', max_digits=4, decimal_places=3, blank=True, null=True)  # Field name made lowercase.
#     pickup_census_tract = models.CharField(db_column='Pickup_Census_Tract', max_length=100, blank=True, null=True)  # Field name made lowercase.
#     dropoff_census_tract = models.CharField(db_column='Dropoff_Census_Tract', max_length=100, blank=True, null=True)  # Field name made lowercase.
#     pickup_community_area = models.CharField(db_column='Pickup_Community_Area', max_length=100, blank=True, null=True)  # Field name made lowercase.
#     dropoff_community_area = models.CharField(db_column='Dropoff_Community_Area', max_length=100, blank=True, null=True)  # Field name made lowercase.
#     fare = models.TextField(db_column='Fare', blank=True, null=True)  # Field name made lowercase. This field type is a guess.
#     tips = models.TextField(db_column='Tips', blank=True, null=True)  # Field name made lowercase. This field type is a guess.
#     tolls = models.TextField(db_column='Tolls', blank=True, null=True)  # Field name made lowercase. This field type is a guess.
#     extras = models.TextField(db_column='Extras', blank=True, null=True)  # Field name made lowercase. This field type is a guess.
#     trip_total = models.TextField(db_column='Trip_Total', blank=True, null=True)  # Field name made lowercase. This field type is a guess.
#     payment_type = models.CharField(db_column='Payment_Type', max_length=100, blank=True, null=True)  # Field name made lowercase.
#     company = models.CharField(db_column='Company', max_length=100, blank=True, null=True)  # Field name made lowercase.
#     pickup_centroid_latitude = models.CharField(db_column='Pickup_Centroid_Latitude', max_length=100, blank=True, null=True)  # Field name made lowercase.
#     pickup_centroid_longitude = models.CharField(db_column='Pickup_Centroid_Longitude', max_length=100, blank=True, null=True)  # Field name made lowercase.
#     pickup_centroid_location = models.CharField(db_column='Pickup_Centroid_Location', max_length=100, blank=True, null=True)  # Field name made lowercase.
#     dropoff_centroid_latitude = models.CharField(db_column='Dropoff_Centroid_Latitude', max_length=100, blank=True, null=True)  # Field name made lowercase.
#     dropoff_centroid_longitude = models.CharField(db_column='Dropoff_Centroid_Longitude', max_length=100, blank=True, null=True)  # Field name made lowercase.
#     dropoff_centroid_location = models.CharField(db_column='Dropoff_Centroid_Location', max_length=100, blank=True, null=True)  # Field name made lowercase.

#     class Meta:
#         managed = False
#         db_table = 'chicago_taxi'
#         unique_together = (('trip_id', 'trip_start_timestamp'),)

class Ocaf(models.Model):
    year = models.DecimalField(primary_key=True, max_digits=4, decimal_places=0)
    state = models.TextField()
    ocaf = models.DecimalField(max_digits=2, decimal_places=1, blank=True, null=True)
    sewer = models.DecimalField(max_digits=4, decimal_places=3, blank=True, null=True)
    wages = models.DecimalField(max_digits=4, decimal_places=3, blank=True, null=True)
    benefits = models.DecimalField(max_digits=4, decimal_places=3, blank=True, null=True)
    goods = models.DecimalField(max_digits=4, decimal_places=3, blank=True, null=True)
    insurance = models.DecimalField(max_digits=4, decimal_places=3, blank=True, null=True)
    proptax = models.DecimalField(max_digits=4, decimal_places=3, blank=True, null=True)
    elec = models.DecimalField(max_digits=4, decimal_places=3, blank=True, null=True)
    gas = models.DecimalField(max_digits=4, decimal_places=3, blank=True, null=True)
    oil = models.DecimalField(max_digits=4, decimal_places=3, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'ocaf'
        unique_together = (('year', 'state'),)
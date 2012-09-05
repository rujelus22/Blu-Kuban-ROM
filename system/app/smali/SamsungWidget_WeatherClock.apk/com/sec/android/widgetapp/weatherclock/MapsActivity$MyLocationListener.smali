.class Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyLocationListener;
.super Ljava/lang/Object;
.source "MapsActivity.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/weatherclock/MapsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyLocationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;


# direct methods
.method private constructor <init>(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 455
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyLocationListener;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;Lcom/sec/android/widgetapp/weatherclock/MapsActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 455
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyLocationListener;-><init>(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 9
    .parameter "arg0"

    .prologue
    const-wide v5, 0x412e848000000000L

    .line 469
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 471
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyLocationListener;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    new-instance v1, Lcom/google/android/maps/GeoPoint;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    mul-double/2addr v2, v5

    double-to-int v2, v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    iput-object v1, v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->initGeoPoint:Lcom/google/android/maps/GeoPoint;

    .line 484
    :cond_26
    :goto_26
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyLocationListener;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->initGeoPoint:Lcom/google/android/maps/GeoPoint;

    if-eqz v0, :cond_44

    .line 486
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyLocationListener;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyLocationListener;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget-object v1, v1, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->initGeoPoint:Lcom/google/android/maps/GeoPoint;

    #calls: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->CenterLocatio(Lcom/google/android/maps/GeoPoint;)V
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$500(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;Lcom/google/android/maps/GeoPoint;)V

    .line 488
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyLocationListener;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->myLocationManager:Landroid/location/LocationManager;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$700(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyLocationListener;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->myLocationListener:Landroid/location/LocationListener;
    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$600(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Landroid/location/LocationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 491
    :cond_44
    return-void

    .line 477
    :cond_45
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyLocationListener;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->initGeoPoint:Lcom/google/android/maps/GeoPoint;

    if-nez v0, :cond_26

    .line 479
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$MyLocationListener;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    new-instance v1, Lcom/google/android/maps/GeoPoint;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    mul-double/2addr v2, v5

    double-to-int v2, v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    iput-object v1, v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->initGeoPoint:Lcom/google/android/maps/GeoPoint;

    goto :goto_26
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2
    .parameter "provider"

    .prologue
    .line 458
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2
    .parameter "provider"

    .prologue
    .line 461
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 465
    return-void
.end method

.class public Lcom/sec/android/app/clockpackage/worldclock/WCCities$WCCitiesLocationListener;
.super Ljava/lang/Object;
.source "WCCities.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/worldclock/WCCities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WCCitiesLocationListener"
.end annotation


# instance fields
.field private mLocationUpdated:Z

.field private mProvider:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/clockpackage/worldclock/WCCities;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter "provider"

    .prologue
    .line 1866
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$WCCitiesLocationListener;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1862
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$WCCitiesLocationListener;->mLocationUpdated:Z

    .line 1868
    iput-object p2, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$WCCitiesLocationListener;->mProvider:Ljava/lang/String;

    .line 1870
    return-void
.end method


# virtual methods
.method public init()V
    .registers 2

    .prologue
    .line 1876
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$WCCitiesLocationListener;->mLocationUpdated:Z

    .line 1878
    return-void
.end method

.method public isUpdated()Z
    .registers 2

    .prologue
    .line 1882
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$WCCitiesLocationListener;->mLocationUpdated:Z

    return v0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 8
    .parameter "location"

    .prologue
    .line 1890
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$WCCitiesLocationListener;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;

    #calls: Lcom/sec/android/app/clockpackage/worldclock/WCCities;->removeProgressDialog()V
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->access$1100(Lcom/sec/android/app/clockpackage/worldclock/WCCities;)V

    .line 1892
    invoke-static {}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->access$100()Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->cancelLocationupdate()Z

    .line 1894
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$WCCitiesLocationListener;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;

    iget-object v3, v3, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mGeocoderHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 1896
    .local v2, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1898
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "Source"

    const-string v4, "WCCitiesLocationListener"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1900
    const-string v3, "Latitude"

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 1902
    const-string v3, "Longitude"

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 1904
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1906
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$WCCitiesLocationListener;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;

    iget-object v3, v3, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->mGeocoderHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3c} :catch_3d

    .line 1914
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #msg:Landroid/os/Message;
    :goto_3c
    return-void

    .line 1908
    :catch_3d
    move-exception v1

    .line 1910
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3c
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2
    .parameter "provider"

    .prologue
    .line 1917
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2
    .parameter "provider"

    .prologue
    .line 1920
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 1923
    return-void
.end method

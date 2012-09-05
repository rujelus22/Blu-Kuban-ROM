.class Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder$LocListener;
.super Ljava/lang/Object;
.source "TimeZoneFinder.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocListener"
.end annotation


# instance fields
.field private mLocationUpdated:Z

.field final synthetic this$0:Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 7
    .parameter "location"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1587
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder$LocListener;->this$0:Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;

    #getter for: Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->gpsFindflag:Z
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->access$800(Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;)Z

    move-result v2

    if-nez v2, :cond_86

    .line 1589
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder$LocListener;->this$0:Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;

    #setter for: Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->gpsFindflag:Z
    invoke-static {v2, v3}, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->access$802(Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;Z)Z

    .line 1591
    iput-boolean v3, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder$LocListener;->mLocationUpdated:Z

    .line 1593
    invoke-static {}, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->access$900()Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder$LocListener;

    move-result-object v2

    if-eqz v2, :cond_27

    .line 1595
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder$LocListener;->this$0:Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;

    #getter for: Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->locationMgr:Landroid/location/LocationManager;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->access$1000(Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;)Landroid/location/LocationManager;

    move-result-object v2

    invoke-static {}, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->access$900()Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder$LocListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 1597
    invoke-static {v4}, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->access$902(Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder$LocListener;)Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder$LocListener;

    .line 1601
    :cond_27
    invoke-static {}, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->access$1100()Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder$LocListener;

    move-result-object v2

    if-eqz v2, :cond_3d

    .line 1603
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder$LocListener;->this$0:Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;

    #getter for: Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->locationMgr:Landroid/location/LocationManager;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->access$1000(Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;)Landroid/location/LocationManager;

    move-result-object v2

    invoke-static {}, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->access$1100()Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder$LocListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 1605
    invoke-static {v4}, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->access$1102(Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder$LocListener;)Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder$LocListener;

    .line 1609
    :cond_3d
    invoke-static {}, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->access$1200()Ljava/util/Timer;

    move-result-object v2

    if-eqz v2, :cond_4d

    .line 1611
    invoke-static {}, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->access$1200()Ljava/util/Timer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 1613
    invoke-static {v4}, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->access$1202(Ljava/util/Timer;)Ljava/util/Timer;

    .line 1617
    :cond_4d
    invoke-static {}, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->access$1300()Ljava/util/Timer;

    move-result-object v2

    if-eqz v2, :cond_5d

    .line 1619
    invoke-static {}, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->access$1300()Ljava/util/Timer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 1621
    invoke-static {v4}, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->access$1302(Ljava/util/Timer;)Ljava/util/Timer;

    .line 1625
    :cond_5d
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder$LocListener;->this$0:Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;

    iget-object v2, v2, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->mGeocoderHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 1627
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1629
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "Latitude"

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 1631
    const-string v2, "Longitude"

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 1633
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1643
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder$LocListener;->this$0:Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;

    iget-object v2, v2, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->mGeocoderHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1647
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #msg:Landroid/os/Message;
    :cond_86
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2
    .parameter "provider"

    .prologue
    .line 1650
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2
    .parameter "provider"

    .prologue
    .line 1653
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 1656
    return-void
.end method

.class public Lcom/sec/android/widgetapp/dualclock/WCCities$NetworkLocationListener;
.super Ljava/lang/Object;
.source "WCCities.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/dualclock/WCCities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "NetworkLocationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/dualclock/WCCities;


# direct methods
.method public constructor <init>(Lcom/sec/android/widgetapp/dualclock/WCCities;)V
    .registers 2
    .parameter

    .prologue
    .line 912
    iput-object p1, p0, Lcom/sec/android/widgetapp/dualclock/WCCities$NetworkLocationListener;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 913
    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 8
    .parameter "location"

    .prologue
    .line 919
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/widgetapp/dualclock/WCCities$NetworkLocationListener;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities;

    #calls: Lcom/sec/android/widgetapp/dualclock/WCCities;->removeProgressDialog()V
    invoke-static {v3}, Lcom/sec/android/widgetapp/dualclock/WCCities;->access$600(Lcom/sec/android/widgetapp/dualclock/WCCities;)V

    .line 920
    invoke-static {}, Lcom/sec/android/widgetapp/dualclock/WCCities;->access$100()Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->stopLocationUpdate()Z

    .line 922
    iget-object v3, p0, Lcom/sec/android/widgetapp/dualclock/WCCities$NetworkLocationListener;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities;

    iget-object v3, v3, Lcom/sec/android/widgetapp/dualclock/WCCities;->mGeocoderHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 924
    .local v2, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 926
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "Source"

    const-class v4, Lcom/sec/android/widgetapp/dualclock/WCCities$NetworkLocationListener;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    const-string v3, "Latitude"

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 930
    const-string v3, "Longitude"

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 932
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 934
    iget-object v3, p0, Lcom/sec/android/widgetapp/dualclock/WCCities$NetworkLocationListener;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities;

    iget-object v3, v3, Lcom/sec/android/widgetapp/dualclock/WCCities;->mGeocoderHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_40} :catch_41

    .line 942
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #msg:Landroid/os/Message;
    :goto_40
    return-void

    .line 936
    :catch_41
    move-exception v1

    .line 938
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_40
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2
    .parameter "provider"

    .prologue
    .line 945
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2
    .parameter "provider"

    .prologue
    .line 948
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 951
    return-void
.end method

.class public Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck$MyLocationListener;
.super Ljava/lang/Object;
.source "LocationCheck.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyLocationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 7
    .parameter "argLocation"

    .prologue
    .line 183
    if-eqz p1, :cond_68

    .line 184
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck$MyLocationListener;->this$0:Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;->mLocationCheckCallBack:Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck$LocationCheckCallBack;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;->access$200(Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;)Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck$LocationCheckCallBack;

    move-result-object v0

    if-eqz v0, :cond_69

    .line 185
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck$MyLocationListener;->this$0:Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    #setter for: Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;->mLatitude:D
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;->access$302(Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;D)D

    .line 186
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck$MyLocationListener;->this$0:Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    #setter for: Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;->mLongitude:D
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;->access$402(Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;D)D

    .line 187
    sget-boolean v0, Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;->DEBUG_ENG:Z

    if-eqz v0, :cond_4e

    .line 188
    const-string v0, "change Location"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "change Location mLatitude = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck$MyLocationListener;->this$0:Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;->mLatitude:D
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;->access$300(Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mLongitude = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck$MyLocationListener;->this$0:Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;->mLongitude:D
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;->access$400(Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_4e
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck$MyLocationListener;->this$0:Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;->mLocationCheckCallBack:Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck$LocationCheckCallBack;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;->access$200(Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;)Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck$LocationCheckCallBack;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck$MyLocationListener;->this$0:Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;->mLatitude:D
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;->access$300(Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;)D

    move-result-wide v1

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck$MyLocationListener;->this$0:Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;->mLongitude:D
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;->access$400(Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;)D

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck$LocationCheckCallBack;->changeTude(DD)V

    .line 196
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck$MyLocationListener;->this$0:Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/deskclock/setting/LocationCheck;->stopLocationListener()V

    .line 202
    :cond_68
    :goto_68
    return-void

    .line 198
    :cond_69
    const-string v0, "change Location"

    const-string v1, "change Location error"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_68
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2
    .parameter "provider"

    .prologue
    .line 206
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2
    .parameter "provider"

    .prologue
    .line 210
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .parameter "provider"
    .parameter "status"
    .parameter "arg2"

    .prologue
    .line 214
    return-void
.end method

.class Lcom/google/android/apps/plus/phone/LocationController$LocalLocationListener;
.super Ljava/lang/Object;
.source "LocationController.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/phone/LocationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalLocationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/phone/LocationController;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/phone/LocationController;)V
    .registers 2
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/LocationController$LocalLocationListener;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/phone/LocationController;Lcom/google/android/apps/plus/phone/LocationController$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/phone/LocationController$LocalLocationListener;-><init>(Lcom/google/android/apps/plus/phone/LocationController;)V

    return-void
.end method

.method private triggerLocationListener()V
    .registers 4

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController$LocalLocationListener;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    #getter for: Lcom/google/android/apps/plus/phone/LocationController;->mLastSuccessfulLocationListener:Landroid/location/LocationListener;
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/LocationController;->access$400(Lcom/google/android/apps/plus/phone/LocationController;)Landroid/location/LocationListener;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController$LocalLocationListener;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    #getter for: Lcom/google/android/apps/plus/phone/LocationController;->mLastSuccessfulLocationListener:Landroid/location/LocationListener;
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/LocationController;->access$400(Lcom/google/android/apps/plus/phone/LocationController;)Landroid/location/LocationListener;

    move-result-object v0

    if-ne v0, p0, :cond_18

    :cond_10
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController$LocalLocationListener;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    #getter for: Lcom/google/android/apps/plus/phone/LocationController;->mLocationAcquisitionTimer:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/LocationController;->access$500(Lcom/google/android/apps/plus/phone/LocationController;)Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_5b

    .line 121
    :cond_18
    const-string v0, "LocationController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 122
    const-string v1, "LocationController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----> onLocationChanged: triggering location change because "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController$LocalLocationListener;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    #getter for: Lcom/google/android/apps/plus/phone/LocationController;->mLocationAcquisitionTimer:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/LocationController;->access$500(Lcom/google/android/apps/plus/phone/LocationController;)Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_61

    const-string v0, "only this location listener was registered"

    :goto_38
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_43
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController$LocalLocationListener;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    #calls: Lcom/google/android/apps/plus/phone/LocationController;->unregisterListenersAndRunnables()V
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/LocationController;->access$600(Lcom/google/android/apps/plus/phone/LocationController;)V

    .line 128
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController$LocalLocationListener;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    #getter for: Lcom/google/android/apps/plus/phone/LocationController;->mReverseGeo:Z
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/LocationController;->access$700(Lcom/google/android/apps/plus/phone/LocationController;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 129
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController$LocalLocationListener;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/LocationController$LocalLocationListener;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    #getter for: Lcom/google/android/apps/plus/phone/LocationController;->mLocation:Landroid/location/Location;
    invoke-static {v1}, Lcom/google/android/apps/plus/phone/LocationController;->access$100(Lcom/google/android/apps/plus/phone/LocationController;)Landroid/location/Location;

    move-result-object v1

    #calls: Lcom/google/android/apps/plus/phone/LocationController;->reverseGeo(Landroid/location/Location;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/phone/LocationController;->access$800(Lcom/google/android/apps/plus/phone/LocationController;Landroid/location/Location;)V

    .line 135
    :cond_5b
    :goto_5b
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController$LocalLocationListener;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    #setter for: Lcom/google/android/apps/plus/phone/LocationController;->mLastSuccessfulLocationListener:Landroid/location/LocationListener;
    invoke-static {v0, p0}, Lcom/google/android/apps/plus/phone/LocationController;->access$402(Lcom/google/android/apps/plus/phone/LocationController;Landroid/location/LocationListener;)Landroid/location/LocationListener;

    .line 136
    return-void

    .line 122
    :cond_61
    const-string v0, "a previous location listener was successful"

    goto :goto_38

    .line 130
    :cond_64
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController$LocalLocationListener;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    #getter for: Lcom/google/android/apps/plus/phone/LocationController;->mListener:Landroid/location/LocationListener;
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/LocationController;->access$300(Lcom/google/android/apps/plus/phone/LocationController;)Landroid/location/LocationListener;

    move-result-object v0

    if-eqz v0, :cond_5b

    .line 131
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController$LocalLocationListener;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    #getter for: Lcom/google/android/apps/plus/phone/LocationController;->mListener:Landroid/location/LocationListener;
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/LocationController;->access$300(Lcom/google/android/apps/plus/phone/LocationController;)Landroid/location/LocationListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/LocationController$LocalLocationListener;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    #getter for: Lcom/google/android/apps/plus/phone/LocationController;->mLocation:Landroid/location/Location;
    invoke-static {v1}, Lcom/google/android/apps/plus/phone/LocationController;->access$100(Lcom/google/android/apps/plus/phone/LocationController;)Landroid/location/Location;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    goto :goto_5b
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 7
    .parameter "location"

    .prologue
    const/4 v4, 0x3

    .line 61
    const-string v0, "LocationController"

    invoke-static {v0, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 62
    const-string v0, "LocationController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "====> onLocationChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from provider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_33
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController$LocalLocationListener;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/LocationController$LocalLocationListener;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    #getter for: Lcom/google/android/apps/plus/phone/LocationController;->mLocation:Landroid/location/Location;
    invoke-static {v1}, Lcom/google/android/apps/plus/phone/LocationController;->access$100(Lcom/google/android/apps/plus/phone/LocationController;)Landroid/location/Location;

    move-result-object v1

    #calls: Lcom/google/android/apps/plus/phone/LocationController;->isMoreAccurateLocation(Landroid/location/Location;Landroid/location/Location;)Z
    invoke-static {v0, p1, v1}, Lcom/google/android/apps/plus/phone/LocationController;->access$200(Lcom/google/android/apps/plus/phone/LocationController;Landroid/location/Location;Landroid/location/Location;)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 70
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController$LocalLocationListener;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    #getter for: Lcom/google/android/apps/plus/phone/LocationController;->mLocation:Landroid/location/Location;
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/LocationController;->access$100(Lcom/google/android/apps/plus/phone/LocationController;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_4c

    .line 71
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/LocationController$LocalLocationListener;->triggerLocationListener()V

    .line 82
    :cond_4c
    :goto_4c
    return-void

    .line 76
    :cond_4d
    const-string v0, "LocationController"

    invoke-static {v0, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 77
    const-string v0, "LocationController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----> onLocationChanged: new location: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_71
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController$LocalLocationListener;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    #setter for: Lcom/google/android/apps/plus/phone/LocationController;->mLocation:Landroid/location/Location;
    invoke-static {v0, p1}, Lcom/google/android/apps/plus/phone/LocationController;->access$102(Lcom/google/android/apps/plus/phone/LocationController;Landroid/location/Location;)Landroid/location/Location;

    .line 81
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/LocationController$LocalLocationListener;->triggerLocationListener()V

    goto :goto_4c
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 3
    .parameter "provider"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController$LocalLocationListener;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    #getter for: Lcom/google/android/apps/plus/phone/LocationController;->mListener:Landroid/location/LocationListener;
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/LocationController;->access$300(Lcom/google/android/apps/plus/phone/LocationController;)Landroid/location/LocationListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 90
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController$LocalLocationListener;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    #getter for: Lcom/google/android/apps/plus/phone/LocationController;->mListener:Landroid/location/LocationListener;
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/LocationController;->access$300(Lcom/google/android/apps/plus/phone/LocationController;)Landroid/location/LocationListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/location/LocationListener;->onProviderDisabled(Ljava/lang/String;)V

    .line 92
    :cond_11
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 3
    .parameter "provider"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController$LocalLocationListener;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    #getter for: Lcom/google/android/apps/plus/phone/LocationController;->mListener:Landroid/location/LocationListener;
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/LocationController;->access$300(Lcom/google/android/apps/plus/phone/LocationController;)Landroid/location/LocationListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 100
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController$LocalLocationListener;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    #getter for: Lcom/google/android/apps/plus/phone/LocationController;->mListener:Landroid/location/LocationListener;
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/LocationController;->access$300(Lcom/google/android/apps/plus/phone/LocationController;)Landroid/location/LocationListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/location/LocationListener;->onProviderEnabled(Ljava/lang/String;)V

    .line 102
    :cond_11
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 5
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController$LocalLocationListener;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    #getter for: Lcom/google/android/apps/plus/phone/LocationController;->mListener:Landroid/location/LocationListener;
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/LocationController;->access$300(Lcom/google/android/apps/plus/phone/LocationController;)Landroid/location/LocationListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 110
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController$LocalLocationListener;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    #getter for: Lcom/google/android/apps/plus/phone/LocationController;->mListener:Landroid/location/LocationListener;
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/LocationController;->access$300(Lcom/google/android/apps/plus/phone/LocationController;)Landroid/location/LocationListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/location/LocationListener;->onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 112
    :cond_11
    return-void
.end method

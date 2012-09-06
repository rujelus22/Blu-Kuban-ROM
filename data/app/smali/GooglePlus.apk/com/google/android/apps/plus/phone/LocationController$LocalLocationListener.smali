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
    .line 60
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/LocationController$LocalLocationListener;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/phone/LocationController;Lcom/google/android/apps/plus/phone/LocationController$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/phone/LocationController$LocalLocationListener;-><init>(Lcom/google/android/apps/plus/phone/LocationController;)V

    return-void
.end method

.method private triggerLocationListener()V
    .registers 4

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController$LocalLocationListener;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    #getter for: Lcom/google/android/apps/plus/phone/LocationController;->mLastSuccessfulLocationListener:Landroid/location/LocationListener;
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/LocationController;->access$500(Lcom/google/android/apps/plus/phone/LocationController;)Landroid/location/LocationListener;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController$LocalLocationListener;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    #getter for: Lcom/google/android/apps/plus/phone/LocationController;->mLastSuccessfulLocationListener:Landroid/location/LocationListener;
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/LocationController;->access$500(Lcom/google/android/apps/plus/phone/LocationController;)Landroid/location/LocationListener;

    move-result-object v0

    if-ne v0, p0, :cond_18

    :cond_10
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController$LocalLocationListener;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    #getter for: Lcom/google/android/apps/plus/phone/LocationController;->mLocationAcquisitionTimer:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/LocationController;->access$600(Lcom/google/android/apps/plus/phone/LocationController;)Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_7b

    .line 130
    :cond_18
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController$LocalLocationListener;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    #getter for: Lcom/google/android/apps/plus/phone/LocationController;->mLastSentLocation:Landroid/location/Location;
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/LocationController;->access$700(Lcom/google/android/apps/plus/phone/LocationController;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController$LocalLocationListener;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    #getter for: Lcom/google/android/apps/plus/phone/LocationController;->mLastSentLocation:Landroid/location/Location;
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/LocationController;->access$700(Lcom/google/android/apps/plus/phone/LocationController;)Landroid/location/Location;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/LocationController$LocalLocationListener;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    #getter for: Lcom/google/android/apps/plus/phone/LocationController;->mLocation:Landroid/location/Location;
    invoke-static {v1}, Lcom/google/android/apps/plus/phone/LocationController;->access$000(Lcom/google/android/apps/plus/phone/LocationController;)Landroid/location/Location;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/phone/LocationController;->areSameLocations(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v0

    if-nez v0, :cond_7b

    .line 131
    :cond_32
    const-string v0, "LocationController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 132
    const-string v1, "LocationController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----> onLocationChanged: triggering location change because "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController$LocalLocationListener;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    #getter for: Lcom/google/android/apps/plus/phone/LocationController;->mLocationAcquisitionTimer:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/LocationController;->access$600(Lcom/google/android/apps/plus/phone/LocationController;)Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_81

    const-string v0, "only this location listener was registered"

    :goto_52
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_5d
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController$LocalLocationListener;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    #getter for: Lcom/google/android/apps/plus/phone/LocationController;->mReverseGeo:Z
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/LocationController;->access$800(Lcom/google/android/apps/plus/phone/LocationController;)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 139
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController$LocalLocationListener;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/LocationController$LocalLocationListener;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    #getter for: Lcom/google/android/apps/plus/phone/LocationController;->mLocation:Landroid/location/Location;
    invoke-static {v1}, Lcom/google/android/apps/plus/phone/LocationController;->access$000(Lcom/google/android/apps/plus/phone/LocationController;)Landroid/location/Location;

    move-result-object v1

    #calls: Lcom/google/android/apps/plus/phone/LocationController;->reverseGeo(Landroid/location/Location;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/phone/LocationController;->access$900(Lcom/google/android/apps/plus/phone/LocationController;Landroid/location/Location;)V

    .line 144
    :cond_70
    :goto_70
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController$LocalLocationListener;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/LocationController$LocalLocationListener;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    #getter for: Lcom/google/android/apps/plus/phone/LocationController;->mLocation:Landroid/location/Location;
    invoke-static {v1}, Lcom/google/android/apps/plus/phone/LocationController;->access$000(Lcom/google/android/apps/plus/phone/LocationController;)Landroid/location/Location;

    move-result-object v1

    #setter for: Lcom/google/android/apps/plus/phone/LocationController;->mLastSentLocation:Landroid/location/Location;
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/phone/LocationController;->access$702(Lcom/google/android/apps/plus/phone/LocationController;Landroid/location/Location;)Landroid/location/Location;

    .line 148
    :cond_7b
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController$LocalLocationListener;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    #setter for: Lcom/google/android/apps/plus/phone/LocationController;->mLastSuccessfulLocationListener:Landroid/location/LocationListener;
    invoke-static {v0, p0}, Lcom/google/android/apps/plus/phone/LocationController;->access$502(Lcom/google/android/apps/plus/phone/LocationController;Landroid/location/LocationListener;)Landroid/location/LocationListener;

    .line 149
    return-void

    .line 132
    :cond_81
    const-string v0, "a previous location listener was successful"

    goto :goto_52

    .line 140
    :cond_84
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController$LocalLocationListener;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    #getter for: Lcom/google/android/apps/plus/phone/LocationController;->mListener:Landroid/location/LocationListener;
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/LocationController;->access$400(Lcom/google/android/apps/plus/phone/LocationController;)Landroid/location/LocationListener;

    move-result-object v0

    if-eqz v0, :cond_70

    .line 141
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController$LocalLocationListener;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    #getter for: Lcom/google/android/apps/plus/phone/LocationController;->mListener:Landroid/location/LocationListener;
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/LocationController;->access$400(Lcom/google/android/apps/plus/phone/LocationController;)Landroid/location/LocationListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/LocationController$LocalLocationListener;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    #getter for: Lcom/google/android/apps/plus/phone/LocationController;->mLocation:Landroid/location/Location;
    invoke-static {v1}, Lcom/google/android/apps/plus/phone/LocationController;->access$000(Lcom/google/android/apps/plus/phone/LocationController;)Landroid/location/Location;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    goto :goto_70
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 8
    .parameter "location"

    .prologue
    const/4 v5, 0x3

    .line 66
    const-string v1, "LocationController"

    invoke-static {v1, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 67
    const-string v1, "LocationController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "====> onLocationChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from provider: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_33
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/LocationController$LocalLocationListener;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/LocationController$LocalLocationListener;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    #getter for: Lcom/google/android/apps/plus/phone/LocationController;->mLocation:Landroid/location/Location;
    invoke-static {v2}, Lcom/google/android/apps/plus/phone/LocationController;->access$000(Lcom/google/android/apps/plus/phone/LocationController;)Landroid/location/Location;

    move-result-object v2

    #calls: Lcom/google/android/apps/plus/phone/LocationController;->isMoreAccurateLocation(Landroid/location/Location;Landroid/location/Location;)Z
    invoke-static {v1, p1, v2}, Lcom/google/android/apps/plus/phone/LocationController;->access$100(Lcom/google/android/apps/plus/phone/LocationController;Landroid/location/Location;Landroid/location/Location;)Z

    move-result v1

    if-nez v1, :cond_4d

    .line 75
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/LocationController$LocalLocationListener;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    #getter for: Lcom/google/android/apps/plus/phone/LocationController;->mLocation:Landroid/location/Location;
    invoke-static {v1}, Lcom/google/android/apps/plus/phone/LocationController;->access$000(Lcom/google/android/apps/plus/phone/LocationController;)Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_4c

    .line 76
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/LocationController$LocalLocationListener;->triggerLocationListener()V

    .line 91
    :cond_4c
    :goto_4c
    return-void

    .line 81
    :cond_4d
    const-string v1, "LocationController"

    invoke-static {v1, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 82
    const-string v1, "LocationController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "----> onLocationChanged: new location: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_71
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/LocationController$LocalLocationListener;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    #setter for: Lcom/google/android/apps/plus/phone/LocationController;->mLocation:Landroid/location/Location;
    invoke-static {v1, p1}, Lcom/google/android/apps/plus/phone/LocationController;->access$002(Lcom/google/android/apps/plus/phone/LocationController;Landroid/location/Location;)Landroid/location/Location;

    .line 86
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/LocationController$LocalLocationListener;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    #getter for: Lcom/google/android/apps/plus/phone/LocationController;->mDisplayDebugToast:Z
    invoke-static {v1}, Lcom/google/android/apps/plus/phone/LocationController;->access$200(Lcom/google/android/apps/plus/phone/LocationController;)Z

    move-result v1

    if-eqz v1, :cond_97

    .line 87
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/LocationController$LocalLocationListener;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    #getter for: Lcom/google/android/apps/plus/phone/LocationController;->mNetworkListener:Landroid/location/LocationListener;
    invoke-static {v1}, Lcom/google/android/apps/plus/phone/LocationController;->access$300(Lcom/google/android/apps/plus/phone/LocationController;)Landroid/location/LocationListener;

    move-result-object v1

    if-ne p0, v1, :cond_9b

    const-string v0, "net: "

    .line 88
    .local v0, source:Ljava/lang/String;
    :goto_88
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/LocationController$LocalLocationListener;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    #getter for: Lcom/google/android/apps/plus/phone/LocationController;->mLocation:Landroid/location/Location;
    invoke-static {v1}, Lcom/google/android/apps/plus/phone/LocationController;->access$000(Lcom/google/android/apps/plus/phone/LocationController;)Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "location_source"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .end local v0           #source:Ljava/lang/String;
    :cond_97
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/LocationController$LocalLocationListener;->triggerLocationListener()V

    goto :goto_4c

    .line 87
    :cond_9b
    const-string v0, "gps: "

    goto :goto_88
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 3
    .parameter "provider"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController$LocalLocationListener;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    #getter for: Lcom/google/android/apps/plus/phone/LocationController;->mListener:Landroid/location/LocationListener;
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/LocationController;->access$400(Lcom/google/android/apps/plus/phone/LocationController;)Landroid/location/LocationListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 99
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController$LocalLocationListener;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    #getter for: Lcom/google/android/apps/plus/phone/LocationController;->mListener:Landroid/location/LocationListener;
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/LocationController;->access$400(Lcom/google/android/apps/plus/phone/LocationController;)Landroid/location/LocationListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/location/LocationListener;->onProviderDisabled(Ljava/lang/String;)V

    .line 101
    :cond_11
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 3
    .parameter "provider"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController$LocalLocationListener;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    #getter for: Lcom/google/android/apps/plus/phone/LocationController;->mListener:Landroid/location/LocationListener;
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/LocationController;->access$400(Lcom/google/android/apps/plus/phone/LocationController;)Landroid/location/LocationListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 109
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController$LocalLocationListener;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    #getter for: Lcom/google/android/apps/plus/phone/LocationController;->mListener:Landroid/location/LocationListener;
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/LocationController;->access$400(Lcom/google/android/apps/plus/phone/LocationController;)Landroid/location/LocationListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/location/LocationListener;->onProviderEnabled(Ljava/lang/String;)V

    .line 111
    :cond_11
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 5
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController$LocalLocationListener;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    #getter for: Lcom/google/android/apps/plus/phone/LocationController;->mListener:Landroid/location/LocationListener;
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/LocationController;->access$400(Lcom/google/android/apps/plus/phone/LocationController;)Landroid/location/LocationListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 119
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/LocationController$LocalLocationListener;->this$0:Lcom/google/android/apps/plus/phone/LocationController;

    #getter for: Lcom/google/android/apps/plus/phone/LocationController;->mListener:Landroid/location/LocationListener;
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/LocationController;->access$400(Lcom/google/android/apps/plus/phone/LocationController;)Landroid/location/LocationListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/location/LocationListener;->onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 121
    :cond_11
    return-void
.end method

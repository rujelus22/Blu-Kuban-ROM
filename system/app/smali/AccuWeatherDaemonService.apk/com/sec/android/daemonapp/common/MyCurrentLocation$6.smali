.class Lcom/sec/android/daemonapp/common/MyCurrentLocation$6;
.super Ljava/lang/Object;
.source "MyCurrentLocation.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/daemonapp/common/MyCurrentLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/daemonapp/common/MyCurrentLocation;


# direct methods
.method constructor <init>(Lcom/sec/android/daemonapp/common/MyCurrentLocation;)V
    .registers 2
    .parameter

    .prologue
    .line 896
    iput-object p1, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation$6;->this$0:Lcom/sec/android/daemonapp/common/MyCurrentLocation;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 4
    .parameter "location"

    .prologue
    .line 899
    const-string v0, ""

    const-string v1, "MCL LocListener@onLocChngd@Passive"

    invoke-static {v0, v1}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation$6;->this$0:Lcom/sec/android/daemonapp/common/MyCurrentLocation;

    #calls: Lcom/sec/android/daemonapp/common/MyCurrentLocation;->updateWithNewLocation(Landroid/location/Location;)V
    invoke-static {v0, p1}, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->access$400(Lcom/sec/android/daemonapp/common/MyCurrentLocation;Landroid/location/Location;)V

    .line 901
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation$6;->this$0:Lcom/sec/android/daemonapp/common/MyCurrentLocation;

    iget-object v0, v0, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->currentLocationHandler:Landroid/os/Handler;

    const/16 v1, 0xca

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 902
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation$6;->this$0:Lcom/sec/android/daemonapp/common/MyCurrentLocation;

    #getter for: Lcom/sec/android/daemonapp/common/MyCurrentLocation;->passiveLocationManager:Landroid/location/LocationManager;
    invoke-static {v0}, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->access$500(Lcom/sec/android/daemonapp/common/MyCurrentLocation;)Landroid/location/LocationManager;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 903
    const-string v0, ""

    const-string v1, "MCL LocListner@remUd_PassiveLocListener"

    invoke-static {v0, v1}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    iget-object v0, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation$6;->this$0:Lcom/sec/android/daemonapp/common/MyCurrentLocation;

    #getter for: Lcom/sec/android/daemonapp/common/MyCurrentLocation;->passiveLocationManager:Landroid/location/LocationManager;
    invoke-static {v0}, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->access$500(Lcom/sec/android/daemonapp/common/MyCurrentLocation;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/daemonapp/common/MyCurrentLocation$6;->this$0:Lcom/sec/android/daemonapp/common/MyCurrentLocation;

    #getter for: Lcom/sec/android/daemonapp/common/MyCurrentLocation;->passiveLocationListener:Landroid/location/LocationListener;
    invoke-static {v1}, Lcom/sec/android/daemonapp/common/MyCurrentLocation;->access$600(Lcom/sec/android/daemonapp/common/MyCurrentLocation;)Landroid/location/LocationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 906
    :cond_33
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 6
    .parameter "provider"

    .prologue
    .line 909
    const-string v0, ""

    const-string v1, "MCL LocListener@onPrvdrDisab@prvdr:%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 6
    .parameter "provider"

    .prologue
    .line 913
    const-string v0, ""

    const-string v1, "MCL LocListener@onPrvdrEnab@prvdr:%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 9
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 917
    const-string v0, ""

    const-string v1, "MCL LocListener@onSttsChngd@prvdr:%s / %d / %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p3}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    return-void
.end method

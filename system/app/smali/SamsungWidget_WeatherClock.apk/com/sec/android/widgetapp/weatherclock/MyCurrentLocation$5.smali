.class Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation$5;
.super Ljava/lang/Object;
.source "MyCurrentLocation.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;)V
    .registers 2
    .parameter

    .prologue
    .line 827
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 4
    .parameter "location"

    .prologue
    .line 830
    const-string v0, ""

    const-string v1, "MCL LocListener@onLocChngd@Passive"

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;

    #calls: Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;->updateWithNewLocation(Landroid/location/Location;)V
    invoke-static {v0, p1}, Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;->access$300(Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;Landroid/location/Location;)V

    .line 832
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;->currentLocationHandler:Landroid/os/Handler;

    const/16 v1, 0xca

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 833
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;->passiveLocationManager:Landroid/location/LocationManager;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;->access$400(Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;)Landroid/location/LocationManager;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 834
    const-string v0, ""

    const-string v1, "MCL LocListner@remUd_PassiveLocListener"

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;->passiveLocationManager:Landroid/location/LocationManager;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;->access$400(Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;->passiveLocationListener:Landroid/location/LocationListener;
    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;->access$500(Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;)Landroid/location/LocationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 837
    :cond_33
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 6
    .parameter "provider"

    .prologue
    .line 840
    const-string v0, ""

    const-string v1, "MCL LocListener@onPrvdrDisab@prvdr:%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 6
    .parameter "provider"

    .prologue
    .line 844
    const-string v0, ""

    const-string v1, "MCL LocListener@onPrvdrEnab@prvdr:%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 9
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 848
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

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    return-void
.end method

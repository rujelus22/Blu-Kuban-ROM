.class Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation$4;
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
    .line 806
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation$4;->this$0:Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 4
    .parameter "location"

    .prologue
    .line 809
    const-string v0, ""

    const-string v1, "MCL LocListener@onLocChanged@"

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation$4;->this$0:Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;

    #calls: Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;->updateWithNewLocation(Landroid/location/Location;)V
    invoke-static {v0, p1}, Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;->access$300(Lcom/sec/android/widgetapp/weatherclock/MyCurrentLocation;Landroid/location/Location;)V

    .line 811
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 6
    .parameter "provider"

    .prologue
    .line 814
    const-string v0, ""

    const-string v1, "MCL LocListener@onPrvdrDisab@prvdr:%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 6
    .parameter "provider"

    .prologue
    .line 818
    const-string v0, ""

    const-string v1, "MCL LocListener@onPrvdrEnab@prvdr:%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 9
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 822
    const-string v0, ""

    const-string v1, "MCL LocListener@onSttsChngd:%s / %d / %s"

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

    .line 823
    return-void
.end method

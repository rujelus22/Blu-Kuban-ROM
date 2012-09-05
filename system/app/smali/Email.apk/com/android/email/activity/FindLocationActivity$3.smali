.class Lcom/android/email/activity/FindLocationActivity$3;
.super Ljava/lang/Object;
.source "FindLocationActivity.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/FindLocationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/FindLocationActivity;


# direct methods
.method constructor <init>(Lcom/android/email/activity/FindLocationActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 449
    iput-object p1, p0, Lcom/android/email/activity/FindLocationActivity$3;->this$0:Lcom/android/email/activity/FindLocationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 6
    .parameter "newLocation"

    .prologue
    const-wide/16 v2, 0x0

    .line 462
    if-eqz p1, :cond_1b

    .line 463
    const-string v0, "FindLocation >>"

    const-string v1, "onLocationChanged - Latitude Logitude"

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1c

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1c

    .line 473
    :cond_1b
    :goto_1b
    return-void

    .line 470
    :cond_1c
    iget-object v0, p0, Lcom/android/email/activity/FindLocationActivity$3;->this$0:Lcom/android/email/activity/FindLocationActivity;

    new-instance v1, Landroid/location/Location;

    invoke-direct {v1, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    #setter for: Lcom/android/email/activity/FindLocationActivity;->mNetworkLocation:Landroid/location/Location;
    invoke-static {v0, v1}, Lcom/android/email/activity/FindLocationActivity;->access$102(Lcom/android/email/activity/FindLocationActivity;Landroid/location/Location;)Landroid/location/Location;

    .line 471
    iget-object v0, p0, Lcom/android/email/activity/FindLocationActivity$3;->this$0:Lcom/android/email/activity/FindLocationActivity;

    #getter for: Lcom/android/email/activity/FindLocationActivity;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v0}, Lcom/android/email/activity/FindLocationActivity;->access$300(Lcom/android/email/activity/FindLocationActivity;)Landroid/location/LocationManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    goto :goto_1b
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 3
    .parameter "provider"

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/email/activity/FindLocationActivity$3;->this$0:Lcom/android/email/activity/FindLocationActivity;

    #getter for: Lcom/android/email/activity/FindLocationActivity;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v0}, Lcom/android/email/activity/FindLocationActivity;->access$300(Lcom/android/email/activity/FindLocationActivity;)Landroid/location/LocationManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 459
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2
    .parameter "provider"

    .prologue
    .line 455
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 452
    return-void
.end method

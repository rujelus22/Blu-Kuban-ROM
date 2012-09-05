.class Lcom/android/email/activity/FindLocationActivity$2;
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
    .line 413
    iput-object p1, p0, Lcom/android/email/activity/FindLocationActivity$2;->this$0:Lcom/android/email/activity/FindLocationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 8
    .parameter "newLocation"

    .prologue
    const-wide/16 v4, 0x0

    .line 426
    if-eqz p1, :cond_1b

    .line 427
    const-string v2, "FindLocation >>"

    const-string v3, "onLocationChanged - Latitude Logitude"

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    cmpl-double v2, v2, v4

    if-nez v2, :cond_1c

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    cmpl-double v2, v2, v4

    if-nez v2, :cond_1c

    .line 446
    :cond_1b
    :goto_1b
    return-void

    .line 434
    :cond_1c
    iget-object v2, p0, Lcom/android/email/activity/FindLocationActivity$2;->this$0:Lcom/android/email/activity/FindLocationActivity;

    #getter for: Lcom/android/email/activity/FindLocationActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;
    invoke-static {v2}, Lcom/android/email/activity/FindLocationActivity;->access$400(Lcom/android/email/activity/FindLocationActivity;)Lcom/google/android/maps/MyLocationOverlay;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 435
    iget-object v2, p0, Lcom/android/email/activity/FindLocationActivity$2;->this$0:Lcom/android/email/activity/FindLocationActivity;

    #getter for: Lcom/android/email/activity/FindLocationActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;
    invoke-static {v2}, Lcom/android/email/activity/FindLocationActivity;->access$400(Lcom/android/email/activity/FindLocationActivity;)Lcom/google/android/maps/MyLocationOverlay;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/MyLocationOverlay;->disableMyLocation()V

    .line 436
    iget-object v2, p0, Lcom/android/email/activity/FindLocationActivity$2;->this$0:Lcom/android/email/activity/FindLocationActivity;

    #getter for: Lcom/android/email/activity/FindLocationActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;
    invoke-static {v2}, Lcom/android/email/activity/FindLocationActivity;->access$400(Lcom/android/email/activity/FindLocationActivity;)Lcom/google/android/maps/MyLocationOverlay;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/MyLocationOverlay;->disableCompass()V

    .line 438
    :cond_36
    iget-object v2, p0, Lcom/android/email/activity/FindLocationActivity$2;->this$0:Lcom/android/email/activity/FindLocationActivity;

    #calls: Lcom/android/email/activity/FindLocationActivity;->stopReceivingLocationUpdates()V
    invoke-static {v2}, Lcom/android/email/activity/FindLocationActivity;->access$000(Lcom/android/email/activity/FindLocationActivity;)V

    .line 439
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 440
    .local v1, i:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/email/activity/FindLocationActivity$2;->this$0:Lcom/android/email/activity/FindLocationActivity;

    #calls: Lcom/android/email/activity/FindLocationActivity;->getAddressFromLocation(Landroid/location/Location;)Lcom/android/email/activity/FindLocationActivity$LocationData;
    invoke-static {v2, p1}, Lcom/android/email/activity/FindLocationActivity;->access$200(Lcom/android/email/activity/FindLocationActivity;Landroid/location/Location;)Lcom/android/email/activity/FindLocationActivity$LocationData;

    move-result-object v0

    .line 441
    .local v0, data:Lcom/android/email/activity/FindLocationActivity$LocationData;
    const-string v2, "location-char"

    iget-object v3, v0, Lcom/android/email/activity/FindLocationActivity$LocationData;->dataChar:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 442
    const-string v2, "location-string"

    iget-object v3, v0, Lcom/android/email/activity/FindLocationActivity$LocationData;->dataString:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 443
    iget-object v2, p0, Lcom/android/email/activity/FindLocationActivity$2;->this$0:Lcom/android/email/activity/FindLocationActivity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v1}, Lcom/android/email/activity/FindLocationActivity;->setResult(ILandroid/content/Intent;)V

    .line 444
    iget-object v2, p0, Lcom/android/email/activity/FindLocationActivity$2;->this$0:Lcom/android/email/activity/FindLocationActivity;

    invoke-virtual {v2}, Lcom/android/email/activity/FindLocationActivity;->finish()V

    goto :goto_1b
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 3
    .parameter "provider"

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/email/activity/FindLocationActivity$2;->this$0:Lcom/android/email/activity/FindLocationActivity;

    #getter for: Lcom/android/email/activity/FindLocationActivity;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v0}, Lcom/android/email/activity/FindLocationActivity;->access$300(Lcom/android/email/activity/FindLocationActivity;)Landroid/location/LocationManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 423
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2
    .parameter "provider"

    .prologue
    .line 419
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 416
    return-void
.end method

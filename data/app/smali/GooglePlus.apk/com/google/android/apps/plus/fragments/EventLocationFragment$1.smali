.class Lcom/google/android/apps/plus/fragments/EventLocationFragment$1;
.super Ljava/lang/Object;
.source "EventLocationFragment.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/EventLocationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/EventLocationFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/EventLocationFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 482
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/EventLocationFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/EventLocationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 7
    .parameter "location"

    .prologue
    .line 490
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EventLocationFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/EventLocationFragment;

    #calls: Lcom/google/android/apps/plus/fragments/EventLocationFragment;->removeLocationListener()V
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->access$000(Lcom/google/android/apps/plus/fragments/EventLocationFragment;)V

    .line 492
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EventLocationFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/EventLocationFragment;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    #calls: Lcom/google/android/apps/plus/fragments/EventLocationFragment;->setCurrentLocation(DD)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/fragments/EventLocationFragment;->access$100(Lcom/google/android/apps/plus/fragments/EventLocationFragment;DD)V

    .line 493
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2
    .parameter "provider"

    .prologue
    .line 500
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2
    .parameter "provider"

    .prologue
    .line 507
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 514
    return-void
.end method

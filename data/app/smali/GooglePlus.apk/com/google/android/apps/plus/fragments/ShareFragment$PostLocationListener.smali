.class Lcom/google/android/apps/plus/fragments/ShareFragment$PostLocationListener;
.super Ljava/lang/Object;
.source "ShareFragment.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/ShareFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PostLocationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/fragments/ShareFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 422
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$PostLocationListener;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/fragments/ShareFragment;Lcom/google/android/apps/plus/fragments/ShareFragment$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 422
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/ShareFragment$PostLocationListener;-><init>(Lcom/google/android/apps/plus/fragments/ShareFragment;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 4
    .parameter "location"

    .prologue
    .line 429
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$PostLocationListener;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    #calls: Lcom/google/android/apps/plus/fragments/ShareFragment;->removeLocationListener()V
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$1200(Lcom/google/android/apps/plus/fragments/ShareFragment;)V

    .line 431
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$PostLocationListener;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/ShareFragment;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$800(Lcom/google/android/apps/plus/fragments/ShareFragment;)Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 447
    :goto_d
    return-void

    .line 436
    :cond_e
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$PostLocationListener;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    #setter for: Lcom/google/android/apps/plus/fragments/ShareFragment;->mProviderLocation:Landroid/location/Location;
    invoke-static {v0, p1}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$1302(Lcom/google/android/apps/plus/fragments/ShareFragment;Landroid/location/Location;)Landroid/location/Location;

    .line 438
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$PostLocationListener;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$PostLocationListener;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    #calls: Lcom/google/android/apps/plus/fragments/ShareFragment;->getCityLevelLocationPreference()Z
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$1600(Lcom/google/android/apps/plus/fragments/ShareFragment;)Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-static {p1}, Lcom/google/android/apps/plus/phone/LocationController;->getCityLevelLocation(Landroid/location/Location;)Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    :goto_21
    #setter for: Lcom/google/android/apps/plus/fragments/ShareFragment;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;
    invoke-static {v1, v0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$802(Lcom/google/android/apps/plus/fragments/ShareFragment;Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 443
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$PostLocationListener;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$PostLocationListener;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getView()Landroid/view/View;

    move-result-object v1

    #calls: Lcom/google/android/apps/plus/fragments/ShareFragment;->updatePostUI(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$1500(Lcom/google/android/apps/plus/fragments/ShareFragment;Landroid/view/View;)V

    .line 446
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$PostLocationListener;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$PostLocationListener;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getView()Landroid/view/View;

    move-result-object v1

    #calls: Lcom/google/android/apps/plus/fragments/ShareFragment;->updateLocation(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$1400(Lcom/google/android/apps/plus/fragments/ShareFragment;Landroid/view/View;)V

    goto :goto_d

    .line 438
    :cond_3b
    invoke-static {p1}, Lcom/google/android/apps/plus/phone/LocationController;->getStreetLevelLocation(Landroid/location/Location;)Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    goto :goto_21
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2
    .parameter "provider"

    .prologue
    .line 454
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2
    .parameter "provider"

    .prologue
    .line 461
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 468
    return-void
.end method

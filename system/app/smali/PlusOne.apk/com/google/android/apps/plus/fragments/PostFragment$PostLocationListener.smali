.class Lcom/google/android/apps/plus/fragments/PostFragment$PostLocationListener;
.super Ljava/lang/Object;
.source "PostFragment.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/PostFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PostLocationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/PostFragment;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/fragments/PostFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PostFragment$PostLocationListener;->this$0:Lcom/google/android/apps/plus/fragments/PostFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/fragments/PostFragment;Lcom/google/android/apps/plus/fragments/PostFragment$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 222
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/PostFragment$PostLocationListener;-><init>(Lcom/google/android/apps/plus/fragments/PostFragment;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 4
    .parameter "location"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment$PostLocationListener;->this$0:Lcom/google/android/apps/plus/fragments/PostFragment;

    #calls: Lcom/google/android/apps/plus/fragments/PostFragment;->removeLocationListener()V
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/PostFragment;->access$300(Lcom/google/android/apps/plus/fragments/PostFragment;)V

    .line 231
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment$PostLocationListener;->this$0:Lcom/google/android/apps/plus/fragments/PostFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PostFragment;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/PostFragment;->access$400(Lcom/google/android/apps/plus/fragments/PostFragment;)Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 247
    :goto_d
    return-void

    .line 236
    :cond_e
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment$PostLocationListener;->this$0:Lcom/google/android/apps/plus/fragments/PostFragment;

    #setter for: Lcom/google/android/apps/plus/fragments/PostFragment;->mProviderLocation:Landroid/location/Location;
    invoke-static {v0, p1}, Lcom/google/android/apps/plus/fragments/PostFragment;->access$502(Lcom/google/android/apps/plus/fragments/PostFragment;Landroid/location/Location;)Landroid/location/Location;

    .line 238
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment$PostLocationListener;->this$0:Lcom/google/android/apps/plus/fragments/PostFragment;

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment$PostLocationListener;->this$0:Lcom/google/android/apps/plus/fragments/PostFragment;

    #calls: Lcom/google/android/apps/plus/fragments/PostFragment;->getCityLevelLocationPreference()Z
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/PostFragment;->access$600(Lcom/google/android/apps/plus/fragments/PostFragment;)Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-static {p1}, Lcom/google/android/apps/plus/phone/LocationController;->getCityLevelLocation(Landroid/location/Location;)Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    :goto_21
    #setter for: Lcom/google/android/apps/plus/fragments/PostFragment;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;
    invoke-static {v1, v0}, Lcom/google/android/apps/plus/fragments/PostFragment;->access$402(Lcom/google/android/apps/plus/fragments/PostFragment;Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 243
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment$PostLocationListener;->this$0:Lcom/google/android/apps/plus/fragments/PostFragment;

    #calls: Lcom/google/android/apps/plus/fragments/PostFragment;->updatePostUI()V
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/PostFragment;->access$700(Lcom/google/android/apps/plus/fragments/PostFragment;)V

    .line 246
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostFragment$PostLocationListener;->this$0:Lcom/google/android/apps/plus/fragments/PostFragment;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostFragment$PostLocationListener;->this$0:Lcom/google/android/apps/plus/fragments/PostFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/PostFragment;->getView()Landroid/view/View;

    move-result-object v1

    #calls: Lcom/google/android/apps/plus/fragments/PostFragment;->updateLocation(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/fragments/PostFragment;->access$800(Lcom/google/android/apps/plus/fragments/PostFragment;Landroid/view/View;)V

    goto :goto_d

    .line 238
    :cond_35
    invoke-static {p1}, Lcom/google/android/apps/plus/phone/LocationController;->getStreetLevelLocation(Landroid/location/Location;)Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    goto :goto_21
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2
    .parameter "provider"

    .prologue
    .line 254
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2
    .parameter "provider"

    .prologue
    .line 261
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 268
    return-void
.end method

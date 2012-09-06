.class public Lcom/android/athome/picker/media/MediaRouterFallback$UserRouteInfo;
.super Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;
.source "MediaRouterFallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/athome/picker/media/MediaRouterFallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UserRouteInfo"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/athome/picker/media/MediaRouterFallback;


# direct methods
.method constructor <init>(Lcom/android/athome/picker/media/MediaRouterFallback;Lcom/android/athome/picker/media/MediaRouterFallback$RouteCategory;)V
    .registers 4
    .parameter
    .parameter "category"

    .prologue
    .line 776
    iput-object p1, p0, Lcom/android/athome/picker/media/MediaRouterFallback$UserRouteInfo;->this$0:Lcom/android/athome/picker/media/MediaRouterFallback;

    .line 777
    invoke-direct {p0, p1, p2}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;-><init>(Lcom/android/athome/picker/media/MediaRouterFallback;Lcom/android/athome/picker/media/MediaRouterFallback$RouteCategory;)V

    .line 778
    const/high16 v0, 0x80

    iput v0, p0, Lcom/android/athome/picker/media/MediaRouterFallback$UserRouteInfo;->mSupportedTypes:I

    .line 779
    return-void
.end method


# virtual methods
.method public requestSetVolume(I)V
    .registers 4
    .parameter "volume"

    .prologue
    .line 809
    iget v0, p0, Lcom/android/athome/picker/media/MediaRouterFallback$UserRouteInfo;->mVolumeHandling:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 810
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouterFallback$UserRouteInfo;->mVcb:Lcom/android/athome/picker/media/MediaRouterFallback$VolumeCallbackInfo;

    if-nez v0, :cond_11

    .line 811
    const-string v0, "MediaRouterFallback"

    const-string v1, "Cannot requestSetVolume on user route - no volume callback set"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    :cond_10
    :goto_10
    return-void

    .line 814
    :cond_11
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouterFallback$UserRouteInfo;->mVcb:Lcom/android/athome/picker/media/MediaRouterFallback$VolumeCallbackInfo;

    iget-object v0, v0, Lcom/android/athome/picker/media/MediaRouterFallback$VolumeCallbackInfo;->vcb:Lcom/android/athome/picker/media/AbsMediaRouterCompat$VolumeCallback;

    invoke-virtual {v0, p0, p1}, Lcom/android/athome/picker/media/AbsMediaRouterCompat$VolumeCallback;->onVolumeSetRequest(Ljava/lang/Object;I)V

    goto :goto_10
.end method

.method public requestUpdateVolume(I)V
    .registers 4
    .parameter "direction"

    .prologue
    .line 820
    iget v0, p0, Lcom/android/athome/picker/media/MediaRouterFallback$UserRouteInfo;->mVolumeHandling:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 821
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouterFallback$UserRouteInfo;->mVcb:Lcom/android/athome/picker/media/MediaRouterFallback$VolumeCallbackInfo;

    if-nez v0, :cond_11

    .line 822
    const-string v0, "MediaRouterFallback"

    const-string v1, "Cannot requestUpdateVolume on user route - no volume callback set"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    :cond_10
    :goto_10
    return-void

    .line 825
    :cond_11
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouterFallback$UserRouteInfo;->mVcb:Lcom/android/athome/picker/media/MediaRouterFallback$VolumeCallbackInfo;

    iget-object v0, v0, Lcom/android/athome/picker/media/MediaRouterFallback$VolumeCallbackInfo;->vcb:Lcom/android/athome/picker/media/AbsMediaRouterCompat$VolumeCallback;

    invoke-virtual {v0, p0, p1}, Lcom/android/athome/picker/media/AbsMediaRouterCompat$VolumeCallback;->onVolumeUpdateRequest(Ljava/lang/Object;I)V

    goto :goto_10
.end method

.method public setName(Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 786
    iput-object p1, p0, Lcom/android/athome/picker/media/MediaRouterFallback$UserRouteInfo;->mName:Ljava/lang/CharSequence;

    .line 787
    invoke-virtual {p0}, Lcom/android/athome/picker/media/MediaRouterFallback$UserRouteInfo;->routeUpdated()V

    .line 788
    return-void
.end method

.method public setPlaybackType(I)V
    .registers 3
    .parameter "type"

    .prologue
    .line 847
    iget v0, p0, Lcom/android/athome/picker/media/MediaRouterFallback$UserRouteInfo;->mPlaybackType:I

    if-eq v0, p1, :cond_6

    .line 848
    iput p1, p0, Lcom/android/athome/picker/media/MediaRouterFallback$UserRouteInfo;->mPlaybackType:I

    .line 850
    :cond_6
    return-void
.end method

.method public setStatus(Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "status"

    .prologue
    .line 796
    invoke-virtual {p0, p1}, Lcom/android/athome/picker/media/MediaRouterFallback$UserRouteInfo;->setStatusInt(Ljava/lang/CharSequence;)V

    .line 797
    return-void
.end method

.method public setVolume(I)V
    .registers 4
    .parameter "volume"

    .prologue
    .line 830
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/athome/picker/media/MediaRouterFallback$UserRouteInfo;->getVolumeMax()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 831
    iget v0, p0, Lcom/android/athome/picker/media/MediaRouterFallback$UserRouteInfo;->mVolume:I

    if-eq v0, p1, :cond_21

    .line 832
    iput p1, p0, Lcom/android/athome/picker/media/MediaRouterFallback$UserRouteInfo;->mVolume:I

    .line 833
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouterFallback$UserRouteInfo;->this$0:Lcom/android/athome/picker/media/MediaRouterFallback;

    invoke-virtual {v0, p0}, Lcom/android/athome/picker/media/MediaRouterFallback;->dispatchRouteVolumeChanged(Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;)V

    .line 834
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouterFallback$UserRouteInfo;->mGroup:Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;

    if-eqz v0, :cond_21

    .line 835
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouterFallback$UserRouteInfo;->mGroup:Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;

    invoke-virtual {v0, p0}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;->memberVolumeChanged(Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;)V

    .line 838
    :cond_21
    return-void
.end method

.method public setVolumeCallback(Lcom/android/athome/picker/media/AbsMediaRouterCompat$VolumeCallback;)V
    .registers 3
    .parameter "cb"

    .prologue
    .line 865
    new-instance v0, Lcom/android/athome/picker/media/MediaRouterFallback$VolumeCallbackInfo;

    invoke-direct {v0, p1, p0}, Lcom/android/athome/picker/media/MediaRouterFallback$VolumeCallbackInfo;-><init>(Lcom/android/athome/picker/media/AbsMediaRouterCompat$VolumeCallback;Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;)V

    iput-object v0, p0, Lcom/android/athome/picker/media/MediaRouterFallback$UserRouteInfo;->mVcb:Lcom/android/athome/picker/media/MediaRouterFallback$VolumeCallbackInfo;

    .line 866
    return-void
.end method

.method public setVolumeHandling(I)V
    .registers 3
    .parameter "volumeHandling"

    .prologue
    .line 853
    iget v0, p0, Lcom/android/athome/picker/media/MediaRouterFallback$UserRouteInfo;->mVolumeHandling:I

    if-eq v0, p1, :cond_6

    .line 854
    iput p1, p0, Lcom/android/athome/picker/media/MediaRouterFallback$UserRouteInfo;->mVolumeHandling:I

    .line 856
    :cond_6
    return-void
.end method

.method public setVolumeMax(I)V
    .registers 3
    .parameter "volumeMax"

    .prologue
    .line 841
    iget v0, p0, Lcom/android/athome/picker/media/MediaRouterFallback$UserRouteInfo;->mVolumeMax:I

    if-eq v0, p1, :cond_6

    .line 842
    iput p1, p0, Lcom/android/athome/picker/media/MediaRouterFallback$UserRouteInfo;->mVolumeMax:I

    .line 844
    :cond_6
    return-void
.end method

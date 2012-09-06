.class public Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;
.super Ljava/lang/Object;
.source "MediaRouterFallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/athome/picker/media/MediaRouterFallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RouteInfo"
.end annotation


# instance fields
.field final mCategory:Lcom/android/athome/picker/media/MediaRouterFallback$RouteCategory;

.field mGroup:Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;

.field mIcon:Landroid/graphics/drawable/Drawable;

.field mName:Ljava/lang/CharSequence;

.field mPlaybackStream:I

.field mPlaybackType:I

.field private mStatus:Ljava/lang/CharSequence;

.field mSupportedTypes:I

.field private mTag:Ljava/lang/Object;

.field mVcb:Lcom/android/athome/picker/media/MediaRouterFallback$VolumeCallbackInfo;

.field mVolume:I

.field mVolumeHandling:I

.field mVolumeMax:I

.field final synthetic this$0:Lcom/android/athome/picker/media/MediaRouterFallback;


# direct methods
.method constructor <init>(Lcom/android/athome/picker/media/MediaRouterFallback;Lcom/android/athome/picker/media/MediaRouterFallback$RouteCategory;)V
    .registers 5
    .parameter
    .parameter "category"

    .prologue
    const/16 v0, 0xf

    const/4 v1, 0x0

    .line 642
    iput-object p1, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->this$0:Lcom/android/athome/picker/media/MediaRouterFallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 633
    iput v1, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->mPlaybackType:I

    .line 634
    iput v0, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->mVolumeMax:I

    .line 635
    iput v0, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->mVolume:I

    .line 636
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->mPlaybackStream:I

    .line 637
    iput v1, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->mVolumeHandling:I

    .line 643
    iput-object p2, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->mCategory:Lcom/android/athome/picker/media/MediaRouterFallback$RouteCategory;

    .line 644
    invoke-virtual {p2}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteCategory;->getSupportedTypes()I

    move-result v0

    iput v0, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->mSupportedTypes:I

    .line 645
    return-void
.end method


# virtual methods
.method public getCategory()Lcom/android/athome/picker/media/MediaRouterFallback$RouteCategory;
    .registers 2

    .prologue
    .line 681
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->mCategory:Lcom/android/athome/picker/media/MediaRouterFallback$RouteCategory;

    return-object v0
.end method

.method public getGroup()Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;
    .registers 2

    .prologue
    .line 674
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->mGroup:Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;

    return-object v0
.end method

.method public getIconDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 707
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getName()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 652
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->mName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPlaybackType()I
    .registers 2

    .prologue
    .line 762
    iget v0, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->mPlaybackType:I

    return v0
.end method

.method public getStatus()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 660
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->mStatus:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSupportedTypes()I
    .registers 2

    .prologue
    .line 667
    iget v0, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->mSupportedTypes:I

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 716
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public getVolume()I
    .registers 3

    .prologue
    .line 720
    iget v0, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->mPlaybackType:I

    if-nez v0, :cond_11

    .line 721
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->this$0:Lcom/android/athome/picker/media/MediaRouterFallback;

    #getter for: Lcom/android/athome/picker/media/MediaRouterFallback;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/athome/picker/media/MediaRouterFallback;->access$000(Lcom/android/athome/picker/media/MediaRouterFallback;)Landroid/media/AudioManager;

    move-result-object v0

    iget v1, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->mPlaybackStream:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 723
    :goto_10
    return v0

    :cond_11
    iget v0, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->mVolume:I

    goto :goto_10
.end method

.method public getVolumeHandling()I
    .registers 2

    .prologue
    .line 758
    iget v0, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->mVolumeHandling:I

    return v0
.end method

.method public getVolumeMax()I
    .registers 3

    .prologue
    .line 728
    iget v0, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->mPlaybackType:I

    if-nez v0, :cond_11

    .line 729
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->this$0:Lcom/android/athome/picker/media/MediaRouterFallback;

    #getter for: Lcom/android/athome/picker/media/MediaRouterFallback;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/athome/picker/media/MediaRouterFallback;->access$000(Lcom/android/athome/picker/media/MediaRouterFallback;)Landroid/media/AudioManager;

    move-result-object v0

    iget v1, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->mPlaybackStream:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    .line 731
    :goto_10
    return v0

    :cond_11
    iget v0, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->mVolumeMax:I

    goto :goto_10
.end method

.method public requestSetVolume(I)V
    .registers 5
    .parameter "volume"

    .prologue
    .line 736
    iget v0, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->mPlaybackType:I

    if-nez v0, :cond_11

    .line 737
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->this$0:Lcom/android/athome/picker/media/MediaRouterFallback;

    #getter for: Lcom/android/athome/picker/media/MediaRouterFallback;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/athome/picker/media/MediaRouterFallback;->access$000(Lcom/android/athome/picker/media/MediaRouterFallback;)Landroid/media/AudioManager;

    move-result-object v0

    iget v1, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->mPlaybackStream:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 743
    :goto_10
    return-void

    .line 739
    :cond_11
    const-string v0, "MediaRouterFallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".requestSetVolume(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Non-local volume playback on system route? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Could not request volume change."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method public requestUpdateVolume(I)V
    .registers 6
    .parameter "direction"

    .prologue
    const/4 v3, 0x0

    .line 746
    iget v1, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->mPlaybackType:I

    if-nez v1, :cond_22

    .line 747
    invoke-virtual {p0}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->getVolume()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->getVolumeMax()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 749
    .local v0, volume:I
    iget-object v1, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->this$0:Lcom/android/athome/picker/media/MediaRouterFallback;

    #getter for: Lcom/android/athome/picker/media/MediaRouterFallback;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/athome/picker/media/MediaRouterFallback;->access$000(Lcom/android/athome/picker/media/MediaRouterFallback;)Landroid/media/AudioManager;

    move-result-object v1

    iget v2, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->mPlaybackStream:I

    invoke-virtual {v1, v2, v0, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 755
    .end local v0           #volume:I
    :goto_21
    return-void

    .line 751
    :cond_22
    const-string v1, "MediaRouterFallback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".requestUpdateVolume(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Non-local volume playback on system route? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Could not request volume change."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method

.method routeUpdated()V
    .registers 2

    .prologue
    .line 695
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->this$0:Lcom/android/athome/picker/media/MediaRouterFallback;

    invoke-virtual {v0, p0}, Lcom/android/athome/picker/media/MediaRouterFallback;->updateRoute(Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;)V

    .line 696
    return-void
.end method

.method setStatusInt(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "status"

    .prologue
    .line 685
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->mStatus:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 686
    iput-object p1, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->mStatus:Ljava/lang/CharSequence;

    .line 687
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->mGroup:Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;

    if-eqz v0, :cond_13

    .line 688
    iget-object v0, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->mGroup:Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;

    invoke-virtual {v0, p0, p1}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteGroup;->memberStatusChanged(Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;Ljava/lang/CharSequence;)V

    .line 690
    :cond_13
    invoke-virtual {p0}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->routeUpdated()V

    .line 692
    :cond_16
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .registers 2
    .parameter "tag"

    .prologue
    .line 711
    iput-object p1, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->mTag:Ljava/lang/Object;

    .line 712
    invoke-virtual {p0}, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->routeUpdated()V

    .line 713
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 700
    iget v1, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->mSupportedTypes:I

    invoke-static {v1}, Lcom/android/athome/picker/media/MediaRouterFallback;->typesToString(I)Ljava/lang/String;

    move-result-object v0

    .line 701
    .local v0, supportedTypes:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RouteInfo{ name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->mName:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->mStatus:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " category="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/athome/picker/media/MediaRouterFallback$RouteInfo;->mCategory:Lcom/android/athome/picker/media/MediaRouterFallback$RouteCategory;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " supportedTypes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

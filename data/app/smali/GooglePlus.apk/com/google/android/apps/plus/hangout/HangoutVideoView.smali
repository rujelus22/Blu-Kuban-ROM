.class public abstract Lcom/google/android/apps/plus/hangout/HangoutVideoView;
.super Landroid/widget/RelativeLayout;
.source "HangoutVideoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/hangout/HangoutVideoView$1;,
        Lcom/google/android/apps/plus/hangout/HangoutVideoView$LayoutMode;
    }
.end annotation


# instance fields
.field private final mAudiodMutedStatusView:Landroid/view/View;

.field private final mAvatarView:Landroid/widget/ImageView;

.field private final mBackgoundLogo:Landroid/widget/ImageView;

.field private final mBlockedView:Landroid/view/View;

.field private final mCameraErrorView:Landroid/view/View;

.field private final mDispSize:Landroid/graphics/Rect;

.field private final mDisplay:Landroid/view/Display;

.field private final mFlashToggleButton:Landroid/widget/ImageButton;

.field private mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

.field private mLayoutMode:Lcom/google/android/apps/plus/hangout/HangoutVideoView$LayoutMode;

.field private final mPausedView:Landroid/view/View;

.field private final mPinnedStatusView:Landroid/view/View;

.field private mRootView:Landroid/widget/RelativeLayout;

.field private final mSnapshotView:Landroid/widget/ImageView;

.field private mVideoSurface:Landroid/view/View;

.field private final mVolumeBar:Lcom/google/android/apps/plus/views/Thermometer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9
    .parameter "context"
    .parameter "attributes"

    .prologue
    const/4 v5, -0x2

    .line 74
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 79
    .local v2, windowManager:Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->mDisplay:Landroid/view/Display;

    .line 80
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->mDispSize:Landroid/graphics/Rect;

    .line 83
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 84
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f030054

    const/4 v4, 0x1

    invoke-virtual {v0, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 85
    const v3, 0x7f090126

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->mAvatarView:Landroid/widget/ImageView;

    .line 86
    const v3, 0x7f09012b

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->mBlockedView:Landroid/view/View;

    .line 87
    const v3, 0x7f09012c

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->mPausedView:Landroid/view/View;

    .line 88
    const v3, 0x7f09012d

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->mCameraErrorView:Landroid/view/View;

    .line 89
    const v3, 0x7f090100

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->mFlashToggleButton:Landroid/widget/ImageButton;

    .line 90
    const v3, 0x7f0900e8

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->mBackgoundLogo:Landroid/widget/ImageView;

    .line 91
    const v3, 0x7f090125

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->mSnapshotView:Landroid/widget/ImageView;

    .line 92
    const v3, 0x7f090124

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->mRootView:Landroid/widget/RelativeLayout;

    .line 94
    const v3, 0x7f090128

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->mAudiodMutedStatusView:Landroid/view/View;

    .line 95
    const v3, 0x7f09012a

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->mPinnedStatusView:Landroid/view/View;

    .line 96
    const v3, 0x7f090129

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/views/Thermometer;

    iput-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->mVolumeBar:Lcom/google/android/apps/plus/views/Thermometer;

    .line 99
    sget-object v3, Lcom/google/android/apps/plus/hangout/HangoutVideoView$LayoutMode;->FIT:Lcom/google/android/apps/plus/hangout/HangoutVideoView$LayoutMode;

    iput-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->mLayoutMode:Lcom/google/android/apps/plus/hangout/HangoutVideoView$LayoutMode;

    .line 100
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 102
    .local v1, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    return-void
.end method


# virtual methods
.method public final getAvatarView()Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->mAvatarView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 182
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentVideoSource()Lcom/google/android/apps/plus/hangout/MeetingMember;
    .registers 2

    .prologue
    .line 365
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getFlashToggleButton()Landroid/widget/ImageButton;
    .registers 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->mFlashToggleButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public final getSnapshotView()Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->mSnapshotView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final hideAudioMutedStatus()V
    .registers 3

    .prologue
    .line 319
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->mAudiodMutedStatusView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 320
    return-void
.end method

.method public final hideAvatar()V
    .registers 3

    .prologue
    .line 288
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->mAvatarView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 289
    return-void
.end method

.method public final hideBlocked()V
    .registers 3

    .prologue
    .line 274
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->mBlockedView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 275
    return-void
.end method

.method public final hideLogo()V
    .registers 3

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->mBackgoundLogo:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 233
    return-void
.end method

.method public final hidePaused()V
    .registers 3

    .prologue
    .line 305
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->mPausedView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 306
    return-void
.end method

.method public final hidePinnedStatus()V
    .registers 3

    .prologue
    .line 351
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->mPinnedStatusView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 352
    return-void
.end method

.method public final hideVideoSurface()V
    .registers 3

    .prologue
    .line 260
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->mVideoSurface:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 261
    return-void
.end method

.method public final hideVolumeBar()V
    .registers 3

    .prologue
    .line 337
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->mVolumeBar:Lcom/google/android/apps/plus/views/Thermometer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/Thermometer;->setVisibility(I)V

    .line 338
    return-void
.end method

.method public final isAudioMuteStatusShowing()Z
    .registers 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->mAudiodMutedStatusView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final isHangoutTileStarted()Z
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->isTileStarted()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isVideoShowing()Z
    .registers 2

    .prologue
    .line 387
    const/4 v0, 0x0

    return v0
.end method

.method protected layoutVideo(IIII)V
    .registers 13
    .parameter "videoWidth"
    .parameter "videoHeight"
    .parameter "parentWidth"
    .parameter "parentHeight"

    .prologue
    const/16 v6, 0x64

    .line 402
    sget-object v4, Lcom/google/android/apps/plus/hangout/HangoutVideoView$1;->$SwitchMap$com$google$android$apps$plus$hangout$HangoutVideoView$LayoutMode:[I

    iget-object v5, p0, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->mLayoutMode:Lcom/google/android/apps/plus/hangout/HangoutVideoView$LayoutMode;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/hangout/HangoutVideoView$LayoutMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_94

    .line 430
    const-string v4, "Unknown layout mode!"

    invoke-static {v4}, Lcom/google/android/apps/plus/hangout/Log;->error(Ljava/lang/String;)V

    .line 445
    :goto_14
    return-void

    .line 404
    :pswitch_15
    new-instance v2, Lcom/google/android/apps/plus/hangout/RectangleDimensions;

    invoke-direct {v2, p3, p4}, Lcom/google/android/apps/plus/hangout/RectangleDimensions;-><init>(II)V

    .line 434
    .local v2, videoDimensions:Lcom/google/android/apps/plus/hangout/RectangleDimensions;
    :goto_1a
    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->mVideoSurface:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 436
    .local v3, videoLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget v4, v2, Lcom/google/android/apps/plus/hangout/RectangleDimensions;->width:I

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 437
    iget v4, v2, Lcom/google/android/apps/plus/hangout/RectangleDimensions;->height:I

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 438
    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->mVideoSurface:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 440
    const-string v4, "HangoutVideo.layout: mode=%s  video=%d,%d  parent=%d,%d   new dimensions=%d,%d  self=%s"

    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->mLayoutMode:Lcom/google/android/apps/plus/hangout/HangoutVideoView$LayoutMode;

    invoke-virtual {v7}, Lcom/google/android/apps/plus/hangout/HangoutVideoView$LayoutMode;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x5

    iget v7, v2, Lcom/google/android/apps/plus/hangout/RectangleDimensions;->width:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x6

    iget v7, v2, Lcom/google/android/apps/plus/hangout/RectangleDimensions;->height:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x7

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_14

    .line 408
    .end local v2           #videoDimensions:Lcom/google/android/apps/plus/hangout/RectangleDimensions;
    .end local v3           #videoLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :pswitch_77
    if-nez p2, :cond_7f

    .line 415
    new-instance v2, Lcom/google/android/apps/plus/hangout/RectangleDimensions;

    invoke-direct {v2, p3, p4}, Lcom/google/android/apps/plus/hangout/RectangleDimensions;-><init>(II)V

    .restart local v2       #videoDimensions:Lcom/google/android/apps/plus/hangout/RectangleDimensions;
    goto :goto_1a

    .line 417
    .end local v2           #videoDimensions:Lcom/google/android/apps/plus/hangout/RectangleDimensions;
    :cond_7f
    invoke-static {p1, p2}, Lcom/google/android/apps/plus/hangout/Utils;->getAspectRatio(II)D

    move-result-wide v0

    .line 418
    .local v0, aspectRatio:D
    invoke-static {v0, v1, p3, p4}, Lcom/google/android/apps/plus/hangout/Utils;->fitContentInContainer(DII)Lcom/google/android/apps/plus/hangout/RectangleDimensions;

    move-result-object v2

    .line 421
    .restart local v2       #videoDimensions:Lcom/google/android/apps/plus/hangout/RectangleDimensions;
    goto :goto_1a

    .line 425
    .end local v0           #aspectRatio:D
    .end local v2           #videoDimensions:Lcom/google/android/apps/plus/hangout/RectangleDimensions;
    :pswitch_88
    const-string v4, "ZOOM layout not done yet"

    invoke-static {v4}, Lcom/google/android/apps/plus/hangout/Log;->error(Ljava/lang/String;)V

    .line 426
    new-instance v2, Lcom/google/android/apps/plus/hangout/RectangleDimensions;

    invoke-direct {v2, v6, v6}, Lcom/google/android/apps/plus/hangout/RectangleDimensions;-><init>(II)V

    .line 427
    .restart local v2       #videoDimensions:Lcom/google/android/apps/plus/hangout/RectangleDimensions;
    goto :goto_1a

    .line 402
    nop

    :pswitch_data_94
    .packed-switch 0x1
        :pswitch_15
        :pswitch_77
        :pswitch_88
    .end packed-switch
.end method

.method public onMeasure(II)V
    .registers 9
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->getPaddingRight()I

    move-result v5

    add-int v3, v4, v5

    .line 111
    .local v3, widthPadding:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->getPaddingBottom()I

    move-result v5

    add-int v2, v4, v5

    .line 112
    .local v2, heightPadding:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    sub-int v1, v4, v3

    .line 113
    .local v1, contentWidth:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    sub-int v0, v4, v2

    .line 114
    .local v0, contentHeight:I
    if-lez v1, :cond_24

    if-gtz v0, :cond_3f

    .line 115
    :cond_24
    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->mDisplay:Landroid/view/Display;

    iget-object v5, p0, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->mDispSize:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    .line 116
    if-gtz v1, :cond_35

    .line 117
    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->mDispSize:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int v1, v4, v3

    .line 119
    :cond_35
    if-gtz v0, :cond_3f

    .line 120
    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->mDispSize:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int v0, v4, v2

    .line 123
    :cond_3f
    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->onMeasure(IIII)V

    .line 124
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 125
    return-void
.end method

.method public onMeasure(IIII)V
    .registers 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"
    .parameter "contentWidth"
    .parameter "contentHeight"

    .prologue
    .line 140
    return-void
.end method

.method public setBackgroundViewColor(I)V
    .registers 3
    .parameter "color"

    .prologue
    .line 448
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->mRootView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 449
    return-void
.end method

.method public final setHangoutTile(Lcom/google/android/apps/plus/hangout/HangoutTile;)V
    .registers 2
    .parameter "tile"

    .prologue
    .line 147
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    .line 148
    return-void
.end method

.method public final setLayoutMode(Lcom/google/android/apps/plus/hangout/HangoutVideoView$LayoutMode;)V
    .registers 2
    .parameter "mode"

    .prologue
    .line 200
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->mLayoutMode:Lcom/google/android/apps/plus/hangout/HangoutVideoView$LayoutMode;

    .line 201
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->requestLayout()V

    .line 202
    return-void
.end method

.method public final setVideoSurface(Landroid/view/View;)V
    .registers 5
    .parameter "surfaceView"

    .prologue
    .line 163
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->mVideoSurface:Landroid/view/View;

    if-eqz v1, :cond_b

    .line 164
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->mRootView:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->mVideoSurface:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 168
    :cond_b
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->mVideoSurface:Landroid/view/View;

    .line 169
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->mRootView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_24

    const/4 v0, 0x1

    .line 170
    .local v0, index:I
    :goto_16
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->mRootView:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->mVideoSurface:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    .line 173
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->invalidate()V

    .line 174
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->requestLayout()V

    .line 175
    return-void

    .line 169
    .end local v0           #index:I
    :cond_24
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public setVolume(I)V
    .registers 7
    .parameter "volume"

    .prologue
    .line 373
    if-gez p1, :cond_3

    .line 374
    const/4 p1, 0x0

    .line 376
    :cond_3
    const/16 v0, 0x9

    if-le p1, v0, :cond_9

    .line 377
    const/16 p1, 0x9

    .line 379
    :cond_9
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->mVolumeBar:Lcom/google/android/apps/plus/views/Thermometer;

    int-to-double v1, p1

    const-wide/high16 v3, 0x4022

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/views/Thermometer;->setFillLevel(D)V

    .line 380
    return-void
.end method

.method public final showAudioMutedStatus()V
    .registers 3

    .prologue
    .line 326
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->mAudiodMutedStatusView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 327
    return-void
.end method

.method public final showAvatar()V
    .registers 3

    .prologue
    .line 295
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->mSnapshotView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    if-nez v0, :cond_e

    .line 296
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->mAvatarView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 298
    :cond_e
    return-void
.end method

.method public final showBlocked()V
    .registers 3

    .prologue
    .line 281
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->mBlockedView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 282
    return-void
.end method

.method public final showCameraError()V
    .registers 3

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->mCameraErrorView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 254
    return-void
.end method

.method public final showPaused()V
    .registers 3

    .prologue
    .line 312
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->mPausedView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 313
    return-void
.end method

.method public final showPinnedStatus()V
    .registers 3

    .prologue
    .line 358
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->mPinnedStatusView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 359
    return-void
.end method

.method public final showVideoSurface()V
    .registers 3

    .prologue
    .line 267
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->mVideoSurface:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 268
    return-void
.end method

.method public final showVolumeBar()V
    .registers 3

    .prologue
    .line 344
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->mVolumeBar:Lcom/google/android/apps/plus/views/Thermometer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/Thermometer;->setVisibility(I)V

    .line 345
    return-void
.end method

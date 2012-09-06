.class public abstract Lcom/google/android/apps/plus/hangout/RemoteVideoView;
.super Lcom/google/android/apps/plus/hangout/HangoutVideoView;
.source "RemoteVideoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/hangout/RemoteVideoView$1;,
        Lcom/google/android/apps/plus/hangout/RemoteVideoView$EventHandler;,
        Lcom/google/android/apps/plus/hangout/RemoteVideoView$IncomingContentType;,
        Lcom/google/android/apps/plus/hangout/RemoteVideoView$ParticipantVideoView;,
        Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;,
        Lcom/google/android/apps/plus/hangout/RemoteVideoView$VideoChangeListener;
    }
.end annotation


# instance fields
.field private currentContent:Lcom/google/android/apps/plus/hangout/RemoteVideoView$IncomingContentType;

.field private final eventHandler:Lcom/google/android/apps/plus/hangout/RemoteVideoView$EventHandler;

.field protected incomingVideoContainerHeight:I

.field protected incomingVideoContainerWidth:I

.field protected incomingVideoFrameHeight:I

.field protected incomingVideoFrameWidth:I

.field private isRegistered:Z

.field protected mCurrentVideoSource:Lcom/google/android/apps/plus/hangout/MeetingMember;

.field protected mListener:Lcom/google/android/apps/plus/hangout/RemoteVideoView$VideoChangeListener;

.field private final mVideoSurface:Lcom/google/android/apps/plus/hangout/VideoTextureView;

.field protected requestID:I

.field private showingUnknownAvatar:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 292
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/hangout/HangoutVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 276
    const/16 v0, 0xa

    iput v0, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->incomingVideoFrameWidth:I

    .line 277
    const/16 v0, 0x14

    iput v0, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->incomingVideoFrameHeight:I

    .line 282
    sget-object v0, Lcom/google/android/apps/plus/hangout/RemoteVideoView$IncomingContentType;->NONE:Lcom/google/android/apps/plus/hangout/RemoteVideoView$IncomingContentType;

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->currentContent:Lcom/google/android/apps/plus/hangout/RemoteVideoView$IncomingContentType;

    .line 283
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->requestID:I

    .line 287
    new-instance v0, Lcom/google/android/apps/plus/hangout/RemoteVideoView$EventHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/plus/hangout/RemoteVideoView$EventHandler;-><init>(Lcom/google/android/apps/plus/hangout/RemoteVideoView;Lcom/google/android/apps/plus/hangout/RemoteVideoView$1;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->eventHandler:Lcom/google/android/apps/plus/hangout/RemoteVideoView$EventHandler;

    .line 294
    new-instance v0, Lcom/google/android/apps/plus/hangout/VideoTextureView;

    invoke-direct {v0, p1, p2}, Lcom/google/android/apps/plus/hangout/VideoTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->mVideoSurface:Lcom/google/android/apps/plus/hangout/VideoTextureView;

    .line 295
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->mVideoSurface:Lcom/google/android/apps/plus/hangout/VideoTextureView;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->setVideoSurface(Landroid/view/View;)V

    .line 298
    sget-object v0, Lcom/google/android/apps/plus/hangout/HangoutVideoView$LayoutMode;->FIT:Lcom/google/android/apps/plus/hangout/HangoutVideoView$LayoutMode;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->setLayoutMode(Lcom/google/android/apps/plus/hangout/HangoutVideoView$LayoutMode;)V

    .line 299
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/hangout/RemoteVideoView;)Lcom/google/android/apps/plus/hangout/VideoTextureView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->mVideoSurface:Lcom/google/android/apps/plus/hangout/VideoTextureView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/hangout/RemoteVideoView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->showingUnknownAvatar:Z

    return v0
.end method

.method static synthetic access$102(Lcom/google/android/apps/plus/hangout/RemoteVideoView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->showingUnknownAvatar:Z

    return p1
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/hangout/RemoteVideoView;)Lcom/google/android/apps/plus/hangout/RemoteVideoView$IncomingContentType;
    .registers 2
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->currentContent:Lcom/google/android/apps/plus/hangout/RemoteVideoView$IncomingContentType;

    return-object v0
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 467
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->mVideoSurface:Lcom/google/android/apps/plus/hangout/VideoTextureView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/VideoTextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentVideoSource()Lcom/google/android/apps/plus/hangout/MeetingMember;
    .registers 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->mCurrentVideoSource:Lcom/google/android/apps/plus/hangout/MeetingMember;

    return-object v0
.end method

.method public isVideoShowing()Z
    .registers 2

    .prologue
    .line 459
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->mVideoSurface:Lcom/google/android/apps/plus/hangout/VideoTextureView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->mVideoSurface:Lcom/google/android/apps/plus/hangout/VideoTextureView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/VideoTextureView;->isDecoding()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public onMeasure(IIII)V
    .registers 12
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"
    .parameter "contentWidth"
    .parameter "contentHeight"

    .prologue
    .line 424
    iget v0, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->incomingVideoFrameWidth:I

    iget v1, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->incomingVideoFrameHeight:I

    invoke-virtual {p0, v0, v1, p3, p4}, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->layoutVideo(IIII)V

    .line 425
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->mVideoSurface:Lcom/google/android/apps/plus/hangout/VideoTextureView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/VideoTextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 426
    .local v6, videoLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget v0, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->incomingVideoContainerWidth:I

    iget v1, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    if-ne v0, v1, :cond_1b

    iget v0, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->incomingVideoContainerHeight:I

    iget v1, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    if-eq v0, v1, :cond_40

    .line 428
    :cond_1b
    iget v0, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v0, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->incomingVideoContainerWidth:I

    .line 429
    iget v0, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iput v0, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->incomingVideoContainerHeight:I

    .line 431
    iget v0, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->requestID:I

    if-eqz v0, :cond_40

    .line 434
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->requestID:I

    iget v2, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->incomingVideoContainerWidth:I

    iget v3, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->incomingVideoContainerHeight:I

    sget-object v4, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$ScalingMode;->AUTO_ZOOM:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$ScalingMode;

    const/16 v5, 0xf

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->setIncomingVideoParameters(IIILcom/google/android/apps/plus/hangout/GCommNativeWrapper$ScalingMode;I)V

    .line 440
    :cond_40
    return-void
.end method

.method public onPause()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 324
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    .line 325
    .local v0, appInstance:Lcom/google/android/apps/plus/hangout/GCommApp;
    iget-boolean v1, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->isRegistered:Z

    if-eqz v1, :cond_18

    .line 326
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->eventHandler:Lcom/google/android/apps/plus/hangout/RemoteVideoView$EventHandler;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/plus/hangout/GCommApp;->unregisterForEvents(Landroid/content/Context;Lcom/google/android/apps/plus/hangout/GCommEventHandler;Z)V

    .line 327
    iput-boolean v3, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->isRegistered:Z

    .line 331
    :cond_18
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->mVideoSurface:Lcom/google/android/apps/plus/hangout/VideoTextureView;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/VideoTextureView;->onPause()V

    .line 332
    iget v1, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->requestID:I

    if-eqz v1, :cond_2c

    .line 333
    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->requestID:I

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->stopIncomingVideo(I)V

    .line 334
    iput v3, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->requestID:I

    .line 336
    :cond_2c
    return-void
.end method

.method public onResume()V
    .registers 5

    .prologue
    .line 311
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->isRegistered:Z

    if-nez v0, :cond_19

    .line 312
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->eventHandler:Lcom/google/android/apps/plus/hangout/RemoteVideoView$EventHandler;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/plus/hangout/GCommApp;->registerForEvents(Landroid/content/Context;Lcom/google/android/apps/plus/hangout/GCommEventHandler;Z)V

    .line 313
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->isRegistered:Z

    .line 315
    :cond_19
    sget-object v0, Lcom/google/android/apps/plus/hangout/RemoteVideoView$IncomingContentType;->VIDEO:Lcom/google/android/apps/plus/hangout/RemoteVideoView$IncomingContentType;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->setIncomingContent(Lcom/google/android/apps/plus/hangout/RemoteVideoView$IncomingContentType;)V

    .line 319
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->startVideo()V

    .line 320
    return-void
.end method

.method public setAlpha(F)V
    .registers 3
    .parameter "alpha"

    .prologue
    .line 447
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->mVideoSurface:Lcom/google/android/apps/plus/hangout/VideoTextureView;

    if-eqz v0, :cond_a

    .line 448
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->mVideoSurface:Lcom/google/android/apps/plus/hangout/VideoTextureView;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/hangout/VideoTextureView;->setAlpha(F)V

    .line 452
    :goto_9
    return-void

    .line 450
    :cond_a
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/hangout/HangoutVideoView;->setAlpha(F)V

    goto :goto_9
.end method

.method protected setIncomingContent(Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 3
    .parameter "member"

    .prologue
    .line 408
    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->isMediaBlocked()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 409
    sget-object v0, Lcom/google/android/apps/plus/hangout/RemoteVideoView$IncomingContentType;->BLOCKED:Lcom/google/android/apps/plus/hangout/RemoteVideoView$IncomingContentType;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->setIncomingContent(Lcom/google/android/apps/plus/hangout/RemoteVideoView$IncomingContentType;)V

    .line 416
    :goto_b
    return-void

    .line 410
    :cond_c
    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->isVideoPaused()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 411
    sget-object v0, Lcom/google/android/apps/plus/hangout/RemoteVideoView$IncomingContentType;->VIDEO_PAUSED:Lcom/google/android/apps/plus/hangout/RemoteVideoView$IncomingContentType;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->setIncomingContent(Lcom/google/android/apps/plus/hangout/RemoteVideoView$IncomingContentType;)V

    goto :goto_b

    .line 414
    :cond_18
    sget-object v0, Lcom/google/android/apps/plus/hangout/RemoteVideoView$IncomingContentType;->VIDEO:Lcom/google/android/apps/plus/hangout/RemoteVideoView$IncomingContentType;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->setIncomingContent(Lcom/google/android/apps/plus/hangout/RemoteVideoView$IncomingContentType;)V

    goto :goto_b
.end method

.method protected setIncomingContent(Lcom/google/android/apps/plus/hangout/RemoteVideoView$IncomingContentType;)V
    .registers 7
    .parameter "newContent"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 357
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->currentContent:Lcom/google/android/apps/plus/hangout/RemoteVideoView$IncomingContentType;

    if-ne p1, v2, :cond_8

    .line 405
    :goto_7
    return-void

    .line 361
    :cond_8
    sget-object v2, Lcom/google/android/apps/plus/hangout/RemoteVideoView$IncomingContentType;->VIDEO:Lcom/google/android/apps/plus/hangout/RemoteVideoView$IncomingContentType;

    if-ne p1, v2, :cond_52

    .line 362
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->showVideoSurface()V

    .line 367
    :goto_f
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->getSnapshotView()Landroid/widget/ImageView;

    move-result-object v1

    .line 368
    .local v1, snapShotView:Landroid/widget/ImageView;
    sget-object v2, Lcom/google/android/apps/plus/hangout/RemoteVideoView$IncomingContentType;->AVATAR:Lcom/google/android/apps/plus/hangout/RemoteVideoView$IncomingContentType;

    if-eq p1, v2, :cond_1f

    sget-object v2, Lcom/google/android/apps/plus/hangout/RemoteVideoView$IncomingContentType;->BLOCKED:Lcom/google/android/apps/plus/hangout/RemoteVideoView$IncomingContentType;

    if-eq p1, v2, :cond_1f

    sget-object v2, Lcom/google/android/apps/plus/hangout/RemoteVideoView$IncomingContentType;->VIDEO_PAUSED:Lcom/google/android/apps/plus/hangout/RemoteVideoView$IncomingContentType;

    if-ne p1, v2, :cond_5a

    .line 371
    :cond_1f
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->mVideoSurface:Lcom/google/android/apps/plus/hangout/VideoTextureView;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/VideoTextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 372
    .local v0, snapShot:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_56

    .line 373
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 374
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 382
    .end local v0           #snapShot:Landroid/graphics/Bitmap;
    :goto_2d
    sget-object v2, Lcom/google/android/apps/plus/hangout/RemoteVideoView$IncomingContentType;->AVATAR:Lcom/google/android/apps/plus/hangout/RemoteVideoView$IncomingContentType;

    if-eq p1, v2, :cond_39

    sget-object v2, Lcom/google/android/apps/plus/hangout/RemoteVideoView$IncomingContentType;->BLOCKED:Lcom/google/android/apps/plus/hangout/RemoteVideoView$IncomingContentType;

    if-eq p1, v2, :cond_39

    sget-object v2, Lcom/google/android/apps/plus/hangout/RemoteVideoView$IncomingContentType;->VIDEO_PAUSED:Lcom/google/android/apps/plus/hangout/RemoteVideoView$IncomingContentType;

    if-ne p1, v2, :cond_5e

    .line 385
    :cond_39
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->showAvatar()V

    .line 390
    :goto_3c
    sget-object v2, Lcom/google/android/apps/plus/hangout/RemoteVideoView$IncomingContentType;->BLOCKED:Lcom/google/android/apps/plus/hangout/RemoteVideoView$IncomingContentType;

    if-ne p1, v2, :cond_62

    .line 391
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->showBlocked()V

    .line 396
    :goto_43
    sget-object v2, Lcom/google/android/apps/plus/hangout/RemoteVideoView$IncomingContentType;->VIDEO_PAUSED:Lcom/google/android/apps/plus/hangout/RemoteVideoView$IncomingContentType;

    if-ne p1, v2, :cond_66

    .line 397
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->showPaused()V

    .line 402
    :goto_4a
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->hideLogo()V

    .line 403
    iput-boolean v3, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->showingUnknownAvatar:Z

    .line 404
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->currentContent:Lcom/google/android/apps/plus/hangout/RemoteVideoView$IncomingContentType;

    goto :goto_7

    .line 364
    .end local v1           #snapShotView:Landroid/widget/ImageView;
    :cond_52
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->hideVideoSurface()V

    goto :goto_f

    .line 376
    .restart local v0       #snapShot:Landroid/graphics/Bitmap;
    .restart local v1       #snapShotView:Landroid/widget/ImageView;
    :cond_56
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2d

    .line 379
    .end local v0           #snapShot:Landroid/graphics/Bitmap;
    :cond_5a
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2d

    .line 387
    :cond_5e
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->hideAvatar()V

    goto :goto_3c

    .line 393
    :cond_62
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->hideBlocked()V

    goto :goto_43

    .line 399
    :cond_66
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->hidePaused()V

    goto :goto_4a
.end method

.method public setVideoChangeListener(Lcom/google/android/apps/plus/hangout/RemoteVideoView$VideoChangeListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 306
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView;->mListener:Lcom/google/android/apps/plus/hangout/RemoteVideoView$VideoChangeListener;

    .line 307
    return-void
.end method

.method protected abstract startVideo()V
.end method

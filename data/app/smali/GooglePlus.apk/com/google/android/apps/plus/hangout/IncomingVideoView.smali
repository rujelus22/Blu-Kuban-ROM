.class public abstract Lcom/google/android/apps/plus/hangout/IncomingVideoView;
.super Lcom/google/android/apps/plus/views/RelativeLayoutWithLayoutNotifications;
.source "IncomingVideoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/hangout/IncomingVideoView$1;,
        Lcom/google/android/apps/plus/hangout/IncomingVideoView$EventHandler;,
        Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;,
        Lcom/google/android/apps/plus/hangout/IncomingVideoView$ParticipantVideoView;,
        Lcom/google/android/apps/plus/hangout/IncomingVideoView$MainVideoView;
    }
.end annotation


# instance fields
.field private final avatarView:Landroid/widget/ImageView;

.field private final blockedView:Landroid/view/View;

.field private currentContent:Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;

.field protected currentVideoSource:Lcom/google/android/apps/plus/hangout/MeetingMember;

.field private final eventHandler:Lcom/google/android/apps/plus/hangout/IncomingVideoView$EventHandler;

.field protected incomingVideoHeight:I

.field protected incomingVideoWidth:I

.field private mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

.field protected requestID:I

.field private showingUnknownAvatar:Z

.field private final videoPausedView:Landroid/view/View;

.field protected final videoView:Lcom/google/android/apps/plus/hangout/VideoView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 234
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/views/RelativeLayoutWithLayoutNotifications;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 227
    sget-object v1, Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;->NONE:Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;

    iput-object v1, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->currentContent:Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;

    .line 228
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->requestID:I

    .line 231
    new-instance v1, Lcom/google/android/apps/plus/hangout/IncomingVideoView$EventHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/apps/plus/hangout/IncomingVideoView$EventHandler;-><init>(Lcom/google/android/apps/plus/hangout/IncomingVideoView;Lcom/google/android/apps/plus/hangout/IncomingVideoView$1;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->eventHandler:Lcom/google/android/apps/plus/hangout/IncomingVideoView$EventHandler;

    .line 235
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 236
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030049

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 237
    const v1, 0x7f0900e9

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/hangout/VideoView;

    iput-object v1, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->videoView:Lcom/google/android/apps/plus/hangout/VideoView;

    .line 238
    const v1, 0x7f0900ea

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->avatarView:Landroid/widget/ImageView;

    .line 239
    const v1, 0x7f0900eb

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->blockedView:Landroid/view/View;

    .line 240
    const v1, 0x7f0900ec

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->videoPausedView:Landroid/view/View;

    .line 241
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/hangout/IncomingVideoView;)Lcom/google/android/apps/plus/hangout/HangoutTile;
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/hangout/IncomingVideoView;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->avatarView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/hangout/IncomingVideoView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->showingUnknownAvatar:Z

    return v0
.end method

.method static synthetic access$202(Lcom/google/android/apps/plus/hangout/IncomingVideoView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->showingUnknownAvatar:Z

    return p1
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/hangout/IncomingVideoView;)Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->currentContent:Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;

    return-object v0
.end method


# virtual methods
.method getRequestId()I
    .registers 2

    .prologue
    .line 274
    iget v0, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->requestID:I

    return v0
.end method

.method public onMeasure(IIII)V
    .registers 11
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"
    .parameter "contentWidth"
    .parameter "contentHeight"

    .prologue
    .line 323
    iput p3, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->incomingVideoWidth:I

    .line 324
    iput p4, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->incomingVideoHeight:I

    .line 326
    iget v0, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->requestID:I

    if-eqz v0, :cond_21

    .line 329
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->requestID:I

    iget v2, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->incomingVideoWidth:I

    iget v3, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->incomingVideoHeight:I

    sget-object v4, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$ScalingMode;->AUTO_ZOOM:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$ScalingMode;

    const/16 v5, 0xf

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->setIncomingVideoParameters(IIILcom/google/android/apps/plus/hangout/GCommNativeWrapper$ScalingMode;I)V

    .line 334
    :cond_21
    return-void
.end method

.method public onPause()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 257
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->eventHandler:Lcom/google/android/apps/plus/hangout/IncomingVideoView$EventHandler;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/plus/hangout/GCommApp;->unregisterForEvents(Landroid/content/Context;Lcom/google/android/apps/plus/hangout/GCommEventHandler;Z)V

    .line 260
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->videoView:Lcom/google/android/apps/plus/hangout/VideoView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/VideoView;->onPause()V

    .line 261
    iget v0, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->requestID:I

    if-eqz v0, :cond_2e

    .line 262
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->requestID:I

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->stopIncomingVideo(I)V

    .line 263
    iput v3, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->requestID:I

    .line 265
    :cond_2e
    return-void
.end method

.method public onResume()V
    .registers 5

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->eventHandler:Lcom/google/android/apps/plus/hangout/IncomingVideoView$EventHandler;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/plus/hangout/GCommApp;->registerForEvents(Landroid/content/Context;Lcom/google/android/apps/plus/hangout/GCommEventHandler;Z)V

    .line 249
    sget-object v0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;->VIDEO:Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->setIncomingContent(Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;)V

    .line 253
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->startVideo()V

    .line 254
    return-void
.end method

.method public setHangoutTile(Lcom/google/android/apps/plus/hangout/HangoutTile;)V
    .registers 2
    .parameter "hangoutTile"

    .prologue
    .line 244
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    .line 245
    return-void
.end method

.method protected setIncomingContent(Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;)V
    .registers 5
    .parameter "newContent"

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 278
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->videoView:Lcom/google/android/apps/plus/hangout/VideoView;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/VideoView;->setVisibility(I)V

    .line 279
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->avatarView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 280
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->blockedView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 281
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->videoPausedView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 282
    iput-boolean v2, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->showingUnknownAvatar:Z

    .line 283
    sget-object v0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$1;->$SwitchMap$com$google$android$apps$plus$hangout$IncomingVideoView$IncomingContentType:[I

    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_40

    .line 303
    :goto_24
    :pswitch_24
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->currentContent:Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;

    .line 304
    return-void

    .line 290
    :pswitch_27
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->videoView:Lcom/google/android/apps/plus/hangout/VideoView;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/hangout/VideoView;->setVisibility(I)V

    goto :goto_24

    .line 293
    :pswitch_2d
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->avatarView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_24

    .line 296
    :pswitch_33
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->blockedView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_24

    .line 299
    :pswitch_39
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->videoPausedView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_24

    .line 283
    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_24
        :pswitch_27
        :pswitch_2d
        :pswitch_33
        :pswitch_39
    .end packed-switch
.end method

.method protected setIncomingContent(Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 3
    .parameter "member"

    .prologue
    .line 307
    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->isMediaBlocked()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 308
    sget-object v0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;->BLOCKED:Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->setIncomingContent(Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;)V

    .line 315
    :goto_b
    return-void

    .line 309
    :cond_c
    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->isVideoPaused()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 310
    sget-object v0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;->VIDEO_PAUSED:Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->setIncomingContent(Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;)V

    goto :goto_b

    .line 313
    :cond_18
    sget-object v0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;->VIDEO:Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/hangout/IncomingVideoView;->setIncomingContent(Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;)V

    goto :goto_b
.end method

.method protected abstract startVideo()V
.end method

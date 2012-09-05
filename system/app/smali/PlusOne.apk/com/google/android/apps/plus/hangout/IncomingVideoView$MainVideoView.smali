.class public Lcom/google/android/apps/plus/hangout/IncomingVideoView$MainVideoView;
.super Lcom/google/android/apps/plus/hangout/IncomingVideoView;
.source "IncomingVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/IncomingVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MainVideoView"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/hangout/IncomingVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method


# virtual methods
.method public onMeasure(IIII)V
    .registers 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"
    .parameter "contentWidth"
    .parameter "contentHeight"

    .prologue
    .line 86
    iput p3, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$MainVideoView;->incomingVideoWidth:I

    .line 87
    iput p4, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$MainVideoView;->incomingVideoHeight:I

    .line 91
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/IncomingVideoView$MainVideoView;->updateVideoStreaming()V

    .line 92
    return-void
.end method

.method protected requestVideo()V
    .registers 7

    .prologue
    const/16 v5, 0xf

    .line 35
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/IncomingVideoView$MainVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getSelectedVideoSource()Lcom/google/android/apps/plus/hangout/MeetingMember;

    move-result-object v0

    .line 36
    .local v0, selectedVideoSource:Lcom/google/android/apps/plus/hangout/MeetingMember;
    if-nez v0, :cond_28

    .line 37
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/IncomingVideoView$MainVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v1

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$MainVideoView;->incomingVideoWidth:I

    iget v4, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$MainVideoView;->incomingVideoHeight:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->startIncomingVideoForSpeakerIndex(IIII)I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$MainVideoView;->requestID:I

    .line 51
    :goto_27
    return-void

    .line 42
    :cond_28
    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/MeetingMember;->isMediaBlocked()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 43
    sget-object v1, Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;->BLOCKED:Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/hangout/IncomingVideoView$MainVideoView;->setIncomingContent(Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;)V

    goto :goto_27

    .line 45
    :cond_34
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/IncomingVideoView$MainVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getMucJid()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$MainVideoView;->incomingVideoWidth:I

    iget v4, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$MainVideoView;->incomingVideoHeight:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->startIncomingVideoForUser(Ljava/lang/String;III)I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$MainVideoView;->requestID:I

    goto :goto_27
.end method

.method public updateVideoStreaming()V
    .registers 8

    .prologue
    .line 58
    iget v0, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$MainVideoView;->requestID:I

    if-eqz v0, :cond_3d

    .line 59
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/IncomingVideoView$MainVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getSelectedVideoSource()Lcom/google/android/apps/plus/hangout/MeetingMember;

    move-result-object v6

    .line 61
    .local v6, selectedVideoSource:Lcom/google/android/apps/plus/hangout/MeetingMember;
    if-nez v6, :cond_3e

    .line 62
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/IncomingVideoView$MainVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$MainVideoView;->requestID:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->setIncomingVideoSourceToSpeakerIndex(II)V

    .line 73
    :goto_24
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/IncomingVideoView$MainVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$MainVideoView;->requestID:I

    iget v2, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$MainVideoView;->incomingVideoWidth:I

    iget v3, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$MainVideoView;->incomingVideoHeight:I

    sget-object v4, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$ScalingMode;->AUTO_ZOOM:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$ScalingMode;

    const/16 v5, 0xf

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->setIncomingVideoParameters(IIILcom/google/android/apps/plus/hangout/GCommNativeWrapper$ScalingMode;I)V

    .line 78
    .end local v6           #selectedVideoSource:Lcom/google/android/apps/plus/hangout/MeetingMember;
    :cond_3d
    return-void

    .line 64
    .restart local v6       #selectedVideoSource:Lcom/google/android/apps/plus/hangout/MeetingMember;
    :cond_3e
    invoke-virtual {v6}, Lcom/google/android/apps/plus/hangout/MeetingMember;->isMediaBlocked()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 65
    sget-object v0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;->BLOCKED:Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/hangout/IncomingVideoView$MainVideoView;->setIncomingContent(Lcom/google/android/apps/plus/hangout/IncomingVideoView$IncomingContentType;)V

    goto :goto_24

    .line 67
    :cond_4a
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/IncomingVideoView$MainVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$MainVideoView;->requestID:I

    invoke-virtual {v6}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getMucJid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->setIncomingVideoSourceToUser(ILjava/lang/String;)V

    goto :goto_24
.end method

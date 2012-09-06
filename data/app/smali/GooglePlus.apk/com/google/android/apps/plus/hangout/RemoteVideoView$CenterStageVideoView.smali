.class public Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;
.super Lcom/google/android/apps/plus/hangout/RemoteVideoView;
.source "RemoteVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/RemoteVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CenterStageVideoView"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/hangout/RemoteVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method


# virtual methods
.method protected startVideo()V
    .registers 8

    .prologue
    const/16 v6, 0xf

    .line 44
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    .line 45
    .local v0, gcommApp:Lcom/google/android/apps/plus/hangout/GCommApp;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getSelectedVideoSource()Lcom/google/android/apps/plus/hangout/MeetingMember;

    move-result-object v1

    .line 46
    .local v1, selectedVideoSource:Lcom/google/android/apps/plus/hangout/MeetingMember;
    if-nez v1, :cond_28

    .line 48
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v2

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;->incomingVideoContainerWidth:I

    iget v5, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;->incomingVideoContainerHeight:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->startIncomingVideoForSpeakerIndex(IIII)I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;->requestID:I

    .line 61
    :goto_27
    return-void

    .line 54
    :cond_28
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getMucJid()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;->incomingVideoContainerWidth:I

    iget v5, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;->incomingVideoContainerHeight:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->startIncomingVideoForUser(Ljava/lang/String;III)I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;->requestID:I

    .line 59
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;->setIncomingContent(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    goto :goto_27
.end method

.method public updateVideoStreaming()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 67
    iget v3, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;->requestID:I

    if-nez v3, :cond_6

    .line 106
    :goto_5
    return-void

    .line 70
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    .line 71
    .local v0, gcommApp:Lcom/google/android/apps/plus/hangout/GCommApp;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v1

    .line 72
    .local v1, nativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getSelectedVideoSource()Lcom/google/android/apps/plus/hangout/MeetingMember;

    move-result-object v2

    .line 74
    .local v2, selectedVideoSource:Lcom/google/android/apps/plus/hangout/MeetingMember;
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;->mCurrentVideoSource:Lcom/google/android/apps/plus/hangout/MeetingMember;

    if-eqz v3, :cond_3f

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;->mCurrentVideoSource:Lcom/google/android/apps/plus/hangout/MeetingMember;

    if-ne v3, v2, :cond_3f

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;->mCurrentVideoSource:Lcom/google/android/apps/plus/hangout/MeetingMember;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/hangout/MeetingMember;->isMediaBlocked()Z

    move-result v3

    if-nez v3, :cond_2e

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;->mCurrentVideoSource:Lcom/google/android/apps/plus/hangout/MeetingMember;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/hangout/MeetingMember;->isVideoPaused()Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 78
    :cond_2e
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;->mCurrentVideoSource:Lcom/google/android/apps/plus/hangout/MeetingMember;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/hangout/MeetingMember;->isMediaBlocked()Z

    move-result v3

    if-eqz v3, :cond_3c

    sget-object v3, Lcom/google/android/apps/plus/hangout/RemoteVideoView$IncomingContentType;->BLOCKED:Lcom/google/android/apps/plus/hangout/RemoteVideoView$IncomingContentType;

    :goto_38
    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;->setIncomingContent(Lcom/google/android/apps/plus/hangout/RemoteVideoView$IncomingContentType;)V

    goto :goto_5

    :cond_3c
    sget-object v3, Lcom/google/android/apps/plus/hangout/RemoteVideoView$IncomingContentType;->VIDEO_PAUSED:Lcom/google/android/apps/plus/hangout/RemoteVideoView$IncomingContentType;

    goto :goto_38

    .line 80
    :cond_3f
    if-nez v2, :cond_55

    .line 82
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;->mListener:Lcom/google/android/apps/plus/hangout/RemoteVideoView$VideoChangeListener;

    if-eqz v3, :cond_4a

    .line 83
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;->mListener:Lcom/google/android/apps/plus/hangout/RemoteVideoView$VideoChangeListener;

    invoke-interface {v3, v4}, Lcom/google/android/apps/plus/hangout/RemoteVideoView$VideoChangeListener;->onVideoSourceAboutToChange(Z)V

    .line 87
    :cond_4a
    sget-object v3, Lcom/google/android/apps/plus/hangout/RemoteVideoView$IncomingContentType;->VIDEO:Lcom/google/android/apps/plus/hangout/RemoteVideoView$IncomingContentType;

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;->setIncomingContent(Lcom/google/android/apps/plus/hangout/RemoteVideoView$IncomingContentType;)V

    .line 88
    iget v3, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;->requestID:I

    invoke-virtual {v1, v3, v4}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->setIncomingVideoSourceToSpeakerIndex(II)V

    goto :goto_5

    .line 91
    :cond_55
    sget-object v3, Lcom/google/android/apps/plus/hangout/RemoteVideoView$IncomingContentType;->VIDEO:Lcom/google/android/apps/plus/hangout/RemoteVideoView$IncomingContentType;

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;->setIncomingContent(Lcom/google/android/apps/plus/hangout/RemoteVideoView$IncomingContentType;)V

    .line 92
    iget v3, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;->requestID:I

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getMucJid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->setIncomingVideoSourceToUser(ILjava/lang/String;)V

    .line 97
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;->mListener:Lcom/google/android/apps/plus/hangout/RemoteVideoView$VideoChangeListener;

    if-eqz v3, :cond_6d

    .line 98
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;->mListener:Lcom/google/android/apps/plus/hangout/RemoteVideoView$VideoChangeListener;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/google/android/apps/plus/hangout/RemoteVideoView$VideoChangeListener;->onVideoSourceAboutToChange(Z)V

    .line 102
    :cond_6d
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;->onPause()V

    .line 103
    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;->setIncomingContent(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .line 104
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/RemoteVideoView$CenterStageVideoView;->onResume()V

    goto :goto_5
.end method

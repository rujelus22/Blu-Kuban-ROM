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
.method protected startVideo()V
    .registers 8

    .prologue
    const/16 v6, 0xf

    .line 35
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/IncomingVideoView$MainVideoView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    .line 36
    .local v0, gcommApp:Lcom/google/android/apps/plus/hangout/GCommApp;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getSelectedVideoSource()Lcom/google/android/apps/plus/hangout/MeetingMember;

    move-result-object v1

    .line 37
    .local v1, selectedVideoSource:Lcom/google/android/apps/plus/hangout/MeetingMember;
    if-nez v1, :cond_28

    .line 39
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/IncomingVideoView$MainVideoView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v2

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$MainVideoView;->incomingVideoWidth:I

    iget v5, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$MainVideoView;->incomingVideoHeight:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->startIncomingVideoForSpeakerIndex(IIII)I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$MainVideoView;->requestID:I

    .line 52
    :goto_27
    return-void

    .line 45
    :cond_28
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/IncomingVideoView$MainVideoView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getMucJid()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$MainVideoView;->incomingVideoWidth:I

    iget v5, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$MainVideoView;->incomingVideoHeight:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->startIncomingVideoForUser(Ljava/lang/String;III)I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$MainVideoView;->requestID:I

    .line 50
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/hangout/IncomingVideoView$MainVideoView;->setIncomingContent(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    goto :goto_27
.end method

.method public updateVideoStreaming()V
    .registers 5

    .prologue
    .line 58
    iget v1, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$MainVideoView;->requestID:I

    if-nez v1, :cond_5

    .line 76
    :goto_4
    return-void

    .line 62
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/IncomingVideoView$MainVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getSelectedVideoSource()Lcom/google/android/apps/plus/hangout/MeetingMember;

    move-result-object v0

    .line 64
    .local v0, selectedVideoSource:Lcom/google/android/apps/plus/hangout/MeetingMember;
    if-nez v0, :cond_26

    .line 66
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/IncomingVideoView$MainVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$MainVideoView;->requestID:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->setIncomingVideoSourceToSpeakerIndex(II)V

    goto :goto_4

    .line 70
    :cond_26
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/IncomingVideoView$MainVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$MainVideoView;->requestID:I

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getMucJid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->setIncomingVideoSourceToUser(ILjava/lang/String;)V

    .line 74
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/hangout/IncomingVideoView$MainVideoView;->setIncomingContent(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    goto :goto_4
.end method

.class public Lcom/google/android/apps/plus/hangout/IncomingVideoView$ParticipantVideoView;
.super Lcom/google/android/apps/plus/hangout/IncomingVideoView;
.source "IncomingVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/IncomingVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParticipantVideoView"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final member:Lcom/google/android/apps/plus/hangout/MeetingMember;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 82
    const-class v0, Lcom/google/android/apps/plus/hangout/IncomingVideoView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$ParticipantVideoView;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"
    .parameter "member"

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/hangout/IncomingVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    iput-object p3, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$ParticipantVideoView;->member:Lcom/google/android/apps/plus/hangout/MeetingMember;

    .line 88
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$ParticipantVideoView;->videoView:Lcom/google/android/apps/plus/hangout/VideoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/VideoView;->setZOrderMediaOverlay(Z)V

    .line 89
    return-void
.end method


# virtual methods
.method public getMember()Lcom/google/android/apps/plus/hangout/MeetingMember;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$ParticipantVideoView;->member:Lcom/google/android/apps/plus/hangout/MeetingMember;

    return-object v0
.end method

.method protected startVideo()V
    .registers 6

    .prologue
    .line 100
    sget-boolean v0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$ParticipantVideoView;->$assertionsDisabled:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$ParticipantVideoView;->currentVideoSource:Lcom/google/android/apps/plus/hangout/MeetingMember;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$ParticipantVideoView;->member:Lcom/google/android/apps/plus/hangout/MeetingMember;

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$ParticipantVideoView;->currentVideoSource:Lcom/google/android/apps/plus/hangout/MeetingMember;

    if-eq v0, v1, :cond_14

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 101
    :cond_14
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/IncomingVideoView$ParticipantVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$ParticipantVideoView;->member:Lcom/google/android/apps/plus/hangout/MeetingMember;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getMucJid()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$ParticipantVideoView;->incomingVideoWidth:I

    iget v3, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$ParticipantVideoView;->incomingVideoHeight:I

    const/16 v4, 0xf

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->startIncomingVideoForUser(Ljava/lang/String;III)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$ParticipantVideoView;->requestID:I

    .line 105
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/IncomingVideoView$ParticipantVideoView;->member:Lcom/google/android/apps/plus/hangout/MeetingMember;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/hangout/IncomingVideoView$ParticipantVideoView;->setIncomingContent(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .line 106
    return-void
.end method

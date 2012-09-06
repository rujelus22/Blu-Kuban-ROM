.class public Lcom/google/android/apps/plus/hangout/RemoteVideoView$ParticipantVideoView;
.super Lcom/google/android/apps/plus/hangout/RemoteVideoView;
.source "RemoteVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/RemoteVideoView;
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
    .line 112
    const-class v0, Lcom/google/android/apps/plus/hangout/RemoteVideoView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/android/apps/plus/hangout/RemoteVideoView$ParticipantVideoView;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "member"

    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/hangout/RemoteVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 118
    iput-object p3, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView$ParticipantVideoView;->member:Lcom/google/android/apps/plus/hangout/MeetingMember;

    .line 119
    return-void
.end method


# virtual methods
.method public getMember()Lcom/google/android/apps/plus/hangout/MeetingMember;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView$ParticipantVideoView;->member:Lcom/google/android/apps/plus/hangout/MeetingMember;

    return-object v0
.end method

.method protected startVideo()V
    .registers 6

    .prologue
    .line 130
    sget-boolean v0, Lcom/google/android/apps/plus/hangout/RemoteVideoView$ParticipantVideoView;->$assertionsDisabled:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView$ParticipantVideoView;->mCurrentVideoSource:Lcom/google/android/apps/plus/hangout/MeetingMember;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView$ParticipantVideoView;->member:Lcom/google/android/apps/plus/hangout/MeetingMember;

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView$ParticipantVideoView;->mCurrentVideoSource:Lcom/google/android/apps/plus/hangout/MeetingMember;

    if-eq v0, v1, :cond_14

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 131
    :cond_14
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/RemoteVideoView$ParticipantVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView$ParticipantVideoView;->member:Lcom/google/android/apps/plus/hangout/MeetingMember;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getMucJid()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView$ParticipantVideoView;->incomingVideoContainerWidth:I

    iget v3, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView$ParticipantVideoView;->incomingVideoContainerHeight:I

    const/16 v4, 0xf

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->startIncomingVideoForUser(Ljava/lang/String;III)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView$ParticipantVideoView;->requestID:I

    .line 134
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/RemoteVideoView$ParticipantVideoView;->member:Lcom/google/android/apps/plus/hangout/MeetingMember;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/hangout/RemoteVideoView$ParticipantVideoView;->setIncomingContent(Lcom/google/android/apps/plus/hangout/MeetingMember;)V

    .line 135
    return-void
.end method

.class public Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;
.super Ljava/lang/Object;
.source "GCommNativeWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$RoomEntry;,
        Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$FrameDimensionsChangedMessageParams;,
        Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$VideoSourceChangedMessageParams;,
        Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;,
        Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;,
        Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;,
        Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$ScalingMode;,
        Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field public static final INVALID_INCOMING_VIDEO_REQUEST_ID:I = 0x0

.field static final MAX_INCOMING_AUDIO_LEVEL:I = 0xff

.field static final MIN_INCOMING_AUDIO_LEVEL:I


# instance fields
.field private volatile account:Lcom/google/android/apps/plus/content/EsAccount;

.field private context:Landroid/content/Context;

.field private volatile hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

.field private volatile memberMucJidToMeetingMember:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/plus/hangout/MeetingMember;",
            ">;"
        }
    .end annotation
.end field

.field private volatile membersCount:I

.field private volatile nativePeerObject:J

.field private volatile retrySignin:Z

.field private volatile roomHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$RoomEntry;",
            ">;"
        }
    .end annotation
.end field

.field private volatile selfMeetingMember:Lcom/google/android/apps/plus/hangout/MeetingMember;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 31
    const-class v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_2a

    move v0, v1

    :goto_b
    sput-boolean v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->$assertionsDisabled:Z

    .line 33
    const-string v0, "GCommNativeWrapper loading gcomm_ini: %s"

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Lcom/google/android/apps/plus/hangout/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    const-string v0, "gcomm_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 41
    const-string v0, "GCommNativeWrapper done loading gcomm_ini"

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->info(Ljava/lang/String;)V

    .line 42
    return-void

    :cond_2a
    move v0, v2

    .line 31
    goto :goto_b
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->retrySignin:Z

    .line 256
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->context:Landroid/content/Context;

    .line 257
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->roomHistory:Ljava/util/List;

    .line 258
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->memberMucJidToMeetingMember:Ljava/util/Map;

    .line 260
    return-void
.end method

.method private native nativeBlockMedia(Ljava/lang/String;)V
.end method

.method private native nativeConnectAndSignin(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeEnterMeeting(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method private native nativeEnterMeetingWithMucJid(Ljava/lang/String;Z)V
.end method

.method private native nativeExitMeeting()V
.end method

.method private native nativeGetIncomingAudioVolume()I
.end method

.method private native nativeInitializeIncomingVideoRenderer(I)Z
.end method

.method private native nativeInviteUserToMeeting(Ljava/lang/String;)V
.end method

.method private native nativeIsAudioMute()Z
.end method

.method private native nativeIsOutgoingVideoStarted()Z
.end method

.method private native nativeKickMeetingMember(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativePeerCreate(Ljava/lang/String;)J
.end method

.method private native nativePeerDestroy(J)V
.end method

.method private native nativeProvideOutgoingVideoFrame([BJI)V
.end method

.method private native nativeRemoteMute(Ljava/lang/String;)V
.end method

.method private native nativeRenderIncomingVideoFrame(I)Z
.end method

.method private native nativeRequestVCard(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeSendDataToBunch(Ljava/lang/String;)V
.end method

.method private native nativeSendInstantMessage(Ljava/lang/String;)V
.end method

.method private native nativeSendInstantMessageToUser(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeSetAudioMute(Z)V
.end method

.method private native nativeSetIncomingAudioVolume(I)V
.end method

.method private native nativeSetIncomingVideoParameters(IIIII)V
.end method

.method private native nativeSetIncomingVideoRendererSurfaceSize(III)Z
.end method

.method private native nativeSetIncomingVideoSourceToSpeakerIndex(II)V
.end method

.method private native nativeSetIncomingVideoSourceToUser(ILjava/lang/String;)V
.end method

.method private native nativeSetPresenceConnectionStatus(I)V
.end method

.method private native nativeSignoutAndDisconnect()V
.end method

.method public static native nativeSimulateCrash()V
.end method

.method private native nativeStartIncomingVideoForSpeakerIndex(IIII)I
.end method

.method private native nativeStartIncomingVideoForUser(Ljava/lang/String;III)I
.end method

.method private native nativeStartMeetingMedia()V
.end method

.method private native nativeStartOutgoingVideo(II)V
.end method

.method public static native nativeStaticCleanup()V
.end method

.method public static native nativeStaticInitialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
.end method

.method private native nativeStopIncomingVideo(I)V
.end method

.method private native nativeStopOutgoingVideo()V
.end method

.method private native nativeUploadCallgrokLog()V
.end method

.method private onAudioMuteStateChanged(Ljava/lang/String;Z)V
    .registers 7
    .parameter "memberMucJid"
    .parameter "isMuted"

    .prologue
    .line 841
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 843
    const/4 v0, 0x0

    .line 852
    .local v0, member:Lcom/google/android/apps/plus/hangout/MeetingMember;
    :cond_7
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->context:Landroid/content/Context;

    const/16 v2, 0x65

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/plus/hangout/GCommApp;->sendObjectMessage(Landroid/content/Context;ILjava/lang/Object;)V

    .line 854
    :goto_16
    return-void

    .line 845
    .end local v0           #member:Lcom/google/android/apps/plus/hangout/MeetingMember;
    :cond_17
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->memberMucJidToMeetingMember:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/hangout/MeetingMember;

    .line 847
    .restart local v0       #member:Lcom/google/android/apps/plus/hangout/MeetingMember;
    if-nez v0, :cond_7

    goto :goto_16
.end method

.method private onCallgrokLogUploadCompleted(ILjava/lang/String;)V
    .registers 6
    .parameter "error"
    .parameter "message"

    .prologue
    .line 564
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->context:Landroid/content/Context;

    const/16 v1, 0x3b

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->sendObjectMessage(Landroid/content/Context;ILjava/lang/Object;)V

    .line 566
    return-void
.end method

.method private onCurrentSpeakerChanged(Ljava/lang/String;)V
    .registers 5
    .parameter "memberMucJid"

    .prologue
    .line 862
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->context:Landroid/content/Context;

    const/16 v1, 0x66

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->memberMucJidToMeetingMember:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->sendObjectMessage(Landroid/content/Context;ILjava/lang/Object;)V

    .line 864
    return-void
.end method

.method private onError(I)V
    .registers 7
    .parameter "err"

    .prologue
    const/4 v4, 0x0

    .line 368
    const-string v1, "GCommNativeWrapper.onError: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/hangout/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 369
    invoke-static {}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;->values()[Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;

    move-result-object v1

    aget-object v0, v1, p1

    .line 370
    .local v0, error:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;
    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;->AUTHENTICATION:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;

    if-ne v0, v1, :cond_3f

    .line 371
    const-string v1, "Invalidating auth token..."

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/Log;->info(Ljava/lang/String;)V

    .line 374
    :try_start_1e
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->account:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "webupdates"

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/plus/network/AuthData;->invalidateAuthToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2b} :catch_46

    .line 379
    :goto_2b
    iget-boolean v1, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->retrySignin:Z

    if-eqz v1, :cond_3f

    .line 380
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->signinUser(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 381
    iput-boolean v4, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->retrySignin:Z

    .line 386
    :goto_3e
    return-void

    .line 385
    :cond_3f
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->context:Landroid/content/Context;

    const/4 v2, -0x1

    invoke-static {v1, v2, v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->sendObjectMessage(Landroid/content/Context;ILjava/lang/Object;)V

    goto :goto_3e

    .line 376
    :catch_46
    move-exception v1

    goto :goto_2b
.end method

.method private onIncomingVideoFrameDimensionsChanged(III)V
    .registers 8
    .parameter "requestID"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 881
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->context:Landroid/content/Context;

    const/16 v1, 0x6b

    new-instance v2, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$FrameDimensionsChangedMessageParams;

    new-instance v3, Lcom/google/android/apps/plus/hangout/RectangleDimensions;

    invoke-direct {v3, p2, p3}, Lcom/google/android/apps/plus/hangout/RectangleDimensions;-><init>(II)V

    invoke-direct {v2, p1, v3}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$FrameDimensionsChangedMessageParams;-><init>(ILcom/google/android/apps/plus/hangout/RectangleDimensions;)V

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->sendObjectMessage(Landroid/content/Context;ILjava/lang/Object;)V

    .line 885
    return-void
.end method

.method private onIncomingVideoFrameReceived(I)V
    .registers 5
    .parameter "requestID"

    .prologue
    .line 876
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->context:Landroid/content/Context;

    const/16 v1, 0x6a

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->sendObjectMessage(Landroid/content/Context;ILjava/lang/Object;)V

    .line 878
    return-void
.end method

.method private onIncomingVideoStarted(I)V
    .registers 5
    .parameter "requestID"

    .prologue
    .line 858
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->context:Landroid/content/Context;

    const/16 v1, 0x68

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->sendObjectMessage(Landroid/content/Context;ILjava/lang/Object;)V

    .line 859
    return-void
.end method

.method private onInstantMessageReceived(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "fromMucJid"
    .parameter "message"

    .prologue
    .line 623
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->memberMucJidToMeetingMember:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/hangout/MeetingMember;

    .line 624
    .local v1, meetingMember:Lcom/google/android/apps/plus/hangout/MeetingMember;
    if-nez v1, :cond_20

    .line 625
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInstantMessageReceived missing fromMucJid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/Log;->error(Ljava/lang/String;)V

    .line 628
    :cond_20
    new-instance v0, Lcom/google/android/apps/plus/hangout/InstantMessage;

    invoke-direct {v0, v1, p1, p2}, Lcom/google/android/apps/plus/hangout/InstantMessage;-><init>(Lcom/google/android/apps/plus/hangout/MeetingMember;Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    .local v0, instantMessage:Lcom/google/android/apps/plus/hangout/InstantMessage;
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->context:Landroid/content/Context;

    const/16 v3, 0x3a

    invoke-static {v2, v3, v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->sendObjectMessage(Landroid/content/Context;ILjava/lang/Object;)V

    .line 631
    return-void
.end method

.method private onMediaBlock(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "blockeeMucJid"
    .parameter "blockerMucJid"

    .prologue
    const/4 v3, 0x1

    .line 902
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->memberMucJidToMeetingMember:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/hangout/MeetingMember;

    .line 903
    .local v0, blockee:Lcom/google/android/apps/plus/hangout/MeetingMember;
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->memberMucJidToMeetingMember:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/hangout/MeetingMember;

    .line 904
    .local v1, blocker:Lcom/google/android/apps/plus/hangout/MeetingMember;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/MeetingMember;->isSelf()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 905
    invoke-virtual {v1, v3}, Lcom/google/android/apps/plus/hangout/MeetingMember;->setMediaBlocked(Z)V

    .line 910
    :cond_1a
    :goto_1a
    if-eqz v1, :cond_29

    if-eqz v0, :cond_29

    .line 911
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->context:Landroid/content/Context;

    const/16 v3, 0x6e

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/android/apps/plus/hangout/GCommApp;->sendObjectMessage(Landroid/content/Context;ILjava/lang/Object;)V

    .line 914
    :cond_29
    return-void

    .line 906
    :cond_2a
    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->isSelf()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 907
    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/hangout/MeetingMember;->setMediaBlocked(Z)V

    goto :goto_1a
.end method

.method private onMeetingEnterError(I)V
    .registers 5
    .parameter "errorCode"

    .prologue
    .line 532
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->clearMeetingState()V

    .line 533
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->context:Landroid/content/Context;

    const/4 v1, -0x3

    invoke-static {}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;->values()[Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->sendObjectMessage(Landroid/content/Context;ILjava/lang/Object;)V

    .line 536
    return-void
.end method

.method private onMeetingExited()V
    .registers 3

    .prologue
    .line 559
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->clearMeetingState()V

    .line 560
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->context:Landroid/content/Context;

    const/16 v1, 0x35

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->sendEmptyMessage(Landroid/content/Context;I)V

    .line 561
    return-void
.end method

.method private onMeetingMediaStarted()V
    .registers 3

    .prologue
    .line 555
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->context:Landroid/content/Context;

    const/16 v1, 0x34

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->sendEmptyMessage(Landroid/content/Context;I)V

    .line 556
    return-void
.end method

.method private onMeetingMemberEntered(Ljava/lang/String;Ljava/lang/String;JI)V
    .registers 14
    .parameter "memberMucJid"
    .parameter "nickName"
    .parameter "obfuscatedGaiaId"
    .parameter "presenceConnectionStatus"

    .prologue
    const/4 v6, 0x0

    .line 579
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->account:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/EsAccount;->getUserId()J

    move-result-wide v1

    cmp-long v1, v1, p3

    if-nez v1, :cond_35

    const/4 v7, 0x1

    .line 580
    .local v7, isSelfProfile:Z
    :goto_c
    new-instance v0, Lcom/google/android/apps/plus/hangout/MeetingMember;

    iget v5, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->membersCount:I

    add-int/lit8 v1, v5, 0x1

    iput v1, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->membersCount:I

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/hangout/MeetingMember;-><init>(Ljava/lang/String;Ljava/lang/String;JIZZ)V

    .line 587
    .local v0, meetingMember:Lcom/google/android/apps/plus/hangout/MeetingMember;
    invoke-static {}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;->values()[Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;

    move-result-object v1

    aget-object v1, v1, p5

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->setPresenceConnectionStatus(Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;)V

    .line 589
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->memberMucJidToMeetingMember:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    const-string v1, ""

    invoke-direct {p0, p1, v1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativeRequestVCard(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->context:Landroid/content/Context;

    const/16 v2, 0x36

    invoke-static {v1, v2, v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->sendObjectMessage(Landroid/content/Context;ILjava/lang/Object;)V

    .line 594
    return-void

    .end local v0           #meetingMember:Lcom/google/android/apps/plus/hangout/MeetingMember;
    .end local v7           #isSelfProfile:Z
    :cond_35
    move v7, v6

    .line 579
    goto :goto_c
.end method

.method private onMeetingMemberExited(Ljava/lang/String;)V
    .registers 5
    .parameter "memberMucJid"

    .prologue
    .line 614
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->memberMucJidToMeetingMember:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/hangout/MeetingMember;

    .line 615
    .local v0, meetingMember:Lcom/google/android/apps/plus/hangout/MeetingMember;
    if-nez v0, :cond_21

    .line 616
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMeetingMemberExited missing memberMucJid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/Log;->error(Ljava/lang/String;)V

    .line 620
    :goto_20
    return-void

    .line 619
    :cond_21
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->context:Landroid/content/Context;

    const/16 v2, 0x38

    invoke-static {v1, v2, v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->sendObjectMessage(Landroid/content/Context;ILjava/lang/Object;)V

    goto :goto_20
.end method

.method private onMeetingMemberPresenceConnectionStateChanged(Ljava/lang/String;I)V
    .registers 6
    .parameter "memberMucJid"
    .parameter "presenceConnectionStatus"

    .prologue
    .line 598
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->memberMucJidToMeetingMember:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/hangout/MeetingMember;

    .line 599
    .local v0, meetingMember:Lcom/google/android/apps/plus/hangout/MeetingMember;
    if-nez v0, :cond_21

    .line 600
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMeetingMemberPresenceConnectionStateChanged missing memberMucJid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/Log;->error(Ljava/lang/String;)V

    .line 611
    :goto_20
    return-void

    .line 604
    :cond_21
    invoke-static {}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;->values()[Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->setPresenceConnectionStatus(Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;)V

    .line 607
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->context:Landroid/content/Context;

    const/16 v2, 0x37

    invoke-static {v1, v2, v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->sendObjectMessage(Landroid/content/Context;ILjava/lang/Object;)V

    goto :goto_20
.end method

.method private onMucEntered(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "selfMucJid"
    .parameter "selfNickName"

    .prologue
    const/4 v6, 0x1

    .line 539
    new-instance v0, Lcom/google/android/apps/plus/hangout/MeetingMember;

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->account:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/EsAccount;->getUserId()J

    move-result-wide v3

    iget v5, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->membersCount:I

    add-int/lit8 v1, v5, 0x1

    iput v1, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->membersCount:I

    move-object v1, p1

    move-object v2, p2

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/hangout/MeetingMember;-><init>(Ljava/lang/String;Ljava/lang/String;JIZZ)V

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->selfMeetingMember:Lcom/google/android/apps/plus/hangout/MeetingMember;

    .line 546
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->memberMucJidToMeetingMember:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->selfMeetingMember:Lcom/google/android/apps/plus/hangout/MeetingMember;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativeRequestVCard(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->context:Landroid/content/Context;

    const/16 v1, 0x33

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->selfMeetingMember:Lcom/google/android/apps/plus/hangout/MeetingMember;

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->sendObjectMessage(Landroid/content/Context;ILjava/lang/Object;)V

    .line 552
    return-void
.end method

.method public static onNativeCrash()V
    .registers 1

    .prologue
    .line 363
    const-string v0, "GCommNativeWrapper.onNativeCrash - Crash from native code!!!"

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->error(Ljava/lang/String;)V

    .line 364
    invoke-static {}, Lcom/google/android/apps/plus/hangout/GCommApp;->reportNativeCrash()V

    .line 365
    return-void
.end method

.method private onOutgoingVideoStarted()V
    .registers 3

    .prologue
    .line 888
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->context:Landroid/content/Context;

    const/16 v1, 0x69

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->sendEmptyMessage(Landroid/content/Context;I)V

    .line 889
    return-void
.end method

.method private onReceivedDataFromBunch(Ljava/lang/String;)V
    .registers 4
    .parameter "base64Data"

    .prologue
    .line 436
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->context:Landroid/content/Context;

    const/4 v1, 0x5

    invoke-static {v0, v1, p1}, Lcom/google/android/apps/plus/hangout/GCommApp;->sendObjectMessage(Landroid/content/Context;ILjava/lang/Object;)V

    .line 437
    return-void
.end method

.method private onReceivedRoomHistory([Ljava/lang/String;[Ljava/lang/String;)V
    .registers 16
    .parameter "roomNames"
    .parameter "lastEnterTimes"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 411
    sget-boolean v8, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->$assertionsDisabled:Z

    if-nez v8, :cond_11

    array-length v8, p1

    array-length v9, p2

    if-eq v8, v9, :cond_11

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 412
    :cond_11
    new-instance v5, Ljava/util/ArrayList;

    array-length v8, p1

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 413
    .local v5, roomHistory:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$RoomEntry;>;"
    iget-object v8, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->account:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v8}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "@"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v7, v8, v10

    .line 414
    .local v7, userDomain:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_26
    array-length v8, p1

    if-ge v2, v8, :cond_71

    .line 415
    aget-object v8, p1, v2

    const-string v9, "@"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 416
    .local v6, roomNameParts:[Ljava/lang/String;
    array-length v8, v6

    if-eq v8, v12, :cond_4f

    .line 417
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bad format for room history: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, p1, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/apps/plus/hangout/Log;->warn(Ljava/lang/String;)V

    .line 414
    :goto_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 420
    :cond_4f
    aget-object v0, v6, v11

    .line 421
    .local v0, bareRoomName:Ljava/lang/String;
    aget-object v3, v6, v10

    .line 422
    .local v3, roomDomainName:Ljava/lang/String;
    move-object v1, v0

    .line 423
    .local v1, displayRoomName:Ljava/lang/String;
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_66

    .line 424
    const-string v8, "%s (%s)"

    new-array v9, v12, [Ljava/lang/Object;

    aput-object v0, v9, v11

    aput-object v3, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 426
    :cond_66
    new-instance v4, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$RoomEntry;

    aget-object v8, p2, v2

    invoke-direct {v4, v1, v8}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$RoomEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    .local v4, roomEntry:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$RoomEntry;
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4c

    .line 431
    .end local v0           #bareRoomName:Ljava/lang/String;
    .end local v1           #displayRoomName:Ljava/lang/String;
    .end local v3           #roomDomainName:Ljava/lang/String;
    .end local v4           #roomEntry:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$RoomEntry;
    .end local v6           #roomNameParts:[Ljava/lang/String;
    :cond_71
    iput-object v5, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->roomHistory:Ljava/util/List;

    .line 432
    iget-object v8, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->context:Landroid/content/Context;

    const/4 v9, 0x4

    invoke-static {v8, v9, v5}, Lcom/google/android/apps/plus/hangout/GCommApp;->sendObjectMessage(Landroid/content/Context;ILjava/lang/Object;)V

    .line 433
    return-void
.end method

.method private onRemoteMute(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "muteeMucJid"
    .parameter "muterMucJid"

    .prologue
    .line 892
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->memberMucJidToMeetingMember:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/hangout/MeetingMember;

    .line 893
    .local v0, mutee:Lcom/google/android/apps/plus/hangout/MeetingMember;
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->memberMucJidToMeetingMember:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/hangout/MeetingMember;

    .line 895
    .local v1, muter:Lcom/google/android/apps/plus/hangout/MeetingMember;
    if-eqz v1, :cond_1f

    if-eqz v0, :cond_1f

    .line 896
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->context:Landroid/content/Context;

    const/16 v3, 0x6d

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/android/apps/plus/hangout/GCommApp;->sendObjectMessage(Landroid/content/Context;ILjava/lang/Object;)V

    .line 899
    :cond_1f
    return-void
.end method

.method private onSignedIn(Ljava/lang/String;)V
    .registers 4
    .parameter "userJid"

    .prologue
    .line 393
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->context:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/google/android/apps/plus/hangout/GCommApp;->sendObjectMessage(Landroid/content/Context;ILjava/lang/Object;)V

    .line 394
    return-void
.end method

.method private onSignedOut()V
    .registers 3

    .prologue
    .line 397
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->context:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->sendEmptyMessage(Landroid/content/Context;I)V

    .line 398
    return-void
.end method

.method private onSigninTimeOutError()V
    .registers 3

    .prologue
    .line 389
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->context:Landroid/content/Context;

    const/4 v1, -0x2

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->sendEmptyMessage(Landroid/content/Context;I)V

    .line 390
    return-void
.end method

.method public static onUnhandledJavaException(Ljava/lang/Throwable;)V
    .registers 1
    .parameter "ex"

    .prologue
    .line 359
    invoke-static {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->reportJavaCrashFromNativeCode(Ljava/lang/Throwable;)V

    .line 360
    return-void
.end method

.method private onVCardResponse(Ljava/lang/String;Lcom/google/android/apps/plus/hangout/VCard;)V
    .registers 6
    .parameter "memberMucJid"
    .parameter "vCard"

    .prologue
    .line 401
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->memberMucJidToMeetingMember:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/hangout/MeetingMember;

    .line 402
    .local v0, meetingMember:Lcom/google/android/apps/plus/hangout/MeetingMember;
    if-nez v0, :cond_21

    .line 403
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVCardResponse missing memberMucJid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/Log;->warn(Ljava/lang/String;)V

    .line 408
    :goto_20
    return-void

    .line 406
    :cond_21
    invoke-virtual {v0, p2}, Lcom/google/android/apps/plus/hangout/MeetingMember;->setVCard(Lcom/google/android/apps/plus/hangout/VCard;)V

    .line 407
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->context:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-static {v1, v2, v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->sendObjectMessage(Landroid/content/Context;ILjava/lang/Object;)V

    goto :goto_20
.end method

.method private onVideoSourceChanged(ILjava/lang/String;Z)V
    .registers 7
    .parameter "requestID"
    .parameter "memberMucJid"
    .parameter "videoAvailable"

    .prologue
    .line 869
    new-instance v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$VideoSourceChangedMessageParams;

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->memberMucJidToMeetingMember:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/hangout/MeetingMember;

    invoke-direct {v0, p1, v1, p3}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$VideoSourceChangedMessageParams;-><init>(ILcom/google/android/apps/plus/hangout/MeetingMember;Z)V

    .line 871
    .local v0, params:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$VideoSourceChangedMessageParams;
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->context:Landroid/content/Context;

    const/16 v2, 0x67

    invoke-static {v1, v2, v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->sendObjectMessage(Landroid/content/Context;ILjava/lang/Object;)V

    .line 872
    return-void
.end method


# virtual methods
.method public blockMedia(Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 6
    .parameter "member"

    .prologue
    .line 352
    iget-wide v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativePeerObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    .line 356
    :goto_8
    return-void

    .line 355
    :cond_9
    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getMucJid()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativeBlockMedia(Ljava/lang/String;)V

    goto :goto_8
.end method

.method clearMeetingState()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 521
    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    .line 522
    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->selfMeetingMember:Lcom/google/android/apps/plus/hangout/MeetingMember;

    .line 523
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->memberMucJidToMeetingMember:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 524
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->membersCount:I

    .line 525
    return-void
.end method

.method public connectAndSignin(Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "account"
    .parameter "talkAuthToken"
    .parameter "bunchServerAddress"

    .prologue
    const/4 v1, 0x1

    .line 291
    iget-wide v2, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativePeerObject:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_41

    move v0, v1

    :goto_a
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Preconditions;->checkState(Z)V

    .line 293
    iput-boolean v1, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->retrySignin:Z

    .line 294
    invoke-direct {p0, p3}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativePeerCreate(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativePeerObject:J

    .line 295
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->account:Lcom/google/android/apps/plus/content/EsAccount;

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Created native peer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativePeerObject:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Bunch server = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->info(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativeConnectAndSignin(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    return-void

    .line 291
    :cond_41
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public enterMeeting(Lcom/google/android/apps/plus/service/Hangout$Info;Z)V
    .registers 7
    .parameter "hangoutInfo"
    .parameter "startMediaOnJoin"

    .prologue
    .line 454
    iget-wide v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativePeerObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    .line 470
    :goto_8
    return-void

    .line 457
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->clearMeetingState()V

    .line 460
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    .line 462
    invoke-virtual {p1}, Lcom/google/android/apps/plus/service/Hangout$Info;->hasId()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 463
    invoke-virtual {p1}, Lcom/google/android/apps/plus/service/Hangout$Info;->getDomain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/plus/service/Hangout$Info;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativeEnterMeeting(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_8

    .line 468
    :cond_20
    invoke-virtual {p1}, Lcom/google/android/apps/plus/service/Hangout$Info;->getMucJid()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativeEnterMeetingWithMucJid(Ljava/lang/String;Z)V

    goto :goto_8
.end method

.method public exitMeeting()V
    .registers 5

    .prologue
    .line 480
    iget-wide v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativePeerObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    .line 484
    :goto_8
    return-void

    .line 483
    :cond_9
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativeExitMeeting()V

    goto :goto_8
.end method

.method public getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->account:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method public getCurrentState()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;
    .registers 5

    .prologue
    .line 265
    iget-wide v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativePeerObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    .line 266
    sget-object v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;->NONE:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;

    .line 268
    :goto_a
    return-object v0

    :cond_b
    invoke-static {}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;->values()[Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativeGetCurrentState()I

    move-result v1

    aget-object v0, v0, v1

    goto :goto_a
.end method

.method public getHangoutDomain()Ljava/lang/String;
    .registers 2

    .prologue
    .line 509
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/service/Hangout$Info;->getDomain()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHangoutId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 513
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/service/Hangout$Info;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHangoutInfo()Lcom/google/android/apps/plus/service/Hangout$Info;
    .registers 2

    .prologue
    .line 501
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    return-object v0
.end method

.method public getHangoutMucJid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 517
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/service/Hangout$Info;->getMucJid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHangoutRoomType()Lcom/google/android/apps/plus/service/Hangout$RoomType;
    .registers 2

    .prologue
    .line 505
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/service/Hangout$Info;->getRoomType()Lcom/google/android/apps/plus/service/Hangout$RoomType;

    move-result-object v0

    return-object v0
.end method

.method public getIncomingAudioVolume()I
    .registers 5

    .prologue
    .line 817
    iget-wide v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativePeerObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    .line 818
    const/4 v0, 0x0

    .line 821
    :goto_9
    return v0

    :cond_a
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativeGetIncomingAudioVolume()I

    move-result v0

    goto :goto_9
.end method

.method public getMeetingMember(Ljava/lang/String;)Lcom/google/android/apps/plus/hangout/MeetingMember;
    .registers 3
    .parameter "memberMucJid"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->memberMucJidToMeetingMember:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/hangout/MeetingMember;

    return-object v0
.end method

.method public getMeetingMembersOrderedByEntry()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/plus/hangout/MeetingMember;",
            ">;"
        }
    .end annotation

    .prologue
    .line 225
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->memberMucJidToMeetingMember:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 226
    .local v0, members:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/apps/plus/hangout/MeetingMember;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 227
    .local v1, membersList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/hangout/MeetingMember;>;"
    new-instance v2, Lcom/google/android/apps/plus/hangout/MeetingMember$SortByEntryOrder;

    invoke-direct {v2}, Lcom/google/android/apps/plus/hangout/MeetingMember$SortByEntryOrder;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 228
    return-object v1
.end method

.method public getRoomHistory()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$RoomEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->roomHistory:Ljava/util/List;

    return-object v0
.end method

.method public getSelfMeetingMember()Lcom/google/android/apps/plus/hangout/MeetingMember;
    .registers 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->selfMeetingMember:Lcom/google/android/apps/plus/hangout/MeetingMember;

    return-object v0
.end method

.method public initializeIncomingVideoRenderer(I)Z
    .registers 6
    .parameter "requestID"

    .prologue
    .line 770
    iget-wide v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativePeerObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    .line 771
    const/4 v0, 0x0

    .line 773
    :goto_9
    return v0

    :cond_a
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativeInitializeIncomingVideoRenderer(I)Z

    move-result v0

    goto :goto_9
.end method

.method inviteUserToMeeting(Ljava/lang/String;)V
    .registers 2
    .parameter "email"

    .prologue
    .line 528
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativeInviteUserToMeeting(Ljava/lang/String;)V

    .line 529
    return-void
.end method

.method public isAudioMute()Z
    .registers 5

    .prologue
    .line 676
    iget-wide v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativePeerObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    .line 677
    const/4 v0, 0x0

    .line 679
    :goto_9
    return v0

    :cond_a
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativeIsAudioMute()Z

    move-result v0

    goto :goto_9
.end method

.method public isInHangout(Lcom/google/android/apps/plus/service/Hangout$Info;)Z
    .registers 3
    .parameter "hangoutInfo"

    .prologue
    .line 494
    if-nez p1, :cond_4

    .line 495
    const/4 v0, 0x0

    .line 497
    :goto_3
    return v0

    :cond_4
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    invoke-virtual {p1, v0}, Lcom/google/android/apps/plus/service/Hangout$Info;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method public isOutgoingVideoStarted()Z
    .registers 5

    .prologue
    .line 760
    iget-wide v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativePeerObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    .line 761
    const/4 v0, 0x0

    .line 763
    :goto_9
    return v0

    :cond_a
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativeIsOutgoingVideoStarted()Z

    move-result v0

    goto :goto_9
.end method

.method public kickMeetingMember(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "userMucJid"
    .parameter "reason"

    .prologue
    .line 331
    iget-wide v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativePeerObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    .line 335
    :goto_8
    return-void

    .line 334
    :cond_9
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativeKickMeetingMember(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8
.end method

.method public native nativeGetCurrentState()I
.end method

.method public provideOutgoingVideoFrame([BJI)V
    .registers 9
    .parameter "data"
    .parameter "captureTime"
    .parameter "frameRotation"

    .prologue
    .line 808
    iget-wide v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativePeerObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    .line 814
    :cond_8
    :goto_8
    return-void

    .line 811
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->getCurrentState()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;->IN_MEETING_WITH_MEDIA:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;

    if-ne v0, v1, :cond_8

    .line 812
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativeProvideOutgoingVideoFrame([BJI)V

    goto :goto_8
.end method

.method public remoteMute(Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 6
    .parameter "member"

    .prologue
    .line 345
    iget-wide v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativePeerObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    .line 349
    :goto_8
    return-void

    .line 348
    :cond_9
    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getMucJid()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativeRemoteMute(Ljava/lang/String;)V

    goto :goto_8
.end method

.method public renderIncomingVideoFrame(I)Z
    .registers 6
    .parameter "requestID"

    .prologue
    .line 790
    iget-wide v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativePeerObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    .line 791
    const/4 v0, 0x0

    .line 793
    :goto_9
    return v0

    :cond_a
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativeRenderIncomingVideoFrame(I)Z

    move-result v0

    goto :goto_9
.end method

.method public sendDataToBunch(Ljava/lang/String;)V
    .registers 6
    .parameter "base64Data"

    .prologue
    .line 324
    iget-wide v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativePeerObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    .line 328
    :goto_8
    return-void

    .line 327
    :cond_9
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativeSendDataToBunch(Ljava/lang/String;)V

    goto :goto_8
.end method

.method public sendInstantMessage(Ljava/lang/String;)V
    .registers 6
    .parameter "message"

    .prologue
    .line 571
    iget-wide v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativePeerObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    .line 575
    :goto_8
    return-void

    .line 574
    :cond_9
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativeSendInstantMessage(Ljava/lang/String;)V

    goto :goto_8
.end method

.method public sendInstantMessageToUser(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "userJid"
    .parameter "message"

    .prologue
    .line 317
    iget-wide v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativePeerObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    .line 321
    :goto_8
    return-void

    .line 320
    :cond_9
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativeSendInstantMessageToUser(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8
.end method

.method public setAudioMute(Z)V
    .registers 6
    .parameter "mute"

    .prologue
    .line 690
    iget-wide v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativePeerObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    .line 694
    :goto_8
    return-void

    .line 693
    :cond_9
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativeSetAudioMute(Z)V

    goto :goto_8
.end method

.method public setIncomingAudioVolume(I)V
    .registers 6
    .parameter "level"

    .prologue
    .line 829
    iget-wide v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativePeerObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    .line 837
    :goto_8
    return-void

    .line 833
    :cond_9
    if-ltz p1, :cond_f

    const/16 v0, 0xff

    if-le p1, v0, :cond_28

    .line 834
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "level is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 836
    :cond_28
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativeSetIncomingAudioVolume(I)V

    goto :goto_8
.end method

.method public setIncomingVideoParameters(IIILcom/google/android/apps/plus/hangout/GCommNativeWrapper$ScalingMode;I)V
    .registers 12
    .parameter "requestID"
    .parameter "width"
    .parameter "height"
    .parameter "scalingMode"
    .parameter "framerate"

    .prologue
    .line 731
    iget-wide v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativePeerObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    .line 736
    :goto_8
    return-void

    .line 734
    :cond_9
    invoke-virtual {p4}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$ScalingMode;->ordinal()I

    move-result v4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativeSetIncomingVideoParameters(IIIII)V

    goto :goto_8
.end method

.method public setIncomingVideoRendererSurfaceSize(III)Z
    .registers 8
    .parameter "requestID"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 780
    iget-wide v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativePeerObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    .line 781
    const/4 v0, 0x0

    .line 783
    :goto_9
    return v0

    :cond_a
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativeSetIncomingVideoRendererSurfaceSize(III)Z

    move-result v0

    goto :goto_9
.end method

.method public setIncomingVideoSourceToSpeakerIndex(II)V
    .registers 7
    .parameter "requestID"
    .parameter "index"

    .prologue
    .line 716
    iget-wide v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativePeerObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    .line 720
    :goto_8
    return-void

    .line 719
    :cond_9
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativeSetIncomingVideoSourceToSpeakerIndex(II)V

    goto :goto_8
.end method

.method public setIncomingVideoSourceToUser(ILjava/lang/String;)V
    .registers 7
    .parameter "requestID"
    .parameter "memberMucJid"

    .prologue
    .line 723
    iget-wide v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativePeerObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    .line 727
    :goto_8
    return-void

    .line 726
    :cond_9
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativeSetIncomingVideoSourceToUser(ILjava/lang/String;)V

    goto :goto_8
.end method

.method public setPresenceConnectionStatus(Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;)V
    .registers 6
    .parameter "status"

    .prologue
    .line 338
    iget-wide v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativePeerObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    .line 342
    :goto_8
    return-void

    .line 341
    :cond_9
    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;->ordinal()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativeSetPresenceConnectionStatus(I)V

    goto :goto_8
.end method

.method public signoutAndDisconnect()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 306
    iget-wide v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativePeerObject:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    .line 314
    :cond_8
    :goto_8
    return-void

    .line 309
    :cond_9
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativeSignoutAndDisconnect()V

    .line 310
    iget-wide v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativePeerObject:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_8

    .line 311
    iget-wide v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativePeerObject:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativePeerDestroy(J)V

    .line 312
    iput-wide v2, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativePeerObject:J

    goto :goto_8
.end method

.method public startIncomingVideoForSpeakerIndex(IIII)I
    .registers 9
    .parameter "index"
    .parameter "width"
    .parameter "height"
    .parameter "framerate"

    .prologue
    .line 701
    iget-wide v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativePeerObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    .line 702
    const/4 v0, 0x0

    .line 704
    :goto_9
    return v0

    :cond_a
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativeStartIncomingVideoForSpeakerIndex(IIII)I

    move-result v0

    goto :goto_9
.end method

.method public startIncomingVideoForUser(Ljava/lang/String;III)I
    .registers 9
    .parameter "memberMucJid"
    .parameter "width"
    .parameter "height"
    .parameter "framerate"

    .prologue
    .line 709
    iget-wide v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativePeerObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    .line 710
    const/4 v0, 0x0

    .line 712
    :goto_9
    return v0

    :cond_a
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativeStartIncomingVideoForUser(Ljava/lang/String;III)I

    move-result v0

    goto :goto_9
.end method

.method public startMeetingMedia()V
    .registers 5

    .prologue
    .line 473
    iget-wide v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativePeerObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    .line 477
    :goto_8
    return-void

    .line 476
    :cond_9
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativeStartMeetingMedia()V

    goto :goto_8
.end method

.method public startOutgoingVideo(II)V
    .registers 7
    .parameter "width"
    .parameter "height"

    .prologue
    .line 746
    iget-wide v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativePeerObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    .line 750
    :goto_8
    return-void

    .line 749
    :cond_9
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativeStartOutgoingVideo(II)V

    goto :goto_8
.end method

.method public stopIncomingVideo(I)V
    .registers 6
    .parameter "requestID"

    .prologue
    .line 739
    iget-wide v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativePeerObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    .line 743
    :goto_8
    return-void

    .line 742
    :cond_9
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativeStopIncomingVideo(I)V

    goto :goto_8
.end method

.method public stopOutgoingVideo()V
    .registers 5

    .prologue
    .line 753
    iget-wide v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativePeerObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    .line 757
    :goto_8
    return-void

    .line 756
    :cond_9
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativeStopOutgoingVideo()V

    goto :goto_8
.end method

.method public uploadCallgrokLog()V
    .registers 5

    .prologue
    .line 487
    iget-wide v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativePeerObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    .line 491
    :goto_8
    return-void

    .line 490
    :cond_9
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativeUploadCallgrokLog()V

    goto :goto_8
.end method

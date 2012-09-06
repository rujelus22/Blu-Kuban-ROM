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
        Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$DeviceCaptureType;,
        Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;,
        Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$ScalingMode;,
        Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final GCOMM_NATIVE_LIB_API_LEVEL:I = 0x4

.field public static final HANGOUT:Ljava/lang/String; = "HANGOUT"

.field public static final HANGOUT_SYNC:Ljava/lang/String; = "HANGOUT_SYNC"

.field public static final INVALID_INCOMING_VIDEO_REQUEST_ID:I = 0x0

.field static final MAX_INCOMING_AUDIO_LEVEL:I = 0xff

.field static final MIN_INCOMING_AUDIO_LEVEL:I = 0x0

.field private static final SELF_MUC_JID_BEFORE_ENTERING_HANGOUT:Ljava/lang/String; = ""

.field public static final TRANSFER:Ljava/lang/String; = "TRANSFER"


# instance fields
.field private volatile account:Lcom/google/android/apps/plus/content/EsAccount;

.field private volatile clientInitiatedExit:Z

.field private final context:Landroid/content/Context;

.field private volatile hadSomeConnectedParticipant:Z

.field private volatile hangoutCreated:Z

.field private volatile hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

.field private volatile isHangoutLite:Z

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

.field private volatile ringInvitees:Z

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

.field private volatile userJid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    const-class v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_1b

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->$assertionsDisabled:Z

    .line 46
    const-string v0, "GCommNativeWrapper loading gcomm_ini"

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->info(Ljava/lang/String;)V

    .line 51
    const-string v0, "gcomm_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 53
    const-string v0, "GCommNativeWrapper done loading gcomm_ini"

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->info(Ljava/lang/String;)V

    .line 54
    return-void

    .line 40
    :cond_1b
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->retrySignin:Z

    .line 356
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->context:Landroid/content/Context;

    .line 357
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->roomHistory:Ljava/util/List;

    .line 358
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->memberMucJidToMeetingMember:Ljava/util/Map;

    .line 360
    return-void
.end method

.method private static ToArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 514
    .local p0, array:[Ljava/lang/Object;,"[TT;"
    new-instance v3, Ljava/util/ArrayList;

    array-length v5, p0

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 515
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/Object;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_9
    if-ge v1, v2, :cond_13

    aget-object v4, v0, v1

    .line 516
    .local v4, t:Ljava/lang/Object;,"TT;"
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 518
    .end local v4           #t:Ljava/lang/Object;,"TT;"
    :cond_13
    return-object v3
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "context"
    .parameter "privateStoragePath"
    .parameter "crashReportProduct"
    .parameter "crashReportVersion"
    .parameter "canLogPII"
    .parameter "clientVersion"
    .parameter "logLevel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/LinkageError;
        }
    .end annotation

    .prologue
    .line 310
    invoke-static {}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativeStaticGetVersion()I

    move-result v0

    .line 311
    .local v0, nativeVersion:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GComm native lib API version:     "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 312
    const-string v1, "GComm native wrapper API version: 4"

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 313
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GComm native lib logging: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at level "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 314
    const/4 v1, 0x4

    if-eq v0, v1, :cond_4d

    .line 316
    const-string v1, "GComm native lib version mismatch"

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/Log;->error(Ljava/lang/String;)V

    .line 317
    new-instance v1, Ljava/lang/UnsupportedClassVersionError;

    invoke-direct {v1}, Ljava/lang/UnsupportedClassVersionError;-><init>()V

    throw v1

    .line 321
    :cond_4d
    invoke-static/range {p0 .. p6}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativeStaticInitialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5e

    .line 324
    const-string v1, "GComm native lib initialization failed"

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/Log;->error(Ljava/lang/String;)V

    .line 325
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1}, Ljava/lang/ExceptionInInitializerError;-><init>()V

    throw v1

    .line 327
    :cond_5e
    return-void
.end method

.method private native nativeBlockMedia(Ljava/lang/String;)V
.end method

.method private native nativeConnectAndSignin(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeCreateHangout()V
.end method

.method private native nativeEnterMeeting(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
.end method

.method private native nativeEnterMeetingWithCachedGreenRoomInfo(Z)V
.end method

.method private native nativeExitMeeting()V
.end method

.method private native nativeGetIncomingAudioVolume()I
.end method

.method private native nativeInitializeIncomingVideoRenderer(I)Z
.end method

.method private native nativeInviteToMeeting([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZZ)V
.end method

.method private native nativeIsAudioMute()Z
.end method

.method private native nativeIsOutgoingVideoStarted()Z
.end method

.method private native nativeKickMeetingMember(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativePeerCreate()J
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

.method private native nativeSendInstantMessage(Ljava/lang/String;)V
.end method

.method private native nativeSendInstantMessageToUser(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeSendRingStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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

.method private native nativeStartOutgoingVideo(II)V
.end method

.method public static native nativeStaticCleanup()V
.end method

.method private static native nativeStaticGetVersion()I
.end method

.method private static native nativeStaticInitialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z
.end method

.method public static native nativeStaticSetDeviceCaptureType(I)V
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
    .line 1084
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1086
    const/4 v0, 0x0

    .line 1095
    .local v0, member:Lcom/google/android/apps/plus/hangout/MeetingMember;
    :cond_9
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->context:Landroid/content/Context;

    const/16 v2, 0x65

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/plus/hangout/GCommApp;->sendObjectMessage(Landroid/content/Context;ILjava/lang/Object;)V

    .line 1097
    :goto_18
    return-void

    .line 1088
    .end local v0           #member:Lcom/google/android/apps/plus/hangout/MeetingMember;
    :cond_19
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->memberMucJidToMeetingMember:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/hangout/MeetingMember;

    .line 1090
    .restart local v0       #member:Lcom/google/android/apps/plus/hangout/MeetingMember;
    if-nez v0, :cond_9

    goto :goto_18
.end method

.method private onCallgrokLogUploadCompleted(ILjava/lang/String;)V
    .registers 6
    .parameter "error"
    .parameter "message"

    .prologue
    .line 744
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->context:Landroid/content/Context;

    const/16 v1, 0x3c

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->sendObjectMessage(Landroid/content/Context;ILjava/lang/Object;)V

    .line 746
    return-void
.end method

.method private onCurrentSpeakerChanged(Ljava/lang/String;)V
    .registers 5
    .parameter "memberMucJid"

    .prologue
    .line 1130
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->context:Landroid/content/Context;

    const/16 v1, 0x66

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->memberMucJidToMeetingMember:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->sendObjectMessage(Landroid/content/Context;ILjava/lang/Object;)V

    .line 1132
    return-void
.end method

.method private onError(I)V
    .registers 7
    .parameter "err"

    .prologue
    const/4 v4, 0x0

    .line 470
    const-string v1, "GCommNativeWrapper.onError: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/hangout/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 471
    invoke-static {}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;->values()[Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;

    move-result-object v1

    aget-object v0, v1, p1

    .line 472
    .local v0, error:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;
    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;->AUTHENTICATION:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$Error;

    if-ne v0, v1, :cond_3f

    .line 473
    const-string v1, "Invalidating auth token..."

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/Log;->info(Ljava/lang/String;)V

    .line 476
    :try_start_1e
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->account:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "webupdates"

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/plus/network/AuthData;->invalidateAuthToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2b} :catch_46

    .line 481
    :goto_2b
    iget-boolean v1, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->retrySignin:Z

    if-eqz v1, :cond_3f

    .line 482
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->signinUser(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 483
    iput-boolean v4, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->retrySignin:Z

    .line 488
    :goto_3e
    return-void

    .line 487
    :cond_3f
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->context:Landroid/content/Context;

    const/4 v2, -0x1

    invoke-static {v1, v2, v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->sendObjectMessage(Landroid/content/Context;ILjava/lang/Object;)V

    goto :goto_3e

    .line 478
    :catch_46
    move-exception v1

    goto :goto_2b
.end method

.method private onHangoutCreated(Ljava/lang/String;)V
    .registers 10
    .parameter "hangoutId"

    .prologue
    const/4 v3, 0x0

    .line 758
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->hangoutCreated:Z

    .line 759
    new-instance v0, Lcom/google/android/apps/plus/service/Hangout$Info;

    sget-object v1, Lcom/google/android/apps/plus/service/Hangout$RoomType;->CONSUMER:Lcom/google/android/apps/plus/service/Hangout$RoomType;

    sget-object v2, Lcom/google/android/apps/plus/service/Hangout;->CONSUMER_HANGOUT_DOMAIN:Ljava/lang/String;

    sget-object v6, Lcom/google/android/apps/plus/service/Hangout$LaunchSource;->Creation:Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

    iget-boolean v7, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->ringInvitees:Z

    move-object v4, p1

    move-object v5, v3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/service/Hangout$Info;-><init>(Lcom/google/android/apps/plus/service/Hangout$RoomType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/service/Hangout$LaunchSource;Z)V

    .line 764
    .local v0, hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->context:Landroid/content/Context;

    const/16 v2, 0x32

    invoke-static {v1, v2, v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->sendObjectMessage(Landroid/content/Context;ILjava/lang/Object;)V

    .line 765
    return-void
.end method

.method private onIncomingVideoFrameDimensionsChanged(III)V
    .registers 8
    .parameter "requestID"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1151
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->context:Landroid/content/Context;

    const/16 v1, 0x6b

    new-instance v2, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$FrameDimensionsChangedMessageParams;

    new-instance v3, Lcom/google/android/apps/plus/hangout/RectangleDimensions;

    invoke-direct {v3, p2, p3}, Lcom/google/android/apps/plus/hangout/RectangleDimensions;-><init>(II)V

    invoke-direct {v2, p1, v3}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$FrameDimensionsChangedMessageParams;-><init>(ILcom/google/android/apps/plus/hangout/RectangleDimensions;)V

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->sendObjectMessage(Landroid/content/Context;ILjava/lang/Object;)V

    .line 1155
    return-void
.end method

.method private onIncomingVideoFrameReceived(I)V
    .registers 5
    .parameter "requestID"

    .prologue
    .line 1146
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->context:Landroid/content/Context;

    const/16 v1, 0x6a

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->sendObjectMessage(Landroid/content/Context;ILjava/lang/Object;)V

    .line 1148
    return-void
.end method

.method private onIncomingVideoStarted(I)V
    .registers 5
    .parameter "requestID"

    .prologue
    .line 1115
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->context:Landroid/content/Context;

    const/16 v1, 0x68

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->sendObjectMessage(Landroid/content/Context;ILjava/lang/Object;)V

    .line 1116
    return-void
.end method

.method private onInstantMessageReceived(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "fromMucJid"
    .parameter "message"

    .prologue
    .line 849
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->memberMucJidToMeetingMember:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/hangout/MeetingMember;

    .line 850
    .local v1, meetingMember:Lcom/google/android/apps/plus/hangout/MeetingMember;
    if-nez v1, :cond_20

    .line 851
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

    .line 854
    :cond_20
    new-instance v0, Lcom/google/android/apps/plus/hangout/InstantMessage;

    invoke-direct {v0, v1, p1, p2}, Lcom/google/android/apps/plus/hangout/InstantMessage;-><init>(Lcom/google/android/apps/plus/hangout/MeetingMember;Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    .local v0, instantMessage:Lcom/google/android/apps/plus/hangout/InstantMessage;
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->context:Landroid/content/Context;

    const/16 v3, 0x3b

    invoke-static {v2, v3, v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->sendObjectMessage(Landroid/content/Context;ILjava/lang/Object;)V

    .line 858
    return-void
.end method

.method private onMediaBlock(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "blockeeMucJid"
    .parameter "blockerMucJid"

    .prologue
    const/4 v3, 0x1

    .line 1172
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->memberMucJidToMeetingMember:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/hangout/MeetingMember;

    .line 1173
    .local v0, blockee:Lcom/google/android/apps/plus/hangout/MeetingMember;
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->memberMucJidToMeetingMember:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/hangout/MeetingMember;

    .line 1174
    .local v1, blocker:Lcom/google/android/apps/plus/hangout/MeetingMember;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/MeetingMember;->isSelf()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 1175
    invoke-virtual {v1, v3}, Lcom/google/android/apps/plus/hangout/MeetingMember;->setMediaBlocked(Z)V

    .line 1180
    :cond_1a
    :goto_1a
    if-eqz v1, :cond_29

    if-eqz v0, :cond_29

    .line 1181
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->context:Landroid/content/Context;

    const/16 v3, 0x6e

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/android/apps/plus/hangout/GCommApp;->sendObjectMessage(Landroid/content/Context;ILjava/lang/Object;)V

    .line 1184
    :cond_29
    return-void

    .line 1176
    :cond_2a
    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->isSelf()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1177
    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/hangout/MeetingMember;->setMediaBlocked(Z)V

    goto :goto_1a
.end method

.method private onMeetingEnterError(I)V
    .registers 5
    .parameter "errorCode"

    .prologue
    .line 696
    invoke-static {}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;->values()[Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

    move-result-object v1

    aget-object v0, v1, p1

    .line 697
    .local v0, error:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;
    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;->HANGOUT_OVER:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$MeetingEnterError;

    if-ne v0, v1, :cond_22

    .line 700
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/service/Hangout$Info;->getLaunchSource()Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/plus/service/Hangout$LaunchSource;->MissedCall:Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

    if-ne v1, v2, :cond_22

    .line 702
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    .line 703
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->context:Landroid/content/Context;

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->sendEmptyMessage(Landroid/content/Context;I)V

    .line 713
    :goto_21
    return-void

    .line 709
    :cond_22
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->clearMeetingState()V

    .line 710
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->context:Landroid/content/Context;

    const/4 v2, -0x3

    invoke-static {v1, v2, v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->sendObjectMessage(Landroid/content/Context;ILjava/lang/Object;)V

    goto :goto_21
.end method

.method private onMeetingExited()V
    .registers 5

    .prologue
    .line 737
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->clientInitiatedExit:Z

    .line 738
    .local v0, clientInitiatedExit:Z
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->clearMeetingState()V

    .line 739
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->context:Landroid/content/Context;

    const/16 v3, 0x36

    if-eqz v0, :cond_14

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    :goto_10
    invoke-static {v2, v3, v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->sendObjectMessage(Landroid/content/Context;ILjava/lang/Object;)V

    .line 741
    return-void

    .line 739
    :cond_14
    const/4 v1, 0x0

    goto :goto_10
.end method

.method private onMeetingMediaStarted()V
    .registers 3

    .prologue
    .line 733
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->context:Landroid/content/Context;

    const/16 v1, 0x35

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->sendEmptyMessage(Landroid/content/Context;I)V

    .line 734
    return-void
.end method

.method private onMeetingMemberEntered(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 13
    .parameter "memberMucJid"
    .parameter "nickName"
    .parameter "obfuscatedGaiaId"
    .parameter "presenceConnectionStatus"

    .prologue
    .line 769
    iget-boolean v1, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->isHangoutLite:Z

    if-nez v1, :cond_39

    if-eqz p3, :cond_e

    const-string v1, ""

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 771
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring invalid user: JID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " nickname="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ID=<empty> status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 801
    :goto_38
    return-void

    .line 776
    :cond_39
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->account:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v1, p3}, Lcom/google/android/apps/plus/content/EsAccount;->isMyGaiaId(Ljava/lang/String;)Z

    move-result v6

    .line 777
    .local v6, isSelfProfile:Z
    new-instance v0, Lcom/google/android/apps/plus/hangout/MeetingMember;

    iget v4, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->membersCount:I

    add-int/lit8 v1, v4, 0x1

    iput v1, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->membersCount:I

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/hangout/MeetingMember;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 784
    .local v0, meetingMember:Lcom/google/android/apps/plus/hangout/MeetingMember;
    invoke-static {}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;->values()[Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;

    move-result-object v1

    aget-object v7, v1, p4

    .line 786
    .local v7, connectionStatus:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;
    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;->CONNECTING:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;

    if-eq v7, v1, :cond_5c

    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;->JOINING:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;

    if-ne v7, v1, :cond_82

    .line 788
    :cond_5c
    sget-object v1, Lcom/google/android/apps/plus/hangout/MeetingMember$Status;->CONNECTING:Lcom/google/android/apps/plus/hangout/MeetingMember$Status;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->setCurrentStatus(Lcom/google/android/apps/plus/hangout/MeetingMember$Status;)V

    .line 792
    :goto_61
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->memberMucJidToMeetingMember:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    iget-boolean v1, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->hadSomeConnectedParticipant:Z

    if-nez v1, :cond_75

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getCurrentStatus()Lcom/google/android/apps/plus/hangout/MeetingMember$Status;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/plus/hangout/MeetingMember$Status;->CONNECTED:Lcom/google/android/apps/plus/hangout/MeetingMember$Status;

    if-ne v1, v2, :cond_75

    .line 796
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->hadSomeConnectedParticipant:Z

    .line 798
    :cond_75
    const-string v1, ""

    invoke-direct {p0, p1, v1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativeRequestVCard(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->context:Landroid/content/Context;

    const/16 v2, 0x37

    invoke-static {v1, v2, v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->sendObjectMessage(Landroid/content/Context;ILjava/lang/Object;)V

    goto :goto_38

    .line 790
    :cond_82
    sget-object v1, Lcom/google/android/apps/plus/hangout/MeetingMember$Status;->CONNECTED:Lcom/google/android/apps/plus/hangout/MeetingMember$Status;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->setCurrentStatus(Lcom/google/android/apps/plus/hangout/MeetingMember$Status;)V

    goto :goto_61
.end method

.method private onMeetingMemberExited(Ljava/lang/String;)V
    .registers 5
    .parameter "memberMucJid"

    .prologue
    .line 839
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->memberMucJidToMeetingMember:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/hangout/MeetingMember;

    .line 840
    .local v0, meetingMember:Lcom/google/android/apps/plus/hangout/MeetingMember;
    if-nez v0, :cond_21

    .line 841
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

    .line 846
    :goto_20
    return-void

    .line 844
    :cond_21
    sget-object v1, Lcom/google/android/apps/plus/hangout/MeetingMember$Status;->DISCONNECTED:Lcom/google/android/apps/plus/hangout/MeetingMember$Status;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->setCurrentStatus(Lcom/google/android/apps/plus/hangout/MeetingMember$Status;)V

    .line 845
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->context:Landroid/content/Context;

    const/16 v2, 0x39

    invoke-static {v1, v2, v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->sendObjectMessage(Landroid/content/Context;ILjava/lang/Object;)V

    goto :goto_20
.end method

.method private onMeetingMemberPresenceConnectionStateChanged(Ljava/lang/String;I)V
    .registers 8
    .parameter "memberMucJid"
    .parameter "presenceConnectionStatus"

    .prologue
    .line 805
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->memberMucJidToMeetingMember:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/hangout/MeetingMember;

    .line 806
    .local v1, meetingMember:Lcom/google/android/apps/plus/hangout/MeetingMember;
    if-nez v1, :cond_21

    .line 807
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMeetingMemberPresenceConnectionStateChanged missing memberMucJid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/plus/hangout/Log;->error(Ljava/lang/String;)V

    .line 836
    :cond_20
    :goto_20
    return-void

    .line 812
    :cond_21
    invoke-static {}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;->values()[Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;

    move-result-object v3

    aget-object v0, v3, p2

    .line 815
    .local v0, connectionStatus:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;
    sget-object v3, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;->CONNECTING:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;

    if-eq v0, v3, :cond_2f

    sget-object v3, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;->JOINING:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;

    if-ne v0, v3, :cond_51

    .line 817
    :cond_2f
    sget-object v2, Lcom/google/android/apps/plus/hangout/MeetingMember$Status;->CONNECTING:Lcom/google/android/apps/plus/hangout/MeetingMember$Status;

    .line 822
    .local v2, newStatus:Lcom/google/android/apps/plus/hangout/MeetingMember$Status;
    :goto_31
    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getCurrentStatus()Lcom/google/android/apps/plus/hangout/MeetingMember$Status;

    move-result-object v3

    if-eq v2, v3, :cond_20

    .line 826
    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/hangout/MeetingMember;->setCurrentStatus(Lcom/google/android/apps/plus/hangout/MeetingMember$Status;)V

    .line 827
    iget-boolean v3, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->hadSomeConnectedParticipant:Z

    if-nez v3, :cond_49

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getCurrentStatus()Lcom/google/android/apps/plus/hangout/MeetingMember$Status;

    move-result-object v3

    sget-object v4, Lcom/google/android/apps/plus/hangout/MeetingMember$Status;->CONNECTED:Lcom/google/android/apps/plus/hangout/MeetingMember$Status;

    if-ne v3, v4, :cond_49

    .line 829
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->hadSomeConnectedParticipant:Z

    .line 832
    :cond_49
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->context:Landroid/content/Context;

    const/16 v4, 0x38

    invoke-static {v3, v4, v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->sendObjectMessage(Landroid/content/Context;ILjava/lang/Object;)V

    goto :goto_20

    .line 819
    .end local v2           #newStatus:Lcom/google/android/apps/plus/hangout/MeetingMember$Status;
    :cond_51
    sget-object v2, Lcom/google/android/apps/plus/hangout/MeetingMember$Status;->CONNECTED:Lcom/google/android/apps/plus/hangout/MeetingMember$Status;

    .restart local v2       #newStatus:Lcom/google/android/apps/plus/hangout/MeetingMember$Status;
    goto :goto_31
.end method

.method private onMucEntered(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 11
    .parameter "selfMucJid"
    .parameter "selfNickName"
    .parameter "isHangoutLite"

    .prologue
    const/4 v5, 0x1

    .line 716
    new-instance v0, Lcom/google/android/apps/plus/hangout/MeetingMember;

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->account:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/EsAccount;->getGaiaId()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->membersCount:I

    add-int/lit8 v1, v4, 0x1

    iput v1, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->membersCount:I

    move-object v1, p1

    move-object v2, p2

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/hangout/MeetingMember;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->selfMeetingMember:Lcom/google/android/apps/plus/hangout/MeetingMember;

    .line 723
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->memberMucJidToMeetingMember:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->selfMeetingMember:Lcom/google/android/apps/plus/hangout/MeetingMember;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativeRequestVCard(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    iput-boolean p3, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->isHangoutLite:Z

    .line 729
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->context:Landroid/content/Context;

    const/16 v1, 0x34

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->selfMeetingMember:Lcom/google/android/apps/plus/hangout/MeetingMember;

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->sendObjectMessage(Landroid/content/Context;ILjava/lang/Object;)V

    .line 730
    return-void
.end method

.method public static onNativeCrash()V
    .registers 1

    .prologue
    .line 465
    const-string v0, "GCommNativeWrapper.onNativeCrash - Crash from native code!!!"

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->error(Ljava/lang/String;)V

    .line 466
    invoke-static {}, Lcom/google/android/apps/plus/hangout/GCommApp;->reportNativeCrash()V

    .line 467
    return-void
.end method

.method private onOutgoingVideoStarted()V
    .registers 3

    .prologue
    .line 1158
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->context:Landroid/content/Context;

    const/16 v1, 0x69

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->sendEmptyMessage(Landroid/content/Context;I)V

    .line 1159
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

    .line 522
    sget-boolean v8, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->$assertionsDisabled:Z

    if-nez v8, :cond_11

    array-length v8, p1

    array-length v9, p2

    if-eq v8, v9, :cond_11

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 523
    :cond_11
    new-instance v5, Ljava/util/ArrayList;

    array-length v8, p1

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 524
    .local v5, roomHistory:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$RoomEntry;>;"
    iget-object v8, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->account:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v8}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "@"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v7, v8, v10

    .line 525
    .local v7, userDomain:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_26
    array-length v8, p1

    if-ge v2, v8, :cond_71

    .line 526
    aget-object v8, p1, v2

    const-string v9, "@"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 527
    .local v6, roomNameParts:[Ljava/lang/String;
    array-length v8, v6

    if-eq v8, v12, :cond_4f

    .line 528
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

    .line 525
    :goto_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 531
    :cond_4f
    aget-object v0, v6, v11

    .line 532
    .local v0, bareRoomName:Ljava/lang/String;
    aget-object v3, v6, v10

    .line 533
    .local v3, roomDomainName:Ljava/lang/String;
    move-object v1, v0

    .line 534
    .local v1, displayRoomName:Ljava/lang/String;
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_66

    .line 535
    const-string v8, "%s (%s)"

    new-array v9, v12, [Ljava/lang/Object;

    aput-object v0, v9, v11

    aput-object v3, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 537
    :cond_66
    new-instance v4, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$RoomEntry;

    aget-object v8, p2, v2

    invoke-direct {v4, v1, v8}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$RoomEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    .local v4, roomEntry:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$RoomEntry;
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4c

    .line 543
    .end local v0           #bareRoomName:Ljava/lang/String;
    .end local v1           #displayRoomName:Ljava/lang/String;
    .end local v3           #roomDomainName:Ljava/lang/String;
    .end local v4           #roomEntry:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$RoomEntry;
    .end local v6           #roomNameParts:[Ljava/lang/String;
    :cond_71
    iput-object v5, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->roomHistory:Ljava/util/List;

    .line 544
    iget-object v8, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->context:Landroid/content/Context;

    const/4 v9, 0x5

    invoke-static {v8, v9, v5}, Lcom/google/android/apps/plus/hangout/GCommApp;->sendObjectMessage(Landroid/content/Context;ILjava/lang/Object;)V

    .line 545
    return-void
.end method

.method private onRemoteMute(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "muteeMucJid"
    .parameter "muterMucJid"

    .prologue
    .line 1162
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->memberMucJidToMeetingMember:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/hangout/MeetingMember;

    .line 1163
    .local v0, mutee:Lcom/google/android/apps/plus/hangout/MeetingMember;
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->memberMucJidToMeetingMember:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/hangout/MeetingMember;

    .line 1165
    .local v1, muter:Lcom/google/android/apps/plus/hangout/MeetingMember;
    if-eqz v1, :cond_1f

    if-eqz v0, :cond_1f

    .line 1166
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->context:Landroid/content/Context;

    const/16 v3, 0x6d

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/android/apps/plus/hangout/GCommApp;->sendObjectMessage(Landroid/content/Context;ILjava/lang/Object;)V

    .line 1169
    :cond_1f
    return-void
.end method

.method private onSignedIn(Ljava/lang/String;)V
    .registers 4
    .parameter "userJid"

    .prologue
    .line 495
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->userJid:Ljava/lang/String;

    .line 496
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->context:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/google/android/apps/plus/hangout/GCommApp;->sendObjectMessage(Landroid/content/Context;ILjava/lang/Object;)V

    .line 497
    return-void
.end method

.method private onSignedOut()V
    .registers 3

    .prologue
    .line 500
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->context:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->sendEmptyMessage(Landroid/content/Context;I)V

    .line 501
    return-void
.end method

.method private onSigninTimeOutError()V
    .registers 3

    .prologue
    .line 491
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->context:Landroid/content/Context;

    const/4 v1, -0x2

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->sendEmptyMessage(Landroid/content/Context;I)V

    .line 492
    return-void
.end method

.method public static onUnhandledJavaException(Ljava/lang/Throwable;)V
    .registers 1
    .parameter "ex"

    .prologue
    .line 461
    invoke-static {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->reportJavaCrashFromNativeCode(Ljava/lang/Throwable;)V

    .line 462
    return-void
.end method

.method private onVCardResponse(Ljava/lang/String;Lcom/google/android/apps/plus/hangout/VCard;)V
    .registers 6
    .parameter "memberMucJid"
    .parameter "vCard"

    .prologue
    .line 504
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->memberMucJidToMeetingMember:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/hangout/MeetingMember;

    .line 505
    .local v0, meetingMember:Lcom/google/android/apps/plus/hangout/MeetingMember;
    if-nez v0, :cond_21

    .line 506
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

    .line 511
    :goto_20
    return-void

    .line 509
    :cond_21
    invoke-virtual {v0, p2}, Lcom/google/android/apps/plus/hangout/MeetingMember;->setVCard(Lcom/google/android/apps/plus/hangout/VCard;)V

    .line 510
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->context:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-static {v1, v2, v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->sendObjectMessage(Landroid/content/Context;ILjava/lang/Object;)V

    goto :goto_20
.end method

.method private onVideoPauseStateChanged(Ljava/lang/String;Z)V
    .registers 7
    .parameter "memberMucJid"
    .parameter "isPaused"

    .prologue
    .line 1100
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->memberMucJidToMeetingMember:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/hangout/MeetingMember;

    .line 1102
    .local v0, member:Lcom/google/android/apps/plus/hangout/MeetingMember;
    if-nez v0, :cond_b

    .line 1110
    :goto_a
    return-void

    .line 1105
    :cond_b
    invoke-virtual {v0, p2}, Lcom/google/android/apps/plus/hangout/MeetingMember;->setVideoPaused(Z)V

    .line 1108
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->context:Landroid/content/Context;

    const/16 v2, 0x6f

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/plus/hangout/GCommApp;->sendObjectMessage(Landroid/content/Context;ILjava/lang/Object;)V

    goto :goto_a
.end method

.method private onVideoSourceChanged(ILjava/lang/String;Z)V
    .registers 7
    .parameter "requestID"
    .parameter "memberMucJid"
    .parameter "videoAvailable"

    .prologue
    .line 1138
    new-instance v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$VideoSourceChangedMessageParams;

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->memberMucJidToMeetingMember:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/hangout/MeetingMember;

    invoke-direct {v0, p1, v1, p3}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$VideoSourceChangedMessageParams;-><init>(ILcom/google/android/apps/plus/hangout/MeetingMember;Z)V

    .line 1140
    .local v0, params:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$VideoSourceChangedMessageParams;
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->context:Landroid/content/Context;

    const/16 v2, 0x67

    invoke-static {v1, v2, v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->sendObjectMessage(Landroid/content/Context;ILjava/lang/Object;)V

    .line 1141
    return-void
.end method

.method private onVolumeChanged(Ljava/lang/String;I)V
    .registers 7
    .parameter "memberMucJid"
    .parameter "volume"

    .prologue
    .line 1119
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->memberMucJidToMeetingMember:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/hangout/MeetingMember;

    .line 1121
    .local v0, member:Lcom/google/android/apps/plus/hangout/MeetingMember;
    if-nez v0, :cond_b

    .line 1127
    :goto_a
    return-void

    .line 1125
    :cond_b
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->context:Landroid/content/Context;

    const/16 v2, 0x70

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/plus/hangout/GCommApp;->sendObjectMessage(Landroid/content/Context;ILjava/lang/Object;)V

    goto :goto_a
.end method


# virtual methods
.method public blockMedia(Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 6
    .parameter "member"

    .prologue
    .line 443
    iget-wide v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativePeerObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    .line 447
    :goto_8
    return-void

    .line 446
    :cond_9
    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getMucJid()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativeBlockMedia(Ljava/lang/String;)V

    goto :goto_8
.end method

.method clearMeetingState()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 638
    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    .line 639
    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->selfMeetingMember:Lcom/google/android/apps/plus/hangout/MeetingMember;

    .line 640
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->memberMucJidToMeetingMember:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 641
    iput v1, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->membersCount:I

    .line 642
    iput-boolean v1, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->hadSomeConnectedParticipant:Z

    .line 643
    iput-boolean v1, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->hangoutCreated:Z

    .line 644
    iput-boolean v1, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->ringInvitees:Z

    .line 645
    iput-boolean v1, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->clientInitiatedExit:Z

    .line 646
    return-void
.end method

.method public connectAndSignin(Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V
    .registers 9
    .parameter "account"
    .parameter "talkAuthToken"

    .prologue
    const/4 v1, 0x1

    .line 390
    iget-wide v2, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativePeerObject:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_37

    move v0, v1

    :goto_a
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Preconditions;->checkState(Z)V

    .line 392
    iput-boolean v1, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->retrySignin:Z

    .line 393
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativePeerCreate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativePeerObject:J

    .line 394
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->account:Lcom/google/android/apps/plus/content/EsAccount;

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Created native peer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativePeerObject:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->info(Ljava/lang/String;)V

    .line 396
    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativeConnectAndSignin(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    return-void

    .line 390
    :cond_37
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public createHangout(Z)V
    .registers 6
    .parameter "ringInvitees"

    .prologue
    .line 568
    iget-wide v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativePeerObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    .line 574
    :goto_8
    return-void

    .line 572
    :cond_9
    iput-boolean p1, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->ringInvitees:Z

    .line 573
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativeCreateHangout()V

    goto :goto_8
.end method

.method public enterMeeting(Lcom/google/android/apps/plus/service/Hangout$Info;ZZ)V
    .registers 12
    .parameter "hangoutInfo"
    .parameter "forceConfig"
    .parameter "hoaConsented"

    .prologue
    .line 577
    iget-wide v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativePeerObject:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-nez v0, :cond_9

    .line 589
    :goto_8
    return-void

    .line 581
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->clearMeetingState()V

    .line 582
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    .line 583
    invoke-virtual {p1}, Lcom/google/android/apps/plus/service/Hangout$Info;->getDomain()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_39

    const-string v2, ""

    .line 584
    .local v2, domain:Ljava/lang/String;
    :goto_16
    invoke-virtual {p1}, Lcom/google/android/apps/plus/service/Hangout$Info;->getRoomType()Lcom/google/android/apps/plus/service/Hangout$RoomType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/service/Hangout$RoomType;->ordinal()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/apps/plus/service/Hangout$Info;->getServiceId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3e

    const-string v3, ""

    :goto_26
    invoke-virtual {p1}, Lcom/google/android/apps/plus/service/Hangout$Info;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/apps/plus/service/Hangout$Info;->getNick()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_43

    const-string v5, ""

    :goto_32
    move-object v0, p0

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativeEnterMeeting(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_8

    .line 583
    .end local v2           #domain:Ljava/lang/String;
    :cond_39
    invoke-virtual {p1}, Lcom/google/android/apps/plus/service/Hangout$Info;->getDomain()Ljava/lang/String;

    move-result-object v2

    goto :goto_16

    .line 584
    .restart local v2       #domain:Ljava/lang/String;
    :cond_3e
    invoke-virtual {p1}, Lcom/google/android/apps/plus/service/Hangout$Info;->getServiceId()Ljava/lang/String;

    move-result-object v3

    goto :goto_26

    :cond_43
    invoke-virtual {p1}, Lcom/google/android/apps/plus/service/Hangout$Info;->getNick()Ljava/lang/String;

    move-result-object v5

    goto :goto_32
.end method

.method public exitMeeting()V
    .registers 5

    .prologue
    .line 592
    iget-wide v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativePeerObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    .line 597
    :goto_8
    return-void

    .line 595
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->clientInitiatedExit:Z

    .line 596
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativeExitMeeting()V

    goto :goto_8
.end method

.method public getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2

    .prologue
    .line 400
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->account:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method public getCurrentState()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;
    .registers 5

    .prologue
    .line 365
    iget-wide v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativePeerObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    .line 366
    sget-object v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;->NONE:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;

    .line 368
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

.method public getHadSomeConnectedParticipantInPast()Z
    .registers 2

    .prologue
    .line 274
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->hadSomeConnectedParticipant:Z

    return v0
.end method

.method public getHangoutCreated()Z
    .registers 2

    .prologue
    .line 630
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->hangoutCreated:Z

    return v0
.end method

.method public getHangoutDomain()Ljava/lang/String;
    .registers 2

    .prologue
    .line 622
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/service/Hangout$Info;->getDomain()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHangoutId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 626
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/service/Hangout$Info;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHangoutInfo()Lcom/google/android/apps/plus/service/Hangout$Info;
    .registers 2

    .prologue
    .line 614
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    return-object v0
.end method

.method public getHangoutRoomType()Lcom/google/android/apps/plus/service/Hangout$RoomType;
    .registers 2

    .prologue
    .line 618
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/service/Hangout$Info;->getRoomType()Lcom/google/android/apps/plus/service/Hangout$RoomType;

    move-result-object v0

    return-object v0
.end method

.method public getHasSomeConnectedParticipant()Z
    .registers 5

    .prologue
    .line 278
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->memberMucJidToMeetingMember:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/hangout/MeetingMember;

    .line 279
    .local v1, meetingMember:Lcom/google/android/apps/plus/hangout/MeetingMember;
    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getCurrentStatus()Lcom/google/android/apps/plus/hangout/MeetingMember$Status;

    move-result-object v2

    sget-object v3, Lcom/google/android/apps/plus/hangout/MeetingMember$Status;->CONNECTED:Lcom/google/android/apps/plus/hangout/MeetingMember$Status;

    if-ne v2, v3, :cond_a

    .line 280
    const/4 v2, 0x1

    .line 283
    .end local v1           #meetingMember:Lcom/google/android/apps/plus/hangout/MeetingMember;
    :goto_1f
    return v2

    :cond_20
    const/4 v2, 0x0

    goto :goto_1f
.end method

.method public getIncomingAudioVolume()I
    .registers 5

    .prologue
    .line 1056
    iget-wide v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativePeerObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    .line 1057
    const/4 v0, 0x0

    .line 1060
    :goto_9
    return v0

    :cond_a
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativeGetIncomingAudioVolume()I

    move-result v0

    goto :goto_9
.end method

.method public getIsHangoutLite()Z
    .registers 2

    .prologue
    .line 634
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->isHangoutLite:Z

    return v0
.end method

.method public getMeetingMember(Ljava/lang/String;)Lcom/google/android/apps/plus/hangout/MeetingMember;
    .registers 3
    .parameter "memberMucJid"

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->memberMucJidToMeetingMember:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/hangout/MeetingMember;

    return-object v0
.end method

.method public getMeetingMemberCount()I
    .registers 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->memberMucJidToMeetingMember:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
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
    .line 259
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->memberMucJidToMeetingMember:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 260
    .local v0, members:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/apps/plus/hangout/MeetingMember;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 261
    .local v1, membersList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/hangout/MeetingMember;>;"
    new-instance v2, Lcom/google/android/apps/plus/hangout/MeetingMember$SortByEntryOrder;

    invoke-direct {v2}, Lcom/google/android/apps/plus/hangout/MeetingMember$SortByEntryOrder;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 262
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
    .line 241
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->roomHistory:Ljava/util/List;

    return-object v0
.end method

.method public getSelfMeetingMember()Lcom/google/android/apps/plus/hangout/MeetingMember;
    .registers 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->selfMeetingMember:Lcom/google/android/apps/plus/hangout/MeetingMember;

    return-object v0
.end method

.method public getUserJid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->userJid:Ljava/lang/String;

    return-object v0
.end method

.method public initializeIncomingVideoRenderer(I)Z
    .registers 6
    .parameter "requestID"

    .prologue
    .line 1009
    iget-wide v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativePeerObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    .line 1010
    const/4 v0, 0x0

    .line 1012
    :goto_9
    return v0

    :cond_a
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativeInitializeIncomingVideoRenderer(I)Z

    move-result v0

    goto :goto_9
.end method

.method inviteToMeeting(Lcom/google/wireless/tacotruck/proto/Data$Audience;Ljava/lang/String;ZZ)V
    .registers 25
    .parameter "inviteAudience"
    .parameter "inviteType"
    .parameter "ringParticipants"
    .parameter "createActivity"

    .prologue
    .line 650
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativePeerObject:J

    const-wide/16 v18, 0x0

    cmp-long v1, v4, v18

    if-nez v1, :cond_b

    .line 693
    :goto_a
    return-void

    .line 653
    :cond_b
    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/plus/api/ApiUtils;->removeCircleIdNamespaces(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object p1

    .line 655
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 656
    .local v14, memberGaiaIdSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->memberMucJidToMeetingMember:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_20
    :goto_20
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/apps/plus/hangout/MeetingMember;

    .line 657
    .local v13, meetingMember:Lcom/google/android/apps/plus/hangout/MeetingMember;
    invoke-virtual {v13}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/content/EsPeopleData;->extractGaiaId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 658
    .local v10, gaiaId:Ljava/lang/String;
    if-eqz v10, :cond_20

    .line 659
    invoke-virtual {v14, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 663
    .end local v10           #gaiaId:Ljava/lang/String;
    .end local v13           #meetingMember:Lcom/google/android/apps/plus/hangout/MeetingMember;
    :cond_3a
    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getUserList()Ljava/util/List;

    move-result-object v12

    .line 664
    .local v12, invitees:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$Person;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getCircleList()Ljava/util/List;

    move-result-object v9

    .line 665
    .local v9, circleInvitees:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$Circle;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    move-object/from16 v0, v17

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 666
    .local v17, userIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_51
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/google/wireless/tacotruck/proto/Data$Person;

    .line 667
    .local v16, person:Lcom/google/wireless/tacotruck/proto/Data$Person;
    invoke-virtual/range {v16 .. v16}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getFocusObfuscatedId()Ljava/lang/String;

    move-result-object v15

    .line 668
    .local v15, obfuscatedId:Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 669
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Person object with no id: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/Log;->error(Ljava/lang/String;)V

    goto :goto_51

    .line 672
    :cond_80
    invoke-virtual {v14, v15}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9d

    .line 673
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skip adding: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    goto :goto_51

    .line 676
    :cond_9d
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_51

    .line 678
    .end local v15           #obfuscatedId:Ljava/lang/String;
    .end local v16           #person:Lcom/google/wireless/tacotruck/proto/Data$Person;
    :cond_a3
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 679
    .local v8, circleIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_b0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/wireless/tacotruck/proto/Data$Circle;

    .line 680
    .local v7, circle:Lcom/google/wireless/tacotruck/proto/Data$Circle;
    invoke-virtual {v7}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b0

    .line 683
    .end local v7           #circle:Lcom/google/wireless/tacotruck/proto/Data$Circle;
    :cond_c4
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_dd

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_dd

    const-string v1, "TRANSFER"

    move-object/from16 v0, p2

    if-eq v0, v1, :cond_dd

    .line 684
    const-string v1, "Skipping invite since no one to invite"

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 687
    :cond_dd
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v2, v1, [Ljava/lang/String;

    .line 688
    .local v2, userIdArray:[Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 689
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v3, v1, [Ljava/lang/String;

    .line 690
    .local v3, circleIdArray:[Ljava/lang/String;
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object/from16 v1, p0

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    .line 691
    invoke-direct/range {v1 .. v6}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativeInviteToMeeting([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto/16 :goto_a
.end method

.method public isAudioMute()Z
    .registers 5

    .prologue
    .line 914
    iget-wide v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativePeerObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    .line 915
    const/4 v0, 0x0

    .line 917
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
    .line 607
    if-nez p1, :cond_4

    .line 608
    const/4 v0, 0x0

    .line 610
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
    .line 999
    iget-wide v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativePeerObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    .line 1000
    const/4 v0, 0x0

    .line 1002
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
    .line 422
    iget-wide v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativePeerObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    .line 426
    :goto_8
    return-void

    .line 425
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
    .line 1047
    iget-wide v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativePeerObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    .line 1053
    :cond_8
    :goto_8
    return-void

    .line 1050
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->getCurrentState()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;->IN_MEETING_WITH_MEDIA:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;

    if-ne v0, v1, :cond_8

    .line 1051
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativeProvideOutgoingVideoFrame([BJI)V

    goto :goto_8
.end method

.method public remoteMute(Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 6
    .parameter "member"

    .prologue
    .line 436
    iget-wide v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativePeerObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    .line 440
    :goto_8
    return-void

    .line 439
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
    .line 1029
    iget-wide v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativePeerObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    .line 1030
    const/4 v0, 0x0

    .line 1032
    :goto_9
    return v0

    :cond_a
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativeRenderIncomingVideoFrame(I)Z

    move-result v0

    goto :goto_9
.end method

.method public sendInstantMessage(Ljava/lang/String;)V
    .registers 6
    .parameter "message"

    .prologue
    .line 751
    iget-wide v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativePeerObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    .line 755
    :goto_8
    return-void

    .line 754
    :cond_9
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativeSendInstantMessage(Ljava/lang/String;)V

    goto :goto_8
.end method

.method public sendInstantMessageToUser(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "userJid"
    .parameter "message"

    .prologue
    .line 415
    iget-wide v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativePeerObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    .line 419
    :goto_8
    return-void

    .line 418
    :cond_9
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativeSendInstantMessageToUser(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8
.end method

.method public sendRingStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "inviteId"
    .parameter "hangoutId"
    .parameter "status"

    .prologue
    .line 450
    iget-wide v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativePeerObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    .line 454
    :goto_8
    return-void

    .line 453
    :cond_9
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativeSendRingStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8
.end method

.method public setAudioMute(Z)V
    .registers 6
    .parameter "mute"

    .prologue
    .line 928
    iget-wide v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativePeerObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    .line 932
    :goto_8
    return-void

    .line 931
    :cond_9
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativeSetAudioMute(Z)V

    goto :goto_8
.end method

.method public setIncomingAudioVolume(I)V
    .registers 6
    .parameter "level"

    .prologue
    .line 1072
    iget-wide v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativePeerObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    .line 1080
    :goto_8
    return-void

    .line 1076
    :cond_9
    if-ltz p1, :cond_f

    const/16 v0, 0xff

    if-le p1, v0, :cond_28

    .line 1077
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

    .line 1079
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
    .line 970
    iget-wide v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativePeerObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    .line 975
    :goto_8
    return-void

    .line 973
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
    .line 1019
    iget-wide v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativePeerObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    .line 1020
    const/4 v0, 0x0

    .line 1022
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
    .line 955
    iget-wide v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativePeerObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    .line 959
    :goto_8
    return-void

    .line 958
    :cond_9
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativeSetIncomingVideoSourceToSpeakerIndex(II)V

    goto :goto_8
.end method

.method public setIncomingVideoSourceToUser(ILjava/lang/String;)V
    .registers 7
    .parameter "requestID"
    .parameter "memberMucJid"

    .prologue
    .line 962
    iget-wide v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativePeerObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    .line 966
    :goto_8
    return-void

    .line 965
    :cond_9
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativeSetIncomingVideoSourceToUser(ILjava/lang/String;)V

    goto :goto_8
.end method

.method public setPresenceConnectionStatus(Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$PresenceConnectionStatus;)V
    .registers 6
    .parameter "status"

    .prologue
    .line 429
    iget-wide v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativePeerObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    .line 433
    :goto_8
    return-void

    .line 432
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

    .line 404
    iget-wide v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativePeerObject:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    .line 412
    :cond_8
    :goto_8
    return-void

    .line 407
    :cond_9
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativeSignoutAndDisconnect()V

    .line 408
    iget-wide v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativePeerObject:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_8

    .line 409
    iget-wide v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativePeerObject:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativePeerDestroy(J)V

    .line 410
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
    .line 940
    iget-wide v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativePeerObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    .line 941
    const/4 v0, 0x0

    .line 943
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
    .line 948
    iget-wide v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativePeerObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    .line 949
    const/4 v0, 0x0

    .line 951
    :goto_9
    return v0

    :cond_a
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativeStartIncomingVideoForUser(Ljava/lang/String;III)I

    move-result v0

    goto :goto_9
.end method

.method public startOutgoingVideo(II)V
    .registers 7
    .parameter "width"
    .parameter "height"

    .prologue
    .line 985
    iget-wide v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativePeerObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    .line 989
    :goto_8
    return-void

    .line 988
    :cond_9
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativeStartOutgoingVideo(II)V

    goto :goto_8
.end method

.method public stopIncomingVideo(I)V
    .registers 6
    .parameter "requestID"

    .prologue
    .line 978
    iget-wide v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativePeerObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    .line 982
    :goto_8
    return-void

    .line 981
    :cond_9
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativeStopIncomingVideo(I)V

    goto :goto_8
.end method

.method public stopOutgoingVideo()V
    .registers 5

    .prologue
    .line 992
    iget-wide v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativePeerObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    .line 996
    :goto_8
    return-void

    .line 995
    :cond_9
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativeStopOutgoingVideo()V

    goto :goto_8
.end method

.method public uploadCallgrokLog()V
    .registers 5

    .prologue
    .line 600
    iget-wide v0, p0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativePeerObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    .line 604
    :goto_8
    return-void

    .line 603
    :cond_9
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativeUploadCallgrokLog()V

    goto :goto_8
.end method

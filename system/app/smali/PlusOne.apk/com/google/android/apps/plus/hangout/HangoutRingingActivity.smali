.class public Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;
.super Lcom/google/android/apps/plus/fragments/EsFragmentActivity;
.source "HangoutRingingActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$PersonLoaderCallbacks;,
        Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$AvatarLoaderCallbacks;,
        Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$HangoutRingingActivityEventHandler;,
        Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$HangoutCancelInvitationReceiver;,
        Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$HangoutInvitationReceiver;
    }
.end annotation


# static fields
.field private static final INVITER_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mAcceptView:Landroid/view/View;

.field private mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mAvatarLoaderCallbacks:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$AvatarLoaderCallbacks;

.field private mCallTimeoutRunnable:Ljava/lang/Runnable;

.field private mCircleIcon:Landroid/view/View;

.field private mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

.field private mHandler:Landroid/os/Handler;

.field private mHangoutCancelReceiver:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$HangoutCancelInvitationReceiver;

.field private mHangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

.field private mHangoutRingingEventHandler:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$HangoutRingingActivityEventHandler;

.field private mHasActed:Z

.field private mIgnoreView:Landroid/view/View;

.field private mInviterAvatar:Landroid/widget/ImageView;

.field private mInviterCircleNames:Landroid/widget/TextView;

.field private mInviterId:Ljava/lang/String;

.field private mInviterName:Landroid/widget/TextView;

.field private mPackedCircleIds:Ljava/lang/String;

.field private mPendingFinishStatus:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;

.field private mPersonLoaderCallbacks:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$PersonLoaderCallbacks;

.field private mRingtone:Landroid/media/Ringtone;

.field private mSelfVideoView:Lcom/google/android/apps/plus/hangout/SelfVideoView;

.field private mSelfVideoViewContainer:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 99
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "packed_circle_ids"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->INVITER_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 59
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mHasActed:Z

    .line 86
    iput-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mPendingFinishStatus:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;

    .line 88
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mHandler:Landroid/os/Handler;

    .line 90
    new-instance v0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$PersonLoaderCallbacks;

    invoke-direct {v0, p0, v2}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$PersonLoaderCallbacks;-><init>(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$1;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mPersonLoaderCallbacks:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$PersonLoaderCallbacks;

    .line 91
    new-instance v0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$AvatarLoaderCallbacks;

    invoke-direct {v0, p0, v2}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$AvatarLoaderCallbacks;-><init>(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$1;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mAvatarLoaderCallbacks:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$AvatarLoaderCallbacks;

    .line 93
    new-instance v0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$HangoutRingingActivityEventHandler;

    invoke-direct {v0, p0, v2}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$HangoutRingingActivityEventHandler;-><init>(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$1;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mHangoutRingingEventHandler:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$HangoutRingingActivityEventHandler;

    .line 96
    new-instance v0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$HangoutCancelInvitationReceiver;

    invoke-direct {v0, p0, v2}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$HangoutCancelInvitationReceiver;-><init>(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$1;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mHangoutCancelReceiver:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$HangoutCancelInvitationReceiver;

    .line 314
    new-instance v0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$1;-><init>(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mCallTimeoutRunnable:Ljava/lang/Runnable;

    .line 631
    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->stopRingTone()V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->updateCircleNames()V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mInviterId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;Landroid/graphics/Bitmap;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->setAvatarBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$1500()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 59
    sget-object v0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->INVITER_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->setInviterName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1702(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mPackedCircleIds:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mHasActed:Z

    return v0
.end method

.method static synthetic access$402(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mHasActed:Z

    return p1
.end method

.method static synthetic access$500(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)Lcom/google/android/apps/plus/service/Hangout$Info;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mHangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->exit()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mPendingFinishStatus:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;

    return-object v0
.end method

.method static synthetic access$702(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mPendingFinishStatus:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;

    return-object p1
.end method

.method static synthetic access$800(Landroid/content/Context;Ljava/lang/String;Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 59
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->sendHangoutRingFinishRequest(Landroid/content/Context;Ljava/lang/String;Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->processBunchCommand(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;)V

    return-void
.end method

.method private declared-synchronized exit()V
    .registers 3

    .prologue
    .line 335
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mCallTimeoutRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_f

    .line 336
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mCallTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 337
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mCallTimeoutRunnable:Ljava/lang/Runnable;

    .line 339
    :cond_f
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->stopRingTone()V

    .line 343
    invoke-static {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->disconnect()V

    .line 344
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->finish()V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    .line 345
    monitor-exit p0

    return-void

    .line 335
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private playRingTone()V
    .registers 4

    .prologue
    .line 549
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mRingtone:Landroid/media/Ringtone;

    if-nez v1, :cond_f

    .line 550
    const/4 v1, 0x1

    invoke-static {v1}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 551
    .local v0, uri:Landroid/net/Uri;
    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mRingtone:Landroid/media/Ringtone;

    .line 554
    .end local v0           #uri:Landroid/net/Uri;
    :cond_f
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 559
    :goto_17
    return-void

    .line 557
    :cond_18
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mRingtone:Landroid/media/Ringtone;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 558
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V

    goto :goto_17
.end method

.method private processBunchCommand(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;)V
    .registers 6
    .parameter "command"

    .prologue
    .line 322
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasError()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 323
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getError()Lcom/google/wireless/realtimechat/proto/Client$Error;

    move-result-object v0

    .line 324
    .local v0, error:Lcom/google/wireless/realtimechat/proto/Client$Error;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got error from bunch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$Error;->getDetail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 331
    .end local v0           #error:Lcom/google/wireless/realtimechat/proto/Client$Error;
    :cond_24
    :goto_24
    return-void

    .line 325
    :cond_25
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasHangoutRingFinishResponse()Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 326
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getHangoutRingFinishResponse()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;->getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v1

    .line 327
    .local v1, status:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got HangoutRingFinishResponse with status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    goto :goto_24

    .line 328
    .end local v1           #status:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    :cond_4e
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasHangoutRingFinishRequest()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 329
    const-string v2, "Got HangoutRingFinishrequest"

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    goto :goto_24
.end method

.method private static sendBunchRequest(Landroid/content/Context;Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;)V
    .registers 6
    .parameter "context"
    .parameter "requestBuilder"

    .prologue
    .line 359
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->addRequest(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;

    move-result-object v0

    .line 362
    .local v0, batchCommand:Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;
    invoke-static {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$BatchCommand;->toByteArray()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->sendDataToBunch(Ljava/lang/String;)V

    .line 364
    return-void
.end method

.method private static sendHangoutRingFinishRequest(Landroid/content/Context;Ljava/lang/String;Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;)V
    .registers 6
    .parameter "context"
    .parameter "hangoutId"
    .parameter "status"

    .prologue
    .line 349
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending hangout finish request. Status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 350
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->setHangoutId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->setRingStatus(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;

    move-result-object v0

    .line 354
    .local v0, finishRequestBuilder:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setHangoutRingFinishRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->sendBunchRequest(Landroid/content/Context;Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;)V

    .line 356
    return-void
.end method

.method private setAvatarBitmap(Landroid/graphics/Bitmap;)V
    .registers 4
    .parameter "avatar"

    .prologue
    .line 598
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mInviterAvatar:Landroid/widget/ImageView;

    if-eqz v0, :cond_f

    .line 599
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mInviterAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 600
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mInviterAvatar:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 602
    :cond_f
    return-void
.end method

.method private setInviterName(Ljava/lang/String;)V
    .registers 4
    .parameter "userName"

    .prologue
    .line 573
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mInviterName:Landroid/widget/TextView;

    if-eqz v0, :cond_f

    .line 574
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mInviterName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 575
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mInviterName:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 577
    :cond_f
    return-void
.end method

.method private stopRingTone()V
    .registers 2

    .prologue
    .line 562
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_9

    .line 563
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 565
    :cond_9
    return-void
.end method

.method private updateCircleNames()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 583
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mPackedCircleIds:Ljava/lang/String;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/CircleNameResolver;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mInviterCircleNames:Landroid/widget/TextView;

    if-eqz v0, :cond_28

    .line 585
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mInviterCircleNames:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mPackedCircleIds:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/fragments/CircleNameResolver;->getCircleNamesForPackedIds(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 587
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mInviterCircleNames:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 588
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mCircleIcon:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 590
    :cond_28
    return-void
.end method


# virtual methods
.method protected getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2

    .prologue
    .line 545
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method protected getViewForLogging()Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    .registers 2

    .prologue
    .line 537
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 371
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 373
    iput-boolean v5, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mHasActed:Z

    .line 374
    iput-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mPendingFinishStatus:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$RingStatus;

    .line 376
    const v1, 0x7f03002f

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->setContentView(I)V

    .line 379
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x680080

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 384
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 385
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/content/EsAccount;

    iput-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 386
    const-string v1, "hangout_room_info"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/service/Hangout$Info;

    iput-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mHangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    .line 387
    const-string v1, "hangout_inviter_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mInviterId:Ljava/lang/String;

    .line 389
    const v1, 0x7f0d00a3

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mInviterName:Landroid/widget/TextView;

    .line 390
    const v1, 0x7f0d00a4

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mCircleIcon:Landroid/view/View;

    .line 391
    const v1, 0x7f0d00a5

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mInviterCircleNames:Landroid/widget/TextView;

    .line 392
    const v1, 0x7f0d009e

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mInviterAvatar:Landroid/widget/ImageView;

    .line 394
    const v1, 0x7f0d00a8

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mIgnoreView:Landroid/view/View;

    .line 395
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mIgnoreView:Landroid/view/View;

    new-instance v2, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$2;

    invoke-direct {v2, p0}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$2;-><init>(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 421
    const v1, 0x7f0d00a9

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mAcceptView:Landroid/view/View;

    .line 422
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mAcceptView:Landroid/view/View;

    new-instance v2, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$3;

    invoke-direct {v2, p0}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$3;-><init>(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 454
    const v1, 0x7f0d00a6

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mSelfVideoViewContainer:Landroid/widget/FrameLayout;

    .line 456
    new-instance v1, Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/google/android/apps/plus/fragments/CircleNameResolver;-><init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/google/android/apps/plus/content/EsAccount;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    .line 457
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/CircleNameResolver;->initLoader()V

    .line 458
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    new-instance v2, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$4;

    invoke-direct {v2, p0}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$4;-><init>(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)V

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/fragments/CircleNameResolver;->registerObserver(Landroid/database/DataSetObserver;)V

    .line 465
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mPersonLoaderCallbacks:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$PersonLoaderCallbacks;

    invoke-virtual {v1, v5, v4, v2}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 466
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mAvatarLoaderCallbacks:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$AvatarLoaderCallbacks;

    invoke-virtual {v1, v2, v4, v3}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 468
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->playRingTone()V

    .line 469
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mCallTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x7530

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 470
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 509
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onPause()V

    .line 511
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mSelfVideoView:Lcom/google/android/apps/plus/hangout/SelfVideoView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->onPause()V

    .line 512
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 499
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onResume()V

    .line 501
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mSelfVideoView:Lcom/google/android/apps/plus/hangout/SelfVideoView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->onResume()V

    .line 502
    return-void
.end method

.method protected onStart()V
    .registers 7

    .prologue
    const/4 v5, -0x1

    .line 477
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onStart()V

    .line 479
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "com.google.android.c2dm.intent.RECEIVE"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 480
    .local v0, invitationFilter:Landroid/content/IntentFilter;
    const-string v2, "com.google.android.apps.hangout.NOTIFICATION"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 481
    const-string v2, "Registering HangoutCancelReceiver"

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 482
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mHangoutCancelReceiver:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$HangoutCancelInvitationReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 484
    invoke-static {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mHangoutRingingEventHandler:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$HangoutRingingActivityEventHandler;

    const/4 v4, 0x0

    invoke-virtual {v2, p0, v3, v4}, Lcom/google/android/apps/plus/hangout/GCommApp;->registerForEvents(Landroid/content/Context;Lcom/google/android/apps/plus/hangout/GCommEventHandler;Z)V

    .line 487
    new-instance v2, Lcom/google/android/apps/plus/hangout/SelfVideoView;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/android/apps/plus/hangout/SelfVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mSelfVideoView:Lcom/google/android/apps/plus/hangout/SelfVideoView;

    .line 488
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 490
    .local v1, layoutParams:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mSelfVideoView:Lcom/google/android/apps/plus/hangout/SelfVideoView;

    invoke-virtual {v2, v1}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 491
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mSelfVideoViewContainer:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mSelfVideoView:Lcom/google/android/apps/plus/hangout/SelfVideoView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 492
    return-void
.end method

.method protected onStop()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 519
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onStop()V

    .line 521
    const-string v1, "Unregistering HangoutCancelReceiver"

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 523
    :try_start_9
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mHangoutCancelReceiver:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$HangoutCancelInvitationReceiver;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_e} :catch_18

    .line 528
    :goto_e
    invoke-static {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mHangoutRingingEventHandler:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$HangoutRingingActivityEventHandler;

    invoke-virtual {v1, p0, v2, v3}, Lcom/google/android/apps/plus/hangout/GCommApp;->unregisterForEvents(Landroid/content/Context;Lcom/google/android/apps/plus/hangout/GCommEventHandler;Z)V

    .line 530
    return-void

    .line 524
    :catch_18
    move-exception v0

    .line 525
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v1, "Exception unregistering HangoutCancelReceiver"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_e
.end method

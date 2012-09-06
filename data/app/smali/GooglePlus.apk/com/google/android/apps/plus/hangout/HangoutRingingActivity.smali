.class public Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;
.super Lcom/google/android/apps/plus/fragments/EsFragmentActivity;
.source "HangoutRingingActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$PersonLoaderCallbacks;,
        Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$VibratorThread;,
        Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$HangoutRingingActivityEventHandler;,
        Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$PhoneStateChangeListener;,
        Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;
    }
.end annotation


# static fields
.field private static final INVITER_PROJECTION:[Ljava/lang/String;

.field private static isCurrentlyRinging:Z

.field private static mRingtone:Landroid/media/Ringtone;

.field private static sRingingActivity:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;


# instance fields
.field private mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mAnswerWidget:Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;

.field private final mAnswerWidgetPingRunnable:Ljava/lang/Runnable;

.field private mCallTimeoutRunnable:Ljava/lang/Runnable;

.field private mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

.field volatile mContinueVibrating:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

.field private final mHangoutRingingEventHandler:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$HangoutRingingActivityEventHandler;

.field private mHasActed:Z

.field private mInviteId:Ljava/lang/String;

.field private mInviterAvatar:Lcom/google/android/apps/plus/views/AvatarView;

.field private mInviterCircleNamesTextView:Landroid/widget/TextView;

.field private mInviterId:Ljava/lang/String;

.field private mInviterName:Ljava/lang/String;

.field private mIsHangoutLite:Z

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPackedCircleIds:Ljava/lang/String;

.field private mPendingFinishStatus:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;

.field private final mPersonLoaderCallbacks:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$PersonLoaderCallbacks;

.field private mPhoneStateChangeListener:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$PhoneStateChangeListener;

.field private mSelfVideoVerticalGravity:F

.field private mSelfVideoView:Lcom/google/android/apps/plus/hangout/SelfVideoView;

.field private mSelfVideoViewContainer:Landroid/widget/FrameLayout;

.field mVibrator:Landroid/os/Vibrator;

.field mVibratorThread:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$VibratorThread;

.field private toggleAudioMuteMenuButton:Landroid/widget/ImageButton;

.field private toggleVideoMuteMenuButton:Landroid/widget/ImageButton;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 100
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->sRingingActivity:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    .line 101
    sput-boolean v2, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->isCurrentlyRinging:Z

    .line 142
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "packed_circle_ids"

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->INVITER_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 68
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;-><init>()V

    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mHasActed:Z

    .line 131
    iput-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mPendingFinishStatus:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;

    .line 133
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mHandler:Landroid/os/Handler;

    .line 135
    new-instance v0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$PersonLoaderCallbacks;

    invoke-direct {v0, p0, v2}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$PersonLoaderCallbacks;-><init>(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$1;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mPersonLoaderCallbacks:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$PersonLoaderCallbacks;

    .line 137
    new-instance v0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$HangoutRingingActivityEventHandler;

    invoke-direct {v0, p0, v2}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$HangoutRingingActivityEventHandler;-><init>(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$1;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mHangoutRingingEventHandler:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$HangoutRingingActivityEventHandler;

    .line 159
    const v0, -0x414ccccd

    iput v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mSelfVideoVerticalGravity:F

    .line 480
    new-instance v0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$1;-><init>(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mAnswerWidgetPingRunnable:Ljava/lang/Runnable;

    .line 492
    iput-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mCallTimeoutRunnable:Ljava/lang/Runnable;

    .line 924
    return-void
.end method

.method private acceptHangout()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 705
    iget-boolean v2, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mHasActed:Z

    if-eqz v2, :cond_6

    .line 725
    :goto_5
    return-void

    .line 708
    :cond_6
    iput-boolean v5, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mHasActed:Z

    .line 710
    const-string v2, "Accepted invitation"

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 711
    invoke-static {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v1

    .line 712
    .local v1, gcommApp:Lcom/google/android/apps/plus/hangout/GCommApp;
    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->getCurrentState()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;

    move-result-object v0

    .line 713
    .local v0, appState:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;
    sget-object v2, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;->SIGNED_IN:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;

    if-ne v0, v2, :cond_34

    .line 714
    sget-object v2, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;->ACCEPTED:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;

    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->sendHangoutRingStatus(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;)V

    .line 715
    sget-object v2, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;->ACCEPTED:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;

    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->exit(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;)V

    .line 722
    :goto_27
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mHangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    const/4 v4, 0x0

    invoke-static {p0, v2, v3, v5, v4}, Lcom/google/android/apps/plus/phone/Intents;->getHangoutActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/Hangout$Info;ZLjava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_5

    .line 717
    :cond_34
    sget-object v2, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;->ACCEPTED:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;

    iput-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mPendingFinishStatus:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;

    .line 718
    const-string v2, "Not yet signed in. Will send finish once signed in."

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 719
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->stopRingTone()V

    goto :goto_27
.end method

.method static synthetic access$1000(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->updateCircleNames()V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->acceptHangout()V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->ignoreHangout()V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->createMissedHangoutNotification()V

    return-void
.end method

.method static synthetic access$1600()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 68
    sget-object v0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->INVITER_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mInviterId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mPackedCircleIds:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mHasActed:Z

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mPendingFinishStatus:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;)Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mPendingFinishStatus:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->sendHangoutRingStatus(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->exit(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)Landroid/widget/ImageButton;
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->toggleAudioMuteMenuButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)Landroid/widget/ImageButton;
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->toggleVideoMuteMenuButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mAnswerWidget:Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static buildNotificationTag(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Ljava/lang/String;
    .registers 4
    .parameter "context"
    .parameter "account"

    .prologue
    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":notifications:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createMissedHangoutNotification()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 828
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0803be

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mInviterName:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 830
    .local v1, notifcationTitle:Ljava/lang/String;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Person;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mInviterName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mInviterId:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/apps/plus/content/EsPeopleData;->extractGaiaId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setFocusObfuscatedId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v4

    .line 834
    .local v4, person:Lcom/google/wireless/tacotruck/proto/Data$Person;
    iget-object v5, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v6, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mHangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->addUser(Lcom/google/wireless/tacotruck/proto/Data$Person;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v7

    invoke-static {p0, v5, v6, v7}, Lcom/google/android/apps/plus/phone/Intents;->getMissedHangoutCallbackIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/Hangout$Info;Lcom/google/wireless/tacotruck/proto/Data$Audience;)Landroid/content/Intent;

    move-result-object v5

    const/high16 v6, 0x800

    invoke-static {p0, v8, v5, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 842
    .local v0, contentIntent:Landroid/app/PendingIntent;
    new-instance v2, Landroid/app/Notification;

    const v5, 0x7f020181

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v2, v5, v1, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 844
    .local v2, notification:Landroid/app/Notification;
    iget v5, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v2, Landroid/app/Notification;->flags:I

    .line 846
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0803bf

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, p0, v1, v5, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 850
    const-string v5, "notification"

    invoke-virtual {p0, v5}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 853
    .local v3, notificationManager:Landroid/app/NotificationManager;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->buildNotificationTag(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v3, v5, v6, v2}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 856
    return-void
.end method

.method public static deactivateAccount(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 6
    .parameter "context"
    .parameter "account"

    .prologue
    .line 414
    sget-object v0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->sRingingActivity:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    .line 415
    .local v0, existingRingActivity:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;
    if-eqz v0, :cond_9

    .line 416
    sget-object v3, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;->IGNORED:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;

    invoke-direct {v0, v3}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->exit(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;)V

    .line 418
    :cond_9
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->buildNotificationTag(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Ljava/lang/String;

    move-result-object v2

    .line 419
    .local v2, notificationTag:Ljava/lang/String;
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 421
    .local v1, notificationManager:Landroid/app/NotificationManager;
    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 422
    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 424
    return-void
.end method

.method private static doHangoutDing(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/service/Hangout$Info;)V
    .registers 16
    .parameter "context"
    .parameter "account"
    .parameter "hangoutInviteId"
    .parameter "inviterId"
    .parameter "inviterName"
    .parameter "hangoutInfo"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 367
    invoke-static {p0}, Lcom/google/android/apps/plus/service/AndroidNotification;->shouldNotify(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 410
    :goto_8
    return-void

    .line 370
    :cond_9
    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    .line 371
    .local v3, notification:Landroid/app/Notification;
    const v6, 0x7f020181

    iput v6, v3, Landroid/app/Notification;->icon:I

    .line 372
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v3, Landroid/app/Notification;->when:J

    .line 373
    iget v6, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v3, Landroid/app/Notification;->flags:I

    .line 375
    invoke-static {p0}, Lcom/google/android/apps/plus/service/AndroidNotification;->hasRingtone(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_92

    .line 376
    invoke-static {p0}, Lcom/google/android/apps/plus/service/AndroidNotification;->getRingtone(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, v3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 381
    :goto_2b
    invoke-static {p0}, Lcom/google/android/apps/plus/service/AndroidNotification;->shouldVibrate(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_37

    .line 382
    iget v6, v3, Landroid/app/Notification;->defaults:I

    or-int/lit8 v6, v6, 0x2

    iput v6, v3, Landroid/app/Notification;->defaults:I

    .line 385
    :cond_37
    const/4 v6, 0x0

    invoke-static {p0, p1, p5, v8, v6}, Lcom/google/android/apps/plus/phone/Intents;->getHangoutActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/Hangout$Info;ZLjava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v6

    const/high16 v7, 0x800

    invoke-static {p0, v8, v6, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 393
    .local v1, contentIntent:Landroid/app/PendingIntent;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0803bb

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    aput-object p4, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 395
    .local v5, ticker:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0803bc

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    aput-object p4, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 397
    .local v2, contentTitle:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0803bd

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    aput-object p4, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 399
    .local v0, content:Ljava/lang/String;
    iput-object v5, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 400
    invoke-virtual {v3, p0, v2, v0, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 403
    const-string v6, "notification"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 407
    .local v4, notificationManager:Landroid/app/NotificationManager;
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->buildNotificationTag(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v4, v6, v7, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto/16 :goto_8

    .line 378
    .end local v0           #content:Ljava/lang/String;
    .end local v1           #contentIntent:Landroid/app/PendingIntent;
    .end local v2           #contentTitle:Ljava/lang/String;
    .end local v4           #notificationManager:Landroid/app/NotificationManager;
    .end local v5           #ticker:Ljava/lang/String;
    :cond_92
    iget v6, v3, Landroid/app/Notification;->defaults:I

    or-int/lit8 v6, v6, 0x1

    iput v6, v3, Landroid/app/Notification;->defaults:I

    goto :goto_2b
.end method

.method private static doHangoutRing(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/service/Hangout$Info;Z)V
    .registers 11
    .parameter "context"
    .parameter "account"
    .parameter "hangoutInviteId"
    .parameter "inviterId"
    .parameter "inviterName"
    .parameter "hangoutInfo"
    .parameter "isHangoutLite"

    .prologue
    .line 343
    invoke-static {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v1

    .line 344
    .local v1, gcommApp:Lcom/google/android/apps/plus/hangout/GCommApp;
    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->getCurrentState()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;

    move-result-object v0

    .line 347
    .local v0, appState:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;
    sget-object v3, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;->SIGNING_IN:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;

    if-eq v0, v3, :cond_14

    sget-object v3, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;->SIGNED_IN:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;

    if-ne v0, v3, :cond_17

    .line 348
    :cond_14
    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->disconnect()V

    .line 350
    :cond_17
    invoke-static {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/android/apps/plus/hangout/GCommApp;->signinUser(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 352
    invoke-static/range {p0 .. p6}, Lcom/google/android/apps/plus/phone/Intents;->getHangoutRingingActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/service/Hangout$Info;Z)Landroid/content/Intent;

    move-result-object v2

    .line 354
    .local v2, launchIntent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 355
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 356
    return-void
.end method

.method private exit(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;)V
    .registers 6
    .parameter "status"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 496
    sput-object v3, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->sRingingActivity:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    .line 497
    sput-boolean v2, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->isCurrentlyRinging:Z

    .line 499
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mCallTimeoutRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_13

    .line 500
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mCallTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 501
    iput-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mCallTimeoutRunnable:Ljava/lang/Runnable;

    .line 503
    :cond_13
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->stopRingTone()V

    .line 505
    invoke-static {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mHangoutRingingEventHandler:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$HangoutRingingActivityEventHandler;

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->unregisterForEvents(Landroid/content/Context;Lcom/google/android/apps/plus/hangout/GCommEventHandler;Z)V

    .line 508
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mPhoneStateChangeListener:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$PhoneStateChangeListener;

    if-eqz v0, :cond_30

    .line 509
    invoke-static {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getApp()Lcom/google/android/apps/plus/phone/EsApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mPhoneStateChangeListener:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$PhoneStateChangeListener;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/EsApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 512
    :cond_30
    sget-object v0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;->ACCEPTED:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;

    if-eq p1, v0, :cond_3b

    .line 513
    invoke-static {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->disconnect()V

    .line 516
    :cond_3b
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->removeStatusBarNotification()V

    .line 518
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->finish()V

    .line 519
    return-void
.end method

.method private ignoreHangout()V
    .registers 4

    .prologue
    .line 728
    iget-boolean v2, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mHasActed:Z

    if-eqz v2, :cond_5

    .line 744
    :goto_4
    return-void

    .line 731
    :cond_5
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mHasActed:Z

    .line 733
    const-string v2, "Rejected invitation"

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 734
    invoke-static {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v1

    .line 735
    .local v1, gcommApp:Lcom/google/android/apps/plus/hangout/GCommApp;
    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->getCurrentState()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;

    move-result-object v0

    .line 736
    .local v0, appState:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;
    sget-object v2, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;->SIGNED_IN:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;

    if-ne v0, v2, :cond_28

    .line 737
    sget-object v2, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;->IGNORED:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;

    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->sendHangoutRingStatus(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;)V

    .line 738
    sget-object v2, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;->IGNORED:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;

    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->exit(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;)V

    goto :goto_4

    .line 740
    :cond_28
    sget-object v2, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;->IGNORED:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;

    iput-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mPendingFinishStatus:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;

    .line 741
    const-string v2, "Not yet signed in. Will send finish once signed in."

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 742
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->stopRingTone()V

    goto :goto_4
.end method

.method public static onC2DMReceive(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;)V
    .registers 34
    .parameter "context"
    .parameter "account"
    .parameter "intent"

    .prologue
    .line 166
    const-string v3, "Hangout Invitation Receiver got invitation tickle"

    invoke-static {v3}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 168
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v3}, Lcom/google/android/apps/plus/service/Hangout;->getSupportedStatus(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/apps/tacotown/proto/A2a$HangoutData;)Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    move-result-object v3

    sget-object v4, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;->SUPPORTED:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    if-eq v3, v4, :cond_18

    .line 170
    const-string v3, "Ignoring hangout invitation since this device doesn\'t support hangouts"

    invoke-static {v3}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 319
    :goto_17
    return-void

    .line 174
    :cond_18
    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/plus/hangout/HangoutNotifications;->shouldNotify(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_24

    .line 175
    const-string v3, "Ignoring hangout invitation because of setting"

    invoke-static {v3}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    goto :goto_17

    .line 179
    :cond_24
    const-string v3, "id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 180
    .local v22, hangoutInviteId:Ljava/lang/String;
    const-string v3, "notification"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 182
    .local v24, hangoutInviteProtoBase64:Ljava/lang/String;
    if-eqz v22, :cond_38

    if-nez v24, :cond_47

    .line 183
    :cond_38
    const-string v3, "Incorrect tickle: inviteId = %s, hangoutInviteProtoBase64 = %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v22, v4, v5

    const/4 v5, 0x1

    aput-object v24, v4, v5

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/hangout/Log;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_17

    .line 188
    :cond_47
    const/4 v3, 0x0

    move-object/from16 v0, v24

    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v25

    .line 189
    .local v25, hangoutInviteProtoBytes:[B
    const/16 v23, 0x0

    .line 191
    .local v23, hangoutInviteNotification:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;
    :try_start_50
    invoke-static/range {v25 .. v25}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->parseFrom([B)Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;
    :try_end_53
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_50 .. :try_end_53} :catch_62

    move-result-object v23

    .line 197
    :goto_54
    if-nez v23, :cond_69

    .line 198
    const-string v3, "Could not decode invite: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v24, v4, v5

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_17

    .line 193
    :catch_62
    move-exception v20

    .line 194
    .local v20, exception:Lcom/google/protobuf/InvalidProtocolBufferException;
    const-string v3, "Invalid BatchCommand message received"

    invoke-static {v3}, Lcom/google/android/apps/plus/hangout/Log;->warn(Ljava/lang/String;)V

    goto :goto_54

    .line 202
    .end local v20           #exception:Lcom/google/protobuf/InvalidProtocolBufferException;
    :cond_69
    invoke-virtual/range {v23 .. v23}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->hasCommand()Z

    move-result v3

    if-nez v3, :cond_75

    .line 203
    const-string v3, "Ignoring hangoutInviteNotification without any command"

    invoke-static {v3}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    goto :goto_17

    .line 207
    :cond_75
    invoke-virtual/range {v23 .. v23}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->getContext()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;

    move-result-object v26

    .line 209
    .local v26, hangoutStartContext:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;
    invoke-virtual/range {v23 .. v23}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->getCommand()Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Command;

    move-result-object v3

    sget-object v4, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Command;->DISMISSED:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Command;

    if-ne v3, v4, :cond_ab

    .line 210
    const-string v3, "Got hangoutInviteNotification:\nCommand: %s\nHangoutId: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual/range {v23 .. v23}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->getCommand()Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Command;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual/range {v26 .. v26}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->getHangoutId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    sget-object v3, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->sRingingActivity:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    if-eqz v3, :cond_a4

    .line 215
    sget-object v3, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->sRingingActivity:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    move-object/from16 v0, v23

    invoke-direct {v3, v0}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->onReceivedCancelRingNotification(Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;)V

    goto/16 :goto_17

    .line 219
    :cond_a4
    const-string v3, "Ignoring dismiss command since ring activity is not running."

    invoke-static {v3}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    goto/16 :goto_17

    .line 223
    :cond_ab
    invoke-virtual/range {v26 .. v26}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->getHangoutType()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Type;

    move-result-object v3

    sget-object v4, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Type;->REGULAR:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Type;

    if-eq v3, v4, :cond_cc

    invoke-virtual/range {v26 .. v26}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->getHangoutType()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Type;

    move-result-object v3

    sget-object v4, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Type;->LITE:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Type;

    if-eq v3, v4, :cond_cc

    .line 225
    const-string v3, "Ignoring Hangout ring for unsupported hangout type: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual/range {v26 .. v26}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->getHangoutType()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Type;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_17

    .line 230
    :cond_cc
    invoke-virtual/range {v26 .. v26}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->hasInvitation()Z

    move-result v3

    if-nez v3, :cond_d9

    .line 231
    const-string v3, "Ignoring hangoutStartContext without invitation"

    invoke-static {v3}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    goto/16 :goto_17

    .line 235
    :cond_d9
    invoke-virtual/range {v26 .. v26}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->getInvitation()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;

    move-result-object v27

    .line 237
    .local v27, invitation:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;
    invoke-virtual/range {v27 .. v27}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->hasInviterGaiaId()Z

    move-result v3

    if-eqz v3, :cond_e9

    invoke-virtual/range {v27 .. v27}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->hasTimestamp()Z

    move-result v3

    if-nez v3, :cond_f0

    .line 238
    :cond_e9
    const-string v3, "Ignoring hangoutStartContext without invitation data"

    invoke-static {v3}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    goto/16 :goto_17

    .line 242
    :cond_f0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual/range {v27 .. v27}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->getTimestamp()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x493e0

    cmp-long v3, v3, v5

    if-lez v3, :cond_127

    .line 243
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring expired hangout invitation tickle. Tickle age = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual/range {v27 .. v27}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->getTimestamp()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    goto/16 :goto_17

    .line 248
    :cond_127
    invoke-virtual/range {v27 .. v27}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->getInvitationType()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;

    move-result-object v28

    .line 250
    .local v28, inviteType:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;
    sget-object v3, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;->HANGOUT:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;

    move-object/from16 v0, v28

    if-eq v0, v3, :cond_159

    sget-object v3, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;->HANGOUT_SYNC:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;

    move-object/from16 v0, v28

    if-eq v0, v3, :cond_159

    sget-object v3, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;->TRANSFER:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;

    move-object/from16 v0, v28

    if-eq v0, v3, :cond_159

    .line 253
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring unsupported invitation type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v27 .. v27}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->getInvitationType()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    goto/16 :goto_17

    .line 257
    :cond_159
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "g:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v27 .. v27}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->getInviterGaiaId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 258
    .local v29, inviterId:Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Invitation;->getInviterProfileName()Ljava/lang/String;

    move-result-object v30

    .line 259
    .local v30, inviterName:Ljava/lang/String;
    const-string v3, "Got hangoutInviteNotification:\nCommand: %s\nInviterGaiaId: %s\nInviterName: %s\nHangoutId: %s\nHangoutType: %s\nNotificationType: %s"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual/range {v23 .. v23}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->getCommand()Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$Command;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v29, v4, v5

    const/4 v5, 0x2

    aput-object v30, v4, v5

    const/4 v5, 0x3

    invoke-virtual/range {v26 .. v26}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->getHangoutId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    invoke-virtual/range {v26 .. v26}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->getHangoutType()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Type;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-virtual/range {v23 .. v23}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->getNotificationType()Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$NotificationType;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 268
    sget-object v8, Lcom/google/android/apps/plus/service/Hangout$LaunchSource;->Ring:Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

    .line 269
    .local v8, launchSource:Lcom/google/android/apps/plus/service/Hangout$LaunchSource;
    sget-object v3, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;->TRANSFER:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$InvitationType;

    move-object/from16 v0, v28

    if-ne v0, v3, :cond_1a8

    .line 270
    sget-object v8, Lcom/google/android/apps/plus/service/Hangout$LaunchSource;->Transfer:Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

    .line 273
    :cond_1a8
    new-instance v2, Lcom/google/android/apps/plus/service/Hangout$Info;

    sget-object v3, Lcom/google/android/apps/plus/service/Hangout$RoomType;->CONSUMER:Lcom/google/android/apps/plus/service/Hangout$RoomType;

    sget-object v4, Lcom/google/android/apps/plus/service/Hangout;->CONSUMER_HANGOUT_DOMAIN:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v26 .. v26}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->getHangoutId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v26 .. v26}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->getNick()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/google/android/apps/plus/service/Hangout$Info;-><init>(Lcom/google/android/apps/plus/service/Hangout$RoomType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/service/Hangout$LaunchSource;Z)V

    .line 278
    .local v2, hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;
    const-string v3, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    if-eqz v3, :cond_204

    const/16 v18, 0x1

    .line 283
    .local v18, callInProgress:Z
    :goto_1cd
    :try_start_1cd
    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->getCurrentState()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;
    :try_end_1d8
    .catch Ljava/lang/LinkageError; {:try_start_1cd .. :try_end_1d8} :catch_207

    move-result-object v17

    .line 290
    .local v17, appState:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;
    sget-object v3, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;->ENTERING_MEETING:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;

    move-object/from16 v0, v17

    if-eq v0, v3, :cond_1eb

    sget-object v3, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;->IN_MEETING_WITHOUT_MEDIA:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;

    move-object/from16 v0, v17

    if-eq v0, v3, :cond_1eb

    sget-object v3, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;->IN_MEETING_WITH_MEDIA:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;

    move-object/from16 v0, v17

    if-ne v0, v3, :cond_212

    :cond_1eb
    const/16 v21, 0x1

    .line 294
    .local v21, hangoutInProgress:Z
    :goto_1ed
    if-eqz v21, :cond_215

    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->isInHangout(Lcom/google/android/apps/plus/service/Hangout$Info;)Z

    move-result v3

    if-eqz v3, :cond_215

    .line 296
    const-string v3, "Ignoring the ring/ding since user is already in same hangout"

    invoke-static {v3}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    goto/16 :goto_17

    .line 278
    .end local v17           #appState:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;
    .end local v18           #callInProgress:Z
    .end local v21           #hangoutInProgress:Z
    :cond_204
    const/16 v18, 0x0

    goto :goto_1cd

    .line 284
    .restart local v18       #callInProgress:Z
    :catch_207
    move-exception v19

    .line 286
    .local v19, err:Ljava/lang/LinkageError;
    const-string v3, "Hangout native lib is missing or misconfigured"

    invoke-static {v3}, Lcom/google/android/apps/plus/hangout/Log;->error(Ljava/lang/String;)V

    .line 287
    invoke-virtual/range {v19 .. v19}, Ljava/lang/LinkageError;->printStackTrace()V

    goto/16 :goto_17

    .line 290
    .end local v19           #err:Ljava/lang/LinkageError;
    .restart local v17       #appState:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;
    :cond_212
    const/16 v21, 0x0

    goto :goto_1ed

    .line 300
    .restart local v21       #hangoutInProgress:Z
    :cond_215
    invoke-virtual/range {v23 .. v23}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->getNotificationType()Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$NotificationType;

    move-result-object v3

    sget-object v4, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$NotificationType;->NOTIFICATION_DING:Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification$NotificationType;

    if-eq v3, v4, :cond_225

    if-nez v18, :cond_225

    if-nez v21, :cond_225

    sget-boolean v3, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->isCurrentlyRinging:Z

    if-eqz v3, :cond_288

    .line 303
    :cond_225
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating ding notification. AppState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". callInProgress: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". hangoutInProgress: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". isCurrentlyRinging: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->isCurrentlyRinging:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 307
    new-instance v2, Lcom/google/android/apps/plus/service/Hangout$Info;

    .end local v2           #hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;
    sget-object v10, Lcom/google/android/apps/plus/service/Hangout$RoomType;->CONSUMER:Lcom/google/android/apps/plus/service/Hangout$RoomType;

    sget-object v11, Lcom/google/android/apps/plus/service/Hangout;->CONSUMER_HANGOUT_DOMAIN:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-virtual/range {v26 .. v26}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->getHangoutId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {v26 .. v26}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->getNick()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lcom/google/android/apps/plus/service/Hangout$LaunchSource;->Ding:Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

    const/16 v16, 0x0

    move-object v9, v2

    invoke-direct/range {v9 .. v16}, Lcom/google/android/apps/plus/service/Hangout$Info;-><init>(Lcom/google/android/apps/plus/service/Hangout$RoomType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/service/Hangout$LaunchSource;Z)V

    .restart local v2       #hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, v22

    move-object/from16 v12, v29

    move-object/from16 v13, v30

    move-object v14, v2

    .line 311
    invoke-static/range {v9 .. v14}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->doHangoutDing(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/service/Hangout$Info;)V

    goto/16 :goto_17

    .line 315
    :cond_288
    const/4 v3, 0x1

    sput-boolean v3, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->isCurrentlyRinging:Z

    .line 317
    invoke-virtual/range {v26 .. v26}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->getHangoutType()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Type;

    move-result-object v3

    sget-object v4, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Type;->LITE:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext$Type;

    if-ne v3, v4, :cond_2a4

    const/4 v15, 0x1

    :goto_294
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, v22

    move-object/from16 v12, v29

    move-object/from16 v13, v30

    move-object v14, v2

    invoke-static/range {v9 .. v15}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->doHangoutRing(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/service/Hangout$Info;Z)V

    goto/16 :goto_17

    :cond_2a4
    const/4 v15, 0x0

    goto :goto_294
.end method

.method private onReceivedCancelRingNotification(Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;)V
    .registers 5
    .parameter "hangoutInviteNotification"

    .prologue
    .line 689
    iget-boolean v1, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mHasActed:Z

    if-eqz v1, :cond_a

    .line 690
    const-string v1, "Ignoring hangout ring cancellation since user already acted on it"

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 702
    :goto_9
    return-void

    .line 694
    :cond_a
    invoke-virtual {p1}, Lcom/google/apps/gcomm/hangout/proto/HangoutInviteNotification;->getContext()Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;

    move-result-object v0

    .line 695
    .local v0, startContext:Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;
    invoke-virtual {v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->hasHangoutId()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-virtual {v0}, Lcom/google/apps/gcomm/hangout/proto/HangoutStartContext;->getHangoutId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mHangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/service/Hangout$Info;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 697
    const-string v1, "Cancelling hangout ringing."

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 698
    sget-object v1, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;->IGNORED:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->exit(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;)V

    goto :goto_9

    .line 700
    :cond_2f
    const-string v1, "Ignoring hangout ring cancellation since hangout ids don\'t match"

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    goto :goto_9
.end method

.method private playRingTone()V
    .registers 4

    .prologue
    .line 877
    const/4 v0, 0x0

    .line 878
    .local v0, uri:Landroid/net/Uri;
    sget-object v1, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mRingtone:Landroid/media/Ringtone;

    if-nez v1, :cond_f

    .line 879
    invoke-static {p0}, Lcom/google/android/apps/plus/hangout/HangoutNotifications;->getRingtone(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    .line 880
    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mRingtone:Landroid/media/Ringtone;

    .line 883
    :cond_f
    sget-object v1, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mRingtone:Landroid/media/Ringtone;

    if-nez v1, :cond_44

    .line 884
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get a ringtone for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/Log;->error(Ljava/lang/String;)V

    .line 891
    :goto_29
    invoke-static {p0}, Lcom/google/android/apps/plus/hangout/HangoutNotifications;->shouldVibrate(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_43

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mVibratorThread:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$VibratorThread;

    if-nez v1, :cond_43

    .line 893
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mContinueVibrating:Z

    .line 894
    new-instance v1, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$VibratorThread;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$VibratorThread;-><init>(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$1;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mVibratorThread:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$VibratorThread;

    .line 895
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mVibratorThread:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$VibratorThread;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$VibratorThread;->start()V

    .line 897
    :cond_43
    return-void

    .line 885
    :cond_44
    sget-object v1, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_43

    .line 888
    sget-object v1, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mRingtone:Landroid/media/Ringtone;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 889
    sget-object v1, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V

    goto :goto_29
.end method

.method private removeStatusBarNotification()V
    .registers 4

    .prologue
    .line 820
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->buildNotificationTag(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 822
    return-void
.end method

.method private requestOrientation()V
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 528
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    const/4 v4, 0x4

    if-ne v1, v4, :cond_34

    .line 530
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_2c

    move v0, v2

    .line 532
    .local v0, isPortrait:Z
    :goto_1e
    if-eqz v0, :cond_2e

    const v1, -0x41bd70a4

    :goto_23
    iput v1, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mSelfVideoVerticalGravity:F

    .line 533
    if-eqz v0, :cond_32

    move v1, v2

    :goto_28
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->setRequestedOrientation(I)V

    .line 538
    .end local v0           #isPortrait:Z
    :goto_2b
    return-void

    :cond_2c
    move v0, v3

    .line 530
    goto :goto_1e

    .line 532
    .restart local v0       #isPortrait:Z
    :cond_2e
    const v1, -0x42333333

    goto :goto_23

    :cond_32
    move v1, v3

    .line 533
    goto :goto_28

    .line 536
    .end local v0           #isPortrait:Z
    :cond_34
    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->setRequestedOrientation(I)V

    goto :goto_2b
.end method

.method private sendHangoutRingStatus(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;)V
    .registers 6
    .parameter "status"

    .prologue
    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending hangout finish request. Status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 523
    invoke-static {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mInviteId:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mHangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/service/Hangout$Info;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->sendRingStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    return-void
.end method

.method private showStatusBarNotification()V
    .registers 15

    .prologue
    const v4, 0x7f0803b7

    const/4 v13, 0x0

    .line 798
    new-instance v11, Landroid/app/Notification;

    const v0, 0x7f020181

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v11, v0, v1, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 801
    .local v11, notification:Landroid/app/Notification;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    .line 802
    .local v10, context:Landroid/content/Context;
    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 803
    .local v9, contentTitle:Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mInviterName:Ljava/lang/String;

    .line 804
    .local v8, contentText:Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mInviteId:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mInviterId:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mInviterName:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mHangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    iget-boolean v6, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mIsHangoutLite:Z

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/plus/phone/Intents;->getHangoutRingingActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/service/Hangout$Info;Z)Landroid/content/Intent;

    move-result-object v12

    .line 806
    .local v12, notificationIntent:Landroid/content/Intent;
    invoke-static {p0, v13, v12, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 808
    .local v7, contentIntent:Landroid/app/PendingIntent;
    const/16 v0, 0x10

    iput v0, v11, Landroid/app/Notification;->flags:I

    .line 809
    invoke-virtual {v11, v10, v9, v8, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 811
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->buildNotificationTag(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v11}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 814
    return-void
.end method

.method public static stopRingActivity()V
    .registers 2

    .prologue
    .line 325
    sget-object v0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->sRingingActivity:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    .line 326
    .local v0, existingRingActivity:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;
    if-eqz v0, :cond_c

    .line 327
    sget-object v1, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;->IGNORED:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->exit(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;)V

    .line 328
    invoke-direct {v0}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->createMissedHangoutNotification()V

    .line 330
    :cond_c
    return-void
.end method

.method private stopRingTone()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 900
    sget-object v0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_c

    .line 901
    sget-object v0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 902
    sput-object v1, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mRingtone:Landroid/media/Ringtone;

    .line 904
    :cond_c
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mVibratorThread:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$VibratorThread;

    if-eqz v0, :cond_15

    .line 905
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mContinueVibrating:Z

    .line 906
    iput-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mVibratorThread:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$VibratorThread;

    .line 909
    :cond_15
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 910
    return-void
.end method

.method private updateCircleNames()V
    .registers 4

    .prologue
    .line 916
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mPackedCircleIds:Ljava/lang/String;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/CircleNameResolver;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mInviterCircleNamesTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_23

    .line 918
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mInviterCircleNamesTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mPackedCircleIds:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/fragments/CircleNameResolver;->getCircleNamesForPackedIds(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 920
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mInviterCircleNamesTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 922
    :cond_23
    return-void
.end method


# virtual methods
.method protected getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2

    .prologue
    .line 863
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method protected getViewForLogging()Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    .registers 2

    .prologue
    .line 791
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 545
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 546
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->requestOrientation()V

    .line 547
    const v3, 0x7f03004d

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->setContentView(I)V

    .line 550
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, 0x680080

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 555
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 556
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "account"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/content/EsAccount;

    iput-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 557
    const-string v3, "hangout_info"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/Hangout$Info;

    iput-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mHangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;

    .line 558
    const-string v3, "hangout_invite_id"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mInviteId:Ljava/lang/String;

    .line 559
    const-string v3, "hangout_inviter_id"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mInviterId:Ljava/lang/String;

    .line 560
    const-string v3, "hangout_inviter_name"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mInviterName:Ljava/lang/String;

    .line 561
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mInviterName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 562
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080386

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mInviterName:Ljava/lang/String;

    .line 564
    :cond_5d
    const-string v3, "hangout_is_lite"

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mIsHangoutLite:Z

    .line 566
    const v3, 0x7f0900f8

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 567
    .local v2, inviterNameTextView:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mInviterName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 568
    const v3, 0x7f0900f9

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mInviterCircleNamesTextView:Landroid/widget/TextView;

    .line 569
    const v3, 0x7f0900f7

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/views/AvatarView;

    iput-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mInviterAvatar:Lcom/google/android/apps/plus/views/AvatarView;

    .line 570
    iget-boolean v3, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mIsHangoutLite:Z

    if-eqz v3, :cond_196

    .line 571
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mInviterAvatar:Lcom/google/android/apps/plus/views/AvatarView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/google/android/apps/plus/views/AvatarView;->setVisibility(I)V

    .line 576
    :goto_98
    const v3, 0x7f0900f4

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mSelfVideoViewContainer:Landroid/widget/FrameLayout;

    .line 577
    new-instance v3, Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v5

    invoke-direct {v3, p0, v4, v5}, Lcom/google/android/apps/plus/fragments/CircleNameResolver;-><init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/google/android/apps/plus/content/EsAccount;)V

    iput-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    .line 578
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/fragments/CircleNameResolver;->initLoader()V

    .line 579
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mCircleNameResolver:Lcom/google/android/apps/plus/fragments/CircleNameResolver;

    new-instance v4, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$2;

    invoke-direct {v4, p0}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$2;-><init>(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)V

    invoke-virtual {v3, v4}, Lcom/google/android/apps/plus/fragments/CircleNameResolver;->registerObserver(Landroid/database/DataSetObserver;)V

    .line 586
    const v3, 0x7f0900fc

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;

    iput-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mAnswerWidget:Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;

    .line 587
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mAnswerWidget:Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;

    new-instance v4, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$3;

    invoke-direct {v4, p0}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$3;-><init>(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)V

    invoke-virtual {v3, v4}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->setOnTriggerListener(Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView$OnTriggerListener;)V

    .line 620
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mAnswerWidget:Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->clearAnimation()V

    .line 621
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mAnswerWidget:Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;

    const v4, 0x7f07000c

    invoke-virtual {v3, v4}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->setTargetResources(I)V

    .line 622
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mAnswerWidget:Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;

    const v4, 0x7f07000d

    invoke-virtual {v3, v4}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->setTargetDescriptionsResourceId(I)V

    .line 624
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mAnswerWidget:Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;

    const v4, 0x7f07000e

    invoke-virtual {v3, v4}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->setDirectionDescriptionsResourceId(I)V

    .line 626
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mAnswerWidget:Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;

    invoke-virtual {v3, v7}, Lcom/google/android/apps/plus/hangout/multiwaveview/MultiWaveView;->reset(Z)V

    .line 628
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mAnswerWidgetPingRunnable:Ljava/lang/Runnable;

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 630
    iget-boolean v3, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mIsHangoutLite:Z

    if-nez v3, :cond_10e

    .line 631
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mPersonLoaderCallbacks:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$PersonLoaderCallbacks;

    invoke-virtual {v3, v7, v8, v4}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 634
    :cond_10e
    const-string v3, "vibrator"

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    iput-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mVibrator:Landroid/os/Vibrator;

    .line 635
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iput-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mNotificationManager:Landroid/app/NotificationManager;

    .line 637
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mCallTimeoutRunnable:Ljava/lang/Runnable;

    if-nez v3, :cond_16b

    .line 638
    new-instance v3, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$4;

    invoke-direct {v3, p0}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$4;-><init>(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)V

    iput-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mCallTimeoutRunnable:Ljava/lang/Runnable;

    .line 645
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mCallTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v5, 0x7530

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 646
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->playRingTone()V

    .line 648
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "com.google.android.c2dm.intent.RECEIVE"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 649
    .local v1, invitationFilter:Landroid/content/IntentFilter;
    const-string v3, "com.google.android.apps.hangout.NOTIFICATION"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 651
    invoke-static {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mHangoutRingingEventHandler:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$HangoutRingingActivityEventHandler;

    invoke-virtual {v3, p0, v4, v7}, Lcom/google/android/apps/plus/hangout/GCommApp;->registerForEvents(Landroid/content/Context;Lcom/google/android/apps/plus/hangout/GCommEventHandler;Z)V

    .line 654
    sput-object p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->sRingingActivity:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    .line 656
    new-instance v3, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$PhoneStateChangeListener;

    invoke-direct {v3, p0, v8}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$PhoneStateChangeListener;-><init>(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$1;)V

    iput-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mPhoneStateChangeListener:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$PhoneStateChangeListener;

    .line 657
    invoke-static {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/plus/hangout/GCommApp;->getApp()Lcom/google/android/apps/plus/phone/EsApplication;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mPhoneStateChangeListener:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$PhoneStateChangeListener;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.PHONE_STATE"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Lcom/google/android/apps/plus/phone/EsApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 662
    .end local v1           #invitationFilter:Landroid/content/IntentFilter;
    :cond_16b
    const v3, 0x7f0900fa

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->toggleAudioMuteMenuButton:Landroid/widget/ImageButton;

    .line 664
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->toggleAudioMuteMenuButton:Landroid/widget/ImageButton;

    new-instance v4, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$5;

    invoke-direct {v4, p0}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$5;-><init>(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 676
    const v3, 0x7f0900fb

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->toggleVideoMuteMenuButton:Landroid/widget/ImageButton;

    .line 678
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->toggleVideoMuteMenuButton:Landroid/widget/ImageButton;

    new-instance v4, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$6;

    invoke-direct {v4, p0}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$6;-><init>(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 685
    return-void

    .line 573
    :cond_196
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mInviterAvatar:Lcom/google/android/apps/plus/views/AvatarView;

    invoke-virtual {v3, v7}, Lcom/google/android/apps/plus/views/AvatarView;->setVisibility(I)V

    .line 574
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mInviterAvatar:Lcom/google/android/apps/plus/views/AvatarView;

    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mInviterId:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/apps/plus/content/EsPeopleData;->extractGaiaId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/apps/plus/views/AvatarView;->setGaiaId(Ljava/lang/String;)V

    goto/16 :goto_98
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 778
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onPause()V

    .line 780
    sget-object v0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->sRingingActivity:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    if-eqz v0, :cond_a

    .line 781
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->showStatusBarNotification()V

    .line 783
    :cond_a
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mSelfVideoView:Lcom/google/android/apps/plus/hangout/SelfVideoView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->onPause()V

    .line 784
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 768
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onResume()V

    .line 769
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->removeStatusBarNotification()V

    .line 770
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mSelfVideoView:Lcom/google/android/apps/plus/hangout/SelfVideoView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->onResume()V

    .line 771
    return-void
.end method

.method protected onStart()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 751
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onStart()V

    .line 752
    new-instance v1, Lcom/google/android/apps/plus/hangout/SelfVideoView;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/apps/plus/hangout/SelfVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mSelfVideoView:Lcom/google/android/apps/plus/hangout/SelfVideoView;

    .line 753
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 755
    .local v0, layoutParams:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mSelfVideoView:Lcom/google/android/apps/plus/hangout/SelfVideoView;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 756
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mSelfVideoView:Lcom/google/android/apps/plus/hangout/SelfVideoView;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->turnOffFlashLightSupport()V

    .line 757
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mSelfVideoView:Lcom/google/android/apps/plus/hangout/SelfVideoView;

    sget-object v2, Lcom/google/android/apps/plus/hangout/SelfVideoView$LayoutMode;->FIT:Lcom/google/android/apps/plus/hangout/SelfVideoView$LayoutMode;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->setLayoutMode(Lcom/google/android/apps/plus/hangout/SelfVideoView$LayoutMode;)V

    .line 759
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mSelfVideoView:Lcom/google/android/apps/plus/hangout/SelfVideoView;

    iget v2, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mSelfVideoVerticalGravity:F

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/hangout/SelfVideoView;->setVerticalGravity(F)V

    .line 760
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mSelfVideoViewContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->mSelfVideoView:Lcom/google/android/apps/plus/hangout/SelfVideoView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 761
    return-void
.end method

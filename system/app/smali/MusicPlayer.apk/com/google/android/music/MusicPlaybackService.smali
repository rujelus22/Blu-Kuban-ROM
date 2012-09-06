.class public Lcom/google/android/music/MusicPlaybackService;
.super Landroid/app/Service;
.source "MusicPlaybackService.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/MusicPlaybackService$14;,
        Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;
    }
.end annotation


# static fields
.field private static final LOGV:Z


# instance fields
.field private mAtHomePlayback:Lcom/google/android/music/athome/AtHomeDevicePlayback;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioManagerCompat:Lcom/google/android/music/AudioManagerCompat;

.field private mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/google/android/music/DevicePlayback;",
            ">;"
        }
    .end annotation
.end field

.field private mDelayedStopHandler:Landroid/os/Handler;

.field private mDeviceSwitchHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsLandscape:Z

.field mIsNotificationShowing:Z

.field private mLocalPlayback:Lcom/google/android/music/LocalDevicePlayback;

.field private mMediaButtonReceiver:Landroid/content/ComponentName;

.field private mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

.field private mMusicStub:Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;

.field mNotification:Landroid/app/Notification;

.field private mNotificationCanceller:Landroid/os/Handler;

.field mNotificationHasButtons:Z

.field private mOrientationMonitor:Landroid/content/BroadcastReceiver;

.field private mRemoteControlClient:Lcom/google/android/music/RemoteControlClientCompat;

.field private mRetrievedNotificationHasButtons:Z

.field private mScreenReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenReceiverRegistered:Z

.field private mServiceInUse:Z

.field private mServiceStartId:I

.field mUIVisible:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 67
    const-string v0, "MediaPlaybackService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/MusicPlaybackService;->LOGV:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 214
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 71
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/music/MusicPlaybackService;->mServiceStartId:I

    .line 81
    iput-boolean v1, p0, Lcom/google/android/music/MusicPlaybackService;->mServiceInUse:Z

    .line 84
    iput-boolean v1, p0, Lcom/google/android/music/MusicPlaybackService;->mRetrievedNotificationHasButtons:Z

    .line 85
    iput-boolean v1, p0, Lcom/google/android/music/MusicPlaybackService;->mNotificationHasButtons:Z

    .line 86
    iput-boolean v1, p0, Lcom/google/android/music/MusicPlaybackService;->mIsNotificationShowing:Z

    .line 87
    iput-boolean v1, p0, Lcom/google/android/music/MusicPlaybackService;->mUIVisible:Z

    .line 96
    new-instance v0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;

    invoke-direct {v0, p0}, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;-><init>(Lcom/google/android/music/MusicPlaybackService;)V

    iput-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mMusicStub:Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;

    .line 100
    new-instance v0, Lcom/google/android/music/MusicPlaybackService$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/MusicPlaybackService$1;-><init>(Lcom/google/android/music/MusicPlaybackService;)V

    iput-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 145
    iput-boolean v1, p0, Lcom/google/android/music/MusicPlaybackService;->mScreenReceiverRegistered:Z

    .line 146
    new-instance v0, Lcom/google/android/music/MusicPlaybackService$2;

    invoke-direct {v0, p0}, Lcom/google/android/music/MusicPlaybackService$2;-><init>(Lcom/google/android/music/MusicPlaybackService;)V

    iput-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    .line 167
    new-instance v0, Lcom/google/android/music/MusicPlaybackService$3;

    invoke-direct {v0, p0}, Lcom/google/android/music/MusicPlaybackService$3;-><init>(Lcom/google/android/music/MusicPlaybackService;)V

    iput-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mOrientationMonitor:Landroid/content/BroadcastReceiver;

    .line 190
    new-instance v0, Lcom/google/android/music/MusicPlaybackService$4;

    invoke-direct {v0, p0}, Lcom/google/android/music/MusicPlaybackService$4;-><init>(Lcom/google/android/music/MusicPlaybackService;)V

    iput-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mNotificationCanceller:Landroid/os/Handler;

    .line 212
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mDeviceSwitchHandler:Landroid/os/Handler;

    .line 473
    new-instance v0, Lcom/google/android/music/MusicPlaybackService$6;

    invoke-direct {v0, p0}, Lcom/google/android/music/MusicPlaybackService$6;-><init>(Lcom/google/android/music/MusicPlaybackService;)V

    iput-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    .line 215
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/MusicPlaybackService;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/music/MusicPlaybackService;->shouldIgnoreCommand(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Z
    .registers 1

    .prologue
    .line 63
    sget-boolean v0, Lcom/google/android/music/MusicPlaybackService;->LOGV:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/google/android/music/MusicPlaybackService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService;->hasRemote()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/LocalDevicePlayback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mLocalPlayback:Lcom/google/android/music/LocalDevicePlayback;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/athome/AtHomeDevicePlayback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mAtHomePlayback:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/google/android/music/MusicPlaybackService;Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/AtHomeDevicePlayback;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/android/music/MusicPlaybackService;->mAtHomePlayback:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/android/music/MusicPlaybackService;)Ljava/util/concurrent/atomic/AtomicReference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/jumper/MusicPreferences;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/music/MusicPlaybackService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/google/android/music/MusicPlaybackService;->mIsLandscape:Z

    return v0
.end method

.method static synthetic access$402(Lcom/google/android/music/MusicPlaybackService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/google/android/music/MusicPlaybackService;->mIsLandscape:Z

    return p1
.end method

.method static synthetic access$500(Lcom/google/android/music/MusicPlaybackService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService;->updateNotification()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/music/MusicPlaybackService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/google/android/music/MusicPlaybackService;->mServiceInUse:Z

    return v0
.end method

.method static synthetic access$700(Lcom/google/android/music/MusicPlaybackService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/google/android/music/MusicPlaybackService;->mServiceStartId:I

    return v0
.end method

.method static synthetic access$800(Lcom/google/android/music/MusicPlaybackService;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/google/android/music/MusicPlaybackService;->updateRemoteControlMetadata(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/music/MusicPlaybackService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService;->hasLocal()Z

    move-result v0

    return v0
.end method

.method private addToRecentAsync(Lcom/google/android/music/medialist/SongList;)V
    .registers 5
    .parameter "songList"

    .prologue
    .line 1319
    move-object v0, p0

    .line 1320
    .local v0, context:Landroid/content/Context;
    sget-object v1, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v2, Lcom/google/android/music/MusicPlaybackService$11;

    invoke-direct {v2, p0, v0, p1}, Lcom/google/android/music/MusicPlaybackService$11;-><init>(Lcom/google/android/music/MusicPlaybackService;Landroid/content/Context;Lcom/google/android/music/medialist/SongList;)V

    invoke-static {v1, v2}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    .line 1325
    return-void
.end method

.method private alertFailureIfNecessary(I)V
    .registers 5
    .parameter

    .prologue
    .line 695
    invoke-static {p1}, Lcom/google/android/music/ErrorInfo;->createErrorInfo(I)Lcom/google/android/music/ErrorInfo;

    move-result-object v0

    .line 696
    invoke-virtual {v0}, Lcom/google/android/music/ErrorInfo;->canShowNotification()Z

    move-result v1

    if-nez v1, :cond_27

    .line 698
    sget-boolean v0, Lcom/google/android/music/MusicPlaybackService;->LOGV:Z

    if-eqz v0, :cond_26

    const-string v0, "MediaPlaybackService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not showing notification for error type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    :cond_26
    :goto_26
    return-void

    .line 701
    :cond_27
    iget-boolean v1, p0, Lcom/google/android/music/MusicPlaybackService;->mUIVisible:Z

    if-eqz v1, :cond_31

    invoke-virtual {v0}, Lcom/google/android/music/ErrorInfo;->canShowAlert()Z

    move-result v1

    if-nez v1, :cond_26

    .line 706
    :cond_31
    invoke-virtual {v0, p0}, Lcom/google/android/music/ErrorInfo;->createNotification(Landroid/content/ContextWrapper;)Landroid/app/Notification;

    move-result-object v1

    .line 708
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/google/android/music/MusicPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 710
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_26
.end method

.method private static doesIntentRequireSongInfo(Ljava/lang/String;)Z
    .registers 3
    .parameter "what"

    .prologue
    const/4 v0, 0x0

    .line 586
    const-string v1, "com.android.music.queuechanged"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 595
    :cond_9
    :goto_9
    return v0

    .line 588
    :cond_a
    const-string v1, "com.android.music.playbackfailed"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 590
    const-string v1, "com.google.android.music.repeatmodechanged"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 592
    const-string v1, "com.google.android.music.shufflemodechanged"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 595
    const/4 v0, 0x1

    goto :goto_9
.end method

.method private gotoIdleState()V
    .registers 8

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1038
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1039
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1040
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1770

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1041
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mNotificationCanceller:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1042
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService;->mNotificationCanceller:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1043
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1044
    const-string v4, "cancel_notification"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1045
    invoke-virtual {v0, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1046
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService;->mNotificationCanceller:Landroid/os/Handler;

    const-wide/32 v4, 0x112a880

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1048
    iget-boolean v0, p0, Lcom/google/android/music/MusicPlaybackService;->mUIVisible:Z

    if-nez v0, :cond_53

    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isHoneycombOrGreater()Z

    move-result v0

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/DevicePlayback;

    invoke-virtual {v0}, Lcom/google/android/music/DevicePlayback;->getState()Lcom/google/android/music/DevicePlayback$State;

    move-result-object v0

    sget-object v3, Lcom/google/android/music/DevicePlayback$State;->NO_PLAYLIST:Lcom/google/android/music/DevicePlayback$State;

    if-ne v0, v3, :cond_5c

    :cond_53
    move v0, v2

    .line 1050
    :goto_54
    invoke-virtual {p0, v0}, Lcom/google/android/music/MusicPlaybackService;->stopForeground(Z)V

    .line 1051
    if-eqz v0, :cond_5b

    .line 1052
    iput-boolean v1, p0, Lcom/google/android/music/MusicPlaybackService;->mIsNotificationShowing:Z

    .line 1054
    :cond_5b
    return-void

    :cond_5c
    move v0, v1

    .line 1048
    goto :goto_54
.end method

.method private hasLocal()Z
    .registers 2

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/DevicePlayback;

    invoke-virtual {v0}, Lcom/google/android/music/DevicePlayback;->hasLocal()Z

    move-result v0

    return v0
.end method

.method private hasRemote()Z
    .registers 2

    .prologue
    .line 1160
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/DevicePlayback;

    invoke-virtual {v0}, Lcom/google/android/music/DevicePlayback;->hasRemote()Z

    move-result v0

    return v0
.end method

.method public static populateExtras(Landroid/content/Intent;Lcom/google/android/music/IMusicPlaybackService;)Landroid/content/Intent;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 601
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 602
    const-string v0, "com.android.music.queuechanged"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 603
    const-string v0, "queueLoading"

    invoke-interface {p1}, Lcom/google/android/music/IMusicPlaybackService;->isPlaylistLoading()Z

    move-result v2

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 604
    const-string v0, "hasValidPlaylist"

    invoke-interface {p1}, Lcom/google/android/music/IMusicPlaybackService;->hasValidPlaylist()Z

    move-result v2

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 605
    const-string v0, "ListSize"

    invoke-interface {p1}, Lcom/google/android/music/IMusicPlaybackService;->getQueueSize()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 606
    invoke-interface {p1}, Lcom/google/android/music/IMusicPlaybackService;->getMediaList()Lcom/google/android/music/medialist/SongList;

    move-result-object v0

    .line 607
    if-eqz v0, :cond_36

    .line 608
    const-string v2, "queueStoreUrl"

    invoke-virtual {v0}, Lcom/google/android/music/medialist/MediaList;->getStoreUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 646
    :cond_36
    :goto_36
    const-string v0, "com.android.music.playstatechanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_171

    .line 647
    invoke-interface {p1}, Lcom/google/android/music/IMusicPlaybackService;->isPlaying()Z

    move-result v0

    .line 648
    const-string v1, "playstate"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 652
    :cond_47
    :goto_47
    return-object p0

    .line 610
    :cond_48
    const-string v0, "com.google.android.music.repeatmodechanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 611
    const-string v0, "repeat"

    invoke-interface {p1}, Lcom/google/android/music/IMusicPlaybackService;->getRepeatMode()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_59} :catch_5a

    goto :goto_36

    .line 653
    :catch_5a
    move-exception v0

    .line 654
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error trying to get variables from the MusicPlaybackService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 612
    :cond_78
    :try_start_78
    const-string v0, "com.google.android.music.shufflemodechanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 613
    const-string v0, "shuffle"

    invoke-interface {p1}, Lcom/google/android/music/IMusicPlaybackService;->getShuffleMode()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_36

    .line 615
    :cond_8a
    invoke-interface {p1}, Lcom/google/android/music/IMusicPlaybackService;->getAudioId()Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v0

    .line 616
    if-eqz v0, :cond_36

    .line 617
    const-string v2, "id"

    invoke-virtual {v0}, Lcom/google/android/music/dl/ContentIdentifier;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 618
    const-string v2, "domain"

    invoke-virtual {v0}, Lcom/google/android/music/dl/ContentIdentifier;->getDomain()Lcom/google/android/music/dl/ContentIdentifier$Domain;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/dl/ContentIdentifier$Domain;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 619
    const-string v0, "artist"

    invoke-interface {p1}, Lcom/google/android/music/IMusicPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 620
    const-string v0, "album"

    invoke-interface {p1}, Lcom/google/android/music/IMusicPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 621
    const-string v0, "albumId"

    invoke-interface {p1}, Lcom/google/android/music/IMusicPlaybackService;->getAlbumId()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 622
    const-string v0, "track"

    invoke-interface {p1}, Lcom/google/android/music/IMusicPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 623
    const-string v0, "rating"

    invoke-interface {p1}, Lcom/google/android/music/IMusicPlaybackService;->getRating()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 624
    const-string v0, "playing"

    invoke-interface {p1}, Lcom/google/android/music/IMusicPlaybackService;->isPlaying()Z

    move-result v2

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 625
    const-string v0, "streaming"

    invoke-interface {p1}, Lcom/google/android/music/IMusicPlaybackService;->isStreaming()Z

    move-result v2

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 626
    const-string v0, "preparing"

    invoke-interface {p1}, Lcom/google/android/music/IMusicPlaybackService;->isPreparing()Z

    move-result v2

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 627
    const-string v0, "duration"

    invoke-interface {p1}, Lcom/google/android/music/IMusicPlaybackService;->duration()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 628
    const-string v0, "position"

    invoke-interface {p1}, Lcom/google/android/music/IMusicPlaybackService;->position()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 629
    const-string v0, "ListPosition"

    invoke-interface {p1}, Lcom/google/android/music/IMusicPlaybackService;->getQueuePosition()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 630
    const-string v0, "ListSize"

    invoke-interface {p1}, Lcom/google/android/music/IMusicPlaybackService;->getQueueSize()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 631
    const-string v0, "currentSongLoaded"

    invoke-interface {p1}, Lcom/google/android/music/IMusicPlaybackService;->isCurrentSongLoaded()Z

    move-result v2

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 632
    const-string v0, "previewPlayType"

    invoke-interface {p1}, Lcom/google/android/music/IMusicPlaybackService;->getPreviewPlayType()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 633
    const-string v0, "albumArtFromService"

    invoke-interface {p1}, Lcom/google/android/music/IMusicPlaybackService;->isAlbumArtInService()Z

    move-result v2

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 634
    invoke-interface {p1}, Lcom/google/android/music/IMusicPlaybackService;->getMediaList()Lcom/google/android/music/medialist/SongList;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/music/medialist/ExternalDomainSongList;

    if-eqz v0, :cond_167

    .line 635
    const-string v2, "externalAlbumArtUrl"

    invoke-interface {p1}, Lcom/google/android/music/IMusicPlaybackService;->getMediaList()Lcom/google/android/music/medialist/SongList;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/medialist/ExternalDomainSongList;

    invoke-virtual {v0}, Lcom/google/android/music/medialist/ExternalDomainSongList;->getAlbumArtUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 638
    const-string v0, "supportsRating"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 642
    :goto_15c
    const-string v0, "local"

    invoke-interface {p1}, Lcom/google/android/music/IMusicPlaybackService;->isLocalDevicePlayback()Z

    move-result v2

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_36

    .line 640
    :cond_167
    const-string v0, "supportsRating"

    invoke-interface {p1}, Lcom/google/android/music/IMusicPlaybackService;->supportsRating()Z

    move-result v2

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_15c

    .line 649
    :cond_171
    const-string v0, "com.android.music.playbackfailed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 650
    const-string v0, "errorType"

    invoke-interface {p1}, Lcom/google/android/music/IMusicPlaybackService;->getErrorType()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_182
    .catch Landroid/os/RemoteException; {:try_start_78 .. :try_end_182} :catch_5a

    goto/16 :goto_47
.end method

.method public static populateExtrasFromSharedPreferences(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 666
    const-string v0, "Music"

    invoke-virtual {p0, v0, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 668
    const-string v1, "curalbumid"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 669
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_2e

    .line 670
    const-string v0, "albumArtResourceId"

    const v1, 0x7f02000f

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 671
    const-string v0, "error"

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0088

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 686
    :goto_2d
    return-object p1

    .line 674
    :cond_2e
    const-string v3, "supportsRating"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 675
    const-string v3, "artist"

    const-string v4, "curartist"

    const v5, 0x7f0d0074

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 678
    const-string v3, "albumId"

    invoke-virtual {p1, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 679
    const-string v1, "album"

    const-string v2, "curalbum"

    const v3, 0x7f0d0075

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 682
    const-string v1, "track"

    const-string v2, "curtitle"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 684
    const-string v0, "albumArtFromService"

    invoke-virtual {p1, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_2d
.end method

.method private removeFailureIfNecessary()V
    .registers 3

    .prologue
    .line 714
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/google/android/music/MusicPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 716
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 717
    return-void
.end method

.method private setNotificationBigContentView(Landroid/app/Notification;Landroid/widget/RemoteViews;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 906
    :try_start_0
    const-class v0, Landroid/app/Notification;

    const-string v1, "bigContentView"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_7
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_7} :catch_e

    move-result-object v0

    .line 909
    :try_start_8
    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_b} :catch_c
    .catch Ljava/lang/NoSuchFieldException; {:try_start_8 .. :try_end_b} :catch_e

    .line 916
    :goto_b
    return-void

    .line 910
    :catch_c
    move-exception v0

    goto :goto_b

    .line 913
    :catch_e
    move-exception v0

    goto :goto_b
.end method

.method private setUpNotificationLocked(Landroid/widget/RemoteViews;Z)V
    .registers 16
    .parameter
    .parameter

    .prologue
    const v8, 0x7f100065

    const v7, 0x7f10003f

    const/4 v11, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 802
    const v0, 0x7f1000e9

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.music.PLAYBACK_VIEWER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x800

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-static {p0, v6, v1, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 809
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand.previous"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v6, v0, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1, v8, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 813
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand.togglepause"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v6, v0, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1, v7, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 817
    const v0, 0x7f100066

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.music.musicservicecommand.next"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {p0, v6, v1, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 821
    const v0, 0x7f1000e8

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.music.musicservicecommand.veto"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {p0, v6, v1, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 826
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v0

    .line 827
    const v1, 0x7f100027

    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 828
    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9d

    .line 829
    const v0, 0x7f0d0074

    invoke-virtual {p0, v0}, Lcom/google/android/music/MusicPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 831
    :cond_9d
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v1

    .line 832
    invoke-static {v1}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ae

    .line 833
    const v1, 0x7f0d0075

    invoke-virtual {p0, v1}, Lcom/google/android/music/MusicPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 836
    :cond_ae
    if-eqz p2, :cond_14a

    .line 838
    const v2, 0x7f10004d

    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 839
    const v0, 0x7f10002d

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 847
    :goto_bc
    iget-boolean v0, p0, Lcom/google/android/music/MusicPlaybackService;->mRetrievedNotificationHasButtons:Z

    if-nez v0, :cond_d8

    .line 848
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 849
    const v1, 0x7f040057

    invoke-virtual {v0, v1, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 850
    const v1, 0x7f100066

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_d6

    .line 851
    iput-boolean v4, p0, Lcom/google/android/music/MusicPlaybackService;->mNotificationHasButtons:Z

    .line 853
    :cond_d6
    iput-boolean v4, p0, Lcom/google/android/music/MusicPlaybackService;->mRetrievedNotificationHasButtons:Z

    .line 855
    :cond_d8
    iget-boolean v0, p0, Lcom/google/android/music/MusicPlaybackService;->mNotificationHasButtons:Z

    if-eqz v0, :cond_f9

    .line 856
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_160

    .line 857
    const v0, 0x7f02006e

    invoke-virtual {p1, v7, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 864
    :goto_e8
    if-nez p2, :cond_f6

    iget-boolean v0, p0, Lcom/google/android/music/MusicPlaybackService;->mIsLandscape:Z

    if-nez v0, :cond_f6

    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusicExperience()Z

    move-result v0

    if-eqz v0, :cond_167

    .line 865
    :cond_f6
    invoke-virtual {p1, v8, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 870
    :cond_f9
    :goto_f9
    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isHoneycombOrGreater()Z

    move-result v0

    if-eqz v0, :cond_149

    .line 872
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz p2, :cond_16d

    const v0, 0x7f09007b

    :goto_108
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 875
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/DevicePlayback;

    invoke-virtual {v0}, Lcom/google/android/music/DevicePlayback;->getMediaList()Lcom/google/android/music/medialist/SongList;

    move-result-object v0

    .line 877
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mMusicStub:Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;

    invoke-virtual {v1}, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->isAlbumArtInService()Z

    move-result v1

    if-nez v1, :cond_124

    instance-of v1, v0, Lcom/google/android/music/medialist/ExternalDomainSongList;

    if-eqz v1, :cond_178

    .line 879
    :cond_124
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mMusicStub:Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;

    invoke-virtual {v1}, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->isAlbumArtInService()Z

    move-result v1

    if-eqz v1, :cond_171

    .line 880
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mMusicStub:Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;

    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mMusicStub:Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;

    invoke-virtual {v1}, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->getAlbumId()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->getAlbumArtUrl(J)Ljava/lang/String;

    move-result-object v1

    .line 885
    :goto_138
    if-eqz v1, :cond_141

    move-object v0, p0

    move v3, v2

    move v5, v4

    .line 886
    invoke-static/range {v0 .. v5}, Lcom/google/android/music/utils/AlbumArtUtils;->getExternalAlbumArtBitmap(Landroid/content/Context;Ljava/lang/String;IIZZ)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 893
    :cond_141
    :goto_141
    if-eqz v11, :cond_186

    .line 894
    const v0, 0x7f1000e6

    invoke-virtual {p1, v0, v11}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 899
    :cond_149
    :goto_149
    return-void

    .line 842
    :cond_14a
    const v2, 0x7f1000e7

    const v3, 0x7f0d019e

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    aput-object v1, v5, v4

    invoke-virtual {p0, v3, v5}, Lcom/google/android/music/MusicPlaybackService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_bc

    .line 860
    :cond_160
    const v0, 0x7f02006f

    invoke-virtual {p1, v7, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_e8

    .line 867
    :cond_167
    const/16 v0, 0x8

    invoke-virtual {p1, v8, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_f9

    .line 872
    :cond_16d
    const v0, 0x7f09007a

    goto :goto_108

    .line 882
    :cond_171
    check-cast v0, Lcom/google/android/music/medialist/ExternalDomainSongList;

    .line 883
    invoke-virtual {v0}, Lcom/google/android/music/medialist/ExternalDomainSongList;->getAlbumArtUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_138

    .line 890
    :cond_178
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->getAlbumId()J

    move-result-wide v6

    move-object v5, p0

    move v8, v2

    move v9, v2

    move v10, v4

    move-object v12, v11

    .line 891
    invoke-static/range {v5 .. v12}, Lcom/google/android/music/utils/AlbumArtUtils;->getArtwork(Landroid/content/Context;JIIZLjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    goto :goto_141

    .line 896
    :cond_186
    const-string v0, "MediaPlaybackService"

    const-string v1, "Failed to set album art for the notification"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_149
.end method

.method private shouldIgnoreCommand(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .parameter "intent"
    .parameter "action"
    .parameter "cmd"

    .prologue
    .line 423
    const/4 v1, 0x0

    .line 424
    .local v1, localOnly:Z
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->isLocalDevicePlayback()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 426
    const-string v2, "device"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 427
    .local v0, deviceExtra:Ljava/lang/String;
    const-string v2, "any"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 428
    const-string v2, "local"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 429
    const/4 v1, 0x1

    .line 436
    .end local v0           #deviceExtra:Ljava/lang/String;
    :cond_1e
    :goto_1e
    if-eqz v1, :cond_48

    .line 437
    const-string v2, "MediaPlaybackService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring command "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for non-local playback"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :cond_48
    return v1

    .line 432
    .restart local v0       #deviceExtra:Ljava/lang/String;
    :cond_49
    const-string v2, "pause"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_59

    const-string v2, "com.android.music.musicservicecommand.pause"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    :cond_59
    const/4 v1, 0x1

    :goto_5a
    goto :goto_1e

    :cond_5b
    const/4 v1, 0x0

    goto :goto_5a
.end method

.method private updateBroadcastReceiversForLockScreenActivity()V
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 309
    iget-object v5, p0, Lcom/google/android/music/MusicPlaybackService;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v5}, Lcom/google/android/music/jumper/MusicPreferences;->isLockScreenActivityEnabled()Z

    move-result v0

    .line 311
    .local v0, allowLockScreen:Z
    if-eqz v0, :cond_2e

    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->isPlaying()Z

    move-result v5

    if-eqz v5, :cond_2e

    move v2, v3

    .line 312
    .local v2, shouldShowLockScreen:Z
    :goto_11
    if-eqz v2, :cond_30

    iget-boolean v5, p0, Lcom/google/android/music/MusicPlaybackService;->mScreenReceiverRegistered:Z

    if-nez v5, :cond_30

    .line 313
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 314
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 315
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 316
    iget-object v4, p0, Lcom/google/android/music/MusicPlaybackService;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v1}, Lcom/google/android/music/MusicPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 317
    iput-boolean v3, p0, Lcom/google/android/music/MusicPlaybackService;->mScreenReceiverRegistered:Z

    .line 323
    .end local v1           #filter:Landroid/content/IntentFilter;
    :cond_2d
    :goto_2d
    return-void

    .end local v2           #shouldShowLockScreen:Z
    :cond_2e
    move v2, v4

    .line 311
    goto :goto_11

    .line 319
    .restart local v2       #shouldShowLockScreen:Z
    :cond_30
    if-nez v2, :cond_2d

    iget-boolean v3, p0, Lcom/google/android/music/MusicPlaybackService;->mScreenReceiverRegistered:Z

    if-eqz v3, :cond_2d

    .line 320
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3}, Lcom/google/android/music/MusicPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 321
    iput-boolean v4, p0, Lcom/google/android/music/MusicPlaybackService;->mScreenReceiverRegistered:Z

    goto :goto_2d
.end method

.method private declared-synchronized updateNotification()V
    .registers 6

    .prologue
    .line 919
    monitor-enter p0

    :try_start_1
    const-string v0, "updateNotification called on UI thread"

    invoke-static {p0, v0}, Lcom/google/android/music/MusicUtils;->checkMainThread(Landroid/content/Context;Ljava/lang/String;)V

    .line 921
    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isHoneycombOrGreater()Z

    move-result v0

    if-eqz v0, :cond_91

    .line 923
    iget-boolean v0, p0, Lcom/google/android/music/MusicPlaybackService;->mUIVisible:Z

    if-nez v0, :cond_19

    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 924
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/MusicPlaybackService;->mIsNotificationShowing:Z

    .line 935
    :cond_19
    :goto_19
    iget-boolean v0, p0, Lcom/google/android/music/MusicPlaybackService;->mIsNotificationShowing:Z

    if-eqz v0, :cond_8f

    .line 936
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040057

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 937
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/MusicPlaybackService;->setUpNotificationLocked(Landroid/widget/RemoteViews;Z)V

    .line 939
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mNotification:Landroid/app/Notification;

    if-nez v1, :cond_6a

    .line 940
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    iput-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mNotification:Landroid/app/Notification;

    .line 941
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mNotification:Landroid/app/Notification;

    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 942
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mNotification:Landroid/app/Notification;

    const v2, 0x7f0201b5

    iput v2, v1, Landroid/app/Notification;->icon:I

    .line 943
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mNotification:Landroid/app/Notification;

    const/4 v2, 0x0

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.google.android.music.PLAYBACK_VIEWER"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x1000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x800

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x400

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p0, v2, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 950
    :cond_6a
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mNotification:Landroid/app/Notification;

    iput-object v0, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 952
    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isJellyBeanOrGreater()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 953
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040058

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 954
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/MusicPlaybackService;->setUpNotificationLocked(Landroid/widget/RemoteViews;Z)V

    .line 955
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mNotification:Landroid/app/Notification;

    invoke-direct {p0, v1, v0}, Lcom/google/android/music/MusicPlaybackService;->setNotificationBigContentView(Landroid/app/Notification;Landroid/widget/RemoteViews;)V

    .line 958
    :cond_89
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mNotification:Landroid/app/Notification;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/music/MusicPlaybackService;->startForeground(ILandroid/app/Notification;)V
    :try_end_8f
    .catchall {:try_start_1 .. :try_end_8f} :catchall_9c

    .line 960
    :cond_8f
    monitor-exit p0

    return-void

    .line 928
    :cond_91
    :try_start_91
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 929
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/MusicPlaybackService;->mIsNotificationShowing:Z
    :try_end_9a
    .catchall {:try_start_91 .. :try_end_9a} :catchall_9c

    goto/16 :goto_19

    .line 919
    :catchall_9c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 931
    :cond_9f
    :try_start_9f
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService;->gotoIdleState()V
    :try_end_a2
    .catchall {:try_start_9f .. :try_end_a2} :catchall_9c

    goto/16 :goto_19
.end method

.method private updateRemoteControlMetadata(Landroid/content/Intent;)V
    .registers 14
    .parameter

    .prologue
    .line 1211
    const-string v0, "updateRemoteControlMetadata on main thread"

    invoke-static {p0, v0}, Lcom/google/android/music/MusicUtils;->checkMainThread(Landroid/content/Context;Ljava/lang/String;)V

    .line 1214
    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isICSOrGreater()Z

    move-result v0

    if-eqz v0, :cond_be

    .line 1215
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mRemoteControlClient:Lcom/google/android/music/RemoteControlClientCompat;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/music/RemoteControlClientCompat;->editMetadata(Z)Lcom/google/android/music/RemoteControlClientCompat$MetadataEditorCompat;

    move-result-object v11

    .line 1217
    const-string v0, "album"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1218
    const-string v0, "artist"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1219
    const-string v0, "albumId"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 1220
    const/4 v0, 0x1

    invoke-virtual {v11, v0, v9}, Lcom/google/android/music/RemoteControlClientCompat$MetadataEditorCompat;->putString(ILjava/lang/String;)Lcom/google/android/music/RemoteControlClientCompat$MetadataEditorCompat;

    .line 1221
    const/16 v0, 0xd

    invoke-virtual {v11, v0, v10}, Lcom/google/android/music/RemoteControlClientCompat$MetadataEditorCompat;->putString(ILjava/lang/String;)Lcom/google/android/music/RemoteControlClientCompat$MetadataEditorCompat;

    .line 1222
    const/4 v0, 0x2

    invoke-virtual {v11, v0, v10}, Lcom/google/android/music/RemoteControlClientCompat$MetadataEditorCompat;->putString(ILjava/lang/String;)Lcom/google/android/music/RemoteControlClientCompat$MetadataEditorCompat;

    .line 1223
    const/4 v0, 0x7

    const-string v1, "track"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lcom/google/android/music/RemoteControlClientCompat$MetadataEditorCompat;->putString(ILjava/lang/String;)Lcom/google/android/music/RemoteControlClientCompat$MetadataEditorCompat;

    .line 1225
    const/16 v0, 0x9

    const-string v1, "duration"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {v11, v0, v1, v2}, Lcom/google/android/music/RemoteControlClientCompat$MetadataEditorCompat;->putLong(IJ)Lcom/google/android/music/RemoteControlClientCompat$MetadataEditorCompat;

    .line 1234
    const/4 v3, 0x0

    .line 1235
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/google/android/music/MusicPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1236
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1237
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 1238
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 1243
    const/16 v2, 0x100

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1246
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/DevicePlayback;

    invoke-virtual {v0}, Lcom/google/android/music/DevicePlayback;->getMediaList()Lcom/google/android/music/medialist/SongList;

    move-result-object v0

    .line 1247
    const-string v1, "albumArtFromService"

    const/4 v6, 0x0

    invoke-virtual {p1, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1249
    if-nez v1, :cond_82

    instance-of v6, v0, Lcom/google/android/music/medialist/ExternalDomainSongList;

    if-eqz v6, :cond_c6

    .line 1251
    :cond_82
    if-eqz v1, :cond_bf

    .line 1252
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mMusicStub:Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;

    invoke-virtual {v0, v4, v5}, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->getAlbumArtUrl(J)Ljava/lang/String;

    move-result-object v1

    .line 1257
    :goto_8a
    if-eqz v1, :cond_d9

    .line 1258
    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move v3, v2

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/utils/AlbumArtUtils;->getExternalAlbumArtBitmap(Landroid/content/Context;Ljava/lang/String;IIZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_94
    move-object v1, v0

    .line 1266
    :goto_95
    if-eqz v1, :cond_cf

    .line 1275
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-nez v0, :cond_d7

    .line 1276
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1278
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1279
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1283
    :goto_b6
    const/16 v1, 0x64

    invoke-virtual {v11, v1, v0}, Lcom/google/android/music/RemoteControlClientCompat$MetadataEditorCompat;->putBitmap(ILandroid/graphics/Bitmap;)Lcom/google/android/music/RemoteControlClientCompat$MetadataEditorCompat;

    .line 1288
    :goto_bb
    invoke-virtual {v11}, Lcom/google/android/music/RemoteControlClientCompat$MetadataEditorCompat;->apply()V

    .line 1290
    :cond_be
    return-void

    .line 1254
    :cond_bf
    check-cast v0, Lcom/google/android/music/medialist/ExternalDomainSongList;

    .line 1255
    invoke-virtual {v0}, Lcom/google/android/music/medialist/ExternalDomainSongList;->getAlbumArtUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_8a

    .line 1262
    :cond_c6
    const/4 v8, 0x1

    move-object v3, p0

    move v6, v2

    move v7, v2

    invoke-static/range {v3 .. v10}, Lcom/google/android/music/utils/AlbumArtUtils;->getLockScreenArtwork(Landroid/content/Context;JIIZLjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_95

    .line 1285
    :cond_cf
    const-string v0, "MediaPlaybackService"

    const-string v1, "Failed to set album art for the lock screen"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bb

    :cond_d7
    move-object v0, v1

    goto :goto_b6

    :cond_d9
    move-object v0, v3

    goto :goto_94
.end method

.method private updateRemoteControlPlaystate(Z)V
    .registers 4
    .parameter "inError"

    .prologue
    .line 1294
    if-eqz p1, :cond_a

    .line 1295
    sget v0, Lcom/google/android/music/RemoteControlClientCompat;->PLAYSTATE_ERROR:I

    .line 1303
    .local v0, playstate:I
    :goto_4
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mRemoteControlClient:Lcom/google/android/music/RemoteControlClientCompat;

    invoke-virtual {v1, v0}, Lcom/google/android/music/RemoteControlClientCompat;->setPlaybackState(I)V

    .line 1304
    return-void

    .line 1296
    .end local v0           #playstate:I
    :cond_a
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/DevicePlayback;

    invoke-virtual {v1}, Lcom/google/android/music/DevicePlayback;->isPreparing()Z

    move-result v1

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/DevicePlayback;

    invoke-virtual {v1}, Lcom/google/android/music/DevicePlayback;->isStreaming()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 1297
    sget v0, Lcom/google/android/music/RemoteControlClientCompat;->PLAYSTATE_BUFFERING:I

    .restart local v0       #playstate:I
    goto :goto_4

    .line 1298
    .end local v0           #playstate:I
    :cond_29
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 1299
    sget v0, Lcom/google/android/music/RemoteControlClientCompat;->PLAYSTATE_PLAYING:I

    .restart local v0       #playstate:I
    goto :goto_4

    .line 1301
    .end local v0           #playstate:I
    :cond_32
    sget v0, Lcom/google/android/music/RemoteControlClientCompat;->PLAYSTATE_PAUSED:I

    .restart local v0       #playstate:I
    goto :goto_4
.end method

.method private updateRemoteControlTransportControlFlags()V
    .registers 4

    .prologue
    .line 1308
    sget v1, Lcom/google/android/music/RemoteControlClientCompat;->FLAG_KEY_MEDIA_PREVIOUS:I

    sget v2, Lcom/google/android/music/RemoteControlClientCompat;->FLAG_KEY_MEDIA_NEXT:I

    or-int/2addr v1, v2

    sget v2, Lcom/google/android/music/RemoteControlClientCompat;->FLAG_KEY_MEDIA_PLAY:I

    or-int/2addr v1, v2

    sget v2, Lcom/google/android/music/RemoteControlClientCompat;->FLAG_KEY_MEDIA_PAUSE:I

    or-int/2addr v1, v2

    sget v2, Lcom/google/android/music/RemoteControlClientCompat;->FLAG_KEY_MEDIA_STOP:I

    or-int v0, v1, v2

    .line 1314
    .local v0, flags:I
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mRemoteControlClient:Lcom/google/android/music/RemoteControlClientCompat;

    invoke-virtual {v1, v0}, Lcom/google/android/music/RemoteControlClientCompat;->setTransportControlFlags(I)V

    .line 1315
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "currentPlayback:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "localPlayback:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mLocalPlayback:Lcom/google/android/music/LocalDevicePlayback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1545
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mAtHomePlayback:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    if-eqz v0, :cond_50

    .line 1546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "atHomePlayback:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mAtHomePlayback:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1549
    :cond_50
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/DevicePlayback;

    .line 1550
    if-eqz v0, :cond_17d

    .line 1551
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Has playlist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/music/DevicePlayback;->hasValidPlaylist()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1552
    invoke-virtual {v0}, Lcom/google/android/music/DevicePlayback;->getMediaList()Lcom/google/android/music/medialist/SongList;

    move-result-object v1

    .line 1553
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/music/DevicePlayback;->getQueueSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " items in queue, currently at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->getQueuePosition()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1555
    if-nez v1, :cond_17e

    .line 1556
    const-string v1, "MediaList: null"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1562
    :goto_a7
    const-string v1, "Currently loaded:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1563
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1564
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1565
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1566
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Playback State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/music/DevicePlayback;->getState()Lcom/google/android/music/DevicePlayback$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1567
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shuffle mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->getShuffleMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1568
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/music/DevicePlayback;->isInErrorState()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1569
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/music/DevicePlayback;->getErrorType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1570
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Preparing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/music/DevicePlayback;->isPreparing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1571
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Streaming: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/music/DevicePlayback;->isStreaming()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1572
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/music/DevicePlayback;->playlistLoading()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1573
    invoke-virtual {v0, p2}, Lcom/google/android/music/DevicePlayback;->dump(Ljava/io/PrintWriter;)V

    .line 1574
    invoke-static {p2}, Lcom/google/android/music/MusicUtils;->debugDump(Ljava/io/PrintWriter;)V

    .line 1576
    :cond_17d
    return-void

    .line 1558
    :cond_17e
    const-string v2, "MediaList:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1559
    invoke-virtual {v1, p2}, Lcom/google/android/music/medialist/MediaList;->dump(Ljava/io/PrintWriter;)V

    goto/16 :goto_a7
.end method

.method public duration()J
    .registers 3

    .prologue
    .line 1176
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/DevicePlayback;

    invoke-virtual {v0}, Lcom/google/android/music/DevicePlayback;->duration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAlbumId()J
    .registers 3

    .prologue
    .line 1136
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/DevicePlayback;

    invoke-virtual {v0}, Lcom/google/android/music/DevicePlayback;->getAlbumId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAlbumName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1132
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/DevicePlayback;

    invoke-virtual {v0}, Lcom/google/android/music/DevicePlayback;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArtistId()J
    .registers 3

    .prologue
    .line 1120
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/DevicePlayback;

    invoke-virtual {v0}, Lcom/google/android/music/DevicePlayback;->getArtistId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getArtistName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1116
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/DevicePlayback;

    invoke-virtual {v0}, Lcom/google/android/music/DevicePlayback;->getArtistName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAtHomeGroupId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1651
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    .line 1652
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->isAtHomeDevicePlayback()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mAtHomePlayback:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    invoke-virtual {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->getGroupId()Ljava/lang/String;

    move-result-object v0

    :goto_f
    monitor-exit v1

    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_f

    .line 1653
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public getAudioId()Lcom/google/android/music/dl/ContentIdentifier;
    .registers 2

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/DevicePlayback;

    invoke-virtual {v0}, Lcom/google/android/music/DevicePlayback;->getAudioId()Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getAudioSessionId()I
    .registers 2

    .prologue
    .line 1203
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/DevicePlayback;

    invoke-virtual {v0}, Lcom/google/android/music/DevicePlayback;->getAudioSessionId()I

    move-result v0

    return v0
.end method

.method public getDebugInfo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1207
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/DevicePlayback;

    invoke-virtual {v0}, Lcom/google/android/music/DevicePlayback;->getDebugInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getErrorType()I
    .registers 2

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/DevicePlayback;

    invoke-virtual {v0}, Lcom/google/android/music/DevicePlayback;->getErrorType()I

    move-result v0

    return v0
.end method

.method public getPreviewPlayType()I
    .registers 2

    .prologue
    .line 1190
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/DevicePlayback;

    invoke-virtual {v0}, Lcom/google/android/music/DevicePlayback;->getPreviewPlayType()I

    move-result v0

    return v0
.end method

.method public getQueuePosition()I
    .registers 2

    .prologue
    .line 1091
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/DevicePlayback;

    invoke-virtual {v0}, Lcom/google/android/music/DevicePlayback;->getQueuePosition()I

    move-result v0

    return v0
.end method

.method public getQueueSize()I
    .registers 2

    .prologue
    .line 1108
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/DevicePlayback;

    invoke-virtual {v0}, Lcom/google/android/music/DevicePlayback;->getQueueSize()I

    move-result v0

    return v0
.end method

.method public getRating()I
    .registers 2

    .prologue
    .line 1148
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/DevicePlayback;

    invoke-virtual {v0}, Lcom/google/android/music/DevicePlayback;->getRating()I

    move-result v0

    return v0
.end method

.method public getRepeatMode()I
    .registers 2

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/DevicePlayback;

    invoke-virtual {v0}, Lcom/google/android/music/DevicePlayback;->getRepeatMode()I

    move-result v0

    return v0
.end method

.method public getShuffleMode()I
    .registers 2

    .prologue
    .line 1061
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/DevicePlayback;

    invoke-virtual {v0}, Lcom/google/android/music/DevicePlayback;->getShuffleMode()I

    move-result v0

    return v0
.end method

.method public getSongStoreId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1128
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/DevicePlayback;

    invoke-virtual {v0}, Lcom/google/android/music/DevicePlayback;->getSongStoreId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSortableAlbumArtistName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1124
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/DevicePlayback;

    invoke-virtual {v0}, Lcom/google/android/music/DevicePlayback;->getSortableAlbumArtistName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrackName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1140
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/DevicePlayback;

    invoke-virtual {v0}, Lcom/google/android/music/DevicePlayback;->getTrackName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAtHomeDevicePlayback()Z
    .registers 3

    .prologue
    .line 1647
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mAtHomePlayback:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isCurrentSongLoaded()Z
    .registers 2

    .prologue
    .line 1112
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/DevicePlayback;

    invoke-virtual {v0}, Lcom/google/android/music/DevicePlayback;->isCurrentSongLoaded()Z

    move-result v0

    return v0
.end method

.method public isLocalDevicePlayback()Z
    .registers 3

    .prologue
    .line 1643
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mLocalPlayback:Lcom/google/android/music/LocalDevicePlayback;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isPlaying()Z
    .registers 2

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/DevicePlayback;

    invoke-virtual {v0}, Lcom/google/android/music/DevicePlayback;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public isPlaylistLoading()Z
    .registers 2

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/DevicePlayback;

    invoke-virtual {v0}, Lcom/google/android/music/DevicePlayback;->playlistLoading()Z

    move-result v0

    return v0
.end method

.method public next()V
    .registers 2

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/DevicePlayback;

    invoke-virtual {v0}, Lcom/google/android/music/DevicePlayback;->next()V

    .line 1035
    return-void
.end method

.method notifyChange(Ljava/lang/String;Lcom/google/android/music/DevicePlayback;)V
    .registers 11
    .parameter "what"
    .parameter "playback"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 521
    sget-boolean v5, Lcom/google/android/music/MusicPlaybackService;->LOGV:Z

    if-eqz v5, :cond_1e

    .line 522
    const-string v5, "MediaPlaybackService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notifyChange: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_1e
    iget-object v5, p0, Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eq p2, v5, :cond_32

    .line 526
    sget-boolean v3, Lcom/google/android/music/MusicPlaybackService;->LOGV:Z

    if-eqz v3, :cond_31

    .line 527
    const-string v3, "MediaPlaybackService"

    const-string v4, "Received update from non-current device. Ignoring."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    :cond_31
    :goto_31
    return-void

    .line 533
    :cond_32
    iget-object v5, p0, Lcom/google/android/music/MusicPlaybackService;->mMusicStub:Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;

    invoke-virtual {v5}, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->getAudioId()Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v5

    if-eqz v5, :cond_4f

    move v0, v3

    .line 534
    .local v0, hasSong:Z
    :goto_3b
    if-nez v0, :cond_51

    invoke-static {p1}, Lcom/google/android/music/MusicPlaybackService;->doesIntentRequireSongInfo(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 535
    sget-boolean v3, Lcom/google/android/music/MusicPlaybackService;->LOGV:Z

    if-eqz v3, :cond_31

    .line 536
    const-string v3, "MediaPlaybackService"

    const-string v4, "Song is not loaded. Ignoring."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    .end local v0           #hasSong:Z
    :cond_4f
    move v0, v4

    .line 533
    goto :goto_3b

    .line 541
    .restart local v0       #hasSong:Z
    :cond_51
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 542
    .local v1, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/google/android/music/MusicPlaybackService;->mMusicStub:Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;

    invoke-static {v1, v5}, Lcom/google/android/music/MusicPlaybackService;->populateExtras(Landroid/content/Intent;Lcom/google/android/music/IMusicPlaybackService;)Landroid/content/Intent;

    .line 544
    const-string v5, "com.android.music.asyncopenstart"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a2

    .line 545
    invoke-direct {p0, v4}, Lcom/google/android/music/MusicPlaybackService;->updateRemoteControlPlaystate(Z)V

    .line 570
    :cond_66
    :goto_66
    sget-boolean v3, Lcom/google/android/music/MusicPlaybackService;->LOGV:Z

    if-eqz v3, :cond_94

    .line 571
    const-string v3, "MediaPlaybackService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sending out broadcast: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Extras: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :cond_94
    invoke-virtual {p0, v1}, Lcom/google/android/music/MusicPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 576
    sget-object v3, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v4, Lcom/google/android/music/MusicPlaybackService$8;

    invoke-direct {v4, p0, v1, p1}, Lcom/google/android/music/MusicPlaybackService$8;-><init>(Lcom/google/android/music/MusicPlaybackService;Landroid/content/Intent;Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    goto :goto_31

    .line 546
    :cond_a2
    const-string v5, "com.android.music.asyncopencomplete"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b1

    .line 547
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService;->gotoIdleState()V

    .line 548
    invoke-direct {p0, v4}, Lcom/google/android/music/MusicPlaybackService;->updateRemoteControlPlaystate(Z)V

    goto :goto_66

    .line 549
    :cond_b1
    const-string v5, "com.android.music.playstatechanged"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_da

    .line 550
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->isPlaying()Z

    move-result v2

    .line 551
    .local v2, isPlaying:Z
    if-nez v2, :cond_c2

    .line 552
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService;->gotoIdleState()V

    .line 554
    :cond_c2
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService;->updateBroadcastReceiversForLockScreenActivity()V

    .line 555
    invoke-direct {p0, v4}, Lcom/google/android/music/MusicPlaybackService;->updateRemoteControlPlaystate(Z)V

    .line 556
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/music/DevicePlayback;

    invoke-virtual {v3}, Lcom/google/android/music/DevicePlayback;->isInErrorState()Z

    move-result v3

    if-nez v3, :cond_66

    .line 557
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService;->removeFailureIfNecessary()V

    goto :goto_66

    .line 559
    .end local v2           #isPlaying:Z
    :cond_da
    const-string v4, "com.android.music.playbackfailed"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ee

    .line 560
    invoke-direct {p0, v3}, Lcom/google/android/music/MusicPlaybackService;->updateRemoteControlPlaystate(Z)V

    .line 561
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->getErrorType()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/google/android/music/MusicPlaybackService;->alertFailureIfNecessary(I)V

    goto/16 :goto_66

    .line 562
    :cond_ee
    const-string v3, "com.android.music.metachanged"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_66

    .line 563
    sget-object v3, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v4, Lcom/google/android/music/MusicPlaybackService$7;

    invoke-direct {v4, p0, v1}, Lcom/google/android/music/MusicPlaybackService$7;-><init>(Lcom/google/android/music/MusicPlaybackService;Landroid/content/Intent;)V

    invoke-static {v3, v4}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    goto/16 :goto_66
.end method

.method notifyFailure(Lcom/google/android/music/DevicePlayback;)V
    .registers 3
    .parameter "device"

    .prologue
    .line 690
    const-string v0, "com.android.music.playbackfailed"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/music/MusicPlaybackService;->notifyChange(Ljava/lang/String;Lcom/google/android/music/DevicePlayback;)V

    .line 691
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .parameter "intent"

    .prologue
    .line 328
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 329
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/MusicPlaybackService;->mServiceInUse:Z

    .line 330
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mMusicStub:Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;

    return-object v0
.end method

.method public onCreate()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 219
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 221
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/google/android/music/MediaButtonIntentReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mMediaButtonReceiver:Landroid/content/ComponentName;

    .line 224
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/google/android/music/MusicPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    .line 225
    invoke-static {p0}, Lcom/google/android/music/AudioManagerCompat;->getAudioManagerCompat(Landroid/content/Context;)Lcom/google/android/music/AudioManagerCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mAudioManagerCompat:Lcom/google/android/music/AudioManagerCompat;

    .line 226
    invoke-static {p0, p0}, Lcom/google/android/music/jumper/MusicPreferences;->getMusicPreferences(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 227
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_c3

    const/4 v0, 0x1

    :goto_39
    iput-boolean v0, p0, Lcom/google/android/music/MusicPlaybackService;->mIsLandscape:Z

    .line 230
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 231
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService;->mMediaButtonReceiver:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 232
    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 234
    new-instance v1, Lcom/google/android/music/RemoteControlClientCompat;

    sget-object v2, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    invoke-virtual {v2}, Lcom/google/android/music/Worker;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/android/music/RemoteControlClientCompat;-><init>(Landroid/app/PendingIntent;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mRemoteControlClient:Lcom/google/android/music/RemoteControlClientCompat;

    .line 236
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService;->updateRemoteControlTransportControlFlags()V

    .line 238
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 239
    const-string v1, "com.android.music.musicservicecommand"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 240
    const-string v1, "com.android.music.musicservicecommand.togglepause"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 241
    const-string v1, "com.android.music.musicservicecommand.pause"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 242
    const-string v1, "com.android.music.musicservicecommand.next"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 243
    const-string v1, "com.android.music.musicservicecommand.previous"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 244
    const-string v1, "com.android.music.playstatusrequest"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 245
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/music/MusicPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 247
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 248
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 249
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 250
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mOrientationMonitor:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/music/MusicPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 254
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 255
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1770

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 257
    new-instance v0, Lcom/google/android/music/LocalDevicePlayback;

    invoke-direct {v0, p0}, Lcom/google/android/music/LocalDevicePlayback;-><init>(Lcom/google/android/music/MusicPlaybackService;)V

    iput-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mLocalPlayback:Lcom/google/android/music/LocalDevicePlayback;

    .line 258
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mLocalPlayback:Lcom/google/android/music/LocalDevicePlayback;

    invoke-virtual {v0}, Lcom/google/android/music/LocalDevicePlayback;->onCreate()V

    .line 260
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mLocalPlayback:Lcom/google/android/music/LocalDevicePlayback;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 261
    sget-boolean v0, Lcom/google/android/music/MusicPlaybackService;->LOGV:Z

    if-eqz v0, :cond_c2

    .line 262
    const-string v0, "MediaPlaybackService"

    const-string v1, "Playback service created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_c2
    return-void

    :cond_c3
    move v0, v1

    .line 227
    goto/16 :goto_39
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 269
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 270
    const-string v0, "MediaPlaybackService"

    const-string v1, "Service being destroyed while still playing."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_e
    sget-boolean v0, Lcom/google/android/music/MusicPlaybackService;->LOGV:Z

    if-eqz v0, :cond_19

    .line 273
    const-string v0, "MediaPlaybackService"

    const-string v1, "Playback service destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_19
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mAudioManagerCompat:Lcom/google/android/music/AudioManagerCompat;

    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mRemoteControlClient:Lcom/google/android/music/RemoteControlClientCompat;

    invoke-virtual {v0, v1}, Lcom/google/android/music/AudioManagerCompat;->unregisterRemoteControlClient(Lcom/google/android/music/RemoteControlClientCompat;)V

    .line 279
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 280
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mDeviceSwitchHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 282
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/music/MusicPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 283
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mOrientationMonitor:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/music/MusicPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 284
    iget-boolean v0, p0, Lcom/google/android/music/MusicPlaybackService;->mScreenReceiverRegistered:Z

    if-eqz v0, :cond_40

    .line 285
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/music/MusicPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 286
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/MusicPlaybackService;->mScreenReceiverRegistered:Z

    .line 289
    :cond_40
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    .line 290
    :try_start_43
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mLocalPlayback:Lcom/google/android/music/LocalDevicePlayback;

    invoke-virtual {v0}, Lcom/google/android/music/LocalDevicePlayback;->onDestroy()V

    .line 291
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mLocalPlayback:Lcom/google/android/music/LocalDevicePlayback;

    .line 292
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mAtHomePlayback:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    if-eqz v0, :cond_57

    .line 293
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mAtHomePlayback:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    invoke-virtual {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->onDestroy()V

    .line 294
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mAtHomePlayback:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    .line 296
    :cond_57
    monitor-exit v1
    :try_end_58
    .catchall {:try_start_43 .. :try_end_58} :catchall_5f

    .line 299
    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    .line 300
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 301
    return-void

    .line 296
    :catchall_5f
    move-exception v0

    :try_start_60
    monitor-exit v1
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    throw v0
.end method

.method public onRebind(Landroid/content/Intent;)V
    .registers 4
    .parameter "intent"

    .prologue
    .line 335
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 336
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/MusicPlaybackService;->mServiceInUse:Z

    .line 337
    return-void
.end method

.method public declared-synchronized onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 4
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 305
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService;->updateBroadcastReceiversForLockScreenActivity()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 306
    monitor-exit p0

    return-void

    .line 305
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 15
    .parameter "startIntent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v10, 0x0

    const/4 v7, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 341
    iput p3, p0, Lcom/google/android/music/MusicPlaybackService;->mServiceStartId:I

    .line 342
    iget-object v5, p0, Lcom/google/android/music/MusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v5, v10}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 344
    move-object v2, p1

    .line 345
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_51

    .line 346
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 347
    .local v0, action:Ljava/lang/String;
    const-string v5, "command"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 348
    .local v1, cmd:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onStartCommand "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/music/MusicUtils;->debugLog(Ljava/lang/Object;)V

    .line 350
    invoke-direct {p0, v2, v0, v1}, Lcom/google/android/music/MusicPlaybackService;->shouldIgnoreCommand(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_51

    .line 351
    const-string v5, "next"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4e

    const-string v5, "com.android.music.musicservicecommand.next"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_77

    .line 352
    :cond_4e
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->next()V

    .line 408
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #cmd:Ljava/lang/String;
    :cond_51
    :goto_51
    iget-object v5, p0, Lcom/google/android/music/MusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v5, v10}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 409
    iget-object v5, p0, Lcom/google/android/music/MusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 410
    .local v3, msg:Landroid/os/Message;
    iget-object v5, p0, Lcom/google/android/music/MusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x1770

    invoke-virtual {v5, v3, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 413
    if-eqz p1, :cond_76

    sget-object v5, Lcom/google/android/music/MediaButtonIntentReceiver;->RELEASE_RECEIVER_LOCK:Ljava/lang/String;

    invoke-virtual {p1, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_76

    sget-object v5, Lcom/google/android/music/MediaButtonIntentReceiver;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v5, :cond_76

    .line 417
    sget-object v5, Lcom/google/android/music/MediaButtonIntentReceiver;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 419
    :cond_76
    return v9

    .line 353
    .end local v3           #msg:Landroid/os/Message;
    .restart local v0       #action:Ljava/lang/String;
    .restart local v1       #cmd:Ljava/lang/String;
    :cond_77
    const-string v5, "previous"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_87

    const-string v5, "com.android.music.musicservicecommand.previous"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8b

    .line 354
    :cond_87
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->prev()V

    goto :goto_51

    .line 355
    :cond_8b
    const-string v5, "togglepause"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9b

    const-string v5, "com.android.music.musicservicecommand.togglepause"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d7

    .line 356
    :cond_9b
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->isPlaying()Z

    move-result v5

    if-eqz v5, :cond_b2

    .line 357
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->pause()V

    .line 358
    const-string v5, "removeNotification"

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 359
    invoke-virtual {p0, v9}, Lcom/google/android/music/MusicPlaybackService;->stopForeground(Z)V

    .line 360
    iput-boolean v8, p0, Lcom/google/android/music/MusicPlaybackService;->mIsNotificationShowing:Z

    goto :goto_51

    .line 368
    :cond_b2
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->isPlaylistLoading()Z

    move-result v5

    if-nez v5, :cond_c6

    iget-object v5, p0, Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/music/DevicePlayback;

    invoke-virtual {v5}, Lcom/google/android/music/DevicePlayback;->getQueueSize()I

    move-result v5

    if-lez v5, :cond_ca

    .line 369
    :cond_c6
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->play()V

    goto :goto_51

    .line 372
    :cond_ca
    invoke-virtual {p0, v9}, Lcom/google/android/music/MusicPlaybackService;->setShuffleMode(I)V

    .line 373
    new-instance v5, Lcom/google/android/music/medialist/AllSongsList;

    invoke-direct {v5, v8}, Lcom/google/android/music/medialist/AllSongsList;-><init>(I)V

    invoke-virtual {p0, v5, v7, v9}, Lcom/google/android/music/MusicPlaybackService;->open(Lcom/google/android/music/medialist/SongList;IZ)V

    goto/16 :goto_51

    .line 377
    :cond_d7
    const-string v5, "pause"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e7

    const-string v5, "com.android.music.musicservicecommand.pause"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f1

    .line 378
    :cond_e7
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->pause()V

    .line 379
    invoke-virtual {p0, v9}, Lcom/google/android/music/MusicPlaybackService;->stopForeground(Z)V

    .line 380
    iput-boolean v8, p0, Lcom/google/android/music/MusicPlaybackService;->mIsNotificationShowing:Z

    goto/16 :goto_51

    .line 381
    :cond_f1
    const-string v5, "play"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_fe

    .line 382
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->play()V

    goto/16 :goto_51

    .line 383
    :cond_fe
    const-string v5, "stop"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_110

    .line 384
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->stop()V

    .line 385
    invoke-virtual {p0, v9}, Lcom/google/android/music/MusicPlaybackService;->stopForeground(Z)V

    .line 386
    iput-boolean v8, p0, Lcom/google/android/music/MusicPlaybackService;->mIsNotificationShowing:Z

    goto/16 :goto_51

    .line 387
    :cond_110
    const-string v5, "com.android.music.musicservicecommand.veto"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_122

    .line 389
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->pause()V

    .line 390
    invoke-virtual {p0, v9}, Lcom/google/android/music/MusicPlaybackService;->stopForeground(Z)V

    .line 391
    iput-boolean v8, p0, Lcom/google/android/music/MusicPlaybackService;->mIsNotificationShowing:Z

    goto/16 :goto_51

    .line 392
    :cond_122
    const-string v5, "com.android.music.musicservicecommand.rating"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 393
    const-string v5, "rating"

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 394
    .local v4, rating:I
    if-ltz v4, :cond_51

    .line 395
    sget-object v5, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v6, Lcom/google/android/music/MusicPlaybackService$5;

    invoke-direct {v6, p0, v4}, Lcom/google/android/music/MusicPlaybackService$5;-><init>(Lcom/google/android/music/MusicPlaybackService;I)V

    invoke-static {v5, v6}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    goto/16 :goto_51
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 8
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    .line 445
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/music/MusicPlaybackService;->mServiceInUse:Z

    .line 448
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/DevicePlayback;

    invoke-virtual {v2}, Lcom/google/android/music/DevicePlayback;->saveState()V

    .line 450
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/DevicePlayback;

    invoke-virtual {v2}, Lcom/google/android/music/DevicePlayback;->getState()Lcom/google/android/music/DevicePlayback$State;

    move-result-object v0

    .line 451
    .local v0, deviceState:Lcom/google/android/music/DevicePlayback$State;
    sget-object v2, Lcom/google/android/music/MusicPlaybackService$14;->$SwitchMap$com$google$android$music$DevicePlayback$State:[I

    invoke-virtual {v0}, Lcom/google/android/music/DevicePlayback$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_3c

    .line 470
    :goto_26
    :pswitch_26
    return v5

    .line 462
    :pswitch_27
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 463
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x1770

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_26

    .line 467
    .end local v1           #msg:Landroid/os/Message;
    :pswitch_35
    iget v2, p0, Lcom/google/android/music/MusicPlaybackService;->mServiceStartId:I

    invoke-virtual {p0, v2}, Lcom/google/android/music/MusicPlaybackService;->stopSelf(I)V

    goto :goto_26

    .line 451
    nop

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_26
        :pswitch_26
        :pswitch_27
        :pswitch_27
        :pswitch_35
    .end packed-switch
.end method

.method public open(Lcom/google/android/music/medialist/SongList;IZ)V
    .registers 6
    .parameter "medialist"
    .parameter "position"
    .parameter "play"

    .prologue
    .line 728
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mMediaButtonReceiver:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 729
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mAudioManagerCompat:Lcom/google/android/music/AudioManagerCompat;

    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mRemoteControlClient:Lcom/google/android/music/RemoteControlClientCompat;

    invoke-virtual {v0, v1}, Lcom/google/android/music/AudioManagerCompat;->registerRemoteControlClient(Lcom/google/android/music/RemoteControlClientCompat;)V

    .line 730
    invoke-direct {p0, p1}, Lcom/google/android/music/MusicPlaybackService;->addToRecentAsync(Lcom/google/android/music/medialist/SongList;)V

    .line 731
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/DevicePlayback;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/music/DevicePlayback;->open(Lcom/google/android/music/medialist/SongList;IZ)V

    .line 732
    return-void
.end method

.method public openAndQueue(Lcom/google/android/music/medialist/SongList;I)V
    .registers 5
    .parameter "medialist"
    .parameter "position"

    .prologue
    .line 740
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mMediaButtonReceiver:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 741
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mAudioManagerCompat:Lcom/google/android/music/AudioManagerCompat;

    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mRemoteControlClient:Lcom/google/android/music/RemoteControlClientCompat;

    invoke-virtual {v0, v1}, Lcom/google/android/music/AudioManagerCompat;->registerRemoteControlClient(Lcom/google/android/music/RemoteControlClientCompat;)V

    .line 744
    invoke-direct {p0, p1}, Lcom/google/android/music/MusicPlaybackService;->addToRecentAsync(Lcom/google/android/music/medialist/SongList;)V

    .line 745
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/DevicePlayback;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/music/DevicePlayback;->openAndQueue(Lcom/google/android/music/medialist/SongList;I)V

    .line 746
    return-void
.end method

.method public pause()V
    .registers 2

    .prologue
    .line 994
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/DevicePlayback;

    invoke-virtual {v0}, Lcom/google/android/music/DevicePlayback;->pause()V

    .line 995
    return-void
.end method

.method public play()V
    .registers 3

    .prologue
    .line 752
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mMediaButtonReceiver:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 753
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mAudioManagerCompat:Lcom/google/android/music/AudioManagerCompat;

    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mRemoteControlClient:Lcom/google/android/music/RemoteControlClientCompat;

    invoke-virtual {v0, v1}, Lcom/google/android/music/AudioManagerCompat;->registerRemoteControlClient(Lcom/google/android/music/RemoteControlClientCompat;)V

    .line 754
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/DevicePlayback;

    invoke-virtual {v0}, Lcom/google/android/music/DevicePlayback;->play()V

    .line 755
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mNotificationCanceller:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 756
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v1, Lcom/google/android/music/MusicPlaybackService$9;

    invoke-direct {v1, p0}, Lcom/google/android/music/MusicPlaybackService$9;-><init>(Lcom/google/android/music/MusicPlaybackService;)V

    invoke-static {v0, v1}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    .line 761
    return-void
.end method

.method public position()J
    .registers 3

    .prologue
    .line 1183
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/DevicePlayback;

    invoke-virtual {v0}, Lcom/google/android/music/DevicePlayback;->position()J

    move-result-wide v0

    return-wide v0
.end method

.method public prev()V
    .registers 2

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/DevicePlayback;

    invoke-virtual {v0}, Lcom/google/android/music/DevicePlayback;->prev()V

    .line 1031
    return-void
.end method

.method public seek(J)J
    .registers 5
    .parameter "pos"

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/DevicePlayback;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/music/DevicePlayback;->seek(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public setQueuePosition(I)V
    .registers 3
    .parameter "pos"

    .prologue
    .line 1100
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/DevicePlayback;

    invoke-virtual {v0, p1}, Lcom/google/android/music/DevicePlayback;->setQueuePosition(I)V

    .line 1101
    return-void
.end method

.method public setRating(I)V
    .registers 3
    .parameter "rating"

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/DevicePlayback;

    invoke-virtual {v0, p1}, Lcom/google/android/music/DevicePlayback;->setRating(I)V

    .line 1153
    return-void
.end method

.method public setRepeatMode(I)V
    .registers 3
    .parameter "repeatmode"

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/DevicePlayback;

    invoke-virtual {v0, p1}, Lcom/google/android/music/DevicePlayback;->setRepeatMode(I)V

    .line 1066
    return-void
.end method

.method public setShuffleMode(I)V
    .registers 3
    .parameter "shufflemode"

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/DevicePlayback;

    invoke-virtual {v0, p1}, Lcom/google/android/music/DevicePlayback;->setShuffleMode(I)V

    .line 1058
    return-void
.end method

.method setUIVisible(Z)V
    .registers 4
    .parameter "visible"

    .prologue
    .line 764
    iput-boolean p1, p0, Lcom/google/android/music/MusicPlaybackService;->mUIVisible:Z

    .line 765
    if-eqz p1, :cond_12

    .line 766
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mMediaButtonReceiver:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 767
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mAudioManagerCompat:Lcom/google/android/music/AudioManagerCompat;

    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mRemoteControlClient:Lcom/google/android/music/RemoteControlClientCompat;

    invoke-virtual {v0, v1}, Lcom/google/android/music/AudioManagerCompat;->registerRemoteControlClient(Lcom/google/android/music/RemoteControlClientCompat;)V

    .line 769
    :cond_12
    if-eqz p1, :cond_22

    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isHoneycombOrGreater()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 770
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/music/MusicPlaybackService;->stopForeground(Z)V

    .line 771
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/MusicPlaybackService;->mIsNotificationShowing:Z

    .line 779
    :cond_21
    :goto_21
    return-void

    .line 772
    :cond_22
    if-nez p1, :cond_21

    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 773
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v1, Lcom/google/android/music/MusicPlaybackService$10;

    invoke-direct {v1, p0}, Lcom/google/android/music/MusicPlaybackService$10;-><init>(Lcom/google/android/music/MusicPlaybackService;)V

    invoke-static {v0, v1}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    goto :goto_21
.end method

.method public stop()V
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 783
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/DevicePlayback;

    invoke-virtual {v0}, Lcom/google/android/music/DevicePlayback;->stop()V

    .line 785
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mNotificationCanceller:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 786
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mNotificationCanceller:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 787
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 788
    const-string v2, "cancel_notification"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 789
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 790
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mNotificationCanceller:Landroid/os/Handler;

    const-wide/32 v2, 0x112a880

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 791
    return-void
.end method

.method public supportsRating()Z
    .registers 2

    .prologue
    .line 1144
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/DevicePlayback;

    invoke-virtual {v0}, Lcom/google/android/music/DevicePlayback;->supportsRating()Z

    move-result v0

    return v0
.end method

.method public switchToAtHomeDevicePlayback([BLjava/lang/String;)V
    .registers 6
    .parameter "config"
    .parameter "groupId"

    .prologue
    .line 1609
    move-object v0, p0

    .line 1610
    .local v0, playbackService:Lcom/google/android/music/MusicPlaybackService;
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mDeviceSwitchHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1611
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mDeviceSwitchHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/music/MusicPlaybackService$13;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/google/android/music/MusicPlaybackService$13;-><init>(Lcom/google/android/music/MusicPlaybackService;Lcom/google/android/music/MusicPlaybackService;[BLjava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1640
    return-void
.end method

.method public switchToLocalDevicePlayback()V
    .registers 3

    .prologue
    .line 1580
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mDeviceSwitchHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1581
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mDeviceSwitchHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/music/MusicPlaybackService$12;

    invoke-direct {v1, p0}, Lcom/google/android/music/MusicPlaybackService$12;-><init>(Lcom/google/android/music/MusicPlaybackService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1605
    return-void
.end method

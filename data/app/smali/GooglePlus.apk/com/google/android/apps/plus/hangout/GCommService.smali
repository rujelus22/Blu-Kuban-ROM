.class public Lcom/google/android/apps/plus/hangout/GCommService;
.super Landroid/app/Service;
.source "GCommService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/hangout/GCommService$1;,
        Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;,
        Lcom/google/android/apps/plus/hangout/GCommService$LocalBinder;
    }
.end annotation


# instance fields
.field private callTimeoutRunnable:Ljava/lang/Runnable;

.field private final eventHandler:Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;

.field private handler:Landroid/os/Handler;

.field private final localBinder:Lcom/google/android/apps/plus/hangout/GCommService$LocalBinder;

.field private notificationIntent:Landroid/content/Intent;

.field private playbackMediaPlayer:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 61
    new-instance v0, Lcom/google/android/apps/plus/hangout/GCommService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/hangout/GCommService$LocalBinder;-><init>(Lcom/google/android/apps/plus/hangout/GCommService;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommService;->localBinder:Lcom/google/android/apps/plus/hangout/GCommService$LocalBinder;

    .line 62
    new-instance v0, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;-><init>(Lcom/google/android/apps/plus/hangout/GCommService;Lcom/google/android/apps/plus/hangout/GCommService$1;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommService;->eventHandler:Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommService;->handler:Landroid/os/Handler;

    .line 129
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/hangout/GCommService;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommService;->callTimeoutRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/android/apps/plus/hangout/GCommService;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/GCommService;->callTimeoutRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/hangout/GCommService;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommService;->handler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public getNotificationIntent()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommService;->notificationIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .parameter "intent"

    .prologue
    .line 97
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 98
    .local v0, startIntent:Landroid/content/Intent;
    const-class v1, Lcom/google/android/apps/plus/hangout/GCommService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 99
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/hangout/GCommService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 101
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommService;->localBinder:Lcom/google/android/apps/plus/hangout/GCommService$LocalBinder;

    return-object v1
.end method

.method public onCreate()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 70
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 71
    const-string v0, "GCommService.onCreate called"

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 72
    invoke-static {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommService;->eventHandler:Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->registerForEvents(Landroid/content/Context;Lcom/google/android/apps/plus/hangout/GCommEventHandler;Z)V

    .line 74
    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/hangout/GCommService;->stopForeground(Z)V

    .line 75
    return-void
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    .line 79
    const-string v0, "GCommService.onDestroy called"

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 80
    invoke-static {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommService;->eventHandler:Lcom/google/android/apps/plus/hangout/GCommService$EventHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/apps/plus/hangout/GCommApp;->unregisterForEvents(Landroid/content/Context;Lcom/google/android/apps/plus/hangout/GCommEventHandler;Z)V

    .line 81
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 82
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 88
    const/4 v0, 0x1

    return v0
.end method

.method public showHangoutNotification(Landroid/content/Intent;)V
    .registers 8
    .parameter "notificationIntent"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/GCommService;->notificationIntent:Landroid/content/Intent;

    .line 107
    const-string v2, "GCommService.showHangoutNotification"

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/Log;->info(Ljava/lang/String;)V

    .line 108
    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {p0, v2, p1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 110
    .local v1, pendingIntent:Landroid/app/PendingIntent;
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 111
    .local v0, notification:Landroid/app/Notification;
    const v2, 0x7f020082

    iput v2, v0, Landroid/app/Notification;->icon:I

    .line 112
    iget v2, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/app/Notification;->flags:I

    .line 113
    iget v2, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v0, Landroid/app/Notification;->flags:I

    .line 114
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/GCommService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/GCommService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080377

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/GCommService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080378

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 117
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/google/android/apps/plus/hangout/GCommService;->startForeground(ILandroid/app/Notification;)V

    .line 118
    return-void
.end method

.method public startRingback()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 370
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/GCommService;->stopRingback()V

    .line 372
    const-string v1, "GCommService.startRingback"

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 374
    const v1, 0x7f060004

    :try_start_c
    invoke-static {p0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommService;->playbackMediaPlayer:Landroid/media/MediaPlayer;
    :try_end_12
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_c .. :try_end_12} :catch_1c

    .line 380
    :goto_12
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommService;->playbackMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_28

    .line 381
    const-string v1, "Could not create MediaPlayer for 2131099652"

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/Log;->error(Ljava/lang/String;)V

    .line 386
    :goto_1b
    return-void

    .line 375
    :catch_1c
    move-exception v0

    .line 377
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    const-string v1, "Error playing media: "

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/hangout/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_12

    .line 383
    .end local v0           #e:Landroid/content/res/Resources$NotFoundException;
    :cond_28
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommService;->playbackMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v4}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 384
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/GCommService;->playbackMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    goto :goto_1b
.end method

.method public stopRingback()V
    .registers 2

    .prologue
    .line 389
    const-string v0, "GCommService.stopRingback"

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommService;->playbackMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_11

    .line 391
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommService;->playbackMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 392
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommService;->playbackMediaPlayer:Landroid/media/MediaPlayer;

    .line 394
    :cond_11
    return-void
.end method

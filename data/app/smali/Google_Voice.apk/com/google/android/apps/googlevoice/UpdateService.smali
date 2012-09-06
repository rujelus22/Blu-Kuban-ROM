.class public Lcom/google/android/apps/googlevoice/UpdateService;
.super Landroid/app/Service;
.source "UpdateService.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/model/VoiceModel$Listener;
.implements Lcom/google/android/apps/googlevoice/UpdateTask$AbortListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/googlevoice/UpdateService$1;,
        Lcom/google/android/apps/googlevoice/UpdateService$Handler;
    }
.end annotation


# static fields
.field public static final EXTRA_BACKGROUND:Ljava/lang/String; = "com.google.android.apps.googlevoice.UpdateService.BACKGROUND"

.field public static final EXTRA_FOREGROUND:Ljava/lang/String; = "com.google.android.apps.googlevoice.UpdateService.FOREGROUND"

.field public static final EXTRA_NOTIFICATION_ID:Ljava/lang/String; = "notification_id"

.field public static final EXTRA_RETRIES_ENABLED:Ljava/lang/String; = "retries_enabled"

.field public static final EXTRA_START:Ljava/lang/String; = "com.google.android.apps.googlevoice.UpdateService.START"

.field public static final EXTRA_STOP:Ljava/lang/String; = "com.google.android.apps.googlevoice.UpdateService.STOP"

.field private static final ID_AUTH_TOKEN_INVALIDATED:I = 0x3ea

.field private static final ID_CREDENTIALS_FAILED:I = 0x3e9

.field private static final ID_CREDENTIALS_OK:I = 0x3e8

.field private static final ID_SERVER_SETTINGS_RESULT:I = 0x3eb

.field private static MAX_PENDING_REQUESTS:I = 0x0

.field private static final MAX_UPDATE_RETRY_INTERVAL:J = 0xdbba0L

.field private static final MIN_UPDATE_RETRY_INTERVAL:J = 0x7530L

.field public static final STOPPED:Ljava/lang/String; = "com.google.android.apps.googlevoice.UpdateService.STOPPED"

.field private static final WAKE_LOCK_TAG:Ljava/lang/String; = null

.field private static final WAKE_LOCK_TIMEOUT_MILLIS:J = 0x4e20L

.field static lockManager:Lcom/google/android/apps/googlevoice/system/LockManager;


# instance fields
.field checkinHelper:Lcom/google/android/apps/googlevoice/CheckinHelper;

.field private componentManager:Lcom/google/android/apps/googlevoice/system/ComponentManager;

.field private connectionInformation:Lcom/google/android/apps/googlevoice/ConnectionInformation;

.field private dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

.field private enabledConnectivityReceiver:Z

.field private handler:Lcom/google/android/apps/googlevoice/UpdateService$Handler;

.field notificationIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private numRequestsPending:I

.field private retriesEnabled:Z

.field private serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

.field private updateRetryInterval:Lcom/google/android/apps/googlevoice/net/RetryInterval;

.field private updateRetryScheduled:Z

.field private updateStateManager:Lcom/google/android/apps/googlevoice/UpdateStateManager;

.field private updateTask:Lcom/google/android/apps/googlevoice/UpdateTask;

.field private updateTaskLite:Lcom/google/android/apps/googlevoice/UpdateTaskLite;

.field private voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 69
    const-class v0, Lcom/google/android/apps/googlevoice/UpdateService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/googlevoice/UpdateService;->WAKE_LOCK_TAG:Ljava/lang/String;

    .line 90
    const/4 v0, 0x2

    sput v0, Lcom/google/android/apps/googlevoice/UpdateService;->MAX_PENDING_REQUESTS:I

    .line 98
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/apps/googlevoice/UpdateService;->lockManager:Lcom/google/android/apps/googlevoice/system/LockManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/UpdateService;->retriesEnabled:Z

    .line 128
    iput v1, p0, Lcom/google/android/apps/googlevoice/UpdateService;->numRequestsPending:I

    .line 136
    iput-boolean v1, p0, Lcom/google/android/apps/googlevoice/UpdateService;->enabledConnectivityReceiver:Z

    .line 715
    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-static {p0}, Lcom/google/android/apps/googlevoice/UpdateService;->logCheckinMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/apps/googlevoice/UpdateService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/UpdateService;->doStart()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/apps/googlevoice/UpdateService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/UpdateService;->doStop()V

    return-void
.end method

.method private static declared-synchronized acquireWakeLock()V
    .registers 4

    .prologue
    .line 615
    const-class v1, Lcom/google/android/apps/googlevoice/UpdateService;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_c

    .line 616
    const-string v0, "UpdateService: Acquiring wake lock"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 625
    :cond_c
    invoke-static {}, Lcom/google/android/apps/googlevoice/UpdateService;->getLockManager()Lcom/google/android/apps/googlevoice/system/LockManager;

    move-result-object v0

    sget-object v2, Lcom/google/android/apps/googlevoice/UpdateService;->WAKE_LOCK_TAG:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/google/android/apps/googlevoice/system/LockManager;->getSharedPartialWakeLock(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/system/WakeLockWrapper;

    move-result-object v0

    const-wide/16 v2, 0x4e20

    invoke-interface {v0, v2, v3}, Lcom/google/android/apps/googlevoice/system/WakeLockWrapper;->acquire(J)V
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_1d

    .line 626
    monitor-exit v1

    return-void

    .line 615
    :catchall_1d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private cancelRetryUpdateAlarm()V
    .registers 2

    .prologue
    .line 778
    invoke-static {p0}, Lcom/google/android/apps/googlevoice/UpdateService;->cancelRetryUpdateAlarm(Landroid/content/Context;)V

    .line 779
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/UpdateService;->updateRetryScheduled:Z

    .line 780
    return-void
.end method

.method private static cancelRetryUpdateAlarm(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 786
    invoke-static {p0}, Lcom/google/android/apps/googlevoice/UpdateService;->createRetryUpdateBroadcastIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 787
    .local v1, broadcastIntent:Landroid/app/PendingIntent;
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 788
    .local v0, alarmManager:Landroid/app/AlarmManager;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 789
    sget-boolean v2, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v2, :cond_18

    .line 790
    const-string v2, "UpdateService: Cancelled update retry alarm"

    invoke-static {v2}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 792
    :cond_18
    const-string v2, "US: Cancelled retry alarm"

    invoke-static {v2}, Lcom/google/android/apps/googlevoice/UpdateService;->logCheckinMessage(Ljava/lang/String;)V

    .line 793
    return-void
.end method

.method private static cancelScheduledUpdateAlarm(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 413
    invoke-static {p0}, Lcom/google/android/apps/googlevoice/UpdateService;->createScheduledUpdateBroadcastIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 414
    .local v1, broadcastIntent:Landroid/app/PendingIntent;
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 415
    .local v0, alarmManager:Landroid/app/AlarmManager;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 416
    return-void
.end method

.method public static cancelUpdateAlarm(Landroid/content/Context;)V
    .registers 1
    .parameter "context"

    .prologue
    .line 422
    invoke-static {p0}, Lcom/google/android/apps/googlevoice/UpdateService;->cancelScheduledUpdateAlarm(Landroid/content/Context;)V

    .line 423
    invoke-static {p0}, Lcom/google/android/apps/googlevoice/UpdateService;->cancelRetryUpdateAlarm(Landroid/content/Context;)V

    .line 424
    return-void
.end method

.method private checkinState(Lcom/google/android/apps/googlevoice/CheckinHelper$NotificationState;)V
    .registers 5
    .parameter "state"

    .prologue
    .line 601
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/UpdateService;->notificationIds:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 602
    .local v1, notificationId:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/UpdateService;->checkinHelper:Lcom/google/android/apps/googlevoice/CheckinHelper;

    invoke-interface {v2, v1, p1}, Lcom/google/android/apps/googlevoice/CheckinHelper;->checkin(Ljava/lang/String;Lcom/google/android/apps/googlevoice/CheckinHelper$NotificationState;)V

    goto :goto_6

    .line 604
    .end local v1           #notificationId:Ljava/lang/String;
    :cond_18
    return-void
.end method

.method private static createRetryUpdateBroadcastIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .registers 4
    .parameter "context"

    .prologue
    .line 801
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.apps.googlevoice.RETRY_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 802
    .local v0, alarmIntent:Landroid/content/Intent;
    const/4 v1, 0x0

    const/high16 v2, 0x1000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public static createScheduledUpdateBroadcastIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .registers 4
    .parameter "context"

    .prologue
    .line 387
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.apps.googlevoice.SCHEDULED_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 388
    .local v0, alarmIntent:Landroid/content/Intent;
    const/4 v1, 0x0

    const/high16 v2, 0x1000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private declared-synchronized doStart()V
    .registers 12

    .prologue
    .line 361
    monitor-enter p0

    :try_start_1
    sget-boolean v1, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v1, :cond_a

    .line 362
    const-string v1, "UpdateService.doStart():"

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 364
    :cond_a
    const-string v1, "US: doStart"

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/UpdateService;->logCheckinMessage(Ljava/lang/String;)V

    .line 366
    invoke-static {p0}, Lcom/google/android/apps/googlevoice/UpdateService;->createScheduledUpdateBroadcastIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v6

    .line 367
    .local v6, broadcastIntent:Landroid/app/PendingIntent;
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/UpdateService;->getVoicePreferences()Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getUpdateIntervalSeconds()I

    move-result v1

    int-to-long v7, v1

    const-wide/16 v9, 0x3e8

    mul-long v4, v7, v9

    .line 368
    .local v4, interval:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    add-long v2, v7, v4

    .line 369
    .local v2, trigger:J
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Lcom/google/android/apps/googlevoice/UpdateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 370
    .local v0, alarmManager:Landroid/app/AlarmManager;
    const-wide/16 v7, 0x0

    cmp-long v1, v4, v7

    if-lez v1, :cond_5c

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/UpdateService;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/DependencyResolver;->useInboxNotifications()Z

    move-result v1

    if-nez v1, :cond_5c

    .line 371
    sget-boolean v1, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v1, :cond_45

    .line 372
    const-string v1, "UpdateService: Settings repeating update alarm"

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 374
    :cond_45
    const/4 v1, 0x2

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 383
    :goto_49
    new-instance v1, Landroid/content/Intent;

    const-class v7, Lcom/google/android/apps/googlevoice/UpdateService;

    invoke-direct {v1, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v7, "com.google.android.apps.googlevoice.UpdateService.FOREGROUND"

    const/4 v8, 0x1

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/apps/googlevoice/UpdateService;->requestUpdate(Landroid/content/Intent;)V
    :try_end_5a
    .catchall {:try_start_1 .. :try_end_5a} :catchall_69

    .line 384
    monitor-exit p0

    return-void

    .line 377
    :cond_5c
    :try_start_5c
    sget-boolean v1, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v1, :cond_65

    .line 378
    const-string v1, "UpdateService: Canceling repeating update alarm"

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 380
    :cond_65
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_68
    .catchall {:try_start_5c .. :try_end_68} :catchall_69

    goto :goto_49

    .line 361
    .end local v0           #alarmManager:Landroid/app/AlarmManager;
    .end local v2           #trigger:J
    .end local v4           #interval:J
    .end local v6           #broadcastIntent:Landroid/app/PendingIntent;
    :catchall_69
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized doStop()V
    .registers 2

    .prologue
    .line 393
    monitor-enter p0

    :try_start_1
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_a

    .line 394
    const-string v0, "UpdateService.doStop():"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 396
    :cond_a
    const-string v0, "US: doStop"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/UpdateService;->logCheckinMessage(Ljava/lang/String;)V

    .line 398
    invoke-static {}, Lcom/google/android/apps/googlevoice/UpdateService;->releaseWakeLock()V

    .line 399
    invoke-static {p0}, Lcom/google/android/apps/googlevoice/UpdateService;->cancelUpdateAlarm(Landroid/content/Context;)V

    .line 400
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/UpdateService;->updateRetryScheduled:Z

    .line 402
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateService;->updateTask:Lcom/google/android/apps/googlevoice/UpdateTask;

    if-eqz v0, :cond_23

    .line 403
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateService;->updateTask:Lcom/google/android/apps/googlevoice/UpdateTask;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/UpdateTask;->abort()V
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_2e

    .line 410
    :goto_21
    monitor-exit p0

    return-void

    .line 405
    :cond_23
    :try_start_23
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateService;->updateTaskLite:Lcom/google/android/apps/googlevoice/UpdateTaskLite;

    if-eqz v0, :cond_2a

    .line 406
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateService;->updateTaskLite:Lcom/google/android/apps/googlevoice/UpdateTaskLite;

    .line 408
    :cond_2a
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/UpdateService;->finishStop()V
    :try_end_2d
    .catchall {:try_start_23 .. :try_end_2d} :catchall_2e

    goto :goto_21

    .line 393
    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private finishStop()V
    .registers 3

    .prologue
    .line 427
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_9

    .line 428
    const-string v0, "UpdateService.finishStop():"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 431
    :cond_9
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.apps.googlevoice.UpdateService.STOPPED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/UpdateService;->sendBroadcast(Landroid/content/Intent;)V

    .line 432
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/UpdateService;->stopSelf()V

    .line 433
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateService;->notificationIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 434
    return-void
.end method

.method private static declared-synchronized getLockManager()Lcom/google/android/apps/googlevoice/system/LockManager;
    .registers 2

    .prologue
    .line 607
    const-class v1, Lcom/google/android/apps/googlevoice/UpdateService;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/apps/googlevoice/UpdateService;->lockManager:Lcom/google/android/apps/googlevoice/system/LockManager;

    if-nez v0, :cond_11

    .line 608
    invoke-static {}, Lcom/google/android/apps/googlevoice/VoiceApplication;->getDependencyResolver()Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getLockManager()Lcom/google/android/apps/googlevoice/system/LockManager;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/googlevoice/UpdateService;->lockManager:Lcom/google/android/apps/googlevoice/system/LockManager;

    .line 610
    :cond_11
    sget-object v0, Lcom/google/android/apps/googlevoice/UpdateService;->lockManager:Lcom/google/android/apps/googlevoice/system/LockManager;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_15

    monitor-exit v1

    return-object v0

    .line 607
    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isLightUpdateDue()Z
    .registers 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateService;->notificationIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private isUpdateInProgress()Z
    .registers 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateService;->updateTask:Lcom/google/android/apps/googlevoice/UpdateTask;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateService;->updateTaskLite:Lcom/google/android/apps/googlevoice/UpdateTaskLite;

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static logCheckinMessage(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 708
    invoke-static {}, Lcom/google/android/apps/googlevoice/VoiceApplication;->getDependencyResolver()Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getCheckinCircularLog()Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;->addEntry(Ljava/lang/String;)V

    .line 709
    return-void
.end method

.method private static declared-synchronized releaseWakeLock()V
    .registers 3

    .prologue
    .line 630
    const-class v1, Lcom/google/android/apps/googlevoice/UpdateService;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_c

    .line 631
    const-string v0, "UpdateService: Releasing wake lock"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 634
    :cond_c
    invoke-static {}, Lcom/google/android/apps/googlevoice/UpdateService;->getLockManager()Lcom/google/android/apps/googlevoice/system/LockManager;

    move-result-object v0

    sget-object v2, Lcom/google/android/apps/googlevoice/UpdateService;->WAKE_LOCK_TAG:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/google/android/apps/googlevoice/system/LockManager;->getSharedPartialWakeLock(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/system/WakeLockWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/system/WakeLockWrapper;->release()V
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1b

    .line 635
    monitor-exit v1

    return-void

    .line 630
    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static requestBackgroundUpdate(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .parameter "context"
    .parameter "notificationId"

    .prologue
    .line 657
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- UpdateService: requestBackgroundUpdate. NotificationId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/UpdateService;->logCheckinMessage(Ljava/lang/String;)V

    .line 659
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/apps/googlevoice/UpdateService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.google.android.apps.googlevoice.UpdateService.BACKGROUND"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "notification_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 662
    .local v0, intent:Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/google/android/apps/googlevoice/UpdateService;->startThisService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 663
    return-void
.end method

.method public static requestBackgroundUpdateForNotification(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 667
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/apps/googlevoice/UpdateService;->requestBackgroundUpdateInternal(Landroid/content/Context;Z)V

    .line 668
    return-void
.end method

.method public static requestBackgroundUpdateForPeriodicUpdate(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 671
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/apps/googlevoice/UpdateService;->requestBackgroundUpdateInternal(Landroid/content/Context;Z)V

    .line 672
    return-void
.end method

.method private static requestBackgroundUpdateInternal(Landroid/content/Context;Z)V
    .registers 5
    .parameter "context"
    .parameter "retriesEnabled"

    .prologue
    .line 675
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--- UpdateService: requestBackgroundUpdate with retries "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_38

    const-string v0, ""

    :goto_f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " enabled."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/UpdateService;->logCheckinMessage(Ljava/lang/String;)V

    .line 677
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/googlevoice/UpdateService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.google.android.apps.googlevoice.UpdateService.BACKGROUND"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "retries_enabled"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/apps/googlevoice/UpdateService;->startThisService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 681
    return-void

    .line 675
    :cond_38
    const-string v0, "not "

    goto :goto_f
.end method

.method public static requestForegroundUpdate(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 649
    const-string v0, "--- UpdateService: requestForegroundUpdate"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/UpdateService;->logCheckinMessage(Ljava/lang/String;)V

    .line 650
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/googlevoice/UpdateService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.google.android.apps.googlevoice.UpdateService.FOREGROUND"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/apps/googlevoice/UpdateService;->startThisService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 652
    return-void
.end method

.method public static requestRetryUpdate(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 685
    const-string v0, "--- UpdateService: requestRetryUpdate"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/UpdateService;->logCheckinMessage(Ljava/lang/String;)V

    .line 690
    invoke-static {p0}, Lcom/google/android/apps/googlevoice/UpdateService;->requestForegroundUpdate(Landroid/content/Context;)V

    .line 691
    return-void
.end method

.method public static requestServiceStart(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 702
    const-string v0, "--- UpdateService: requestServiceStart"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/UpdateService;->logCheckinMessage(Ljava/lang/String;)V

    .line 703
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/googlevoice/UpdateService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.google.android.apps.googlevoice.UpdateService.START"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/apps/googlevoice/UpdateService;->startThisService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 705
    return-void
.end method

.method public static requestServiceStop(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 695
    const-string v0, "--- UpdateService: requestServiceStop ---"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/UpdateService;->logCheckinMessage(Ljava/lang/String;)V

    .line 696
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/googlevoice/UpdateService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.google.android.apps.googlevoice.UpdateService.STOP"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/apps/googlevoice/UpdateService;->startThisService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 698
    return-void
.end method

.method private declared-synchronized requestUpdate(Landroid/content/Intent;)V
    .registers 7
    .parameter "intent"

    .prologue
    .line 267
    monitor-enter p0

    :try_start_1
    sget-boolean v1, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v1, :cond_a

    .line 268
    const-string v1, "UpdateService.requestUpdate():"

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 271
    :cond_a
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/UpdateService;->cancelRetryUpdateAlarm()V

    .line 275
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/UpdateService;->getVoiceService()Lcom/google/android/apps/googlevoice/net/VoiceService;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/net/VoiceService;->getCredentials()Lcom/google/android/apps/googlevoice/net/Credentials;

    move-result-object v0

    .line 276
    .local v0, credentials:Lcom/google/android/apps/googlevoice/net/Credentials;
    if-nez v0, :cond_38

    .line 277
    sget-boolean v1, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v1, :cond_20

    .line 278
    const-string v1, "UpdateService.requestUpdate(): no credentials"

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 281
    :cond_20
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/UpdateService;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/UpdateService;->handler:Lcom/google/android/apps/googlevoice/UpdateService$Handler;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3, p1}, Lcom/google/android/apps/googlevoice/UpdateService$Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/UpdateService;->handler:Lcom/google/android/apps/googlevoice/UpdateService$Handler;

    const/16 v4, 0x3e9

    invoke-virtual {v3, v4}, Lcom/google/android/apps/googlevoice/UpdateService$Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/apps/googlevoice/DependencyResolver;->loadCredentials(Landroid/os/Message;Landroid/os/Message;Z)V
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_65

    .line 316
    :goto_36
    monitor-exit p0

    return-void

    .line 288
    :cond_38
    :try_start_38
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/UpdateService;->isUpdateInProgress()Z

    move-result v1

    if-nez v1, :cond_75

    .line 289
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/UpdateService;->connectionInformation:Lcom/google/android/apps/googlevoice/ConnectionInformation;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/ConnectionInformation;->hasNetworkConnection()Z

    move-result v1

    if-nez v1, :cond_68

    .line 292
    sget-boolean v1, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v1, :cond_4f

    .line 293
    const-string v1, "UpdateService: insufficient data coverage. Will retry later"

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 295
    :cond_4f
    const-string v1, "US: insufficient data coverage. Will retry later"

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/UpdateService;->logCheckinMessage(Ljava/lang/String;)V

    .line 296
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/UpdateService;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoiceModel()Lcom/google/android/apps/googlevoice/model/VoiceModel;

    move-result-object v1

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Insufficient data coverage"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/googlevoice/UpdateService;->updateException(Lcom/google/android/apps/googlevoice/model/VoiceModel;Ljava/lang/Exception;)V
    :try_end_64
    .catchall {:try_start_38 .. :try_end_64} :catchall_65

    goto :goto_36

    .line 267
    .end local v0           #credentials:Lcom/google/android/apps/googlevoice/net/Credentials;
    :catchall_65
    move-exception v1

    monitor-exit p0

    throw v1

    .line 301
    .restart local v0       #credentials:Lcom/google/android/apps/googlevoice/net/Credentials;
    :cond_68
    :try_start_68
    const-string v1, "retries_enabled"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/googlevoice/UpdateService;->retriesEnabled:Z

    .line 302
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/UpdateService;->scheduleUpdateTask()V

    goto :goto_36

    .line 304
    :cond_75
    sget-boolean v1, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v1, :cond_7e

    .line 305
    const-string v1, "UpdateService.requestUpdate(): requesting another update from existing updateTask"

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 308
    :cond_7e
    iget v1, p0, Lcom/google/android/apps/googlevoice/UpdateService;->numRequestsPending:I

    add-int/lit8 v1, v1, 0x1

    sget v2, Lcom/google/android/apps/googlevoice/UpdateService;->MAX_PENDING_REQUESTS:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/googlevoice/UpdateService;->numRequestsPending:I

    .line 312
    invoke-static {}, Lcom/google/android/apps/googlevoice/UpdateService;->releaseWakeLock()V

    .line 313
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "US: Update already in progress. Num pending updates: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/googlevoice/UpdateService;->numRequestsPending:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/UpdateService;->logCheckinMessage(Ljava/lang/String;)V
    :try_end_a5
    .catchall {:try_start_68 .. :try_end_a5} :catchall_65

    goto :goto_36
.end method

.method private scheduleUpdateTask()V
    .registers 11

    .prologue
    .line 331
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateService;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/UpdateService;->handler:Lcom/google/android/apps/googlevoice/UpdateService$Handler;

    const/16 v2, 0x3eb

    invoke-virtual {v1, v2}, Lcom/google/android/apps/googlevoice/UpdateService$Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/settings/ServerSettings;->fetch(Landroid/os/Message;)Lcom/google/android/apps/googlevoice/net/UpdateSettingsRpc;

    .line 333
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/UpdateService;->isLightUpdateDue()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 334
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_1c

    .line 335
    const-string v0, "UpdateService: starting new lite updateTask"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 337
    :cond_1c
    new-instance v0, Lcom/google/android/apps/googlevoice/UpdateTaskLite;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/UpdateService;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoiceModel()Lcom/google/android/apps/googlevoice/model/VoiceModel;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/UpdateService;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoiceService()Lcom/google/android/apps/googlevoice/net/VoiceService;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/googlevoice/UpdateTaskLite;-><init>(Lcom/google/android/apps/googlevoice/model/VoiceModel;Lcom/google/android/apps/googlevoice/net/VoiceService;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateService;->updateTaskLite:Lcom/google/android/apps/googlevoice/UpdateTaskLite;

    .line 339
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateService;->updateTaskLite:Lcom/google/android/apps/googlevoice/UpdateTaskLite;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/UpdateTaskLite;->schedule()V

    .line 340
    const-string v0, "US: Started lite update"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/UpdateService;->logCheckinMessage(Ljava/lang/String;)V

    .line 357
    :goto_39
    return-void

    .line 342
    :cond_3a
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_43

    .line 343
    const-string v0, "UpdateService: starting new full updateTask"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 345
    :cond_43
    new-instance v0, Lcom/google/android/apps/googlevoice/UpdateTask;

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/UpdateService;->getTaskRunner()Lcom/googlex/common/task/TaskRunner;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/UpdateService;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoiceModel()Lcom/google/android/apps/googlevoice/model/VoiceModel;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/UpdateService;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v3}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoicePreferences()Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/googlevoice/UpdateService;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v4}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoiceService()Lcom/google/android/apps/googlevoice/net/VoiceService;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/googlevoice/UpdateService;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v5}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getNotifier()Lcom/google/android/apps/googlevoice/Notifier;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/apps/googlevoice/UpdateService;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v6}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getTaskScheduler()Lcom/google/android/apps/googlevoice/TaskScheduler;

    move-result-object v7

    iget-object v6, p0, Lcom/google/android/apps/googlevoice/UpdateService;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v6}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getSmsOutboxManager()Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;

    move-result-object v8

    iget-object v6, p0, Lcom/google/android/apps/googlevoice/UpdateService;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v6}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getClockUtils()Lcom/google/android/apps/common/time/ClockUtils;

    move-result-object v9

    move-object v6, p0

    invoke-direct/range {v0 .. v9}, Lcom/google/android/apps/googlevoice/UpdateTask;-><init>(Lcom/googlex/common/task/TaskRunner;Lcom/google/android/apps/googlevoice/model/VoiceModel;Lcom/google/android/apps/googlevoice/VoicePreferences;Lcom/google/android/apps/googlevoice/net/VoiceService;Lcom/google/android/apps/googlevoice/Notifier;Lcom/google/android/apps/googlevoice/UpdateTask$AbortListener;Lcom/google/android/apps/googlevoice/TaskScheduler;Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;Lcom/google/android/apps/common/time/ClockUtils;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateService;->updateTask:Lcom/google/android/apps/googlevoice/UpdateTask;

    .line 354
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateService;->updateTask:Lcom/google/android/apps/googlevoice/UpdateTask;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/UpdateTask;->schedule()V

    .line 355
    const-string v0, "US: Started full update"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/UpdateService;->logCheckinMessage(Ljava/lang/String;)V

    goto :goto_39
.end method

.method private setConnectivityReceiverEnabled(Z)V
    .registers 4
    .parameter "enabled"

    .prologue
    .line 806
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateService;->componentManager:Lcom/google/android/apps/googlevoice/system/ComponentManager;

    const-class v1, Lcom/google/android/apps/googlevoice/UpdateServiceConnectivityReceiver;

    invoke-interface {v0, v1, p1}, Lcom/google/android/apps/googlevoice/system/ComponentManager;->setComponentEnabled(Ljava/lang/Class;Z)V

    .line 807
    iput-boolean p1, p0, Lcom/google/android/apps/googlevoice/UpdateService;->enabledConnectivityReceiver:Z

    .line 808
    return-void
.end method

.method private setRetryUpdateAlarm(J)V
    .registers 10
    .parameter "delay"

    .prologue
    const-wide/16 v5, 0x3e8

    .line 760
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/UpdateService;->cancelRetryUpdateAlarm()V

    .line 761
    invoke-static {p0}, Lcom/google/android/apps/googlevoice/UpdateService;->createRetryUpdateBroadcastIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 762
    .local v1, broadcastIntent:Landroid/app/PendingIntent;
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Lcom/google/android/apps/googlevoice/UpdateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 763
    .local v0, alarmManager:Landroid/app/AlarmManager;
    const/4 v2, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    add-long/2addr v3, p1

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 767
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/apps/googlevoice/UpdateService;->updateRetryScheduled:Z

    .line 768
    sget-boolean v2, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v2, :cond_3f

    .line 769
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UpdateService: Scheduled update retry in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    div-long v3, p1, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 771
    :cond_3f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "US: Retry scheduled in: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    div-long v3, p1, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/googlevoice/UpdateService;->logCheckinMessage(Ljava/lang/String;)V

    .line 772
    return-void
.end method

.method private static startThisService(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 639
    invoke-static {}, Lcom/google/android/apps/googlevoice/UpdateService;->acquireWakeLock()V

    .line 640
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 641
    return-void
.end method


# virtual methods
.method public actionUpdated(Lcom/google/android/apps/googlevoice/model/VoiceModel;Lcom/google/android/apps/googlevoice/core/Action;)V
    .registers 3
    .parameter "model"
    .parameter "action"

    .prologue
    .line 477
    return-void
.end method

.method public actionsUpdated(Lcom/google/android/apps/googlevoice/model/VoiceModel;)V
    .registers 2
    .parameter "model"

    .prologue
    .line 482
    return-void
.end method

.method public contactsUpdated(Lcom/google/android/apps/googlevoice/model/VoiceModel;)V
    .registers 2
    .parameter "model"

    .prologue
    .line 472
    return-void
.end method

.method public conversationUpdated(Lcom/google/android/apps/googlevoice/model/VoiceModel;Lcom/google/android/apps/googlevoice/core/Conversation;)V
    .registers 3
    .parameter "model"
    .parameter "conversation"

    .prologue
    .line 467
    return-void
.end method

.method getTaskRunner()Lcom/googlex/common/task/TaskRunner;
    .registers 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateService;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getTaskRunner()Lcom/googlex/common/task/TaskRunner;

    move-result-object v0

    return-object v0
.end method

.method getVoiceModel()Lcom/google/android/apps/googlevoice/model/VoiceModel;
    .registers 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateService;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoiceModel()Lcom/google/android/apps/googlevoice/model/VoiceModel;

    move-result-object v0

    return-object v0
.end method

.method getVoicePreferences()Lcom/google/android/apps/googlevoice/VoicePreferences;
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateService;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoicePreferences()Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v0

    return-object v0
.end method

.method getVoiceService()Lcom/google/android/apps/googlevoice/net/VoiceService;
    .registers 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateService;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoiceService()Lcom/google/android/apps/googlevoice/net/VoiceService;

    move-result-object v0

    return-object v0
.end method

.method public labelUpdated(Lcom/google/android/apps/googlevoice/model/VoiceModel;Lcom/google/android/apps/googlevoice/core/Label;)V
    .registers 3
    .parameter "model"
    .parameter "label"

    .prologue
    .line 462
    return-void
.end method

.method public modelUpdated(Lcom/google/android/apps/googlevoice/model/VoiceModel;)V
    .registers 2
    .parameter "model"

    .prologue
    .line 457
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 140
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 7

    .prologue
    .line 145
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 147
    sget-boolean v1, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v1, :cond_c

    .line 148
    const-string v1, "UpdateService.onCreate():"

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 151
    :cond_c
    invoke-static {}, Lcom/google/android/apps/googlevoice/VoiceApplication;->getDependencyResolver()Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/UpdateService;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    .line 152
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/UpdateService;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getUpdateStateManager()Lcom/google/android/apps/googlevoice/UpdateStateManager;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/UpdateService;->updateStateManager:Lcom/google/android/apps/googlevoice/UpdateStateManager;

    .line 153
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/UpdateService;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getComponentManager()Lcom/google/android/apps/googlevoice/system/ComponentManager;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/UpdateService;->componentManager:Lcom/google/android/apps/googlevoice/system/ComponentManager;

    .line 154
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/UpdateService;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getServerSettings()Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/UpdateService;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    .line 155
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/UpdateService;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoicePreferences()Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/UpdateService;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    .line 156
    new-instance v1, Lcom/google/android/apps/googlevoice/net/RetryInterval;

    const-wide/16 v2, 0x7530

    const-wide/32 v4, 0xdbba0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/apps/googlevoice/net/RetryInterval;-><init>(JJ)V

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/UpdateService;->updateRetryInterval:Lcom/google/android/apps/googlevoice/net/RetryInterval;

    .line 157
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/UpdateService;->getVoiceModel()Lcom/google/android/apps/googlevoice/model/VoiceModel;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->addListener(Lcom/google/android/apps/googlevoice/model/VoiceModel$Listener;)Z

    .line 159
    new-instance v1, Lcom/google/android/apps/googlevoice/UpdateService$Handler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/apps/googlevoice/UpdateService$Handler;-><init>(Lcom/google/android/apps/googlevoice/UpdateService;Lcom/google/android/apps/googlevoice/UpdateService$1;)V

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/UpdateService;->handler:Lcom/google/android/apps/googlevoice/UpdateService$Handler;

    .line 161
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/UpdateService;->notificationIds:Ljava/util/Set;

    .line 162
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/UpdateService;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getCheckinHelper()Lcom/google/android/apps/googlevoice/CheckinHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/UpdateService;->checkinHelper:Lcom/google/android/apps/googlevoice/CheckinHelper;

    .line 164
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/UpdateService;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getConnectionInformation()Lcom/google/android/apps/googlevoice/ConnectionInformation;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/UpdateService;->connectionInformation:Lcom/google/android/apps/googlevoice/ConnectionInformation;

    .line 166
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/UpdateService;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getNotificationUpdateCompleted()Z

    move-result v1

    if-nez v1, :cond_7d

    .line 167
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/UpdateService;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getNotificationId()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, notificationId:Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 169
    invoke-static {p0}, Lcom/google/android/apps/googlevoice/UpdateService;->requestBackgroundUpdateForNotification(Landroid/content/Context;)V

    .line 174
    .end local v0           #notificationId:Ljava/lang/String;
    :cond_7d
    :goto_7d
    return-void

    .line 171
    .restart local v0       #notificationId:Ljava/lang/String;
    :cond_7e
    invoke-static {p0, v0}, Lcom/google/android/apps/googlevoice/UpdateService;->requestBackgroundUpdate(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_7d
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 194
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_a

    .line 195
    const-string v0, "UpdateService.onDestroy()"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 199
    :cond_a
    invoke-static {}, Lcom/google/android/apps/googlevoice/UpdateService;->releaseWakeLock()V

    .line 201
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateService;->updateTask:Lcom/google/android/apps/googlevoice/UpdateTask;

    if-eqz v0, :cond_18

    .line 202
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateService;->updateTask:Lcom/google/android/apps/googlevoice/UpdateTask;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/UpdateTask;->cancel()I

    .line 203
    iput-object v1, p0, Lcom/google/android/apps/googlevoice/UpdateService;->updateTask:Lcom/google/android/apps/googlevoice/UpdateTask;

    .line 206
    :cond_18
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateService;->updateTaskLite:Lcom/google/android/apps/googlevoice/UpdateTaskLite;

    if-eqz v0, :cond_1e

    .line 207
    iput-object v1, p0, Lcom/google/android/apps/googlevoice/UpdateService;->updateTaskLite:Lcom/google/android/apps/googlevoice/UpdateTaskLite;

    .line 210
    :cond_1e
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/UpdateService;->getVoiceModel()Lcom/google/android/apps/googlevoice/model/VoiceModel;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->removeListener(Lcom/google/android/apps/googlevoice/model/VoiceModel$Listener;)Z

    .line 212
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 213
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 8
    .parameter "intent"
    .parameter "startId"

    .prologue
    const/4 v4, 0x0

    .line 217
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 219
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_1d

    .line 220
    const-string v0, "UpdateService.onStart(intent=\'%s\', startId=%d)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 223
    :cond_1d
    if-nez p1, :cond_29

    .line 224
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_28

    .line 225
    const-string v0, "UpdateService.onStart(): no Intent! Doing nothing."

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 263
    :cond_28
    :goto_28
    return-void

    .line 230
    :cond_29
    const-string v0, "notification_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 231
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateService;->notificationIds:Ljava/util/Set;

    const-string v1, "notification_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 234
    :cond_3c
    const-string v0, "com.google.android.apps.googlevoice.UpdateService.FOREGROUND"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 235
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_4d

    .line 236
    const-string v0, "UpdateService.onStart(): EXTRA_FOREGROUND"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 238
    :cond_4d
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/UpdateService;->requestUpdate(Landroid/content/Intent;)V

    goto :goto_28

    .line 239
    :cond_51
    const-string v0, "com.google.android.apps.googlevoice.UpdateService.BACKGROUND"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 240
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_62

    .line 241
    const-string v0, "UpdateService.onStart(): EXTRA_BACKGROUND"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 243
    :cond_62
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/UpdateService;->getVoicePreferences()Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getShouldUpdateInBackground()Z

    move-result v0

    if-nez v0, :cond_74

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateService;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->useInboxNotifications()Z

    move-result v0

    if-eqz v0, :cond_78

    .line 245
    :cond_74
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/UpdateService;->requestUpdate(Landroid/content/Intent;)V

    goto :goto_28

    .line 247
    :cond_78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "US: Background update not serviced.shouldUpdateInBackground: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/UpdateService;->getVoicePreferences()Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getShouldUpdateInBackground()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "useInboxNotifications: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/UpdateService;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/DependencyResolver;->useInboxNotifications()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/UpdateService;->logCheckinMessage(Ljava/lang/String;)V

    .line 250
    invoke-static {}, Lcom/google/android/apps/googlevoice/UpdateService;->releaseWakeLock()V

    goto/16 :goto_28

    .line 252
    :cond_ab
    const-string v0, "com.google.android.apps.googlevoice.UpdateService.START"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_c1

    .line 253
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_bc

    .line 254
    const-string v0, "UpdateService.onStart(): EXTRA_START"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 256
    :cond_bc
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/UpdateService;->doStart()V

    goto/16 :goto_28

    .line 257
    :cond_c1
    const-string v0, "com.google.android.apps.googlevoice.UpdateService.STOP"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 258
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_d2

    .line 259
    const-string v0, "UpdateService.onStart(): EXTRA_STOP"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 261
    :cond_d2
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/UpdateService;->doStop()V

    goto/16 :goto_28
.end method

.method public declared-synchronized taskAborted(Lcom/google/android/apps/googlevoice/UpdateTask;)V
    .registers 3
    .parameter "task"

    .prologue
    .line 442
    monitor-enter p0

    :try_start_1
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_a

    .line 443
    const-string v0, "UpdateService.taskAborted(): update task aborted, proceeding."

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 445
    :cond_a
    const-string v0, "--- UpdateService: taskAborted"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/UpdateService;->logCheckinMessage(Ljava/lang/String;)V

    .line 446
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateService;->updateTask:Lcom/google/android/apps/googlevoice/UpdateTask;

    .line 447
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/UpdateService;->finishStop()V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 448
    monitor-exit p0

    return-void

    .line 442
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateCompleted(Lcom/google/android/apps/googlevoice/model/VoiceModel;)V
    .registers 6
    .parameter "model"

    .prologue
    .line 496
    monitor-enter p0

    :try_start_1
    sget-boolean v1, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v1, :cond_a

    .line 497
    const-string v1, "UpdateService.updateCompleted()"

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 499
    :cond_a
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/UpdateService;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/google/android/apps/googlevoice/VoicePreferences;->setNotificatinoUpdateCompleted(Z)V

    .line 501
    const-string v1, "--- UpdateService: updateCompleted. "

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/UpdateService;->logCheckinMessage(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_85

    .line 502
    const/4 v0, 0x1

    .line 505
    .local v0, releaseWakeLockNeeded:Z
    :try_start_16
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/UpdateService;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getServiceManager()Lcom/google/android/apps/googlevoice/ServiceManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/ServiceManager;->updateWidget()V

    .line 506
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/UpdateService;->updateStateManager:Lcom/google/android/apps/googlevoice/UpdateStateManager;

    sget-object v2, Lcom/google/android/apps/googlevoice/UpdateStateManager$State;->OK:Lcom/google/android/apps/googlevoice/UpdateStateManager$State;

    invoke-interface {v1, v2}, Lcom/google/android/apps/googlevoice/UpdateStateManager;->setUpdateState(Lcom/google/android/apps/googlevoice/UpdateStateManager$State;)V

    .line 507
    sget-object v1, Lcom/google/android/apps/googlevoice/CheckinHelper$NotificationState;->UPDATE_COMPLETED:Lcom/google/android/apps/googlevoice/CheckinHelper$NotificationState;

    invoke-direct {p0, v1}, Lcom/google/android/apps/googlevoice/UpdateService;->checkinState(Lcom/google/android/apps/googlevoice/CheckinHelper$NotificationState;)V

    .line 508
    iget-boolean v1, p0, Lcom/google/android/apps/googlevoice/UpdateService;->enabledConnectivityReceiver:Z

    if-eqz v1, :cond_33

    .line 509
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/apps/googlevoice/UpdateService;->setConnectivityReceiverEnabled(Z)V
    :try_end_33
    .catchall {:try_start_16 .. :try_end_33} :catchall_69

    .line 513
    :cond_33
    const/4 v1, 0x0

    :try_start_34
    iput-object v1, p0, Lcom/google/android/apps/googlevoice/UpdateService;->updateTask:Lcom/google/android/apps/googlevoice/UpdateTask;

    .line 514
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/UpdateService;->updateTaskLite:Lcom/google/android/apps/googlevoice/UpdateTaskLite;

    .line 515
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/UpdateService;->updateRetryInterval:Lcom/google/android/apps/googlevoice/net/RetryInterval;

    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/net/RetryInterval;->reset()V

    .line 516
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/UpdateService;->notificationIds:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 517
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/UpdateService;->cancelRetryUpdateAlarm()V

    .line 521
    iget v1, p0, Lcom/google/android/apps/googlevoice/UpdateService;->numRequestsPending:I

    if-lez v1, :cond_62

    .line 522
    iget v1, p0, Lcom/google/android/apps/googlevoice/UpdateService;->numRequestsPending:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/apps/googlevoice/UpdateService;->numRequestsPending:I

    .line 523
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/apps/googlevoice/UpdateService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.google.android.apps.googlevoice.UpdateService.FOREGROUND"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/apps/googlevoice/UpdateService;->requestUpdate(Landroid/content/Intent;)V
    :try_end_61
    .catchall {:try_start_34 .. :try_end_61} :catchall_7e

    .line 524
    const/4 v0, 0x0

    .line 527
    :cond_62
    if-eqz v0, :cond_67

    .line 529
    :try_start_64
    invoke-static {}, Lcom/google/android/apps/googlevoice/UpdateService;->releaseWakeLock()V
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_85

    .line 532
    :cond_67
    monitor-exit p0

    return-void

    .line 513
    :catchall_69
    move-exception v1

    const/4 v2, 0x0

    :try_start_6b
    iput-object v2, p0, Lcom/google/android/apps/googlevoice/UpdateService;->updateTask:Lcom/google/android/apps/googlevoice/UpdateTask;

    .line 514
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/apps/googlevoice/UpdateService;->updateTaskLite:Lcom/google/android/apps/googlevoice/UpdateTaskLite;

    .line 515
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/UpdateService;->updateRetryInterval:Lcom/google/android/apps/googlevoice/net/RetryInterval;

    invoke-virtual {v2}, Lcom/google/android/apps/googlevoice/net/RetryInterval;->reset()V

    .line 516
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/UpdateService;->notificationIds:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 517
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/UpdateService;->cancelRetryUpdateAlarm()V

    throw v1
    :try_end_7e
    .catchall {:try_start_6b .. :try_end_7e} :catchall_7e

    .line 527
    :catchall_7e
    move-exception v1

    if-eqz v0, :cond_84

    .line 529
    :try_start_81
    invoke-static {}, Lcom/google/android/apps/googlevoice/UpdateService;->releaseWakeLock()V

    :cond_84
    throw v1
    :try_end_85
    .catchall {:try_start_81 .. :try_end_85} :catchall_85

    .line 496
    .end local v0           #releaseWakeLockNeeded:Z
    :catchall_85
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized updateException(Lcom/google/android/apps/googlevoice/model/VoiceModel;Ljava/lang/Exception;)V
    .registers 7
    .parameter "model"
    .parameter "exception"

    .prologue
    .line 537
    monitor-enter p0

    :try_start_1
    const-string v0, "UpdateService: updateException(): %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;)V

    .line 539
    const-string v0, "--- UpdateService: updateException %s (%s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/UpdateService;->logCheckinMessage(Ljava/lang/String;)V

    .line 541
    sget-object v0, Lcom/google/android/apps/googlevoice/CheckinHelper$NotificationState;->UPDATE_FAILED:Lcom/google/android/apps/googlevoice/CheckinHelper$NotificationState;

    invoke-direct {p0, v0}, Lcom/google/android/apps/googlevoice/UpdateService;->checkinState(Lcom/google/android/apps/googlevoice/CheckinHelper$NotificationState;)V

    .line 543
    iget-boolean v0, p0, Lcom/google/android/apps/googlevoice/UpdateService;->updateRetryScheduled:Z

    if-nez v0, :cond_93

    iget-boolean v0, p0, Lcom/google/android/apps/googlevoice/UpdateService;->retriesEnabled:Z

    if-eqz v0, :cond_93

    .line 550
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateService;->updateRetryInterval:Lcom/google/android/apps/googlevoice/net/RetryInterval;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/net/RetryInterval;->isCeilingReached()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 551
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateService;->updateRetryInterval:Lcom/google/android/apps/googlevoice/net/RetryInterval;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/net/RetryInterval;->reset()V
    :try_end_50
    .catchall {:try_start_1 .. :try_end_50} :catchall_dd

    .line 582
    const/4 v0, 0x0

    :try_start_51
    iput-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateService;->updateTask:Lcom/google/android/apps/googlevoice/UpdateTask;

    .line 583
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateService;->updateTaskLite:Lcom/google/android/apps/googlevoice/UpdateTaskLite;

    .line 585
    iget v0, p0, Lcom/google/android/apps/googlevoice/UpdateService;->numRequestsPending:I

    if-lez v0, :cond_63

    .line 588
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/UpdateService;->isLightUpdateDue()Z

    move-result v0

    if-nez v0, :cond_68

    .line 589
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/googlevoice/UpdateService;->numRequestsPending:I

    .line 596
    :cond_63
    :goto_63
    invoke-static {}, Lcom/google/android/apps/googlevoice/UpdateService;->releaseWakeLock()V
    :try_end_66
    .catchall {:try_start_51 .. :try_end_66} :catchall_6c

    .line 598
    .end local p2
    :goto_66
    monitor-exit p0

    return-void

    .line 591
    .restart local p2
    :cond_68
    const/4 v0, 0x1

    :try_start_69
    iput v0, p0, Lcom/google/android/apps/googlevoice/UpdateService;->numRequestsPending:I
    :try_end_6b
    .catchall {:try_start_69 .. :try_end_6b} :catchall_6c

    goto :goto_63

    .line 537
    .end local p2
    :catchall_6c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 557
    .restart local p2
    :cond_6f
    :try_start_6f
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateService;->updateRetryInterval:Lcom/google/android/apps/googlevoice/net/RetryInterval;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/net/RetryInterval;->length()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/googlevoice/UpdateService;->setRetryUpdateAlarm(J)V

    .line 558
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateService;->updateRetryInterval:Lcom/google/android/apps/googlevoice/net/RetryInterval;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/net/RetryInterval;->adjustDueToFailure()V

    .line 562
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateService;->connectionInformation:Lcom/google/android/apps/googlevoice/ConnectionInformation;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/ConnectionInformation;->hasNetworkConnection()Z

    move-result v0

    if-nez v0, :cond_89

    .line 563
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/apps/googlevoice/UpdateService;->setConnectivityReceiverEnabled(Z)V

    .line 565
    :cond_89
    const-string v0, "UpdateService: Rescheduled retry"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->i(Ljava/lang/String;)V

    .line 566
    sget-object v0, Lcom/google/android/apps/googlevoice/CheckinHelper$NotificationState;->RETRY_SCHEDULED:Lcom/google/android/apps/googlevoice/CheckinHelper$NotificationState;

    invoke-direct {p0, v0}, Lcom/google/android/apps/googlevoice/UpdateService;->checkinState(Lcom/google/android/apps/googlevoice/CheckinHelper$NotificationState;)V

    .line 569
    :cond_93
    instance-of v0, p2, Lcom/google/android/apps/googlevoice/net/VoiceServiceException;

    if-eqz v0, :cond_d5

    check-cast p2, Lcom/google/android/apps/googlevoice/net/VoiceServiceException;

    .end local p2
    invoke-virtual {p2}, Lcom/google/android/apps/googlevoice/net/VoiceServiceException;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    move-result-object v0

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->INVALID_AUTH_TOKEN:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    if-ne v0, v1, :cond_d5

    .line 574
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateService;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/UpdateService;->handler:Lcom/google/android/apps/googlevoice/UpdateService$Handler;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Lcom/google/android/apps/googlevoice/UpdateService$Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/UpdateService;->handler:Lcom/google/android/apps/googlevoice/UpdateService$Handler;

    const/16 v3, 0x3ea

    invoke-virtual {v2, v3}, Lcom/google/android/apps/googlevoice/UpdateService$Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/apps/googlevoice/DependencyResolver;->invalidateAuthToken(Landroid/os/Message;Landroid/os/Message;Z)V

    .line 576
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateService;->updateStateManager:Lcom/google/android/apps/googlevoice/UpdateStateManager;

    sget-object v1, Lcom/google/android/apps/googlevoice/UpdateStateManager$State;->OK:Lcom/google/android/apps/googlevoice/UpdateStateManager$State;

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/UpdateStateManager;->setUpdateState(Lcom/google/android/apps/googlevoice/UpdateStateManager$State;)V
    :try_end_be
    .catchall {:try_start_6f .. :try_end_be} :catchall_dd

    .line 582
    :goto_be
    const/4 v0, 0x0

    :try_start_bf
    iput-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateService;->updateTask:Lcom/google/android/apps/googlevoice/UpdateTask;

    .line 583
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateService;->updateTaskLite:Lcom/google/android/apps/googlevoice/UpdateTaskLite;

    .line 585
    iget v0, p0, Lcom/google/android/apps/googlevoice/UpdateService;->numRequestsPending:I

    if-lez v0, :cond_d1

    .line 588
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/UpdateService;->isLightUpdateDue()Z

    move-result v0

    if-nez v0, :cond_f5

    .line 589
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/googlevoice/UpdateService;->numRequestsPending:I

    .line 596
    :cond_d1
    :goto_d1
    invoke-static {}, Lcom/google/android/apps/googlevoice/UpdateService;->releaseWakeLock()V
    :try_end_d4
    .catchall {:try_start_bf .. :try_end_d4} :catchall_6c

    goto :goto_66

    .line 578
    :cond_d5
    :try_start_d5
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateService;->updateStateManager:Lcom/google/android/apps/googlevoice/UpdateStateManager;

    sget-object v1, Lcom/google/android/apps/googlevoice/UpdateStateManager$State;->FAILED:Lcom/google/android/apps/googlevoice/UpdateStateManager$State;

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/UpdateStateManager;->setUpdateState(Lcom/google/android/apps/googlevoice/UpdateStateManager$State;)V
    :try_end_dc
    .catchall {:try_start_d5 .. :try_end_dc} :catchall_dd

    goto :goto_be

    .line 582
    :catchall_dd
    move-exception v0

    const/4 v1, 0x0

    :try_start_df
    iput-object v1, p0, Lcom/google/android/apps/googlevoice/UpdateService;->updateTask:Lcom/google/android/apps/googlevoice/UpdateTask;

    .line 583
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/UpdateService;->updateTaskLite:Lcom/google/android/apps/googlevoice/UpdateTaskLite;

    .line 585
    iget v1, p0, Lcom/google/android/apps/googlevoice/UpdateService;->numRequestsPending:I

    if-lez v1, :cond_f1

    .line 588
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/UpdateService;->isLightUpdateDue()Z

    move-result v1

    if-nez v1, :cond_f9

    .line 589
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/apps/googlevoice/UpdateService;->numRequestsPending:I

    .line 596
    :cond_f1
    :goto_f1
    invoke-static {}, Lcom/google/android/apps/googlevoice/UpdateService;->releaseWakeLock()V

    throw v0

    .line 591
    :cond_f5
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/apps/googlevoice/UpdateService;->numRequestsPending:I

    goto :goto_d1

    :cond_f9
    const/4 v1, 0x1

    iput v1, p0, Lcom/google/android/apps/googlevoice/UpdateService;->numRequestsPending:I
    :try_end_fc
    .catchall {:try_start_df .. :try_end_fc} :catchall_6c

    goto :goto_f1
.end method

.method public updateStarted(Lcom/google/android/apps/googlevoice/model/VoiceModel;)V
    .registers 4
    .parameter "model"

    .prologue
    .line 486
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_9

    .line 487
    const-string v0, "UpdateService.updateStarted()"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 489
    :cond_9
    const-string v0, "US: updateStarted"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/UpdateService;->logCheckinMessage(Ljava/lang/String;)V

    .line 490
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateService;->updateStateManager:Lcom/google/android/apps/googlevoice/UpdateStateManager;

    sget-object v1, Lcom/google/android/apps/googlevoice/UpdateStateManager$State;->UPDATING:Lcom/google/android/apps/googlevoice/UpdateStateManager$State;

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/UpdateStateManager;->setUpdateState(Lcom/google/android/apps/googlevoice/UpdateStateManager$State;)V

    .line 491
    sget-object v0, Lcom/google/android/apps/googlevoice/CheckinHelper$NotificationState;->UPDATE_STARTED:Lcom/google/android/apps/googlevoice/CheckinHelper$NotificationState;

    invoke-direct {p0, v0}, Lcom/google/android/apps/googlevoice/UpdateService;->checkinState(Lcom/google/android/apps/googlevoice/CheckinHelper$NotificationState;)V

    .line 492
    return-void
.end method

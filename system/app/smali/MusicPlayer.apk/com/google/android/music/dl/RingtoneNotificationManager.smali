.class public Lcom/google/android/music/dl/RingtoneNotificationManager;
.super Ljava/lang/Object;
.source "RingtoneNotificationManager.java"


# static fields
.field private static final LOGV:Z


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mScheduler:Lcom/google/android/music/dl/RingtoneScheduler;

.field private final mService:Landroid/app/Service;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const-string v0, "MusicRingtones"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/dl/RingtoneNotificationManager;->LOGV:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Service;Lcom/google/android/music/dl/BufferProgress;Lcom/google/android/music/dl/RingtoneScheduler;)V
    .registers 8
    .parameter "service"
    .parameter "bufferProgress"
    .parameter "scheduler"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Lcom/google/android/music/dl/RingtoneNotificationManager$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/dl/RingtoneNotificationManager$1;-><init>(Lcom/google/android/music/dl/RingtoneNotificationManager;)V

    iput-object v0, p0, Lcom/google/android/music/dl/RingtoneNotificationManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 42
    iput-object p1, p0, Lcom/google/android/music/dl/RingtoneNotificationManager;->mService:Landroid/app/Service;

    .line 43
    iput-object p3, p0, Lcom/google/android/music/dl/RingtoneNotificationManager;->mScheduler:Lcom/google/android/music/dl/RingtoneScheduler;

    .line 45
    iget-object v0, p0, Lcom/google/android/music/dl/RingtoneNotificationManager;->mService:Landroid/app/Service;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/google/android/music/dl/RingtoneNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    .line 48
    iget-object v0, p0, Lcom/google/android/music/dl/RingtoneNotificationManager;->mService:Landroid/app/Service;

    iget-object v1, p0, Lcom/google/android/music/dl/RingtoneNotificationManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.google.android.music.RINGTONE_REQUEST_END"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/dl/RingtoneNotificationManager;)Lcom/google/android/music/dl/RingtoneScheduler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/music/dl/RingtoneNotificationManager;->mScheduler:Lcom/google/android/music/dl/RingtoneScheduler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/music/dl/RingtoneNotificationManager;Landroid/content/Context;ILjava/lang/String;JLjava/lang/String;)V
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 26
    invoke-direct/range {p0 .. p6}, Lcom/google/android/music/dl/RingtoneNotificationManager;->showNotification(Landroid/content/Context;ILjava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method private declared-synchronized showNotification(Landroid/content/Context;ILjava/lang/String;JLjava/lang/String;)V
    .registers 15
    .parameter "context"
    .parameter "status"
    .parameter "ringtoneName"
    .parameter "musicId"
    .parameter "filepath"

    .prologue
    .line 62
    monitor-enter p0

    if-nez p2, :cond_61

    .line 63
    :try_start_3
    iget-object v4, p0, Lcom/google/android/music/dl/RingtoneNotificationManager;->mService:Landroid/app/Service;

    const v5, 0x7f0d0134

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p3, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/app/Service;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, ticker:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/music/dl/RingtoneNotificationManager;->mService:Landroid/app/Service;

    const v5, 0x7f0d0135

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p3, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/app/Service;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, title:Ljava/lang/String;
    :goto_21
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 73
    .local v1, notification:Landroid/app/Notification;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Landroid/app/Notification;->when:J

    .line 74
    const/16 v4, 0x18

    iput v4, v1, Landroid/app/Notification;->flags:I

    .line 75
    const v4, 0x1080082

    iput v4, v1, Landroid/app/Notification;->icon:I

    .line 77
    iput-object v2, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 78
    const/4 v4, 0x0

    iput v4, v1, Landroid/app/Notification;->defaults:I

    .line 80
    invoke-static {p1, p6, p4, p5}, Lcom/google/android/music/store/MusicRingtoneManager;->getEditRingtoneIntent(Landroid/content/Context;Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    .line 81
    .local v0, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/google/android/music/dl/RingtoneNotificationManager;->mService:Landroid/app/Service;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 83
    iget-object v4, p0, Lcom/google/android/music/dl/RingtoneNotificationManager;->mService:Landroid/app/Service;

    iget-object v5, p0, Lcom/google/android/music/dl/RingtoneNotificationManager;->mService:Landroid/app/Service;

    const v6, 0x7f0d0136

    invoke-virtual {v5, v6}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v4, v3, v5, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 86
    iget-object v4, p0, Lcom/google/android/music/dl/RingtoneNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v5, 0x14

    invoke-virtual {v4, v5, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_5f
    .catchall {:try_start_3 .. :try_end_5f} :catchall_7a

    .line 87
    monitor-exit p0

    return-void

    .line 67
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #notification:Landroid/app/Notification;
    .end local v2           #ticker:Ljava/lang/String;
    .end local v3           #title:Ljava/lang/String;
    :cond_61
    :try_start_61
    iget-object v4, p0, Lcom/google/android/music/dl/RingtoneNotificationManager;->mService:Landroid/app/Service;

    const v5, 0x7f0d0137

    invoke-virtual {v4, v5}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 69
    .restart local v2       #ticker:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/music/dl/RingtoneNotificationManager;->mService:Landroid/app/Service;

    const v5, 0x7f0d0135

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p3, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/app/Service;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_78
    .catchall {:try_start_61 .. :try_end_78} :catchall_7a

    move-result-object v3

    .restart local v3       #title:Ljava/lang/String;
    goto :goto_21

    .line 62
    .end local v2           #ticker:Ljava/lang/String;
    .end local v3           #title:Ljava/lang/String;
    :catchall_7a
    move-exception v4

    monitor-exit p0

    throw v4
.end method


# virtual methods
.method public declared-synchronized notifyAllDownloadsFinished()V
    .registers 1

    .prologue
    .line 99
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized notifyDownloadProgress(Lcom/google/android/music/dl/DownloadOrder;)V
    .registers 2
    .parameter "order"

    .prologue
    .line 103
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized notifyDownloadsStarting()V
    .registers 1

    .prologue
    .line 95
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized notifyEnabledStateChanged(ZZ)V
    .registers 3
    .parameter "enabled"
    .parameter "fromExcessiveErrors"

    .prologue
    .line 91
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/music/dl/RingtoneNotificationManager;->mService:Landroid/app/Service;

    iget-object v1, p0, Lcom/google/android/music/dl/RingtoneNotificationManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 54
    return-void
.end method

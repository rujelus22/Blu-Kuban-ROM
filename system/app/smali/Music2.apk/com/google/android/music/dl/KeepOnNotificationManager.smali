.class public Lcom/google/android/music/dl/KeepOnNotificationManager;
.super Ljava/lang/Object;
.source "KeepOnNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/dl/KeepOnNotificationManager$Status;
    }
.end annotation


# static fields
.field private static final LOGV:Z

.field private static final UPDATE_NOTIFICATION_MESSAGE_TYPE:I


# instance fields
.field private final mBufferProgress:Lcom/google/android/music/dl/BufferProgress;

.field private final mClearableFlags:I

.field private mCompletedDownloadSize:J

.field private mCompletedDownloads:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Lcom/google/android/music/dl/ContentIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentDownload:Lcom/google/android/music/dl/DownloadOrder;

.field private final mFreshTotalDownloadsRunnable:Ljava/lang/Runnable;

.field private final mKeepOnScheduler:Lcom/google/android/music/dl/KeepOnDeviceScheduler;

.field private final mNonClearableFlags:I

.field private mNotification:Landroid/app/Notification;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mService:Landroid/app/Service;

.field private final mShouldKeepOnBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mShuttingDown:Z

.field private mStatus:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

.field private mTotalCompletedDownloads:I

.field private mTotalDownloadSize:J

.field private mTotalDownloads:I

.field private mUpdateDownloadProgressNotificationRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const-string v0, "KeepOnScheduler"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/dl/KeepOnNotificationManager;->LOGV:Z

    .line 50
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    invoke-static {v0}, Lcom/google/android/music/utils/async/AsyncWorkers;->getUniqueMessageType(Lcom/google/android/music/Worker;)I

    move-result v0

    sput v0, Lcom/google/android/music/dl/KeepOnNotificationManager;->UPDATE_NOTIFICATION_MESSAGE_TYPE:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Service;Lcom/google/android/music/dl/BufferProgress;Lcom/google/android/music/dl/KeepOnDeviceScheduler;)V
    .registers 9
    .parameter "service"
    .parameter "bufferProgress"
    .parameter "keepOnScheduler"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput v1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mTotalDownloads:I

    .line 61
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mCompletedDownloads:Ljava/util/TreeSet;

    .line 64
    iput v1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mTotalCompletedDownloads:I

    .line 67
    iput-wide v3, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mTotalDownloadSize:J

    .line 70
    iput-wide v3, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mCompletedDownloadSize:J

    .line 77
    iput-object v2, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mNotification:Landroid/app/Notification;

    .line 79
    iput-object v2, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mCurrentDownload:Lcom/google/android/music/dl/DownloadOrder;

    .line 80
    iput-boolean v1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mShuttingDown:Z

    .line 83
    const/16 v0, 0x18

    iput v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mClearableFlags:I

    .line 87
    const/16 v0, 0x6a

    iput v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mNonClearableFlags:I

    .line 100
    sget-object v0, Lcom/google/android/music/dl/KeepOnNotificationManager$Status;->UNKNOWN:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

    iput-object v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mStatus:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

    .line 123
    new-instance v0, Lcom/google/android/music/dl/KeepOnNotificationManager$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/dl/KeepOnNotificationManager$1;-><init>(Lcom/google/android/music/dl/KeepOnNotificationManager;)V

    iput-object v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mUpdateDownloadProgressNotificationRunnable:Ljava/lang/Runnable;

    .line 299
    new-instance v0, Lcom/google/android/music/dl/KeepOnNotificationManager$2;

    invoke-direct {v0, p0}, Lcom/google/android/music/dl/KeepOnNotificationManager$2;-><init>(Lcom/google/android/music/dl/KeepOnNotificationManager;)V

    iput-object v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mFreshTotalDownloadsRunnable:Ljava/lang/Runnable;

    .line 319
    new-instance v0, Lcom/google/android/music/dl/KeepOnNotificationManager$3;

    invoke-direct {v0, p0}, Lcom/google/android/music/dl/KeepOnNotificationManager$3;-><init>(Lcom/google/android/music/dl/KeepOnNotificationManager;)V

    iput-object v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mShouldKeepOnBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 104
    iput-object p1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mService:Landroid/app/Service;

    .line 105
    iput-object p2, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mBufferProgress:Lcom/google/android/music/dl/BufferProgress;

    .line 106
    iput-object p3, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mKeepOnScheduler:Lcom/google/android/music/dl/KeepOnDeviceScheduler;

    .line 108
    iget-object v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mService:Landroid/app/Service;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    .line 111
    iget-object v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mService:Landroid/app/Service;

    iget-object v1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mShouldKeepOnBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.google.android.music.NEW_SHOULDKEEPON"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 114
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    iget-object v1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mFreshTotalDownloadsRunnable:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    .line 115
    return-void
.end method

.method static synthetic access$000()I
    .registers 1

    .prologue
    .line 33
    sget v0, Lcom/google/android/music/dl/KeepOnNotificationManager;->UPDATE_NOTIFICATION_MESSAGE_TYPE:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/music/dl/KeepOnNotificationManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/android/music/dl/KeepOnNotificationManager;->updateDownloadProgressNotificationImpl()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/music/dl/KeepOnNotificationManager;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mFreshTotalDownloadsRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/music/dl/KeepOnNotificationManager;)Lcom/google/android/music/dl/KeepOnDeviceScheduler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mKeepOnScheduler:Lcom/google/android/music/dl/KeepOnDeviceScheduler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/music/dl/KeepOnNotificationManager;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mTotalDownloads:I

    return v0
.end method

.method static synthetic access$302(Lcom/google/android/music/dl/KeepOnNotificationManager;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput p1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mTotalDownloads:I

    return p1
.end method

.method static synthetic access$402(Lcom/google/android/music/dl/KeepOnNotificationManager;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-wide p1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mTotalDownloadSize:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/google/android/music/dl/KeepOnNotificationManager;)Ljava/util/TreeSet;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mCompletedDownloads:Ljava/util/TreeSet;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/android/music/dl/KeepOnNotificationManager;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-wide p1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mCompletedDownloadSize:J

    return-wide p1
.end method

.method static synthetic access$702(Lcom/google/android/music/dl/KeepOnNotificationManager;Lcom/google/android/music/dl/DownloadOrder;)Lcom/google/android/music/dl/DownloadOrder;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mCurrentDownload:Lcom/google/android/music/dl/DownloadOrder;

    return-object p1
.end method

.method static synthetic access$800(Lcom/google/android/music/dl/KeepOnNotificationManager;)Lcom/google/android/music/dl/KeepOnNotificationManager$Status;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mStatus:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/music/dl/KeepOnNotificationManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/android/music/dl/KeepOnNotificationManager;->removeNotification()V

    return-void
.end method

.method private declared-synchronized createNotification()V
    .registers 4

    .prologue
    .line 139
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mNotification:Landroid/app/Notification;

    if-nez v0, :cond_28

    .line 140
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mNotification:Landroid/app/Notification;

    .line 141
    iget-object v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mNotification:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/Notification;->when:J

    .line 142
    iget-object v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mNotification:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 143
    iget-object v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mNotification:Landroid/app/Notification;

    const v1, 0x7f02022f

    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 144
    iget-object v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mNotification:Landroid/app/Notification;

    const/4 v1, 0x0

    iput v1, v0, Landroid/app/Notification;->defaults:I
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2a

    .line 146
    :cond_28
    monitor-exit p0

    return-void

    .line 139
    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized removeNotification()V
    .registers 3

    .prologue
    .line 149
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mNotification:Landroid/app/Notification;

    if-eqz v0, :cond_13

    .line 150
    iget-object v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mService:Landroid/app/Service;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Service;->stopForeground(Z)V

    .line 151
    iget-object v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mNotification:Landroid/app/Notification;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 154
    :cond_13
    monitor-exit p0

    return-void

    .line 149
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateDownloadProgressNotification(Z)V
    .registers 6
    .parameter "delay"

    .prologue
    .line 131
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    .line 132
    .local v0, bgWorker:Lcom/google/android/music/Worker;
    iget-object v2, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mUpdateDownloadProgressNotificationRunnable:Ljava/lang/Runnable;

    invoke-static {v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v1

    .line 133
    .local v1, msg:Landroid/os/Message;
    sget v2, Lcom/google/android/music/dl/KeepOnNotificationManager;->UPDATE_NOTIFICATION_MESSAGE_TYPE:I

    iput v2, v1, Landroid/os/Message;->what:I

    .line 134
    if-eqz p1, :cond_14

    const-wide/16 v2, 0x3e8

    :goto_10
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/music/Worker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 135
    return-void

    .line 134
    :cond_14
    const-wide/16 v2, 0x0

    goto :goto_10
.end method

.method private declared-synchronized updateDownloadProgressNotificationImpl()V
    .registers 6

    .prologue
    .line 216
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mStatus:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

    sget-object v1, Lcom/google/android/music/dl/KeepOnNotificationManager$Status;->DOWNLOADING:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_c0

    if-eq v0, v1, :cond_9

    .line 243
    :goto_7
    monitor-exit p0

    return-void

    .line 219
    :cond_9
    :try_start_9
    invoke-direct {p0}, Lcom/google/android/music/dl/KeepOnNotificationManager;->createNotification()V

    .line 220
    iget-object v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mService:Landroid/app/Service;

    invoke-virtual {v0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 221
    iget-object v1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mNotification:Landroid/app/Notification;

    new-instance v2, Landroid/widget/RemoteViews;

    iget-object v3, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mService:Landroid/app/Service;

    invoke-virtual {v3}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f04000f

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v2, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 223
    iget-object v1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mNotification:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v2, 0x7f100051

    const v3, 0x7f0d00f4

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 225
    iget-object v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mNotification:Landroid/app/Notification;

    const/16 v1, 0x6a

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 226
    iget-wide v2, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mCompletedDownloadSize:J

    iget-object v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mCurrentDownload:Lcom/google/android/music/dl/DownloadOrder;

    if-eqz v0, :cond_c3

    iget-object v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mCurrentDownload:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v0}, Lcom/google/android/music/dl/DownloadOrder;->getCompleted()J

    move-result-wide v0

    :goto_47
    add-long/2addr v0, v2

    long-to-float v0, v0

    .line 228
    iget-wide v1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mTotalDownloadSize:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    .line 231
    const/16 v1, 0x64

    const/4 v2, 0x0

    const/high16 v3, 0x42c8

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 233
    iget-object v1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mNotification:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v2, 0x7f100052

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 234
    iget-object v1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mNotification:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v2, 0x7f100053

    const-string v3, "setMax"

    const/16 v4, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 235
    iget-object v1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mNotification:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v2, 0x7f100053

    const-string v3, "setProgress"

    invoke-virtual {v1, v2, v3, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 237
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mService:Landroid/app/Service;

    const-class v2, Lcom/google/android/music/DownloadQueueActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 238
    const-string v1, "com.google.android.music.DOWNLOAD_QUEUE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 241
    iget-object v1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mNotification:Landroid/app/Notification;

    iget-object v2, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mService:Landroid/app/Service;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 242
    iget-object v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mService:Landroid/app/Service;

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mNotification:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V
    :try_end_be
    .catchall {:try_start_9 .. :try_end_be} :catchall_c0

    goto/16 :goto_7

    .line 216
    :catchall_c0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 226
    :cond_c3
    const-wide/16 v0, 0x0

    goto :goto_47
.end method


# virtual methods
.method public declared-synchronized notifyAllDownloadsFinished()V
    .registers 7

    .prologue
    .line 246
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mStatus:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

    sget-object v1, Lcom/google/android/music/dl/KeepOnNotificationManager$Status;->DOWNLOADING:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

    if-ne v0, v1, :cond_6d

    .line 247
    sget-object v0, Lcom/google/android/music/dl/KeepOnNotificationManager$Status;->DONE:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

    iput-object v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mStatus:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

    .line 250
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mTotalDownloads:I

    .line 251
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    sget v1, Lcom/google/android/music/dl/KeepOnNotificationManager;->UPDATE_NOTIFICATION_MESSAGE_TYPE:I

    invoke-virtual {v0, v1}, Lcom/google/android/music/Worker;->removeMessages(I)V

    .line 252
    invoke-direct {p0}, Lcom/google/android/music/dl/KeepOnNotificationManager;->createNotification()V

    .line 253
    iget-object v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mService:Landroid/app/Service;

    invoke-virtual {v0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 254
    iget-object v1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mNotification:Landroid/app/Notification;

    new-instance v2, Landroid/widget/RemoteViews;

    iget-object v3, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mService:Landroid/app/Service;

    invoke-virtual {v3}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f04000e

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v2, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 256
    iget-object v1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mNotification:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v2, 0x7f100051

    const v3, 0x7f0d00f7

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 258
    iget-object v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mService:Landroid/app/Service;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Service;->stopForeground(Z)V

    .line 259
    iget-object v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mNotification:Landroid/app/Notification;

    const/16 v1, 0x18

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 260
    iget-object v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mNotification:Landroid/app/Notification;

    iget-object v1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mService:Landroid/app/Service;

    const/4 v2, 0x0

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mService:Landroid/app/Service;

    const-class v5, Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 262
    iget-object v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mNotification:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_6b
    .catchall {:try_start_1 .. :try_end_6b} :catchall_77

    .line 266
    :cond_6b
    :goto_6b
    monitor-exit p0

    return-void

    .line 263
    :cond_6d
    :try_start_6d
    iget-object v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mStatus:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

    sget-object v1, Lcom/google/android/music/dl/KeepOnNotificationManager$Status;->DONE:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

    if-eq v0, v1, :cond_6b

    .line 264
    invoke-direct {p0}, Lcom/google/android/music/dl/KeepOnNotificationManager;->removeNotification()V
    :try_end_76
    .catchall {:try_start_6d .. :try_end_76} :catchall_77

    goto :goto_6b

    .line 246
    :catchall_77
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized notifyDownloadProgress(Lcom/google/android/music/dl/DownloadOrder;)V
    .registers 7
    .parameter "order"

    .prologue
    .line 269
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->hasKeeponPurpose()Z

    move-result v1

    if-nez v1, :cond_12

    .line 270
    iget-object v1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mStatus:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

    sget-object v2, Lcom/google/android/music/dl/KeepOnNotificationManager$Status;->DONE:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

    if-eq v1, v2, :cond_10

    .line 271
    invoke-direct {p0}, Lcom/google/android/music/dl/KeepOnNotificationManager;->removeNotification()V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_64

    .line 293
    :cond_10
    :goto_10
    monitor-exit p0

    return-void

    .line 276
    :cond_12
    :try_start_12
    iget-object v1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mStatus:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

    sget-object v2, Lcom/google/android/music/dl/KeepOnNotificationManager$Status;->NOT_ENABLED:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

    if-eq v1, v2, :cond_10

    .line 277
    sget-object v1, Lcom/google/android/music/dl/KeepOnNotificationManager$Status;->DOWNLOADING:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

    iput-object v1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mStatus:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

    .line 278
    iget-object v1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mCompletedDownloads:Ljava/util/TreeSet;

    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->getContentIdentifier()Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 279
    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->getDownloadStatus()Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    move-result-object v0

    .line 280
    .local v0, status:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;
    iget-object v1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mCurrentDownload:Lcom/google/android/music/dl/DownloadOrder;

    if-eqz v1, :cond_67

    iget-object v1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mCurrentDownload:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v1}, Lcom/google/android/music/dl/DownloadOrder;->getContentIdentifier()Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->getContentIdentifier()Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/music/dl/ContentIdentifier;->equals(Lcom/google/android/music/dl/ContentIdentifier;)Z

    move-result v1

    if-eqz v1, :cond_67

    sget-object v1, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->COMPLETED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    if-ne v0, v1, :cond_67

    .line 282
    iget-wide v1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mCompletedDownloadSize:J

    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->getLength()J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mCompletedDownloadSize:J

    .line 283
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mCurrentDownload:Lcom/google/android/music/dl/DownloadOrder;

    .line 284
    iget v1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mTotalCompletedDownloads:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mTotalCompletedDownloads:I

    .line 285
    iget-object v1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mCompletedDownloads:Ljava/util/TreeSet;

    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->getContentIdentifier()Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 289
    :cond_5f
    :goto_5f
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/music/dl/KeepOnNotificationManager;->updateDownloadProgressNotification(Z)V
    :try_end_63
    .catchall {:try_start_12 .. :try_end_63} :catchall_64

    goto :goto_10

    .line 269
    .end local v0           #status:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;
    :catchall_64
    move-exception v1

    monitor-exit p0

    throw v1

    .line 286
    .restart local v0       #status:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;
    :cond_67
    :try_start_67
    sget-object v1, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->DOWNLOADING:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    if-ne v0, v1, :cond_5f

    .line 287
    iput-object p1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mCurrentDownload:Lcom/google/android/music/dl/DownloadOrder;
    :try_end_6d
    .catchall {:try_start_67 .. :try_end_6d} :catchall_64

    goto :goto_5f
.end method

.method public declared-synchronized notifyDownloadsStarting()V
    .registers 3

    .prologue
    .line 202
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mTotalDownloads:I

    if-nez v0, :cond_11

    .line 203
    const-string v0, "KeepOnScheduler"

    const-string v1, "notifyDownloadsStarting, but mTotalDownloads == 0"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mFreshTotalDownloadsRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 206
    :cond_11
    iget v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mTotalDownloads:I

    if-nez v0, :cond_25

    .line 207
    const-string v0, "KeepOnScheduler"

    const-string v1, "notifyDownloadsStarting, but no downloads available"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    sget-object v0, Lcom/google/android/music/dl/KeepOnNotificationManager$Status;->NO_DOWNLOADS:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

    iput-object v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mStatus:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

    .line 209
    invoke-direct {p0}, Lcom/google/android/music/dl/KeepOnNotificationManager;->removeNotification()V
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_2a

    .line 213
    :goto_23
    monitor-exit p0

    return-void

    .line 212
    :cond_25
    :try_start_25
    sget-object v0, Lcom/google/android/music/dl/KeepOnNotificationManager$Status;->DOWNLOADING:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

    iput-object v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mStatus:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_2a

    goto :goto_23

    .line 202
    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized notifyEnabledStateChanged(ZZZ)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 158
    monitor-enter p0

    if-nez p1, :cond_b0

    .line 159
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mStatus:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

    .line 160
    sget-object v1, Lcom/google/android/music/dl/KeepOnNotificationManager$Status;->NOT_ENABLED:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

    iput-object v1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mStatus:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

    .line 161
    invoke-direct {p0}, Lcom/google/android/music/dl/KeepOnNotificationManager;->createNotification()V

    .line 162
    iget-object v1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mNotification:Landroid/app/Notification;

    new-instance v2, Landroid/widget/RemoteViews;

    iget-object v3, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mService:Landroid/app/Service;

    invoke-virtual {v3}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f04000e

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v2, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 164
    iget-object v1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mNotification:Landroid/app/Notification;

    const/16 v2, 0x18

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 165
    iget-object v1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mService:Landroid/app/Service;

    invoke-virtual {v1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 166
    if-eqz p2, :cond_63

    .line 167
    iget-object v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mNotification:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v2, 0x7f100051

    const v3, 0x7f0d00f6

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 169
    iget-object v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mNotification:Landroid/app/Notification;

    iget-object v1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mService:Landroid/app/Service;

    const/4 v2, 0x0

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mService:Landroid/app/Service;

    const-class v5, Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 171
    iget-object v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mService:Landroid/app/Service;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Service;->stopForeground(Z)V

    .line 172
    iget-object v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mNotification:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_61
    .catchall {:try_start_3 .. :try_end_61} :catchall_a3

    .line 199
    :cond_61
    :goto_61
    monitor-exit p0

    return-void

    .line 174
    :cond_63
    if-eqz p3, :cond_a6

    :try_start_65
    sget-object v2, Lcom/google/android/music/dl/KeepOnNotificationManager$Status;->DOWNLOADING:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

    if-ne v0, v2, :cond_a6

    .line 175
    iget-object v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mNotification:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v2, 0x7f100051

    const v3, 0x7f0d00f5

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 177
    iget-object v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mService:Landroid/app/Service;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Service;->stopForeground(Z)V

    .line 178
    iget-object v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mNotification:Landroid/app/Notification;

    const/16 v1, 0x18

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 179
    iget-object v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mNotification:Landroid/app/Notification;

    iget-object v1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mService:Landroid/app/Service;

    const/4 v2, 0x0

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.net.wifi.PICK_WIFI_NETWORK"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 181
    iget-object v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mNotification:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_a2
    .catchall {:try_start_65 .. :try_end_a2} :catchall_a3

    goto :goto_61

    .line 158
    :catchall_a3
    move-exception v0

    monitor-exit p0

    throw v0

    .line 183
    :cond_a6
    :try_start_a6
    iget-object v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mStatus:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

    sget-object v1, Lcom/google/android/music/dl/KeepOnNotificationManager$Status;->DONE:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

    if-eq v0, v1, :cond_61

    .line 184
    invoke-direct {p0}, Lcom/google/android/music/dl/KeepOnNotificationManager;->removeNotification()V

    goto :goto_61

    .line 189
    :cond_b0
    iget v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mTotalDownloads:I

    if-lez v0, :cond_c2

    .line 190
    sget-object v0, Lcom/google/android/music/dl/KeepOnNotificationManager$Status;->DOWNLOADING:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

    iput-object v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mStatus:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

    .line 195
    :goto_b8
    iget-object v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mStatus:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

    sget-object v1, Lcom/google/android/music/dl/KeepOnNotificationManager$Status;->DONE:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

    if-eq v0, v1, :cond_61

    .line 196
    invoke-direct {p0}, Lcom/google/android/music/dl/KeepOnNotificationManager;->removeNotification()V

    goto :goto_61

    .line 192
    :cond_c2
    sget-object v0, Lcom/google/android/music/dl/KeepOnNotificationManager$Status;->NO_DOWNLOADS:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;

    iput-object v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mStatus:Lcom/google/android/music/dl/KeepOnNotificationManager$Status;
    :try_end_c6
    .catchall {:try_start_a6 .. :try_end_c6} :catchall_a3

    goto :goto_b8
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mShuttingDown:Z

    .line 119
    iget-object v0, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mService:Landroid/app/Service;

    iget-object v1, p0, Lcom/google/android/music/dl/KeepOnNotificationManager;->mShouldKeepOnBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 120
    invoke-direct {p0}, Lcom/google/android/music/dl/KeepOnNotificationManager;->removeNotification()V

    .line 121
    return-void
.end method

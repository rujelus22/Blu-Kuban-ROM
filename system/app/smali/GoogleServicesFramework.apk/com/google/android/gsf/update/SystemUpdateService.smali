.class public Lcom/google/android/gsf/update/SystemUpdateService;
.super Landroid/app/Service;
.source "SystemUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/update/SystemUpdateService$1;,
        Lcom/google/android/gsf/update/SystemUpdateService$ThreadPerTaskExecutor;,
        Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;,
        Lcom/google/android/gsf/update/SystemUpdateService$SecretCodeReceiver;,
        Lcom/google/android/gsf/update/SystemUpdateService$Receiver;
    }
.end annotation


# static fields
.field private static final EXECUTOR:Ljava/util/concurrent/Executor;

.field private static sWakeLock:Landroid/os/PowerManager$WakeLock;

.field private static sWakeLockLock:Ljava/lang/Object;


# instance fields
.field private mDownload:Lcom/google/android/gsf/update/Download;

.field private mDownloadRetry:Lcom/android/common/OperationScheduler;

.field private mDownloadRetryOptions:Lcom/android/common/OperationScheduler$Options;

.field private mIntentPending:Landroid/content/Intent;

.field private mPending:Landroid/app/PendingIntent;

.field private mPendingLock:Ljava/lang/Object;

.field private mRunning:Z

.field private mSharedPrefs:Landroid/content/SharedPreferences;

.field private mStartPending:Z

.field private mVerifier:Lcom/google/android/gsf/update/SystemUpdateVerifierTask;

.field private mVerifierLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 207
    new-instance v0, Lcom/google/android/gsf/update/SystemUpdateService$ThreadPerTaskExecutor;

    invoke-direct {v0}, Lcom/google/android/gsf/update/SystemUpdateService$ThreadPerTaskExecutor;-><init>()V

    sput-object v0, Lcom/google/android/gsf/update/SystemUpdateService;->EXECUTOR:Ljava/util/concurrent/Executor;

    .line 209
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gsf/update/SystemUpdateService;->sWakeLockLock:Ljava/lang/Object;

    .line 210
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gsf/update/SystemUpdateService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 195
    iput-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 196
    iput-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mDownload:Lcom/google/android/gsf/update/Download;

    .line 197
    iput-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mDownloadRetry:Lcom/android/common/OperationScheduler;

    .line 198
    iput-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mDownloadRetryOptions:Lcom/android/common/OperationScheduler$Options;

    .line 199
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mVerifierLock:Ljava/lang/Object;

    .line 200
    iput-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mVerifier:Lcom/google/android/gsf/update/SystemUpdateVerifierTask;

    .line 202
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mPendingLock:Ljava/lang/Object;

    .line 203
    iput-boolean v2, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mRunning:Z

    .line 204
    iput-boolean v2, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mStartPending:Z

    .line 205
    iput-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mIntentPending:Landroid/content/Intent;

    .line 212
    iput-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mPending:Landroid/app/PendingIntent;

    .line 992
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lcom/google/android/gsf/update/SystemUpdateService;->sWakeLockLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Landroid/os/PowerManager$WakeLock;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lcom/google/android/gsf/update/SystemUpdateService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/android/common/OperationScheduler$Options;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mDownloadRetryOptions:Lcom/android/common/OperationScheduler$Options;

    return-object v0
.end method

.method static synthetic access$102(Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;
    .registers 1
    .parameter "x0"

    .prologue
    .line 36
    sput-object p0, Lcom/google/android/gsf/update/SystemUpdateService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/google/android/gsf/update/SystemUpdateService;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mVerifierLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/google/android/gsf/update/SystemUpdateVerifierTask;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mVerifier:Lcom/google/android/gsf/update/SystemUpdateVerifierTask;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/google/android/gsf/update/SystemUpdateService;Lcom/google/android/gsf/update/SystemUpdateVerifierTask;)Lcom/google/android/gsf/update/SystemUpdateVerifierTask;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mVerifier:Lcom/google/android/gsf/update/SystemUpdateVerifierTask;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/google/android/gsf/update/Download;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mDownload:Lcom/google/android/gsf/update/Download;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/app/PendingIntent;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mPending:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/gsf/update/SystemUpdateService;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mPendingLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/android/gsf/update/SystemUpdateService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mRunning:Z

    return p1
.end method

.method static synthetic access$500(Lcom/google/android/gsf/update/SystemUpdateService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mStartPending:Z

    return v0
.end method

.method static synthetic access$502(Lcom/google/android/gsf/update/SystemUpdateService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mStartPending:Z

    return p1
.end method

.method static synthetic access$600()Ljava/util/concurrent/Executor;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lcom/google/android/gsf/update/SystemUpdateService;->EXECUTOR:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/Intent;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mIntentPending:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/gsf/update/SystemUpdateService;)Landroid/content/SharedPreferences;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mSharedPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/gsf/update/SystemUpdateService;)Lcom/android/common/OperationScheduler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mDownloadRetry:Lcom/android/common/OperationScheduler;

    return-object v0
.end method

.method static cancelNotifications(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 957
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 959
    .local v0, nm:Landroid/app/NotificationManager;
    const v1, 0x7f020016

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 960
    const v1, 0x7f020017

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 961
    return-void
.end method

.method static isDownloadAvailable(I)Z
    .registers 3
    .parameter "status"

    .prologue
    const/4 v0, 0x1

    .line 967
    if-eq p0, v0, :cond_6

    const/4 v1, 0x6

    if-ne p0, v1, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method static whenMobileAllowed(Landroid/content/SharedPreferences;Landroid/content/Context;)J
    .registers 9
    .parameter "sp"
    .parameter "ctx"

    .prologue
    const/4 v6, 0x3

    const-wide/16 v2, 0x0

    .line 980
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "update_urgency"

    invoke-static {v4, v5, v6}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v6, :cond_10

    .line 989
    :cond_f
    :goto_f
    return-wide v2

    .line 985
    :cond_10
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "update_mobile_network_delay"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    int-to-long v0, v4

    .line 987
    .local v0, delay:J
    cmp-long v4, v0, v2

    if-lez v4, :cond_f

    .line 989
    const-string v4, "url_change"

    invoke-interface {p0, v4, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, v0

    add-long/2addr v2, v4

    goto :goto_f
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 250
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 253
    const-string v0, "update"

    invoke-virtual {p0, v0, v3}, Lcom/google/android/gsf/update/SystemUpdateService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 255
    new-instance v0, Lcom/google/android/gsf/update/Download;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/update/Download;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mDownload:Lcom/google/android/gsf/update/Download;

    .line 257
    new-instance v0, Lcom/android/common/OperationScheduler;

    const-string v1, "update.download.scheduler"

    invoke-virtual {p0, v1, v3}, Lcom/google/android/gsf/update/SystemUpdateService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/common/OperationScheduler;-><init>(Landroid/content/SharedPreferences;)V

    iput-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mDownloadRetry:Lcom/android/common/OperationScheduler;

    .line 260
    new-instance v0, Lcom/android/common/OperationScheduler$Options;

    invoke-direct {v0}, Lcom/android/common/OperationScheduler$Options;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mDownloadRetryOptions:Lcom/android/common/OperationScheduler$Options;

    .line 261
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mDownloadRetryOptions:Lcom/android/common/OperationScheduler$Options;

    const-wide/16 v1, 0x7530

    iput-wide v1, v0, Lcom/android/common/OperationScheduler$Options;->backoffFixedMillis:J

    .line 262
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mDownloadRetryOptions:Lcom/android/common/OperationScheduler$Options;

    const-wide/32 v1, 0xea60

    iput-wide v1, v0, Lcom/android/common/OperationScheduler$Options;->backoffIncrementalMillis:J

    .line 264
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/update/SystemUpdateService$Receiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x800

    invoke-static {p0, v3, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mPending:Landroid/app/PendingIntent;

    .line 266
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 10
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v5, 0x1

    .line 269
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mPendingLock:Ljava/lang/Object;

    monitor-enter v1

    .line 270
    :try_start_4
    iget-boolean v0, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mRunning:Z

    if-nez v0, :cond_1e

    .line 271
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mRunning:Z

    .line 272
    new-instance v0, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;-><init>(Lcom/google/android/gsf/update/SystemUpdateService;Lcom/google/android/gsf/update/SystemUpdateService$1;)V

    sget-object v2, Lcom/google/android/gsf/update/SystemUpdateService;->EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/content/Intent;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gsf/update/SystemUpdateService$UpdateTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 284
    :cond_1c
    :goto_1c
    monitor-exit v1

    .line 285
    return v5

    .line 279
    :cond_1e
    iget-boolean v0, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mStartPending:Z

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mIntentPending:Landroid/content/Intent;

    if-nez v0, :cond_1c

    .line 280
    :cond_26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mStartPending:Z

    .line 281
    if-eqz p1, :cond_1c

    iput-object p1, p0, Lcom/google/android/gsf/update/SystemUpdateService;->mIntentPending:Landroid/content/Intent;

    goto :goto_1c

    .line 284
    :catchall_2e
    move-exception v0

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_4 .. :try_end_30} :catchall_2e

    throw v0
.end method

.class public Lcom/google/android/youtube/videos/player/DownloadProgressNotifier;
.super Ljava/lang/Object;
.source "DownloadProgressNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/videos/player/DownloadProgressNotifier$Listener;
    }
.end annotation


# instance fields
.field private final file:Ljava/io/File;

.field private final listener:Lcom/google/android/youtube/videos/player/DownloadProgressNotifier$Listener;

.field private scheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private final totalFileSize:J


# direct methods
.method public constructor <init>(Landroid/net/Uri;JLcom/google/android/youtube/videos/player/DownloadProgressNotifier$Listener;)V
    .registers 7
    .parameter "uri"
    .parameter "totalFileSize"
    .parameter "listener"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Uri is not a file"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 32
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/youtube/videos/player/DownloadProgressNotifier;->file:Ljava/io/File;

    .line 33
    iput-wide p2, p0, Lcom/google/android/youtube/videos/player/DownloadProgressNotifier;->totalFileSize:J

    .line 34
    iput-object p4, p0, Lcom/google/android/youtube/videos/player/DownloadProgressNotifier;->listener:Lcom/google/android/youtube/videos/player/DownloadProgressNotifier$Listener;

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/youtube/videos/player/DownloadProgressNotifier;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/google/android/youtube/videos/player/DownloadProgressNotifier;->updateFileSize()J

    move-result-wide v0

    return-wide v0
.end method

.method private updateFileSize()J
    .registers 10

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/DownloadProgressNotifier;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 71
    .local v1, currentFileSize:J
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/DownloadProgressNotifier;->listener:Lcom/google/android/youtube/videos/player/DownloadProgressNotifier$Listener;

    iget-wide v3, p0, Lcom/google/android/youtube/videos/player/DownloadProgressNotifier;->totalFileSize:J

    const-wide/16 v5, 0x64

    mul-long/2addr v5, v1

    iget-wide v7, p0, Lcom/google/android/youtube/videos/player/DownloadProgressNotifier;->totalFileSize:J

    div-long/2addr v5, v7

    long-to-int v5, v5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/youtube/videos/player/DownloadProgressNotifier$Listener;->onDownloadProgress(JJI)V

    .line 73
    iget-wide v3, p0, Lcom/google/android/youtube/videos/player/DownloadProgressNotifier;->totalFileSize:J

    cmp-long v0, v1, v3

    if-nez v0, :cond_1d

    .line 74
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/player/DownloadProgressNotifier;->stop()V

    .line 76
    :cond_1d
    return-wide v1
.end method


# virtual methods
.method public getCurrentFileSize()J
    .registers 3

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/DownloadProgressNotifier;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPercentDownloaded()I
    .registers 5

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/player/DownloadProgressNotifier;->getCurrentFileSize()J

    move-result-wide v0

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/youtube/videos/player/DownloadProgressNotifier;->totalFileSize:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public declared-synchronized start()V
    .registers 10

    .prologue
    const/4 v0, 0x1

    .line 50
    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/google/android/youtube/videos/player/DownloadProgressNotifier;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v1, :cond_2c

    :goto_6
    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkState(Z)V

    .line 51
    invoke-direct {p0}, Lcom/google/android/youtube/videos/player/DownloadProgressNotifier;->updateFileSize()J

    move-result-wide v7

    .line 52
    .local v7, currentFileSize:J
    iget-wide v0, p0, Lcom/google/android/youtube/videos/player/DownloadProgressNotifier;->totalFileSize:J

    cmp-long v0, v7, v0

    if-gez v0, :cond_2a

    .line 53
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/player/DownloadProgressNotifier;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 54
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/DownloadProgressNotifier;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/android/youtube/videos/player/DownloadProgressNotifier$1;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/videos/player/DownloadProgressNotifier$1;-><init>(Lcom/google/android/youtube/videos/player/DownloadProgressNotifier;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_2a
    .catchall {:try_start_2 .. :try_end_2a} :catchall_2e

    .line 60
    :cond_2a
    monitor-exit p0

    return-void

    .line 50
    .end local v7           #currentFileSize:J
    :cond_2c
    const/4 v0, 0x0

    goto :goto_6

    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .registers 2

    .prologue
    .line 63
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/DownloadProgressNotifier;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_d

    .line 64
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/DownloadProgressNotifier;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/videos/player/DownloadProgressNotifier;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 67
    :cond_d
    monitor-exit p0

    return-void

    .line 63
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

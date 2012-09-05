.class public Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;
.super Lcom/google/android/youtube/videos/player/DrmMediaPlayer;
.source "OfflineMediaPlayer.java"

# interfaces
.implements Lcom/google/android/youtube/videos/player/DownloadProgressNotifier$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/videos/player/OfflineMediaPlayer$1;,
        Lcom/google/android/youtube/videos/player/OfflineMediaPlayer$InternalListener;
    }
.end annotation


# instance fields
.field private bufferingListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private final context:Landroid/content/Context;

.field private downloadProgressNotifier:Lcom/google/android/youtube/videos/player/DownloadProgressNotifier;

.field private volatile duration:I

.field private infoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private volatile percentDownloaded:I

.field private preparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private seekListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

.field private final totalFileSize:J

.field private volatile waitingForMoreData:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/youtube/videos/DrmManager;J)V
    .registers 7
    .parameter "context"
    .parameter "drmManager"
    .parameter "totalFileSize"

    .prologue
    .line 51
    invoke-direct {p0, p2}, Lcom/google/android/youtube/videos/player/DrmMediaPlayer;-><init>(Lcom/google/android/youtube/videos/DrmManager;)V

    .line 52
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iput-object v1, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->context:Landroid/content/Context;

    .line 53
    iput-wide p3, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->totalFileSize:J

    .line 54
    new-instance v0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer$InternalListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer$InternalListener;-><init>(Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;Lcom/google/android/youtube/videos/player/OfflineMediaPlayer$1;)V

    .line 55
    .local v0, internalListener:Lcom/google/android/youtube/videos/player/OfflineMediaPlayer$InternalListener;
    invoke-super {p0, v0}, Lcom/google/android/youtube/videos/player/DrmMediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 56
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->onPrepared()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;)Landroid/media/MediaPlayer$OnPreparedListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->preparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method public static allowSeekTo(III)Z
    .registers 4
    .parameter "seekToMillis"
    .parameter "durationMillis"
    .parameter "percentDownloaded"

    .prologue
    .line 126
    invoke-static {p1, p2}, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->maxSeekPositionMillis(II)I

    move-result v0

    if-gt p0, v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static getSeekToPercent(II)I
    .registers 4
    .parameter "durationMillis"
    .parameter "percentDownloaded"

    .prologue
    const/4 v0, 0x0

    .line 133
    if-nez p0, :cond_4

    .line 136
    :goto_3
    return v0

    :cond_4
    invoke-static {p0, p1}, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->maxSeekPositionMillis(II)I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    div-int/2addr v1, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_3
.end method

.method private static maxSeekPositionMillis(II)I
    .registers 4
    .parameter "durationMillis"
    .parameter "percentBuffered"

    .prologue
    .line 146
    const/16 v1, 0x64

    if-lt p1, v1, :cond_5

    .line 150
    .end local p0
    :goto_4
    return p0

    .line 149
    .restart local p0
    :cond_5
    mul-int v1, p0, p1

    div-int/lit8 v0, v1, 0x64

    .line 150
    .local v0, approxDurationDownloaded:I
    const v1, 0x1c138

    sub-int p0, v0, v1

    goto :goto_4
.end method

.method private onPrepared()V
    .registers 2

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->duration:I

    .line 167
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->downloadProgressNotifier:Lcom/google/android/youtube/videos/player/DownloadProgressNotifier;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/player/DownloadProgressNotifier;->start()V

    .line 168
    return-void
.end method

.method private declared-synchronized stopScheduler()V
    .registers 2

    .prologue
    .line 72
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->downloadProgressNotifier:Lcom/google/android/youtube/videos/player/DownloadProgressNotifier;

    if-eqz v0, :cond_d

    .line 73
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->downloadProgressNotifier:Lcom/google/android/youtube/videos/player/DownloadProgressNotifier;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/player/DownloadProgressNotifier;->stop()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->downloadProgressNotifier:Lcom/google/android/youtube/videos/player/DownloadProgressNotifier;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 76
    :cond_d
    monitor-exit p0

    return-void

    .line 72
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateCurrentPosition()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 183
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->getCurrentPosition()I

    move-result v1

    .line 184
    .local v1, position:I
    iget v2, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->duration:I

    iget v3, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->percentDownloaded:I

    mul-int/2addr v2, v3

    div-int/lit8 v0, v2, 0x64

    .line 186
    .local v0, approxDurationDownloaded:I
    iget-boolean v2, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->waitingForMoreData:Z

    if-nez v2, :cond_53

    .line 187
    iget v2, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->percentDownloaded:I

    const/16 v3, 0x64

    if-ge v2, v3, :cond_52

    invoke-virtual {p0}, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_52

    const v2, 0x1d4c0

    sub-int v2, v0, v2

    if-le v1, v2, :cond_52

    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pausing at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->percentDownloaded:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "% to buffer more data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/youtube/core/L;->i(Ljava/lang/String;)V

    .line 190
    invoke-super {p0}, Lcom/google/android/youtube/videos/player/DrmMediaPlayer;->pause()V

    .line 191
    iput-boolean v5, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->waitingForMoreData:Z

    .line 192
    iget-object v2, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->infoListener:Landroid/media/MediaPlayer$OnInfoListener;

    if-eqz v2, :cond_52

    .line 193
    iget-object v2, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->infoListener:Landroid/media/MediaPlayer$OnInfoListener;

    const/16 v3, 0x2bd

    invoke-interface {v2, p0, v3, v4}, Landroid/media/MediaPlayer$OnInfoListener;->onInfo(Landroid/media/MediaPlayer;II)Z

    .line 207
    :cond_52
    :goto_52
    return-void

    .line 196
    :cond_53
    const v2, 0x2bf20

    sub-int v2, v0, v2

    if-ge v1, v2, :cond_89

    .line 197
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Buffer full, resuming at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->percentDownloaded:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/youtube/core/L;->i(Ljava/lang/String;)V

    .line 198
    iput-boolean v4, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->waitingForMoreData:Z

    .line 199
    iget-object v2, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->infoListener:Landroid/media/MediaPlayer$OnInfoListener;

    if-eqz v2, :cond_85

    .line 200
    iget-object v2, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->infoListener:Landroid/media/MediaPlayer$OnInfoListener;

    const/16 v3, 0x2be

    invoke-interface {v2, p0, v3, v4}, Landroid/media/MediaPlayer$OnInfoListener;->onInfo(Landroid/media/MediaPlayer;II)Z

    .line 202
    :cond_85
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->start()V

    goto :goto_52

    .line 203
    :cond_89
    iget-object v2, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    if-eqz v2, :cond_52

    iget-object v2, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/youtube/core/utils/Util;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_52

    .line 205
    iget-object v2, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    const/16 v3, -0x3e81

    invoke-interface {v2, p0, v5, v3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto :goto_52
.end method

.method private updateFileSize(J)V
    .registers 6
    .parameter "size"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->bufferingListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    if-eqz v0, :cond_11

    .line 178
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->bufferingListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    iget v1, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->duration:I

    iget v2, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->percentDownloaded:I

    invoke-static {v1, v2}, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->getSeekToPercent(II)I

    move-result v1

    invoke-interface {v0, p0, v1}, Landroid/media/MediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Landroid/media/MediaPlayer;I)V

    .line 180
    :cond_11
    return-void
.end method


# virtual methods
.method public onDownloadProgress(JJI)V
    .registers 6
    .parameter "currentFileSize"
    .parameter "totalFileSize"
    .parameter "percentDownloaded"

    .prologue
    .line 171
    iput p5, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->percentDownloaded:I

    .line 172
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->updateFileSize(J)V

    .line 173
    invoke-direct {p0}, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->updateCurrentPosition()V

    .line 174
    return-void
.end method

.method public pause()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 155
    invoke-super {p0}, Lcom/google/android/youtube/videos/player/DrmMediaPlayer;->pause()V

    .line 156
    iget-boolean v0, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->waitingForMoreData:Z

    if-eqz v0, :cond_15

    .line 157
    iput-boolean v2, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->waitingForMoreData:Z

    .line 158
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->infoListener:Landroid/media/MediaPlayer$OnInfoListener;

    if-eqz v0, :cond_15

    .line 160
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->infoListener:Landroid/media/MediaPlayer$OnInfoListener;

    const/16 v1, 0x2be

    invoke-interface {v0, p0, v1, v2}, Landroid/media/MediaPlayer$OnInfoListener;->onInfo(Landroid/media/MediaPlayer;II)Z

    .line 163
    :cond_15
    return-void
.end method

.method public prepareAsync()V
    .registers 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->downloadProgressNotifier:Lcom/google/android/youtube/videos/player/DownloadProgressNotifier;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/player/DownloadProgressNotifier;->getCurrentFileSize()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->updateFileSize(J)V

    .line 68
    invoke-super {p0}, Lcom/google/android/youtube/videos/player/DrmMediaPlayer;->prepareAsync()V

    .line 69
    return-void
.end method

.method public release()V
    .registers 1

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->stopScheduler()V

    .line 88
    invoke-super {p0}, Lcom/google/android/youtube/videos/player/DrmMediaPlayer;->release()V

    .line 89
    return-void
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->waitingForMoreData:Z

    .line 81
    invoke-direct {p0}, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->stopScheduler()V

    .line 82
    invoke-super {p0}, Lcom/google/android/youtube/videos/player/DrmMediaPlayer;->reset()V

    .line 83
    return-void
.end method

.method public seekTo(I)V
    .registers 4
    .parameter "msec"

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->getDuration()I

    move-result v0

    iget v1, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->percentDownloaded:I

    invoke-static {p1, v0, v1}, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->allowSeekTo(III)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 116
    invoke-super {p0, p1}, Lcom/google/android/youtube/videos/player/DrmMediaPlayer;->seekTo(I)V

    .line 120
    :cond_f
    :goto_f
    return-void

    .line 117
    :cond_10
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->seekListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    if-eqz v0, :cond_f

    .line 118
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->seekListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    invoke-interface {v0, p0}, Landroid/media/MediaPlayer$OnSeekCompleteListener;->onSeekComplete(Landroid/media/MediaPlayer;)V

    goto :goto_f
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 6
    .parameter "context"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 61
    new-instance v0, Lcom/google/android/youtube/videos/player/DownloadProgressNotifier;

    iget-wide v1, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->totalFileSize:J

    invoke-direct {v0, p2, v1, v2, p0}, Lcom/google/android/youtube/videos/player/DownloadProgressNotifier;-><init>(Landroid/net/Uri;JLcom/google/android/youtube/videos/player/DownloadProgressNotifier$Listener;)V

    iput-object v0, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->downloadProgressNotifier:Lcom/google/android/youtube/videos/player/DownloadProgressNotifier;

    .line 62
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/videos/player/DrmMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 63
    return-void
.end method

.method public setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V
    .registers 2
    .parameter "bufferingListener"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->bufferingListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 94
    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .registers 2
    .parameter "infoListener"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->infoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 110
    invoke-super {p0, p1}, Lcom/google/android/youtube/videos/player/DrmMediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 111
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .registers 2
    .parameter "preparedListener"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->preparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 105
    return-void
.end method

.method public setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V
    .registers 2
    .parameter "seekListener"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->seekListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 99
    invoke-super {p0, p1}, Lcom/google/android/youtube/videos/player/DrmMediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 100
    return-void
.end method

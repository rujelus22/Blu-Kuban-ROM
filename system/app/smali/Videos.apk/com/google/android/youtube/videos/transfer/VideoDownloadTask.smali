.class public Lcom/google/android/youtube/videos/transfer/VideoDownloadTask;
.super Lcom/google/android/youtube/core/transfer/DownloadTask;
.source "VideoDownloadTask.java"


# instance fields
.field private final listener:Lcom/google/android/youtube/core/transfer/TransferTask$Listener;

.field private final subtitlesClient:Lcom/google/android/youtube/core/client/SubtitlesClient;

.field private final transfer:Lcom/google/android/youtube/core/transfer/Transfer;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/client/SubtitlesClient;Lcom/google/android/youtube/core/transfer/Transfer;Lcom/google/android/youtube/core/transfer/TransferTask$Listener;ZZ)V
    .registers 14
    .parameter "subtitlesClient"
    .parameter "transfer"
    .parameter "listener"
    .parameter "debug"
    .parameter "preAllocate"

    .prologue
    .line 38
    iget-object v1, p2, Lcom/google/android/youtube/core/transfer/Transfer;->networkUri:Ljava/lang/String;

    iget-object v2, p2, Lcom/google/android/youtube/core/transfer/Transfer;->filePath:Ljava/lang/String;

    iget-wide v3, p2, Lcom/google/android/youtube/core/transfer/Transfer;->bytesTotal:J

    move-object v0, p0

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/youtube/core/transfer/DownloadTask;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/google/android/youtube/core/transfer/TransferTask$Listener;ZZ)V

    .line 40
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/client/SubtitlesClient;

    iput-object v0, p0, Lcom/google/android/youtube/videos/transfer/VideoDownloadTask;->subtitlesClient:Lcom/google/android/youtube/core/client/SubtitlesClient;

    .line 41
    invoke-static {p3}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/TransferTask$Listener;

    iput-object v0, p0, Lcom/google/android/youtube/videos/transfer/VideoDownloadTask;->listener:Lcom/google/android/youtube/core/transfer/TransferTask$Listener;

    .line 42
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/Transfer;

    iput-object v0, p0, Lcom/google/android/youtube/videos/transfer/VideoDownloadTask;->transfer:Lcom/google/android/youtube/core/transfer/Transfer;

    .line 43
    return-void
.end method

.method private fetchSubtitleTrack(Lcom/google/android/youtube/core/model/SubtitleTrack;)Ljava/util/concurrent/Future;
    .registers 5
    .parameter "track"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/model/SubtitleTrack;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/android/youtube/core/model/Subtitle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requesting subtitles "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/L;->i(Ljava/lang/String;)V

    .line 79
    new-instance v0, Lcom/google/android/youtube/videos/async/CallbackAsFuture;

    invoke-direct {v0}, Lcom/google/android/youtube/videos/async/CallbackAsFuture;-><init>()V

    .line 81
    .local v0, subtitleFuture:Lcom/google/android/youtube/videos/async/CallbackAsFuture;,"Lcom/google/android/youtube/videos/async/CallbackAsFuture<Lcom/google/android/youtube/core/model/SubtitleTrack;Lcom/google/android/youtube/core/model/Subtitle;>;"
    iget-object v1, p0, Lcom/google/android/youtube/videos/transfer/VideoDownloadTask;->subtitlesClient:Lcom/google/android/youtube/core/client/SubtitlesClient;

    invoke-interface {v1, p1, v0}, Lcom/google/android/youtube/core/client/SubtitlesClient;->requestSubtitle(Lcom/google/android/youtube/core/model/SubtitleTrack;Lcom/google/android/youtube/core/async/Callback;)V

    .line 82
    return-object v0
.end method

.method private fetchSubtitleTracks(Ljava/lang/String;)V
    .registers 6
    .parameter "videoId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 64
    new-instance v2, Lcom/google/android/youtube/videos/async/CallbackAsFuture;

    invoke-direct {v2}, Lcom/google/android/youtube/videos/async/CallbackAsFuture;-><init>()V

    .line 66
    .local v2, tracksFuture:Lcom/google/android/youtube/videos/async/CallbackAsFuture;,"Lcom/google/android/youtube/videos/async/CallbackAsFuture<Ljava/lang/String;Ljava/util/List<Lcom/google/android/youtube/core/model/SubtitleTrack;>;>;"
    iget-object v3, p0, Lcom/google/android/youtube/videos/transfer/VideoDownloadTask;->subtitlesClient:Lcom/google/android/youtube/core/client/SubtitlesClient;

    invoke-interface {v3, p1, v2}, Lcom/google/android/youtube/core/client/SubtitlesClient;->requestSubtitleTracks(Ljava/lang/String;Lcom/google/android/youtube/core/async/Callback;)V

    .line 67
    invoke-virtual {v2}, Lcom/google/android/youtube/videos/async/CallbackAsFuture;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/model/SubtitleTrack;

    .line 68
    .local v1, track:Lcom/google/android/youtube/core/model/SubtitleTrack;
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/transfer/VideoDownloadTask;->isCanceled()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 75
    .end local v1           #track:Lcom/google/android/youtube/core/model/SubtitleTrack;
    :cond_26
    return-void

    .line 73
    .restart local v1       #track:Lcom/google/android/youtube/core/model/SubtitleTrack;
    :cond_27
    new-instance v3, Lcom/google/android/youtube/core/model/SubtitleTrack;

    invoke-direct {v3, v1, p1}, Lcom/google/android/youtube/core/model/SubtitleTrack;-><init>(Lcom/google/android/youtube/core/model/SubtitleTrack;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/google/android/youtube/videos/transfer/VideoDownloadTask;->fetchSubtitleTrack(Lcom/google/android/youtube/core/model/SubtitleTrack;)Ljava/util/concurrent/Future;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    goto :goto_14
.end method


# virtual methods
.method protected download()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 47
    iget-object v1, p0, Lcom/google/android/youtube/videos/transfer/VideoDownloadTask;->transfer:Lcom/google/android/youtube/core/transfer/Transfer;

    iget-object v1, v1, Lcom/google/android/youtube/core/transfer/Transfer;->inputExtras:Landroid/os/Bundle;

    const-string v2, "enable_subtitles"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 49
    :try_start_d
    iget-object v1, p0, Lcom/google/android/youtube/videos/transfer/VideoDownloadTask;->transfer:Lcom/google/android/youtube/core/transfer/Transfer;

    iget-object v1, v1, Lcom/google/android/youtube/core/transfer/Transfer;->inputExtras:Landroid/os/Bundle;

    const-string v2, "video_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/youtube/videos/transfer/VideoDownloadTask;->fetchSubtitleTracks(Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_d .. :try_end_1a} :catch_1e
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_1a} :catch_37

    .line 60
    :cond_1a
    invoke-super {p0}, Lcom/google/android/youtube/core/transfer/DownloadTask;->download()V

    .line 61
    :goto_1d
    return-void

    .line 50
    :catch_1e
    move-exception v0

    .line 51
    .local v0, e:Ljava/util/concurrent/ExecutionException;
    const-string v1, "Unable to fetch subtitle tracks"

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    iget-object v1, p0, Lcom/google/android/youtube/videos/transfer/VideoDownloadTask;->listener:Lcom/google/android/youtube/core/transfer/TransferTask$Listener;

    iget-object v2, p0, Lcom/google/android/youtube/videos/transfer/VideoDownloadTask;->transfer:Lcom/google/android/youtube/core/transfer/Transfer;

    iget-object v2, v2, Lcom/google/android/youtube/core/transfer/Transfer;->filePath:Ljava/lang/String;

    new-instance v3, Lcom/google/android/youtube/core/transfer/TransferException;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v5}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v1, v2, v3}, Lcom/google/android/youtube/core/transfer/TransferTask$Listener;->onError(Ljava/lang/String;Lcom/google/android/youtube/core/transfer/TransferException;)V

    goto :goto_1d

    .line 54
    .end local v0           #e:Ljava/util/concurrent/ExecutionException;
    :catch_37
    move-exception v0

    .line 55
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "Unable to fetch subtitle"

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    iget-object v1, p0, Lcom/google/android/youtube/videos/transfer/VideoDownloadTask;->listener:Lcom/google/android/youtube/core/transfer/TransferTask$Listener;

    iget-object v2, p0, Lcom/google/android/youtube/videos/transfer/VideoDownloadTask;->transfer:Lcom/google/android/youtube/core/transfer/Transfer;

    iget-object v2, v2, Lcom/google/android/youtube/core/transfer/Transfer;->filePath:Ljava/lang/String;

    new-instance v3, Lcom/google/android/youtube/core/transfer/TransferException;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v5}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v1, v2, v3}, Lcom/google/android/youtube/core/transfer/TransferTask$Listener;->onError(Ljava/lang/String;Lcom/google/android/youtube/core/transfer/TransferException;)V

    goto :goto_1d
.end method

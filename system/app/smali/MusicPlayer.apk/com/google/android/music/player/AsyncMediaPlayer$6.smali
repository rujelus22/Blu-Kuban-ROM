.class Lcom/google/android/music/player/AsyncMediaPlayer$6;
.super Lcom/google/android/music/dl/IDownloadProgressListener$Stub;
.source "AsyncMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/player/AsyncMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/player/AsyncMediaPlayer;


# direct methods
.method constructor <init>(Lcom/google/android/music/player/AsyncMediaPlayer;)V
    .registers 2
    .parameter

    .prologue
    .line 933
    iput-object p1, p0, Lcom/google/android/music/player/AsyncMediaPlayer$6;->this$0:Lcom/google/android/music/player/AsyncMediaPlayer;

    invoke-direct {p0}, Lcom/google/android/music/dl/IDownloadProgressListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onDownloadProgress(Lcom/google/android/music/dl/ContentIdentifier;IFI)V
    .registers 8
    .parameter "songId"
    .parameter "state"
    .parameter "progress"
    .parameter "errorType"

    .prologue
    .line 936
    monitor-enter p0

    if-eqz p1, :cond_17

    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/player/AsyncMediaPlayer$6;->this$0:Lcom/google/android/music/player/AsyncMediaPlayer;

    #getter for: Lcom/google/android/music/player/AsyncMediaPlayer;->mCurrentSong:Lcom/google/android/music/dl/ContentIdentifier;
    invoke-static {v0}, Lcom/google/android/music/player/AsyncMediaPlayer;->access$500(Lcom/google/android/music/player/AsyncMediaPlayer;)Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/music/player/AsyncMediaPlayer$6;->this$0:Lcom/google/android/music/player/AsyncMediaPlayer;

    #getter for: Lcom/google/android/music/player/AsyncMediaPlayer;->mCurrentSong:Lcom/google/android/music/dl/ContentIdentifier;
    invoke-static {v0}, Lcom/google/android/music/player/AsyncMediaPlayer;->access$500(Lcom/google/android/music/player/AsyncMediaPlayer;)Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/music/dl/ContentIdentifier;->equals(Lcom/google/android/music/dl/ContentIdentifier;)Z
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_39

    move-result v0

    if-nez v0, :cond_19

    .line 949
    :cond_17
    :goto_17
    monitor-exit p0

    return-void

    .line 939
    :cond_19
    :try_start_19
    iget-object v0, p0, Lcom/google/android/music/player/AsyncMediaPlayer$6;->this$0:Lcom/google/android/music/player/AsyncMediaPlayer;

    #getter for: Lcom/google/android/music/player/AsyncMediaPlayer;->isPreGingerbread:Z
    invoke-static {v0}, Lcom/google/android/music/player/AsyncMediaPlayer;->access$1000(Lcom/google/android/music/player/AsyncMediaPlayer;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 943
    iget-object v0, p0, Lcom/google/android/music/player/AsyncMediaPlayer$6;->this$0:Lcom/google/android/music/player/AsyncMediaPlayer;

    #setter for: Lcom/google/android/music/player/AsyncMediaPlayer;->mDownloadCompletedPercent:F
    invoke-static {v0, p3}, Lcom/google/android/music/player/AsyncMediaPlayer;->access$1102(Lcom/google/android/music/player/AsyncMediaPlayer;F)F

    .line 944
    iget-object v0, p0, Lcom/google/android/music/player/AsyncMediaPlayer$6;->this$0:Lcom/google/android/music/player/AsyncMediaPlayer;

    invoke-static {}, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->values()[Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    move-result-object v1

    aget-object v1, v1, p2

    #setter for: Lcom/google/android/music/player/AsyncMediaPlayer;->mDownloadState:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;
    invoke-static {v0, v1}, Lcom/google/android/music/player/AsyncMediaPlayer;->access$1202(Lcom/google/android/music/player/AsyncMediaPlayer;Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;)Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    .line 945
    iget-object v0, p0, Lcom/google/android/music/player/AsyncMediaPlayer$6;->this$0:Lcom/google/android/music/player/AsyncMediaPlayer;

    const-wide/16 v1, 0x0

    #calls: Lcom/google/android/music/player/AsyncMediaPlayer;->updateDownloadStatus(J)V
    invoke-static {v0, v1, v2}, Lcom/google/android/music/player/AsyncMediaPlayer;->access$1300(Lcom/google/android/music/player/AsyncMediaPlayer;J)V
    :try_end_38
    .catchall {:try_start_19 .. :try_end_38} :catchall_39

    goto :goto_17

    .line 936
    :catchall_39
    move-exception v0

    monitor-exit p0

    throw v0

    .line 946
    :cond_3c
    :try_start_3c
    invoke-static {}, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->values()[Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    move-result-object v0

    aget-object v0, v0, p2

    sget-object v1, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->FAILED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    if-ne v0, v1, :cond_17

    .line 947
    iget-object v0, p0, Lcom/google/android/music/player/AsyncMediaPlayer$6;->this$0:Lcom/google/android/music/player/AsyncMediaPlayer;

    const-wide/16 v1, 0x0

    #calls: Lcom/google/android/music/player/AsyncMediaPlayer;->updateDownloadStatus(J)V
    invoke-static {v0, v1, v2}, Lcom/google/android/music/player/AsyncMediaPlayer;->access$1300(Lcom/google/android/music/player/AsyncMediaPlayer;J)V
    :try_end_4d
    .catchall {:try_start_3c .. :try_end_4d} :catchall_39

    goto :goto_17
.end method

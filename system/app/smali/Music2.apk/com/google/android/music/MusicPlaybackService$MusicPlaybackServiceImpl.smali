.class public Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;
.super Lcom/google/android/music/IMusicPlaybackService$Stub;
.source "MusicPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/MusicPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MusicPlaybackServiceImpl"
.end annotation


# instance fields
.field mService:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/google/android/music/MusicPlaybackService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/music/MusicPlaybackService;)V
    .registers 3
    .parameter "service"

    .prologue
    .line 2747
    invoke-direct {p0}, Lcom/google/android/music/IMusicPlaybackService$Stub;-><init>()V

    .line 2748
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2749
    return-void
.end method


# virtual methods
.method public addDownloadProgressListener(Lcom/google/android/music/dl/ContentIdentifier;Lcom/google/android/music/dl/IDownloadProgressListener;)Z
    .registers 7
    .parameter "songId"
    .parameter "listener"

    .prologue
    const/4 v2, 0x0

    .line 2872
    :try_start_1
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mDownloadManager:Lcom/google/android/music/dl/IDownloadManager;
    invoke-static {v1}, Lcom/google/android/music/MusicPlaybackService;->access$300(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/dl/IDownloadManager;

    move-result-object v1

    if-nez v1, :cond_11

    move v1, v2

    .line 2879
    :goto_10
    return v1

    .line 2875
    :cond_11
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mDownloadManager:Lcom/google/android/music/dl/IDownloadManager;
    invoke-static {v1}, Lcom/google/android/music/MusicPlaybackService;->access$300(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/dl/IDownloadManager;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/android/music/dl/IDownloadManager;->addDownloadProgressListener(Lcom/google/android/music/dl/ContentIdentifier;Lcom/google/android/music/dl/IDownloadProgressListener;)Z
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_20} :catch_22

    move-result v1

    goto :goto_10

    .line 2876
    :catch_22
    move-exception v0

    .line 2877
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "MediaPlaybackService"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 2879
    goto :goto_10
.end method

.method public duration()J
    .registers 3

    .prologue
    .line 2825
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService;->duration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAlbumId()J
    .registers 3

    .prologue
    .line 2794
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService;->getAlbumId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAlbumName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2791
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArtistId()J
    .registers 3

    .prologue
    .line 2800
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService;->getArtistId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getArtistName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2797
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAudioId()Lcom/google/android/music/dl/ContentIdentifier;
    .registers 2

    .prologue
    .line 2813
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mAudioId:Lcom/google/android/music/dl/ContentIdentifier;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$800(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getAudioSessionId()I
    .registers 2

    .prologue
    .line 2899
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService;->getAudioSessionId()I

    move-result v0

    return v0
.end method

.method public getDebugInfo()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2903
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService;->getDebugInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getErrorType()I
    .registers 2

    .prologue
    .line 2855
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mPlayer:Lcom/google/android/music/AsyncMediaPlayer;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$1400(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/AsyncMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/AsyncMediaPlayer;->getErrorType()I

    move-result v0

    return v0
.end method

.method public getMediaList()Lcom/google/android/music/medialist/SongList;
    .registers 2

    .prologue
    .line 2810
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$3300(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/medialist/SongList;

    move-result-object v0

    return-object v0
.end method

.method public getNextSongs(I)[Lcom/google/android/music/dl/ContentIdentifier;
    .registers 3
    .parameter "songCount"

    .prologue
    .line 2758
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0, p1}, Lcom/google/android/music/MusicPlaybackService;->getNextSongs(I)[Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getPreviewPlayType()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2828
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService;->getPreviewPlayType()I

    move-result v0

    return v0
.end method

.method public getQueuePosition()I
    .registers 2

    .prologue
    .line 2761
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService;->getQueuePosition()I

    move-result v0

    return v0
.end method

.method public getRating()I
    .registers 2

    .prologue
    .line 2816
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService;->getRating()I

    move-result v0

    return v0
.end method

.method public getRepeatMode()I
    .registers 2

    .prologue
    .line 2843
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService;->getRepeatMode()I

    move-result v0

    return v0
.end method

.method public getShuffleMode()I
    .registers 2

    .prologue
    .line 2837
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService;->getShuffleMode()I

    move-result v0

    return v0
.end method

.method public getSongStoreId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2806
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService;->getSongStoreId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSortableAlbumArtistName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2803
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService;->getSortableAlbumArtistName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrackName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2788
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasLocal()Z
    .registers 2

    .prologue
    .line 2863
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    #calls: Lcom/google/android/music/MusicPlaybackService;->hasLocal()Z
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$4600(Lcom/google/android/music/MusicPlaybackService;)Z

    move-result v0

    return v0
.end method

.method public hasRemote()Z
    .registers 2

    .prologue
    .line 2867
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    #calls: Lcom/google/android/music/MusicPlaybackService;->hasRemote()Z
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$4700(Lcom/google/android/music/MusicPlaybackService;)Z

    move-result v0

    return v0
.end method

.method public hasValidPlaylist()Z
    .registers 2

    .prologue
    .line 2859
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mPlayList:Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$2600(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->isValid()Z

    move-result v0

    return v0
.end method

.method public isCurrentSongLoaded()Z
    .registers 2

    .prologue
    .line 2785
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService;->hasCursor()Z

    move-result v0

    return v0
.end method

.method public isInErrorState()Z
    .registers 2

    .prologue
    .line 2852
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mPlayer:Lcom/google/android/music/AsyncMediaPlayer;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$1400(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/AsyncMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/AsyncMediaPlayer;->isInErrorState()Z

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .registers 2

    .prologue
    .line 2767
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public isPreparing()Z
    .registers 2

    .prologue
    .line 2846
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mPlayer:Lcom/google/android/music/AsyncMediaPlayer;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$1400(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/AsyncMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/AsyncMediaPlayer;->isPreparing()Z

    move-result v0

    return v0
.end method

.method public isStreaming()Z
    .registers 2

    .prologue
    .line 2849
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mPlayer:Lcom/google/android/music/AsyncMediaPlayer;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$1400(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/AsyncMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/AsyncMediaPlayer;->isStreaming()Z

    move-result v0

    return v0
.end method

.method public next()V
    .registers 3

    .prologue
    .line 2782
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/music/MusicPlaybackService;->next(Z)V

    .line 2783
    return-void
.end method

.method public openAndPlay(Lcom/google/android/music/medialist/SongList;I)V
    .registers 4
    .parameter "medialist"
    .parameter "position"

    .prologue
    .line 2754
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/music/MusicPlaybackService;->openAndPlay(Lcom/google/android/music/medialist/SongList;I)V

    .line 2755
    return-void
.end method

.method public pause()V
    .registers 2

    .prologue
    .line 2770
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService;->pause()V

    .line 2771
    return-void
.end method

.method public play()V
    .registers 2

    .prologue
    .line 2773
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService;->play()V

    .line 2774
    return-void
.end method

.method public position()J
    .registers 3

    .prologue
    .line 2822
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService;->position()J

    move-result-wide v0

    return-wide v0
.end method

.method public prev()V
    .registers 2

    .prologue
    .line 2779
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService;->prev()V

    .line 2780
    return-void
.end method

.method public removeDownloadProgressListener(Lcom/google/android/music/dl/IDownloadProgressListener;)V
    .registers 5
    .parameter "listener"

    .prologue
    .line 2885
    :try_start_0
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mDownloadManager:Lcom/google/android/music/dl/IDownloadManager;
    invoke-static {v1}, Lcom/google/android/music/MusicPlaybackService;->access$300(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/dl/IDownloadManager;

    move-result-object v1

    if-nez v1, :cond_f

    .line 2892
    :goto_e
    return-void

    .line 2888
    :cond_f
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mDownloadManager:Lcom/google/android/music/dl/IDownloadManager;
    invoke-static {v1}, Lcom/google/android/music/MusicPlaybackService;->access$300(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/dl/IDownloadManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/android/music/dl/IDownloadManager;->removeDownloadProgressListener(Lcom/google/android/music/dl/IDownloadProgressListener;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1e} :catch_1f

    goto :goto_e

    .line 2889
    :catch_1f
    move-exception v0

    .line 2890
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "MediaPlaybackService"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e
.end method

.method public seek(J)J
    .registers 5
    .parameter "pos"

    .prologue
    .line 2831
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/music/MusicPlaybackService;->seek(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public setQueuePosition(I)V
    .registers 3
    .parameter "index"

    .prologue
    .line 2764
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0, p1}, Lcom/google/android/music/MusicPlaybackService;->setQueuePosition(I)V

    .line 2765
    return-void
.end method

.method public setRating(I)V
    .registers 3
    .parameter "rating"

    .prologue
    .line 2819
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0, p1}, Lcom/google/android/music/MusicPlaybackService;->setRating(I)V

    .line 2820
    return-void
.end method

.method public setRepeatMode(I)V
    .registers 3
    .parameter "repeatmode"

    .prologue
    .line 2840
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0, p1}, Lcom/google/android/music/MusicPlaybackService;->setRepeatMode(I)V

    .line 2841
    return-void
.end method

.method public setShuffleMode(I)V
    .registers 3
    .parameter "shufflemode"

    .prologue
    .line 2834
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0, p1}, Lcom/google/android/music/MusicPlaybackService;->setShuffleMode(I)V

    .line 2835
    return-void
.end method

.method public setUIVisible(Z)V
    .registers 3
    .parameter "visible"

    .prologue
    .line 2895
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0, p1}, Lcom/google/android/music/MusicPlaybackService;->setUIVisible(Z)V

    .line 2896
    return-void
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 2776
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService;->stop()V

    .line 2777
    return-void
.end method

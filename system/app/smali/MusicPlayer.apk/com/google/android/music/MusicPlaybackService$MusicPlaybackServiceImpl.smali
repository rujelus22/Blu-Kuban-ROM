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
    .line 1335
    invoke-direct {p0}, Lcom/google/android/music/IMusicPlaybackService$Stub;-><init>()V

    .line 1336
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1337
    return-void
.end method


# virtual methods
.method public addDownloadProgressListener(Lcom/google/android/music/dl/ContentIdentifier;Lcom/google/android/music/dl/IDownloadProgressListener;)Z
    .registers 4
    .parameter "songId"
    .parameter "listener"

    .prologue
    .line 1494
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mLocalPlayback:Lcom/google/android/music/LocalDevicePlayback;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$1100(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/LocalDevicePlayback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/music/LocalDevicePlayback;->addDownloadProgressListener(Lcom/google/android/music/dl/ContentIdentifier;Lcom/google/android/music/dl/IDownloadProgressListener;)Z

    move-result v0

    return v0
.end method

.method public clearQueue()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1532
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$200(Lcom/google/android/music/MusicPlaybackService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/DevicePlayback;

    invoke-virtual {v0}, Lcom/google/android/music/DevicePlayback;->clearQueue()V

    .line 1533
    return-void
.end method

.method public configureAtHomeTransmitter(Ljava/lang/String;)V
    .registers 3
    .parameter "mediaPlayerConfig"

    .prologue
    .line 1515
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mLocalPlayback:Lcom/google/android/music/LocalDevicePlayback;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$1100(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/LocalDevicePlayback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/music/LocalDevicePlayback;->configureAtHomeTransmitter(Ljava/lang/String;)V

    .line 1516
    return-void
.end method

.method public disableGroupPlay()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1536
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$200(Lcom/google/android/music/MusicPlaybackService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/DevicePlayback;

    invoke-virtual {v0}, Lcom/google/android/music/DevicePlayback;->disableGroupPlay()V

    .line 1537
    return-void
.end method

.method public duration()J
    .registers 3

    .prologue
    .line 1417
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService;->duration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAlbumArtUrl(J)Ljava/lang/String;
    .registers 4
    .parameter "albumid"

    .prologue
    .line 1524
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$200(Lcom/google/android/music/MusicPlaybackService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/DevicePlayback;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/music/DevicePlayback;->getAlbumArtUrl(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAlbumId()J
    .registers 3

    .prologue
    .line 1384
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
    .line 1381
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
    .line 1390
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
    .line 1387
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAtHomeGroupId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1486
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService;->getAtHomeGroupId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAudioId()Lcom/google/android/music/dl/ContentIdentifier;
    .registers 2

    .prologue
    .line 1402
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService;->getAudioId()Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getAudioSessionId()I
    .registers 2

    .prologue
    .line 1507
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
    .line 1511
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
    .line 1447
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$200(Lcom/google/android/music/MusicPlaybackService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/DevicePlayback;

    invoke-virtual {v0}, Lcom/google/android/music/DevicePlayback;->getErrorType()I

    move-result v0

    return v0
.end method

.method public getLastUserInteractionTime()J
    .registers 3

    .prologue
    .line 1528
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$200(Lcom/google/android/music/MusicPlaybackService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/DevicePlayback;

    invoke-virtual {v0}, Lcom/google/android/music/DevicePlayback;->getLastUserInteractionTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMediaList()Lcom/google/android/music/medialist/SongList;
    .registers 2

    .prologue
    .line 1399
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$200(Lcom/google/android/music/MusicPlaybackService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/DevicePlayback;

    invoke-virtual {v0}, Lcom/google/android/music/DevicePlayback;->getMediaList()Lcom/google/android/music/medialist/SongList;

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
    .line 1420
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
    .line 1348
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService;->getQueuePosition()I

    move-result v0

    return v0
.end method

.method public getQueueSize()I
    .registers 2

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService;->getQueueSize()I

    move-result v0

    return v0
.end method

.method public getRating()I
    .registers 2

    .prologue
    .line 1408
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
    .line 1435
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
    .line 1429
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
    .line 1396
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
    .line 1393
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
    .line 1378
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
    .line 1462
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    #calls: Lcom/google/android/music/MusicPlaybackService;->hasLocal()Z
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$900(Lcom/google/android/music/MusicPlaybackService;)Z

    move-result v0

    return v0
.end method

.method public hasRemote()Z
    .registers 2

    .prologue
    .line 1466
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    #calls: Lcom/google/android/music/MusicPlaybackService;->hasRemote()Z
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$1000(Lcom/google/android/music/MusicPlaybackService;)Z

    move-result v0

    return v0
.end method

.method public hasValidPlaylist()Z
    .registers 2

    .prologue
    .line 1454
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$200(Lcom/google/android/music/MusicPlaybackService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/DevicePlayback;

    invoke-virtual {v0}, Lcom/google/android/music/DevicePlayback;->hasValidPlaylist()Z

    move-result v0

    return v0
.end method

.method public isAlbumArtInService()Z
    .registers 2

    .prologue
    .line 1520
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$200(Lcom/google/android/music/MusicPlaybackService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback;

    return v0
.end method

.method public isAtHomeDevicePlayback()Z
    .registers 2

    .prologue
    .line 1470
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService;->isAtHomeDevicePlayback()Z

    move-result v0

    return v0
.end method

.method public isCurrentSongLoaded()Z
    .registers 2

    .prologue
    .line 1375
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService;->isCurrentSongLoaded()Z

    move-result v0

    return v0
.end method

.method public isInErrorState()Z
    .registers 2

    .prologue
    .line 1444
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$200(Lcom/google/android/music/MusicPlaybackService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/DevicePlayback;

    invoke-virtual {v0}, Lcom/google/android/music/DevicePlayback;->isInErrorState()Z

    move-result v0

    return v0
.end method

.method public isInFatalErrorState()Z
    .registers 2

    .prologue
    .line 1450
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$200(Lcom/google/android/music/MusicPlaybackService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/DevicePlayback;

    invoke-virtual {v0}, Lcom/google/android/music/DevicePlayback;->isInFatalErrorState()Z

    move-result v0

    return v0
.end method

.method public isLocalDevicePlayback()Z
    .registers 2

    .prologue
    .line 1474
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService;->isLocalDevicePlayback()Z

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .registers 2

    .prologue
    .line 1357
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public isPlaylistLoading()Z
    .registers 2

    .prologue
    .line 1458
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$200(Lcom/google/android/music/MusicPlaybackService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/DevicePlayback;

    invoke-virtual {v0}, Lcom/google/android/music/DevicePlayback;->playlistLoading()Z

    move-result v0

    return v0
.end method

.method public isPreparing()Z
    .registers 2

    .prologue
    .line 1438
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$200(Lcom/google/android/music/MusicPlaybackService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/DevicePlayback;

    invoke-virtual {v0}, Lcom/google/android/music/DevicePlayback;->isPreparing()Z

    move-result v0

    return v0
.end method

.method public isStreaming()Z
    .registers 2

    .prologue
    .line 1441
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mCurrentPlayback:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$200(Lcom/google/android/music/MusicPlaybackService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/DevicePlayback;

    invoke-virtual {v0}, Lcom/google/android/music/DevicePlayback;->isStreaming()Z

    move-result v0

    return v0
.end method

.method public next()V
    .registers 2

    .prologue
    .line 1372
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService;->next()V

    .line 1373
    return-void
.end method

.method public open(Lcom/google/android/music/medialist/SongList;IZ)V
    .registers 5
    .parameter "medialist"
    .parameter "position"
    .parameter "play"

    .prologue
    .line 1340
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/music/MusicPlaybackService;->open(Lcom/google/android/music/medialist/SongList;IZ)V

    .line 1341
    return-void
.end method

.method public openAndQueue(Lcom/google/android/music/medialist/SongList;I)V
    .registers 4
    .parameter "medialist"
    .parameter "position"

    .prologue
    .line 1344
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/music/MusicPlaybackService;->openAndQueue(Lcom/google/android/music/medialist/SongList;I)V

    .line 1345
    return-void
.end method

.method public pause()V
    .registers 2

    .prologue
    .line 1360
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService;->pause()V

    .line 1361
    return-void
.end method

.method public play()V
    .registers 2

    .prologue
    .line 1363
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService;->play()V

    .line 1364
    return-void
.end method

.method public position()J
    .registers 3

    .prologue
    .line 1414
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
    .line 1369
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService;->prev()V

    .line 1370
    return-void
.end method

.method public removeDownloadProgressListener(Lcom/google/android/music/dl/IDownloadProgressListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 1499
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mLocalPlayback:Lcom/google/android/music/LocalDevicePlayback;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$1100(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/LocalDevicePlayback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/music/LocalDevicePlayback;->removeDownloadProgressListener(Lcom/google/android/music/dl/IDownloadProgressListener;)V

    .line 1500
    return-void
.end method

.method public seek(J)J
    .registers 5
    .parameter "pos"

    .prologue
    .line 1423
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
    .line 1351
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0, p1}, Lcom/google/android/music/MusicPlaybackService;->setQueuePosition(I)V

    .line 1352
    return-void
.end method

.method public setRating(I)V
    .registers 3
    .parameter "rating"

    .prologue
    .line 1411
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0, p1}, Lcom/google/android/music/MusicPlaybackService;->setRating(I)V

    .line 1412
    return-void
.end method

.method public setRepeatMode(I)V
    .registers 3
    .parameter "repeatmode"

    .prologue
    .line 1432
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0, p1}, Lcom/google/android/music/MusicPlaybackService;->setRepeatMode(I)V

    .line 1433
    return-void
.end method

.method public setShuffleMode(I)V
    .registers 3
    .parameter "shufflemode"

    .prologue
    .line 1426
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0, p1}, Lcom/google/android/music/MusicPlaybackService;->setShuffleMode(I)V

    .line 1427
    return-void
.end method

.method public setUIVisible(Z)V
    .registers 3
    .parameter "visible"

    .prologue
    .line 1503
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0, p1}, Lcom/google/android/music/MusicPlaybackService;->setUIVisible(Z)V

    .line 1504
    return-void
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 1366
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService;->stop()V

    .line 1367
    return-void
.end method

.method public supportsRating()Z
    .registers 2

    .prologue
    .line 1405
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService;->supportsRating()Z

    move-result v0

    return v0
.end method

.method public switchToAtHomeDevicePlayback([BLjava/lang/String;)V
    .registers 4
    .parameter "config"
    .parameter "groupId"

    .prologue
    .line 1478
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/music/MusicPlaybackService;->switchToAtHomeDevicePlayback([BLjava/lang/String;)V

    .line 1479
    return-void
.end method

.method public switchToLocalDevicePlayback()V
    .registers 2

    .prologue
    .line 1482
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService;->switchToLocalDevicePlayback()V

    .line 1483
    return-void
.end method

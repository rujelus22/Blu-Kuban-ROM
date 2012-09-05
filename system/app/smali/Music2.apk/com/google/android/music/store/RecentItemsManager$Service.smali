.class public Lcom/google/android/music/store/RecentItemsManager$Service;
.super Landroid/app/IntentService;
.source "RecentItemsManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/store/RecentItemsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Service"
.end annotation


# instance fields
.field private mPlaybackService:Lcom/google/android/music/IMusicPlaybackService;

.field private mPlaybackServiceLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 358
    const-string v0, "RecentItemsManagerService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 354
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/store/RecentItemsManager$Service;->mPlaybackService:Lcom/google/android/music/IMusicPlaybackService;

    .line 355
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/store/RecentItemsManager$Service;->mPlaybackServiceLock:Ljava/lang/Object;

    .line 359
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 12
    .parameter

    .prologue
    const-wide/16 v8, 0x0

    const-wide/16 v2, -0x1

    .line 363
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 364
    const-string v1, "RecentItemsManagerService.recordCurrentlyPlayed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 365
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 366
    const-class v1, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 369
    iget-object v6, p0, Lcom/google/android/music/store/RecentItemsManager$Service;->mPlaybackServiceLock:Ljava/lang/Object;

    monitor-enter v6

    .line 370
    :try_start_1d
    iget-object v1, p0, Lcom/google/android/music/store/RecentItemsManager$Service;->mPlaybackService:Lcom/google/android/music/IMusicPlaybackService;

    if-eqz v1, :cond_2c

    .line 373
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should not be connected to the service."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 407
    :catchall_29
    move-exception v0

    monitor-exit v6
    :try_end_2b
    .catchall {:try_start_1d .. :try_end_2b} :catchall_29

    throw v0

    .line 375
    :cond_2c
    const/4 v1, 0x0

    :try_start_2d
    invoke-virtual {p0, v0, p0, v1}, Lcom/google/android/music/store/RecentItemsManager$Service;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_54

    .line 376
    const-string v0, "RecentItemsManager"

    const-string v1, "Failed to bind to playback service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v0, v2

    move-wide v4, v2

    .line 407
    :cond_3c
    :goto_3c
    monitor-exit v6
    :try_end_3d
    .catchall {:try_start_2d .. :try_end_3d} :catchall_29

    .line 411
    cmp-long v6, v4, v8

    if-eqz v6, :cond_48

    cmp-long v6, v4, v2

    if-eqz v6, :cond_48

    .line 412
    #calls: Lcom/google/android/music/store/RecentItemsManager;->addPlaylist(Landroid/content/Context;J)V
    invoke-static {p0, v4, v5}, Lcom/google/android/music/store/RecentItemsManager;->access$000(Landroid/content/Context;J)V

    .line 414
    :cond_48
    cmp-long v4, v0, v8

    if-eqz v4, :cond_53

    cmp-long v2, v0, v2

    if-eqz v2, :cond_53

    .line 415
    #calls: Lcom/google/android/music/store/RecentItemsManager;->addAlbum(Landroid/content/Context;J)V
    invoke-static {p0, v0, v1}, Lcom/google/android/music/store/RecentItemsManager;->access$100(Landroid/content/Context;J)V

    .line 418
    :cond_53
    return-void

    .line 381
    :cond_54
    :try_start_54
    iget-object v0, p0, Lcom/google/android/music/store/RecentItemsManager$Service;->mPlaybackServiceLock:Ljava/lang/Object;

    const-wide/16 v4, 0x7530

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 382
    iget-object v0, p0, Lcom/google/android/music/store/RecentItemsManager$Service;->mPlaybackService:Lcom/google/android/music/IMusicPlaybackService;
    :try_end_5d
    .catchall {:try_start_54 .. :try_end_5d} :catchall_bf
    .catch Ljava/lang/InterruptedException; {:try_start_54 .. :try_end_5d} :catch_a9

    if-eqz v0, :cond_a6

    .line 384
    :try_start_5f
    iget-object v0, p0, Lcom/google/android/music/store/RecentItemsManager$Service;->mPlaybackService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v0}, Lcom/google/android/music/IMusicPlaybackService;->hasValidPlaylist()Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 385
    iget-object v0, p0, Lcom/google/android/music/store/RecentItemsManager$Service;->mPlaybackService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v0}, Lcom/google/android/music/IMusicPlaybackService;->getMediaList()Lcom/google/android/music/medialist/SongList;

    move-result-object v0

    .line 386
    instance-of v1, v0, Lcom/google/android/music/medialist/PlaylistSongList;

    if-eqz v1, :cond_84

    .line 387
    check-cast v0, Lcom/google/android/music/medialist/PlaylistSongList;

    invoke-virtual {v0}, Lcom/google/android/music/medialist/PlaylistSongList;->getPlaylistId()J
    :try_end_76
    .catchall {:try_start_5f .. :try_end_76} :catchall_bf
    .catch Landroid/os/RemoteException; {:try_start_5f .. :try_end_76} :catch_9c
    .catch Ljava/lang/InterruptedException; {:try_start_5f .. :try_end_76} :catch_a9

    move-result-wide v0

    move-wide v4, v0

    move-wide v0, v2

    .line 401
    :goto_79
    :try_start_79
    iget-object v7, p0, Lcom/google/android/music/store/RecentItemsManager$Service;->mPlaybackService:Lcom/google/android/music/IMusicPlaybackService;

    if-eqz v7, :cond_3c

    .line 402
    invoke-virtual {p0, p0}, Lcom/google/android/music/store/RecentItemsManager$Service;->unbindService(Landroid/content/ServiceConnection;)V

    .line 403
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/google/android/music/store/RecentItemsManager$Service;->mPlaybackService:Lcom/google/android/music/IMusicPlaybackService;
    :try_end_83
    .catchall {:try_start_79 .. :try_end_83} :catchall_29

    goto :goto_3c

    .line 388
    :cond_84
    :try_start_84
    instance-of v1, v0, Lcom/google/android/music/medialist/AlbumSongList;

    if-eqz v1, :cond_90

    .line 389
    iget-object v0, p0, Lcom/google/android/music/store/RecentItemsManager$Service;->mPlaybackService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v0}, Lcom/google/android/music/IMusicPlaybackService;->getAlbumId()J

    move-result-wide v0

    move-wide v4, v2

    goto :goto_79

    .line 390
    :cond_90
    instance-of v0, v0, Lcom/google/android/music/medialist/ArtistSongList;

    if-eqz v0, :cond_a6

    .line 391
    iget-object v0, p0, Lcom/google/android/music/store/RecentItemsManager$Service;->mPlaybackService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v0}, Lcom/google/android/music/IMusicPlaybackService;->getAlbumId()J
    :try_end_99
    .catchall {:try_start_84 .. :try_end_99} :catchall_bf
    .catch Landroid/os/RemoteException; {:try_start_84 .. :try_end_99} :catch_9c
    .catch Ljava/lang/InterruptedException; {:try_start_84 .. :try_end_99} :catch_a9

    move-result-wide v0

    move-wide v4, v2

    goto :goto_79

    .line 394
    :catch_9c
    move-exception v0

    .line 395
    :try_start_9d
    const-string v1, "RecentItemsManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a6
    .catchall {:try_start_9d .. :try_end_a6} :catchall_bf
    .catch Ljava/lang/InterruptedException; {:try_start_9d .. :try_end_a6} :catch_a9

    :cond_a6
    move-wide v0, v2

    move-wide v4, v2

    goto :goto_79

    .line 398
    :catch_a9
    move-exception v0

    .line 399
    :try_start_aa
    const-string v1, "RecentItemsManager"

    const-string v4, "Interrupted while waiting for playback service."

    invoke-static {v1, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b1
    .catchall {:try_start_aa .. :try_end_b1} :catchall_bf

    .line 401
    :try_start_b1
    iget-object v0, p0, Lcom/google/android/music/store/RecentItemsManager$Service;->mPlaybackService:Lcom/google/android/music/IMusicPlaybackService;

    if-eqz v0, :cond_cb

    .line 402
    invoke-virtual {p0, p0}, Lcom/google/android/music/store/RecentItemsManager$Service;->unbindService(Landroid/content/ServiceConnection;)V

    .line 403
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/store/RecentItemsManager$Service;->mPlaybackService:Lcom/google/android/music/IMusicPlaybackService;

    move-wide v0, v2

    move-wide v4, v2

    goto/16 :goto_3c

    .line 401
    :catchall_bf
    move-exception v0

    iget-object v1, p0, Lcom/google/android/music/store/RecentItemsManager$Service;->mPlaybackService:Lcom/google/android/music/IMusicPlaybackService;

    if-eqz v1, :cond_ca

    .line 402
    invoke-virtual {p0, p0}, Lcom/google/android/music/store/RecentItemsManager$Service;->unbindService(Landroid/content/ServiceConnection;)V

    .line 403
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/music/store/RecentItemsManager$Service;->mPlaybackService:Lcom/google/android/music/IMusicPlaybackService;

    :cond_ca
    throw v0
    :try_end_cb
    .catchall {:try_start_b1 .. :try_end_cb} :catchall_29

    :cond_cb
    move-wide v0, v2

    move-wide v4, v2

    goto/16 :goto_3c
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .parameter "name"
    .parameter "service"

    .prologue
    .line 423
    iget-object v1, p0, Lcom/google/android/music/store/RecentItemsManager$Service;->mPlaybackServiceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 424
    :try_start_3
    invoke-static {p2}, Lcom/google/android/music/IMusicPlaybackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/music/IMusicPlaybackService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/store/RecentItemsManager$Service;->mPlaybackService:Lcom/google/android/music/IMusicPlaybackService;

    .line 425
    iget-object v0, p0, Lcom/google/android/music/store/RecentItemsManager$Service;->mPlaybackServiceLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 426
    monitor-exit v1

    .line 427
    return-void

    .line 426
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .parameter "name"

    .prologue
    .line 432
    const-string v0, "RecentItemsManager"

    const-string v1, "Playback service died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object v1, p0, Lcom/google/android/music/store/RecentItemsManager$Service;->mPlaybackServiceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 434
    :try_start_a
    iget-object v0, p0, Lcom/google/android/music/store/RecentItemsManager$Service;->mPlaybackService:Lcom/google/android/music/IMusicPlaybackService;

    if-eqz v0, :cond_14

    .line 435
    invoke-virtual {p0, p0}, Lcom/google/android/music/store/RecentItemsManager$Service;->unbindService(Landroid/content/ServiceConnection;)V

    .line 436
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/store/RecentItemsManager$Service;->mPlaybackService:Lcom/google/android/music/IMusicPlaybackService;

    .line 440
    :cond_14
    iget-object v0, p0, Lcom/google/android/music/store/RecentItemsManager$Service;->mPlaybackServiceLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 441
    monitor-exit v1

    .line 442
    return-void

    .line 441
    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_a .. :try_end_1d} :catchall_1b

    throw v0
.end method

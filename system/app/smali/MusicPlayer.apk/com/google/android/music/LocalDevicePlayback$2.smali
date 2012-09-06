.class Lcom/google/android/music/LocalDevicePlayback$2;
.super Ljava/lang/Object;
.source "LocalDevicePlayback.java"

# interfaces
.implements Lcom/google/android/music/LocalDevicePlayback$ServiceHooks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/LocalDevicePlayback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/LocalDevicePlayback;


# direct methods
.method constructor <init>(Lcom/google/android/music/LocalDevicePlayback;)V
    .registers 2
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, Lcom/google/android/music/LocalDevicePlayback$2;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addDownloadProgressListener(Lcom/google/android/music/dl/ContentIdentifier;Lcom/google/android/music/dl/IDownloadProgressListener;)Z
    .registers 4
    .parameter "songId"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 272
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$2;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mDownloadManager:Lcom/google/android/music/dl/IDownloadManager;
    invoke-static {v0}, Lcom/google/android/music/LocalDevicePlayback;->access$500(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/dl/IDownloadManager;

    move-result-object v0

    if-nez v0, :cond_a

    .line 273
    const/4 v0, 0x0

    .line 276
    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$2;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mDownloadManager:Lcom/google/android/music/dl/IDownloadManager;
    invoke-static {v0}, Lcom/google/android/music/LocalDevicePlayback;->access$500(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/dl/IDownloadManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/music/dl/IDownloadManager;->addDownloadProgressListener(Lcom/google/android/music/dl/ContentIdentifier;Lcom/google/android/music/dl/IDownloadProgressListener;)Z

    move-result v0

    goto :goto_9
.end method

.method public cancelTryNext()V
    .registers 3

    .prologue
    .line 342
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$2;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/music/LocalDevicePlayback;->access$700(Lcom/google/android/music/LocalDevicePlayback;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 343
    return-void
.end method

.method public createDownloadOrder(Lcom/google/android/music/dl/ContentIdentifier;I)Lcom/google/android/music/dl/DownloadOrder;
    .registers 23
    .parameter "songId"
    .parameter "purpose"

    .prologue
    .line 401
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/LocalDevicePlayback$2;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v4}, Lcom/google/android/music/LocalDevicePlayback;->access$1200(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/medialist/SongList;

    move-result-object v17

    .line 402
    .local v17, songList:Lcom/google/android/music/medialist/SongList;
    if-nez v17, :cond_c

    .line 403
    const/4 v3, 0x0

    .line 455
    :goto_b
    return-object v3

    .line 405
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/LocalDevicePlayback$2;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    invoke-virtual {v4}, Lcom/google/android/music/LocalDevicePlayback;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/LocalDevicePlayback$2;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/music/LocalDevicePlayback;->mCursorCols:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v0, v4, v1, v2}, Lcom/google/android/music/medialist/SongList;->getSongCursor(Landroid/content/Context;Lcom/google/android/music/dl/ContentIdentifier;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 406
    .local v14, cursor:Landroid/database/Cursor;
    if-nez v14, :cond_2e

    .line 407
    const/4 v3, 0x0

    goto :goto_b

    .line 410
    :cond_2e
    :try_start_2e
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_ae

    move-result v4

    if-nez v4, :cond_39

    .line 411
    const/4 v3, 0x0

    .line 455
    invoke-static {v14}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    goto :goto_b

    .line 416
    :cond_39
    const-wide/16 v6, 0x0

    .line 417
    .local v6, size:J
    const/16 v18, 0x0

    .line 419
    .local v18, sourceAccount:I
    :try_start_3d
    const-string v4, "duration"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 421
    .local v8, durationInMs:J
    const-string v4, "album"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 423
    .local v10, albumName:Ljava/lang/String;
    const-string v4, "artist"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 425
    .local v11, trackArtist:Ljava/lang/String;
    const-string v4, "AlbumArtist"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 427
    .local v12, albumArtist:Ljava/lang/String;
    const-string v4, "title"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 429
    .local v13, title:Ljava/lang/String;
    const-string v4, "SourceId"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 431
    .local v5, sourceId:Ljava/lang/String;
    const-string v4, "domainParam"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 433
    .local v15, domainParam:Ljava/lang/String;
    const/16 v16, 0x0

    .line 434
    .local v16, remoteUrl:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/dl/ContentIdentifier;->isSharedDomain()Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 437
    move-object/from16 v16, v15

    .line 438
    const/4 v15, 0x0

    .line 441
    :cond_8e
    new-instance v3, Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v13}, Lcom/google/android/music/dl/DownloadOrder;-><init>(Lcom/google/android/music/dl/ContentIdentifier;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    .local v3, order:Lcom/google/android/music/dl/DownloadOrder;
    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/google/android/music/dl/DownloadOrder;->setSourceAccount(I)V

    .line 447
    if-eqz v16, :cond_a1

    .line 448
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/google/android/music/dl/DownloadOrder;->setRemoteUrl(Ljava/lang/String;)V

    .line 450
    :cond_a1
    invoke-virtual {v3, v15}, Lcom/google/android/music/dl/DownloadOrder;->setDomainParam(Ljava/lang/String;)V

    .line 451
    move/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/google/android/music/dl/DownloadOrder;->changePurpose(I)V
    :try_end_a9
    .catchall {:try_start_3d .. :try_end_a9} :catchall_ae

    .line 455
    invoke-static {v14}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    goto/16 :goto_b

    .end local v3           #order:Lcom/google/android/music/dl/DownloadOrder;
    .end local v5           #sourceId:Ljava/lang/String;
    .end local v6           #size:J
    .end local v8           #durationInMs:J
    .end local v10           #albumName:Ljava/lang/String;
    .end local v11           #trackArtist:Ljava/lang/String;
    .end local v12           #albumArtist:Ljava/lang/String;
    .end local v13           #title:Ljava/lang/String;
    .end local v15           #domainParam:Ljava/lang/String;
    .end local v16           #remoteUrl:Ljava/lang/String;
    .end local v18           #sourceAccount:I
    :catchall_ae
    move-exception v4

    invoke-static {v14}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v4
.end method

.method public getDebugInfo(Lcom/google/android/music/dl/ContentIdentifier;)Ljava/lang/String;
    .registers 3
    .parameter "songId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 335
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$2;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mDownloadManager:Lcom/google/android/music/dl/IDownloadManager;
    invoke-static {v0}, Lcom/google/android/music/LocalDevicePlayback;->access$500(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/dl/IDownloadManager;

    move-result-object v0

    if-nez v0, :cond_a

    .line 336
    const/4 v0, 0x0

    .line 338
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$2;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mDownloadManager:Lcom/google/android/music/dl/IDownloadManager;
    invoke-static {v0}, Lcom/google/android/music/LocalDevicePlayback;->access$500(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/dl/IDownloadManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/music/dl/IDownloadManager;->getDebugInfo(Lcom/google/android/music/dl/ContentIdentifier;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method public getPreferredMusicId(Lcom/google/android/music/dl/ContentIdentifier;)Lcom/google/android/music/dl/ContentIdentifier;
    .registers 5
    .parameter "songId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 376
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$2;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mStoreService:Lcom/google/android/music/store/IStoreService;
    invoke-static {v0}, Lcom/google/android/music/LocalDevicePlayback;->access$1100(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/store/IStoreService;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 377
    const-string v0, "MediaPlaybackService"

    const-string v1, "store service not initialized"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/google/android/music/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 378
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 380
    :cond_1a
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$2;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mStoreService:Lcom/google/android/music/store/IStoreService;
    invoke-static {v0}, Lcom/google/android/music/LocalDevicePlayback;->access$1100(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/store/IStoreService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/music/store/IStoreService;->getPreferredMusicId(Lcom/google/android/music/dl/ContentIdentifier;)Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getSourceAccountAndId(Lcom/google/android/music/dl/ContentIdentifier;[I[Ljava/lang/String;)V
    .registers 7
    .parameter "songId"
    .parameter "outSourceType"
    .parameter "outSourceId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 385
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$2;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mStoreService:Lcom/google/android/music/store/IStoreService;
    invoke-static {v0}, Lcom/google/android/music/LocalDevicePlayback;->access$1100(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/store/IStoreService;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 386
    const-string v0, "MediaPlaybackService"

    const-string v1, "store service not initialized"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/google/android/music/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 387
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 389
    :cond_1a
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$2;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mStoreService:Lcom/google/android/music/store/IStoreService;
    invoke-static {v0}, Lcom/google/android/music/LocalDevicePlayback;->access$1100(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/store/IStoreService;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/music/store/IStoreService;->getSourceAccountAndId(Lcom/google/android/music/dl/ContentIdentifier;[I[Ljava/lang/String;)V

    .line 390
    return-void
.end method

.method public getStreamingDownloadState(Lcom/google/android/music/dl/ContentIdentifier;)Lcom/google/android/music/dl/DownloadState;
    .registers 3
    .parameter "songId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 321
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$2;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mDownloadManager:Lcom/google/android/music/dl/IDownloadManager;
    invoke-static {v0}, Lcom/google/android/music/LocalDevicePlayback;->access$500(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/dl/IDownloadManager;

    move-result-object v0

    if-nez v0, :cond_a

    .line 322
    const/4 v0, 0x0

    .line 324
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$2;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mDownloadManager:Lcom/google/android/music/dl/IDownloadManager;
    invoke-static {v0}, Lcom/google/android/music/LocalDevicePlayback;->access$500(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/dl/IDownloadManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/music/dl/IDownloadManager;->getStreamingDownloadState(Lcom/google/android/music/dl/ContentIdentifier;)Lcom/google/android/music/dl/DownloadState;

    move-result-object v0

    goto :goto_9
.end method

.method public logStatusEvent(Lcom/google/android/music/dl/ContentIdentifier;I)V
    .registers 4
    .parameter "songId"
    .parameter "event"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 329
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$2;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mDownloadManager:Lcom/google/android/music/dl/IDownloadManager;
    invoke-static {v0}, Lcom/google/android/music/LocalDevicePlayback;->access$500(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/dl/IDownloadManager;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 330
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$2;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mDownloadManager:Lcom/google/android/music/dl/IDownloadManager;
    invoke-static {v0}, Lcom/google/android/music/LocalDevicePlayback;->access$500(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/dl/IDownloadManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/music/dl/IDownloadManager;->logStreamingStatusEvent(Lcom/google/android/music/dl/ContentIdentifier;I)V

    .line 332
    :cond_11
    return-void
.end method

.method public markSongPlayed(Lcom/google/android/music/dl/ContentIdentifier;)V
    .registers 5
    .parameter "songId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 368
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$2;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mStoreService:Lcom/google/android/music/store/IStoreService;
    invoke-static {v0}, Lcom/google/android/music/LocalDevicePlayback;->access$1100(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/store/IStoreService;

    move-result-object v0

    if-nez v0, :cond_15

    .line 369
    const-string v0, "MediaPlaybackService"

    const-string v1, "store service not initialized"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/google/android/music/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 373
    :goto_14
    return-void

    .line 372
    :cond_15
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$2;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mStoreService:Lcom/google/android/music/store/IStoreService;
    invoke-static {v0}, Lcom/google/android/music/LocalDevicePlayback;->access$1100(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/store/IStoreService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/music/store/IStoreService;->markSongPlayed(Lcom/google/android/music/dl/ContentIdentifier;)V

    goto :goto_14
.end method

.method public notifyOpenComplete()V
    .registers 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$2;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    invoke-virtual {v0}, Lcom/google/android/music/LocalDevicePlayback;->onOpenComplete()V

    .line 260
    return-void
.end method

.method public notifyOpenStarted()V
    .registers 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$2;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #calls: Lcom/google/android/music/LocalDevicePlayback;->onOpenStarted()V
    invoke-static {v0}, Lcom/google/android/music/LocalDevicePlayback;->access$400(Lcom/google/android/music/LocalDevicePlayback;)V

    .line 256
    return-void
.end method

.method public notifyPlayStateChanged()V
    .registers 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$2;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    invoke-virtual {v0}, Lcom/google/android/music/LocalDevicePlayback;->onPlayStateChanged()V

    .line 264
    return-void
.end method

.method public notifyPlaybackFailure()V
    .registers 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$2;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #calls: Lcom/google/android/music/LocalDevicePlayback;->onPlaybackFailure()V
    invoke-static {v0}, Lcom/google/android/music/LocalDevicePlayback;->access$200(Lcom/google/android/music/LocalDevicePlayback;)V

    .line 244
    return-void
.end method

.method public removeDownloadProgressListener(Lcom/google/android/music/dl/IDownloadProgressListener;)V
    .registers 3
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 281
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$2;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mDownloadManager:Lcom/google/android/music/dl/IDownloadManager;
    invoke-static {v0}, Lcom/google/android/music/LocalDevicePlayback;->access$500(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/dl/IDownloadManager;

    move-result-object v0

    if-nez v0, :cond_9

    .line 285
    :goto_8
    return-void

    .line 284
    :cond_9
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$2;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mDownloadManager:Lcom/google/android/music/dl/IDownloadManager;
    invoke-static {v0}, Lcom/google/android/music/LocalDevicePlayback;->access$500(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/dl/IDownloadManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/music/dl/IDownloadManager;->removeDownloadProgressListener(Lcom/google/android/music/dl/IDownloadProgressListener;)V

    goto :goto_8
.end method

.method public reportTrackEnded()V
    .registers 4

    .prologue
    .line 346
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$2;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mNextPlayer:Lcom/google/android/music/player/AsyncMediaPlayer;
    invoke-static {v0}, Lcom/google/android/music/LocalDevicePlayback;->access$800(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/player/AsyncMediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 347
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$2;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mPlayer:Lcom/google/android/music/player/AsyncMediaPlayer;
    invoke-static {v0}, Lcom/google/android/music/LocalDevicePlayback;->access$900(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/player/AsyncMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/player/AsyncMediaPlayer;->release()V

    .line 348
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$2;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback$2;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mNextPlayer:Lcom/google/android/music/player/AsyncMediaPlayer;
    invoke-static {v1}, Lcom/google/android/music/LocalDevicePlayback;->access$800(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/player/AsyncMediaPlayer;

    move-result-object v1

    #setter for: Lcom/google/android/music/LocalDevicePlayback;->mPlayer:Lcom/google/android/music/player/AsyncMediaPlayer;
    invoke-static {v0, v1}, Lcom/google/android/music/LocalDevicePlayback;->access$902(Lcom/google/android/music/LocalDevicePlayback;Lcom/google/android/music/player/AsyncMediaPlayer;)Lcom/google/android/music/player/AsyncMediaPlayer;

    .line 349
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$2;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/music/LocalDevicePlayback;->mNextPlayer:Lcom/google/android/music/player/AsyncMediaPlayer;
    invoke-static {v0, v1}, Lcom/google/android/music/LocalDevicePlayback;->access$802(Lcom/google/android/music/LocalDevicePlayback;Lcom/google/android/music/player/AsyncMediaPlayer;)Lcom/google/android/music/player/AsyncMediaPlayer;

    .line 350
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$2;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/music/LocalDevicePlayback;->access$700(Lcom/google/android/music/LocalDevicePlayback;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 361
    :goto_2d
    return-void

    .line 357
    :cond_2e
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$2;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/google/android/music/LocalDevicePlayback;->access$1000(Lcom/google/android/music/LocalDevicePlayback;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 358
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$2;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/music/LocalDevicePlayback;->access$700(Lcom/google/android/music/LocalDevicePlayback;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 359
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$2;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/music/LocalDevicePlayback;->access$700(Lcom/google/android/music/LocalDevicePlayback;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2d
.end method

.method public requiresDownloadManager([Lcom/google/android/music/dl/ContentIdentifier;)[Lcom/google/android/music/dl/ContentIdentifier;
    .registers 5
    .parameter "songIds"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 393
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$2;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mStoreService:Lcom/google/android/music/store/IStoreService;
    invoke-static {v0}, Lcom/google/android/music/LocalDevicePlayback;->access$1100(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/store/IStoreService;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 394
    const-string v0, "MediaPlaybackService"

    const-string v1, "store service not initialized"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/google/android/music/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 395
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 397
    :cond_1a
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$2;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mStoreService:Lcom/google/android/music/store/IStoreService;
    invoke-static {v0}, Lcom/google/android/music/LocalDevicePlayback;->access$1100(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/store/IStoreService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/music/store/IStoreService;->requiresDownloadManager([Lcom/google/android/music/dl/ContentIdentifier;)[Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public streamSong(Lcom/google/android/music/dl/ContentIdentifier;)Lcom/google/android/music/dl/DownloadState;
    .registers 4
    .parameter "songId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 288
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback$2;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mDownloadManager:Lcom/google/android/music/dl/IDownloadManager;
    invoke-static {v1}, Lcom/google/android/music/LocalDevicePlayback;->access$500(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/dl/IDownloadManager;

    move-result-object v1

    if-nez v1, :cond_a

    .line 289
    const/4 v1, 0x0

    .line 292
    :goto_9
    return-object v1

    .line 291
    :cond_a
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback$2;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #calls: Lcom/google/android/music/LocalDevicePlayback;->getNextSongs()[Lcom/google/android/music/dl/ContentIdentifier;
    invoke-static {v1}, Lcom/google/android/music/LocalDevicePlayback;->access$600(Lcom/google/android/music/LocalDevicePlayback;)[Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v0

    .line 292
    .local v0, prefetchList:[Lcom/google/android/music/dl/ContentIdentifier;
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback$2;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mDownloadManager:Lcom/google/android/music/dl/IDownloadManager;
    invoke-static {v1}, Lcom/google/android/music/LocalDevicePlayback;->access$500(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/dl/IDownloadManager;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/google/android/music/dl/IDownloadManager;->streamSong(Lcom/google/android/music/dl/ContentIdentifier;[Lcom/google/android/music/dl/ContentIdentifier;)Lcom/google/android/music/dl/DownloadState;

    move-result-object v1

    goto :goto_9
.end method

.method public streamSongWithOrder(Lcom/google/android/music/dl/DownloadOrder;)Lcom/google/android/music/dl/DownloadState;
    .registers 9
    .parameter "order"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 296
    iget-object v5, p0, Lcom/google/android/music/LocalDevicePlayback$2;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mDownloadManager:Lcom/google/android/music/dl/IDownloadManager;
    invoke-static {v5}, Lcom/google/android/music/LocalDevicePlayback;->access$500(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/dl/IDownloadManager;

    move-result-object v5

    if-eqz v5, :cond_a

    if-nez p1, :cond_c

    .line 297
    :cond_a
    const/4 v5, 0x0

    .line 317
    :goto_b
    return-object v5

    .line 299
    :cond_c
    iget-object v5, p0, Lcom/google/android/music/LocalDevicePlayback$2;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #calls: Lcom/google/android/music/LocalDevicePlayback;->getNextSongs()[Lcom/google/android/music/dl/ContentIdentifier;
    invoke-static {v5}, Lcom/google/android/music/LocalDevicePlayback;->access$600(Lcom/google/android/music/LocalDevicePlayback;)[Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v2

    .line 300
    .local v2, prefetchList:[Lcom/google/android/music/dl/ContentIdentifier;
    const/4 v0, 0x0

    .line 301
    .local v0, arrayOfOrders:[Lcom/google/android/music/dl/DownloadOrder;
    if-eqz v2, :cond_3f

    .line 302
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 303
    .local v4, prefetchOrders:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/dl/DownloadOrder;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1b
    array-length v5, v2

    if-ge v1, v5, :cond_2d

    .line 304
    aget-object v5, v2, v1

    const/4 v6, 0x2

    invoke-virtual {p0, v5, v6}, Lcom/google/android/music/LocalDevicePlayback$2;->createDownloadOrder(Lcom/google/android/music/dl/ContentIdentifier;I)Lcom/google/android/music/dl/DownloadOrder;

    move-result-object v3

    .line 306
    .local v3, prefetchOrder:Lcom/google/android/music/dl/DownloadOrder;
    if-eqz v3, :cond_2a

    .line 307
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 311
    .end local v3           #prefetchOrder:Lcom/google/android/music/dl/DownloadOrder;
    :cond_2d
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_3f

    .line 312
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v0, v5, [Lcom/google/android/music/dl/DownloadOrder;

    .line 313
    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .end local v0           #arrayOfOrders:[Lcom/google/android/music/dl/DownloadOrder;
    check-cast v0, [Lcom/google/android/music/dl/DownloadOrder;

    .line 317
    .end local v1           #i:I
    .end local v4           #prefetchOrders:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/dl/DownloadOrder;>;"
    .restart local v0       #arrayOfOrders:[Lcom/google/android/music/dl/DownloadOrder;
    :cond_3f
    iget-object v5, p0, Lcom/google/android/music/LocalDevicePlayback$2;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mDownloadManager:Lcom/google/android/music/dl/IDownloadManager;
    invoke-static {v5}, Lcom/google/android/music/LocalDevicePlayback;->access$500(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/dl/IDownloadManager;

    move-result-object v5

    invoke-interface {v5, p1, v0}, Lcom/google/android/music/dl/IDownloadManager;->streamSongWithOrder(Lcom/google/android/music/dl/DownloadOrder;[Lcom/google/android/music/dl/DownloadOrder;)Lcom/google/android/music/dl/DownloadState;

    move-result-object v5

    goto :goto_b
.end method

.class Lcom/google/android/music/MusicPlaybackService$2;
.super Ljava/lang/Object;
.source "MusicPlaybackService.java"

# interfaces
.implements Lcom/google/android/music/MusicPlaybackService$ServiceHooks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/MusicPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/MusicPlaybackService;


# direct methods
.method constructor <init>(Lcom/google/android/music/MusicPlaybackService;)V
    .registers 2
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lcom/google/android/music/MusicPlaybackService$2;->this$0:Lcom/google/android/music/MusicPlaybackService;

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
    .line 252
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$2;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mDownloadManager:Lcom/google/android/music/dl/IDownloadManager;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$300(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/dl/IDownloadManager;

    move-result-object v0

    if-nez v0, :cond_a

    .line 253
    const/4 v0, 0x0

    .line 256
    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$2;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mDownloadManager:Lcom/google/android/music/dl/IDownloadManager;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$300(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/dl/IDownloadManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/music/dl/IDownloadManager;->addDownloadProgressListener(Lcom/google/android/music/dl/ContentIdentifier;Lcom/google/android/music/dl/IDownloadProgressListener;)Z

    move-result v0

    goto :goto_9
.end method

.method public cancelTryNext()V
    .registers 3

    .prologue
    .line 303
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$2;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$400(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 304
    return-void
.end method

.method public createDownloadOrder(Lcom/google/android/music/dl/ContentIdentifier;)Lcom/google/android/music/dl/DownloadOrder;
    .registers 17
    .parameter "songId"

    .prologue
    .line 355
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$2;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v1}, Lcom/google/android/music/MusicPlaybackService;->access$700(Lcom/google/android/music/MusicPlaybackService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v14

    monitor-enter v14

    .line 357
    :try_start_7
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$2;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v1}, Lcom/google/android/music/MusicPlaybackService;->access$700(Lcom/google/android/music/MusicPlaybackService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/database/Cursor;

    .local v11, cursor:Landroid/database/Cursor;
    if-nez v11, :cond_18

    .line 358
    const/4 v0, 0x0

    monitor-exit v14

    .line 391
    :goto_17
    return-object v0

    .line 364
    :cond_18
    const/4 v2, 0x0

    .line 365
    .local v2, sourceId:Ljava/lang/String;
    const-wide/16 v3, 0x0

    .line 366
    .local v3, size:J
    const/4 v13, 0x0

    .line 368
    .local v13, sourceAccount:I
    const-string v1, "duration"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 370
    .local v5, durationInMs:J
    const-string v1, "album"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 372
    .local v7, albumName:Ljava/lang/String;
    const-string v1, "artist"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 374
    .local v8, trackArtist:Ljava/lang/String;
    const-string v1, "AlbumArtist"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 376
    .local v9, albumArtist:Ljava/lang/String;
    const-string v1, "title"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 381
    .local v10, title:Ljava/lang/String;
    const-string v1, "SourceId"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 384
    .local v12, remoteUrl:Ljava/lang/String;
    new-instance v0, Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v10}, Lcom/google/android/music/dl/DownloadOrder;-><init>(Lcom/google/android/music/dl/ContentIdentifier;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    .local v0, order:Lcom/google/android/music/dl/DownloadOrder;
    invoke-virtual {v0, v13}, Lcom/google/android/music/dl/DownloadOrder;->setSourceAccount(I)V

    .line 390
    invoke-virtual {v0, v12}, Lcom/google/android/music/dl/DownloadOrder;->setRemoteUrl(Ljava/lang/String;)V

    .line 391
    monitor-exit v14

    goto :goto_17

    .line 392
    .end local v0           #order:Lcom/google/android/music/dl/DownloadOrder;
    .end local v2           #sourceId:Ljava/lang/String;
    .end local v3           #size:J
    .end local v5           #durationInMs:J
    .end local v7           #albumName:Ljava/lang/String;
    .end local v8           #trackArtist:Ljava/lang/String;
    .end local v9           #albumArtist:Ljava/lang/String;
    .end local v10           #title:Ljava/lang/String;
    .end local v11           #cursor:Landroid/database/Cursor;
    .end local v12           #remoteUrl:Ljava/lang/String;
    .end local v13           #sourceAccount:I
    :catchall_67
    move-exception v1

    monitor-exit v14
    :try_end_69
    .catchall {:try_start_7 .. :try_end_69} :catchall_67

    throw v1
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
    .line 296
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$2;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mDownloadManager:Lcom/google/android/music/dl/IDownloadManager;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$300(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/dl/IDownloadManager;

    move-result-object v0

    if-nez v0, :cond_a

    .line 297
    const/4 v0, 0x0

    .line 299
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$2;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mDownloadManager:Lcom/google/android/music/dl/IDownloadManager;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$300(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/dl/IDownloadManager;

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
    .line 330
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$2;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mStoreService:Lcom/google/android/music/store/IStoreService;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$600(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/store/IStoreService;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 331
    const-string v0, "MediaPlaybackService"

    const-string v1, "store service not initialized"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 332
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 334
    :cond_1a
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$2;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mStoreService:Lcom/google/android/music/store/IStoreService;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$600(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/store/IStoreService;

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
    .line 339
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$2;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mStoreService:Lcom/google/android/music/store/IStoreService;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$600(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/store/IStoreService;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 340
    const-string v0, "MediaPlaybackService"

    const-string v1, "store service not initialized"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 341
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 343
    :cond_1a
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$2;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mStoreService:Lcom/google/android/music/store/IStoreService;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$600(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/store/IStoreService;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/music/store/IStoreService;->getSourceAccountAndId(Lcom/google/android/music/dl/ContentIdentifier;[I[Ljava/lang/String;)V

    .line 344
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
    .line 282
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$2;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mDownloadManager:Lcom/google/android/music/dl/IDownloadManager;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$300(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/dl/IDownloadManager;

    move-result-object v0

    if-nez v0, :cond_a

    .line 283
    const/4 v0, 0x0

    .line 285
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$2;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mDownloadManager:Lcom/google/android/music/dl/IDownloadManager;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$300(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/dl/IDownloadManager;

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
    .line 290
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$2;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mDownloadManager:Lcom/google/android/music/dl/IDownloadManager;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$300(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/dl/IDownloadManager;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 291
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$2;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mDownloadManager:Lcom/google/android/music/dl/IDownloadManager;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$300(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/dl/IDownloadManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/music/dl/IDownloadManager;->logStreamingStatusEvent(Lcom/google/android/music/dl/ContentIdentifier;I)V

    .line 293
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
    .line 322
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$2;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mStoreService:Lcom/google/android/music/store/IStoreService;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$600(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/store/IStoreService;

    move-result-object v0

    if-nez v0, :cond_15

    .line 323
    const-string v0, "MediaPlaybackService"

    const-string v1, "store service not initialized"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 327
    :goto_14
    return-void

    .line 326
    :cond_15
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$2;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mStoreService:Lcom/google/android/music/store/IStoreService;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$600(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/store/IStoreService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/music/store/IStoreService;->markSongPlayed(Lcom/google/android/music/dl/ContentIdentifier;)V

    goto :goto_14
.end method

.method public notifyChange(Ljava/lang/String;)V
    .registers 3
    .parameter "what"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$2;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #calls: Lcom/google/android/music/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/google/android/music/MusicPlaybackService;->access$200(Lcom/google/android/music/MusicPlaybackService;Ljava/lang/String;)V

    .line 248
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
    .line 261
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$2;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mDownloadManager:Lcom/google/android/music/dl/IDownloadManager;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$300(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/dl/IDownloadManager;

    move-result-object v0

    if-nez v0, :cond_9

    .line 265
    :goto_8
    return-void

    .line 264
    :cond_9
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$2;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mDownloadManager:Lcom/google/android/music/dl/IDownloadManager;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$300(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/dl/IDownloadManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/music/dl/IDownloadManager;->removeDownloadProgressListener(Lcom/google/android/music/dl/IDownloadProgressListener;)V

    goto :goto_8
.end method

.method public reportTrackEnded()V
    .registers 4

    .prologue
    .line 312
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$2;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$500(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 313
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$2;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$400(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 314
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$2;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$400(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 315
    return-void
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
    .line 347
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$2;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mStoreService:Lcom/google/android/music/store/IStoreService;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$600(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/store/IStoreService;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 348
    const-string v0, "MediaPlaybackService"

    const-string v1, "store service not initialized"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 349
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 351
    :cond_1a
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$2;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mStoreService:Lcom/google/android/music/store/IStoreService;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$600(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/store/IStoreService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/music/store/IStoreService;->requiresDownloadManager([Lcom/google/android/music/dl/ContentIdentifier;)[Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public streamSong(Lcom/google/android/music/dl/ContentIdentifier;)Lcom/google/android/music/dl/DownloadState;
    .registers 3
    .parameter "songId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 268
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$2;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mDownloadManager:Lcom/google/android/music/dl/IDownloadManager;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$300(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/dl/IDownloadManager;

    move-result-object v0

    if-nez v0, :cond_a

    .line 269
    const/4 v0, 0x0

    .line 271
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$2;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mDownloadManager:Lcom/google/android/music/dl/IDownloadManager;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$300(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/dl/IDownloadManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/music/dl/IDownloadManager;->streamSong(Lcom/google/android/music/dl/ContentIdentifier;)Lcom/google/android/music/dl/DownloadState;

    move-result-object v0

    goto :goto_9
.end method

.method public streamSongWithOrder(Lcom/google/android/music/dl/DownloadOrder;)Lcom/google/android/music/dl/DownloadState;
    .registers 3
    .parameter "order"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 275
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$2;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mDownloadManager:Lcom/google/android/music/dl/IDownloadManager;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$300(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/dl/IDownloadManager;

    move-result-object v0

    if-nez v0, :cond_a

    .line 276
    const/4 v0, 0x0

    .line 278
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$2;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mDownloadManager:Lcom/google/android/music/dl/IDownloadManager;
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$300(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/dl/IDownloadManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/music/dl/IDownloadManager;->streamSongWithOrder(Lcom/google/android/music/dl/DownloadOrder;)Lcom/google/android/music/dl/DownloadState;

    move-result-object v0

    goto :goto_9
.end method

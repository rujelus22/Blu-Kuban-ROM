.class public Lcom/lifevibes/videoeditor/VideoEditorImpl;
.super Ljava/lang/Object;
.source "VideoEditorImpl.java"

# interfaces
.implements Lcom/lifevibes/videoeditor/VideoEditor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lifevibes/videoeditor/VideoEditorImpl$CodecConfig;
    }
.end annotation


# instance fields
.field private mAspectRatio:I

.field private mClipsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDurationMs:J

.field private final mLock:Ljava/util/concurrent/Semaphore;

.field private mMANativeHelper:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;

.field private final mMediaItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lifevibes/videoeditor/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mProjectPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "projectPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 127
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mClipsList:Ljava/util/List;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    .line 129
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v1, v1}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object v0, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mLock:Ljava/util/concurrent/Semaphore;

    .line 130
    new-instance v0, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;

    iget-object v1, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mLock:Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, p1, v1, p0}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;-><init>(Ljava/lang/String;Ljava/util/concurrent/Semaphore;Lcom/lifevibes/videoeditor/VideoEditor;)V

    iput-object v0, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mMANativeHelper:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;

    .line 131
    iput-object p1, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mProjectPath:Ljava/lang/String;

    .line 132
    const/4 v0, 0x3

    iput v0, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mAspectRatio:I

    .line 133
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mDurationMs:J

    .line 134
    return-void
.end method

.method private computeTimelineDuration()V
    .registers 8

    .prologue
    .line 1022
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mDurationMs:J

    .line 1023
    iget-object v3, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 1024
    .local v2, mediaItemsCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    if-ge v0, v2, :cond_21

    .line 1025
    iget-object v3, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lifevibes/videoeditor/MediaItem;

    .line 1026
    .local v1, mediaItem:Lcom/lifevibes/videoeditor/MediaItem;
    iget-wide v3, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mDurationMs:J

    invoke-virtual {v1}, Lcom/lifevibes/videoeditor/MediaItem;->getTimelineDuration()J

    move-result-wide v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mDurationMs:J

    .line 1024
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 1028
    .end local v1           #mediaItem:Lcom/lifevibes/videoeditor/MediaItem;
    :cond_21
    return-void
.end method

.method private lock()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    .line 1036
    const-string v0, "VideoEditorImpl"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1037
    const-string v0, "VideoEditorImpl"

    const-string v1, "lock: grabbing semaphore"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1039
    :cond_15
    iget-object v0, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 1040
    const-string v0, "VideoEditorImpl"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1041
    const-string v0, "VideoEditorImpl"

    const-string v1, "lock: grabbed semaphore"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    :cond_29
    return-void
.end method

.method private unlock()V
    .registers 3

    .prologue
    .line 1070
    const-string v0, "VideoEditorImpl"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1071
    const-string v0, "VideoEditorImpl"

    const-string v1, "unlock: releasing semaphore"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    :cond_10
    iget-object v0, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1074
    return-void
.end method


# virtual methods
.method public declared-synchronized addMediaItem(Lcom/lifevibes/videoeditor/MediaItem;)V
    .registers 5
    .parameter "mediaItem"

    .prologue
    .line 198
    monitor-enter p0

    if-nez p1, :cond_e

    .line 199
    :try_start_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Media item is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_b

    .line 198
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 204
    :cond_e
    :try_start_e
    iget-object v0, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 205
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Media item already exists: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/lifevibes/videoeditor/MediaItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_33
    iget-object v0, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_44

    .line 209
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "More than one media item cannot be added for MediaShare configuration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_44
    iget-object v0, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    invoke-direct {p0}, Lcom/lifevibes/videoeditor/VideoEditorImpl;->computeTimelineDuration()V
    :try_end_4c
    .catchall {:try_start_e .. :try_end_4c} :catchall_b

    .line 218
    monitor-exit p0

    return-void
.end method

.method public cancelExport(Ljava/lang/String;)V
    .registers 3
    .parameter "filename"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mMANativeHelper:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;

    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    .line 225
    iget-object v0, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mMANativeHelper:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v0, p1}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->stop(Ljava/lang/String;)V

    .line 227
    :cond_b
    return-void
.end method

.method public export(Ljava/lang/String;Lcom/lifevibes/videoeditor/VideoEditor$ExportProgressListener;)V
    .registers 14
    .parameter "filename"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 374
    if-nez p1, :cond_a

    .line 375
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "export: filename is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 377
    :cond_a
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 378
    .local v10, tempPathFile:Ljava/io/File;
    if-nez v10, :cond_2a

    .line 379
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "can not be created"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 381
    :cond_2a
    iget-object v0, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3a

    .line 382
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No MediaItems added"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 385
    :cond_3a
    const/4 v3, 0x0

    .line 386
    .local v3, maxDurationMediaItem:Lcom/lifevibes/videoeditor/MediaItem;
    const-wide/16 v7, 0x0

    .line 388
    .local v7, maximumDuration:J
    if-nez v3, :cond_62

    iget-object v0, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_62

    .line 389
    iget-object v0, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #maxDurationMediaItem:Lcom/lifevibes/videoeditor/MediaItem;
    check-cast v3, Lcom/lifevibes/videoeditor/MediaItem;

    .line 390
    .restart local v3       #maxDurationMediaItem:Lcom/lifevibes/videoeditor/MediaItem;
    iget-object v0, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mMANativeHelper:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v3}, Lcom/lifevibes/videoeditor/MediaItem;->getWidth()I

    move-result v1

    invoke-virtual {v3}, Lcom/lifevibes/videoeditor/MediaItem;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->getAspectRatio(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lifevibes/videoeditor/VideoEditorImpl;->setAspectRatio(I)V

    .line 392
    :cond_62
    const/4 v9, 0x0

    .line 394
    .local v9, semAcquireDone:Z
    :try_start_63
    invoke-direct {p0}, Lcom/lifevibes/videoeditor/VideoEditorImpl;->lock()V

    .line 395
    const/4 v9, 0x1

    .line 397
    iget-object v0, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mMANativeHelper:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;

    if-nez v0, :cond_81

    .line 398
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The video editor is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_73
    .catchall {:try_start_63 .. :try_end_73} :catchall_9c
    .catch Ljava/lang/InterruptedException; {:try_start_63 .. :try_end_73} :catch_73

    .line 405
    :catch_73
    move-exception v6

    .line 406
    .local v6, ex:Ljava/lang/InterruptedException;
    :try_start_74
    const-string v0, "VideoEditorImpl"

    const-string v1, "Sem acquire NOT successful in export"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7b
    .catchall {:try_start_74 .. :try_end_7b} :catchall_9c

    .line 408
    if-eqz v9, :cond_80

    .line 409
    invoke-direct {p0}, Lcom/lifevibes/videoeditor/VideoEditorImpl;->unlock()V

    .line 412
    .end local v6           #ex:Ljava/lang/InterruptedException;
    :cond_80
    :goto_80
    return-void

    .line 400
    :cond_81
    if-eqz v3, :cond_94

    .line 401
    :try_start_83
    iget-object v0, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mMANativeHelper:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;

    iget-object v2, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mProjectPath:Ljava/lang/String;

    iget-object v4, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    move-object v1, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->export(Ljava/lang/String;Ljava/lang/String;Lcom/lifevibes/videoeditor/MediaItem;Ljava/util/List;Lcom/lifevibes/videoeditor/VideoEditor$ExportProgressListener;)V
    :try_end_8e
    .catchall {:try_start_83 .. :try_end_8e} :catchall_9c
    .catch Ljava/lang/InterruptedException; {:try_start_83 .. :try_end_8e} :catch_73

    .line 408
    if-eqz v9, :cond_80

    .line 409
    invoke-direct {p0}, Lcom/lifevibes/videoeditor/VideoEditorImpl;->unlock()V

    goto :goto_80

    .line 403
    :cond_94
    :try_start_94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No Media video item added"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9c
    .catchall {:try_start_94 .. :try_end_9c} :catchall_9c
    .catch Ljava/lang/InterruptedException; {:try_start_94 .. :try_end_9c} :catch_73

    .line 408
    :catchall_9c
    move-exception v0

    if-eqz v9, :cond_a2

    .line 409
    invoke-direct {p0}, Lcom/lifevibes/videoeditor/VideoEditorImpl;->unlock()V

    :cond_a2
    throw v0
.end method

.method public getAspectRatio()I
    .registers 2

    .prologue
    .line 958
    iget v0, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mAspectRatio:I

    return v0
.end method

.method getNativeContext()Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;
    .registers 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mMANativeHelper:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 984
    iget-object v0, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mProjectPath:Ljava/lang/String;

    return-object v0
.end method

.method public release()V
    .registers 5

    .prologue
    .line 992
    const/4 v1, 0x0

    .line 994
    .local v1, semAcquireDone:Z
    :try_start_1
    invoke-direct {p0}, Lcom/lifevibes/videoeditor/VideoEditorImpl;->lock()V

    .line 995
    const/4 v1, 0x1

    .line 997
    iget-object v2, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mMANativeHelper:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;

    if-eqz v2, :cond_16

    .line 998
    iget-object v2, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mMediaItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 999
    iget-object v2, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mMANativeHelper:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v2}, Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;->releaseNativeHelper()V

    .line 1000
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mMANativeHelper:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_2a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_16} :catch_1c

    .line 1005
    :cond_16
    if-eqz v1, :cond_1b

    .line 1006
    invoke-direct {p0}, Lcom/lifevibes/videoeditor/VideoEditorImpl;->unlock()V

    .line 1009
    :cond_1b
    :goto_1b
    return-void

    .line 1002
    :catch_1c
    move-exception v0

    .line 1003
    .local v0, ex:Ljava/lang/Exception;
    :try_start_1d
    const-string v2, "VideoEditorImpl"

    const-string v3, "Sem acquire NOT successful in export"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_2a

    .line 1005
    if-eqz v1, :cond_1b

    .line 1006
    invoke-direct {p0}, Lcom/lifevibes/videoeditor/VideoEditorImpl;->unlock()V

    goto :goto_1b

    .line 1005
    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_2a
    move-exception v2

    if-eqz v1, :cond_30

    .line 1006
    invoke-direct {p0}, Lcom/lifevibes/videoeditor/VideoEditorImpl;->unlock()V

    :cond_30
    throw v2
.end method

.method public declared-synchronized setAspectRatio(I)V
    .registers 3
    .parameter "aspectRatio"

    .prologue
    .line 1015
    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/lifevibes/videoeditor/VideoEditorImpl;->mAspectRatio:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 1016
    monitor-exit p0

    return-void

    .line 1015
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method updateTimelineDuration()V
    .registers 1

    .prologue
    .line 977
    invoke-direct {p0}, Lcom/lifevibes/videoeditor/VideoEditorImpl;->computeTimelineDuration()V

    .line 978
    return-void
.end method

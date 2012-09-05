.class public Lcom/google/android/music/dl/BufferProgress;
.super Ljava/lang/Object;
.source "BufferProgress.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/dl/BufferProgress$VerboseProgressListener;
    }
.end annotation


# static fields
.field private static final LOGV:Z


# instance fields
.field private final mDownloadManager:Lcom/google/android/music/dl/DownloadManager;

.field final mProgressListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/google/android/music/dl/IDownloadProgressListener;",
            ">;"
        }
    .end annotation
.end field

.field private mVerboseProgressListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/dl/BufferProgress$VerboseProgressListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 19
    const-string v0, "BufferProgress"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/dl/BufferProgress;->LOGV:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/music/dl/DownloadManager;)V
    .registers 3
    .parameter "downloadManager"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/dl/BufferProgress;->mProgressListeners:Landroid/os/RemoteCallbackList;

    .line 26
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/dl/BufferProgress;->mVerboseProgressListeners:Ljava/util/List;

    .line 30
    iput-object p1, p0, Lcom/google/android/music/dl/BufferProgress;->mDownloadManager:Lcom/google/android/music/dl/DownloadManager;

    .line 31
    return-void
.end method

.method private declared-synchronized notifyBufferProgress(Lcom/google/android/music/dl/ContentIdentifier;IIFI)V
    .registers 9
    .parameter "songId"
    .parameter "purposeMask"
    .parameter "state"
    .parameter "progress"
    .parameter "error"

    .prologue
    .line 54
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/google/android/music/dl/BufferProgress;->mProgressListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1f

    move-result v1

    .line 55
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    if-ge v0, v1, :cond_18

    .line 57
    :try_start_a
    iget-object v2, p0, Lcom/google/android/music/dl/BufferProgress;->mProgressListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/dl/IDownloadProgressListener;

    invoke-interface {v2, p1, p3, p4, p5}, Lcom/google/android/music/dl/IDownloadProgressListener;->onDownloadProgress(Lcom/google/android/music/dl/ContentIdentifier;IFI)V
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_1f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_22

    .line 55
    :goto_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 64
    :cond_18
    :try_start_18
    iget-object v2, p0, Lcom/google/android/music/dl/BufferProgress;->mProgressListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_1f

    .line 65
    monitor-exit p0

    return-void

    .line 54
    .end local v0           #i:I
    .end local v1           #size:I
    :catchall_1f
    move-exception v2

    monitor-exit p0

    throw v2

    .line 59
    .restart local v0       #i:I
    .restart local v1       #size:I
    :catch_22
    move-exception v2

    goto :goto_15
.end method

.method private notifyVerboseProgressListeners(Lcom/google/android/music/dl/DownloadOrder;)V
    .registers 8
    .parameter "order"

    .prologue
    .line 121
    iget-object v4, p0, Lcom/google/android/music/dl/BufferProgress;->mVerboseProgressListeners:Ljava/util/List;

    monitor-enter v4

    .line 122
    :try_start_3
    iget-object v3, p0, Lcom/google/android/music/dl/BufferProgress;->mVerboseProgressListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/dl/BufferProgress$VerboseProgressListener;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_22

    .line 124
    .local v2, listener:Lcom/google/android/music/dl/BufferProgress$VerboseProgressListener;
    :try_start_15
    invoke-interface {v2, p1}, Lcom/google/android/music/dl/BufferProgress$VerboseProgressListener;->onDownloadProgress(Lcom/google/android/music/dl/DownloadOrder;)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_22
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_19

    goto :goto_9

    .line 125
    :catch_19
    move-exception v0

    .line 126
    .local v0, e:Ljava/lang/Exception;
    :try_start_1a
    const-string v3, "BufferProgress"

    const-string v5, "Error trying to notify of progress"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 129
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #listener:Lcom/google/android/music/dl/BufferProgress$VerboseProgressListener;
    :catchall_22
    move-exception v3

    monitor-exit v4
    :try_end_24
    .catchall {:try_start_1a .. :try_end_24} :catchall_22

    throw v3

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_25
    :try_start_25
    monitor-exit v4
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_22

    .line 130
    return-void
.end method


# virtual methods
.method public addDownloadProgressListener(Lcom/google/android/music/dl/ContentIdentifier;Lcom/google/android/music/dl/IDownloadProgressListener;)Z
    .registers 10
    .parameter "songId"
    .parameter "listener"

    .prologue
    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, currentlyDownloading:Z
    if-eqz p2, :cond_8

    .line 78
    iget-object v3, p0, Lcom/google/android/music/dl/BufferProgress;->mProgressListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 81
    :cond_8
    iget-object v3, p0, Lcom/google/android/music/dl/BufferProgress;->mDownloadManager:Lcom/google/android/music/dl/DownloadManager;

    invoke-virtual {v3, p1}, Lcom/google/android/music/dl/DownloadManager;->getDownload(Lcom/google/android/music/dl/ContentIdentifier;)Lcom/google/android/music/dl/DownloadOrder;

    move-result-object v2

    .line 82
    .local v2, order:Lcom/google/android/music/dl/DownloadOrder;
    if-eqz v2, :cond_31

    invoke-virtual {v2}, Lcom/google/android/music/dl/DownloadOrder;->hasPlaybackPurpose()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 83
    const/4 v0, 0x1

    .line 85
    :try_start_17
    invoke-virtual {v2}, Lcom/google/android/music/dl/DownloadOrder;->getDownloadStatus()Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->ordinal()I

    move-result v3

    invoke-virtual {v2}, Lcom/google/android/music/dl/DownloadOrder;->getCompleted()J

    move-result-wide v4

    long-to-float v4, v4

    invoke-virtual {v2}, Lcom/google/android/music/dl/DownloadOrder;->getDownloadLength()J

    move-result-wide v5

    long-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v2}, Lcom/google/android/music/dl/DownloadOrder;->getErrorType()I

    move-result v5

    invoke-interface {p2, p1, v3, v4, v5}, Lcom/google/android/music/dl/IDownloadProgressListener;->onDownloadProgress(Lcom/google/android/music/dl/ContentIdentifier;IFI)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_31} :catch_32

    .line 91
    :cond_31
    :goto_31
    return v0

    .line 87
    :catch_32
    move-exception v1

    .line 88
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "BufferProgress"

    const-string v4, "Error trying to notify of progress"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_31
.end method

.method addVerboseProgressListener(Lcom/google/android/music/dl/BufferProgress$VerboseProgressListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 107
    iget-object v1, p0, Lcom/google/android/music/dl/BufferProgress;->mVerboseProgressListeners:Ljava/util/List;

    monitor-enter v1

    .line 108
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/dl/BufferProgress;->mVerboseProgressListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 109
    iget-object v0, p0, Lcom/google/android/music/dl/BufferProgress;->mVerboseProgressListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_10
    monitor-exit v1

    .line 112
    return-void

    .line 111
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public notifyBufferProgress(Lcom/google/android/music/dl/DownloadOrder;)V
    .registers 8
    .parameter "order"

    .prologue
    .line 43
    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->hasPlaybackPurpose()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 44
    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->getContentIdentifier()Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->getPurposes()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->getDownloadStatus()Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->ordinal()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->getCompleted()J

    move-result-wide v4

    long-to-float v0, v4

    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->getDownloadLength()J

    move-result-wide v4

    long-to-float v4, v4

    div-float v4, v0, v4

    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->getErrorType()I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/music/dl/BufferProgress;->notifyBufferProgress(Lcom/google/android/music/dl/ContentIdentifier;IIFI)V

    .line 48
    :cond_2a
    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->hasKeeponPurpose()Z

    move-result v0

    if-nez v0, :cond_36

    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->hasRingtonePurpose()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 49
    :cond_36
    invoke-direct {p0, p1}, Lcom/google/android/music/dl/BufferProgress;->notifyVerboseProgressListeners(Lcom/google/android/music/dl/DownloadOrder;)V

    .line 51
    :cond_39
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/music/dl/BufferProgress;->mProgressListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    .line 37
    iget-object v1, p0, Lcom/google/android/music/dl/BufferProgress;->mVerboseProgressListeners:Ljava/util/List;

    monitor-enter v1

    .line 38
    :try_start_8
    iget-object v0, p0, Lcom/google/android/music/dl/BufferProgress;->mVerboseProgressListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 39
    monitor-exit v1

    .line 40
    return-void

    .line 39
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public removeDownloadProgressListener(Lcom/google/android/music/dl/IDownloadProgressListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 95
    if-eqz p1, :cond_7

    .line 96
    iget-object v0, p0, Lcom/google/android/music/dl/BufferProgress;->mProgressListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 98
    :cond_7
    return-void
.end method

.method removeVerboseProgressListener(Lcom/google/android/music/dl/BufferProgress$VerboseProgressListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 115
    iget-object v1, p0, Lcom/google/android/music/dl/BufferProgress;->mVerboseProgressListeners:Ljava/util/List;

    monitor-enter v1

    .line 116
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/dl/BufferProgress;->mVerboseProgressListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 117
    monitor-exit v1

    .line 118
    return-void

    .line 117
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.class public Lcom/google/android/youtube/core/player/AwfulPlayer;
.super Landroid/media/MediaPlayer;
.source "AwfulPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Lcom/google/android/youtube/core/transfer/TransferTask$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/player/AwfulPlayer$NetworkStateReceiver;
    }
.end annotation


# static fields
.field private static final BUFFER_FILE_SESSION_PREFIX:Ljava/lang/String;

.field public static final SUPPORTED_MIME_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private buffering:Z

.field private bufferingListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private completionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private context:Landroid/content/Context;

.field private dataSource:Landroid/net/Uri;

.field private final delayedShortSeek:Ljava/lang/Runnable;

.field private downloadTask:Lcom/google/android/youtube/core/transfer/DownloadTask;

.field private duration:I

.field private errorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private filePath:Ljava/lang/String;

.field private infoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private lastOffset:J

.field private final loadingOffsets:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final networkStateReceiver:Lcom/google/android/youtube/core/player/AwfulPlayer$NetworkStateReceiver;

.field private paused:Z

.field private final prepareOffset:Ljava/util/concurrent/atomic/AtomicLong;

.field private preparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private preparing:Z

.field private final ranges:Lcom/google/android/youtube/core/utils/Ranges;

.field private final seekOffsets:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private seekPosition:I

.field private size:J

.field private uiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "awf-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/google/android/youtube/core/player/AwfulPlayer;->BUFFER_FILE_SESSION_PREFIX:Ljava/lang/String;

    .line 62
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 63
    .local v1, supportedMimeTypes:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v2, "video/mp4"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 64
    const-string v2, "video/3gpp"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    sput-object v2, Lcom/google/android/youtube/core/player/AwfulPlayer;->SUPPORTED_MIME_TYPES:Ljava/util/Set;

    .line 68
    new-instance v0, Lcom/google/android/youtube/core/player/AwfulPlayer$1;

    invoke-direct {v0}, Lcom/google/android/youtube/core/player/AwfulPlayer$1;-><init>()V

    .line 86
    .local v0, deleteThread:Ljava/lang/Thread;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 87
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 88
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    .line 144
    invoke-direct {p0}, Landroid/media/MediaPlayer;-><init>()V

    .line 528
    new-instance v0, Lcom/google/android/youtube/core/player/AwfulPlayer$5;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/player/AwfulPlayer$5;-><init>(Lcom/google/android/youtube/core/player/AwfulPlayer;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->delayedShortSeek:Ljava/lang/Runnable;

    .line 145
    invoke-super {p0, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 146
    invoke-super {p0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 147
    invoke-super {p0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 148
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/32 v1, 0x40000

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->prepareOffset:Ljava/util/concurrent/atomic/AtomicLong;

    .line 149
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->loadingOffsets:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 150
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->seekOffsets:Ljava/util/concurrent/atomic/AtomicReference;

    .line 151
    new-instance v0, Lcom/google/android/youtube/core/utils/Ranges;

    invoke-direct {v0}, Lcom/google/android/youtube/core/utils/Ranges;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->ranges:Lcom/google/android/youtube/core/utils/Ranges;

    .line 152
    new-instance v0, Lcom/google/android/youtube/core/player/AwfulPlayer$NetworkStateReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/core/player/AwfulPlayer$NetworkStateReceiver;-><init>(Lcom/google/android/youtube/core/player/AwfulPlayer;Lcom/google/android/youtube/core/player/AwfulPlayer$1;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->networkStateReceiver:Lcom/google/android/youtube/core/player/AwfulPlayer$NetworkStateReceiver;

    .line 153
    const-string v0, ".*Awful.*"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->setVerboseFilter(Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 49
    sget-object v0, Lcom/google/android/youtube/core/player/AwfulPlayer;->BUFFER_FILE_SESSION_PREFIX:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/youtube/core/player/AwfulPlayer;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->uiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/youtube/core/player/AwfulPlayer;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->loadingOffsets:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/youtube/core/player/AwfulPlayer;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/android/youtube/core/player/AwfulPlayer;)Lcom/google/android/youtube/core/transfer/DownloadTask;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->downloadTask:Lcom/google/android/youtube/core/transfer/DownloadTask;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/youtube/core/player/AwfulPlayer;J)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/player/AwfulPlayer;->downloadFrom(J)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/youtube/core/player/AwfulPlayer;J)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/player/AwfulPlayer;->doDownloadProgress(J)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/youtube/core/player/AwfulPlayer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/AwfulPlayer;->listenPlaybackProgress()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/youtube/core/player/AwfulPlayer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/AwfulPlayer;->doPlaybackProgress()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/youtube/core/player/AwfulPlayer;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/youtube/core/player/AwfulPlayer;)Ljava/util/concurrent/atomic/AtomicReference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->seekOffsets:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/youtube/core/player/AwfulPlayer;I)J
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/player/AwfulPlayer;->getOffset(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$800(Lcom/google/android/youtube/core/player/AwfulPlayer;)Ljava/util/concurrent/atomic/AtomicLong;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->prepareOffset:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/youtube/core/player/AwfulPlayer;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->lastOffset:J

    return-wide v0
.end method

.method private cancelDownload()V
    .registers 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->downloadTask:Lcom/google/android/youtube/core/transfer/DownloadTask;

    if-eqz v0, :cond_c

    .line 311
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->downloadTask:Lcom/google/android/youtube/core/transfer/DownloadTask;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/DownloadTask;->cancel()V

    .line 312
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->downloadTask:Lcom/google/android/youtube/core/transfer/DownloadTask;

    .line 314
    :cond_c
    return-void
.end method

.method private deleteFileBuffer()V
    .registers 4

    .prologue
    .line 225
    iget-object v2, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->filePath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 226
    const-string v2, "deleting file buffer"

    invoke-static {v2}, Lcom/google/android/youtube/core/L;->v(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->filePath:Ljava/lang/String;

    .line 228
    .local v0, deletePath:Ljava/lang/String;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->filePath:Ljava/lang/String;

    .line 229
    new-instance v1, Lcom/google/android/youtube/core/player/AwfulPlayer$3;

    invoke-direct {v1, p0, v0}, Lcom/google/android/youtube/core/player/AwfulPlayer$3;-><init>(Lcom/google/android/youtube/core/player/AwfulPlayer;Ljava/lang/String;)V

    .line 236
    .local v1, deleteThread:Ljava/lang/Thread;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 237
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 239
    .end local v0           #deletePath:Ljava/lang/String;
    .end local v1           #deleteThread:Ljava/lang/Thread;
    :cond_1e
    return-void
.end method

.method private doDownloadProgress(J)V
    .registers 15
    .parameter "downloaded"

    .prologue
    .line 390
    iget-object v8, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->ranges:Lcom/google/android/youtube/core/utils/Ranges;

    iget-wide v9, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->lastOffset:J

    invoke-virtual {v8, v9, v10, p1, p2}, Lcom/google/android/youtube/core/utils/Ranges;->add(JJ)J

    move-result-wide v5

    .line 391
    .local v5, offset:J
    iput-wide v5, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->lastOffset:J

    .line 392
    cmp-long v8, v5, p1

    if-lez v8, :cond_2d

    .line 393
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "filled gap, downloading from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-wide/16 v9, 0x1

    add-long/2addr v9, v5

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/youtube/core/L;->v(Ljava/lang/String;)V

    .line 394
    const-wide/16 v8, 0x1

    add-long/2addr v8, v5

    invoke-direct {p0, v8, v9}, Lcom/google/android/youtube/core/player/AwfulPlayer;->downloadFrom(J)V

    .line 397
    :cond_2d
    invoke-direct {p0, v5, v6}, Lcom/google/android/youtube/core/player/AwfulPlayer;->percent(J)I

    move-result v7

    .line 398
    .local v7, percent:I
    iget-object v8, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->bufferingListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    if-eqz v8, :cond_3a

    .line 399
    iget-object v8, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->bufferingListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-interface {v8, p0, v7}, Landroid/media/MediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Landroid/media/MediaPlayer;I)V

    .line 402
    :cond_3a
    iget-boolean v8, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->preparing:Z

    if-eqz v8, :cond_82

    .line 404
    iget-object v8, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->loadingOffsets:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    if-nez v8, :cond_64

    iget-object v8, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->prepareOffset:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    cmp-long v8, v5, v8

    if-gtz v8, :cond_59

    iget-wide v8, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->size:J

    const-wide/16 v10, 0x1

    sub-long/2addr v8, v10

    cmp-long v8, v5, v8

    if-ltz v8, :cond_64

    .line 405
    :cond_59
    iget-object v8, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->seekOffsets:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_65

    .line 406
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/AwfulPlayer;->loadSeekOffsets()V

    .line 434
    :cond_64
    :goto_64
    return-void

    .line 408
    :cond_65
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "start buffer full "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 409
    iget-object v8, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->uiHandler:Landroid/os/Handler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_64

    .line 412
    :cond_82
    iget-boolean v8, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->buffering:Z

    if-eqz v8, :cond_cc

    .line 413
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/AwfulPlayer;->getCurrentPosition()I

    move-result v4

    .line 414
    .local v4, currentPosition:I
    add-int/lit16 v8, v4, 0x2710

    invoke-direct {p0, v8}, Lcom/google/android/youtube/core/player/AwfulPlayer;->getOffset(I)J

    move-result-wide v0

    .line 415
    .local v0, bufferFullOffset:J
    cmp-long v8, v5, v0

    if-gtz v8, :cond_9d

    iget-wide v8, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->size:J

    const-wide/16 v10, 0x1

    sub-long/2addr v8, v10

    cmp-long v8, v5, v8

    if-ltz v8, :cond_64

    .line 416
    :cond_9d
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "full buffer at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 417
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/google/android/youtube/core/player/AwfulPlayer;->setBuffering(Z)V

    .line 418
    iget v8, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->seekPosition:I

    const/4 v9, -0x1

    if-le v8, v9, :cond_c4

    .line 419
    iget v8, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->seekPosition:I

    invoke-super {p0, v8}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 420
    const/4 v8, -0x1

    iput v8, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->seekPosition:I

    .line 422
    :cond_c4
    iget-boolean v8, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->paused:Z

    if-nez v8, :cond_64

    .line 423
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/AwfulPlayer;->superStart()V

    goto :goto_64

    .line 426
    .end local v0           #bufferFullOffset:J
    .end local v4           #currentPosition:I
    :cond_cc
    iget-object v8, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->networkStateReceiver:Lcom/google/android/youtube/core/player/AwfulPlayer$NetworkStateReceiver;

    invoke-virtual {v8}, Lcom/google/android/youtube/core/player/AwfulPlayer$NetworkStateReceiver;->isConservative()Z

    move-result v8

    if-eqz v8, :cond_64

    .line 427
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/AwfulPlayer;->getCurrentPosition()I

    move-result v4

    .line 428
    .restart local v4       #currentPosition:I
    const v8, 0x15f90

    add-int/2addr v8, v4

    invoke-direct {p0, v8}, Lcom/google/android/youtube/core/player/AwfulPlayer;->getOffset(I)J

    move-result-wide v2

    .line 429
    .local v2, bufferLongOffset:J
    cmp-long v8, v5, v2

    if-lez v8, :cond_64

    .line 430
    const-string v8, "long buffer, suspending"

    invoke-static {v8}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 431
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/AwfulPlayer;->cancelDownload()V

    goto/16 :goto_64
.end method

.method private doPlaybackProgress()V
    .registers 12

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/AwfulPlayer;->getCurrentPosition()I

    move-result v4

    .line 496
    .local v4, currentPosition:I
    iget-object v5, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->downloadTask:Lcom/google/android/youtube/core/transfer/DownloadTask;

    if-nez v5, :cond_1f

    .line 497
    add-int/lit16 v5, v4, 0x7530

    invoke-direct {p0, v5}, Lcom/google/android/youtube/core/player/AwfulPlayer;->getOffset(I)J

    move-result-wide v2

    .line 498
    .local v2, bufferShortOffset:J
    iget-wide v5, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->lastOffset:J

    cmp-long v5, v5, v2

    if-gez v5, :cond_1e

    .line 499
    const-string v5, "short buffer, resuming"

    invoke-static {v5}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 500
    iget-wide v5, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->lastOffset:J

    invoke-direct {p0, v5, v6}, Lcom/google/android/youtube/core/player/AwfulPlayer;->downloadFrom(J)V

    .line 512
    .end local v2           #bufferShortOffset:J
    :cond_1e
    :goto_1e
    return-void

    .line 503
    :cond_1f
    add-int/lit16 v5, v4, 0x1388

    invoke-direct {p0, v5}, Lcom/google/android/youtube/core/player/AwfulPlayer;->getOffset(I)J

    move-result-wide v0

    .line 504
    .local v0, bufferLowOffset:J
    iget-wide v5, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->lastOffset:J

    cmp-long v5, v5, v0

    if-gez v5, :cond_1e

    iget-wide v5, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->lastOffset:J

    iget-wide v7, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->size:J

    const-wide/16 v9, 0x1

    sub-long/2addr v7, v9

    cmp-long v5, v5, v7

    if-gez v5, :cond_1e

    .line 505
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "low buffer at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->lastOffset:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 506
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/google/android/youtube/core/player/AwfulPlayer;->setBuffering(Z)V

    .line 507
    invoke-super {p0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 508
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/AwfulPlayer;->superPause()V

    goto :goto_1e
.end method

.method private downloadFrom(J)V
    .registers 14
    .parameter "offset"

    .prologue
    const/4 v9, 0x1

    .line 317
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/AwfulPlayer;->cancelDownload()V

    .line 318
    iput-wide p1, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->lastOffset:J

    .line 319
    iget-wide v0, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->size:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_17

    iget-wide v0, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->size:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-gez v0, :cond_37

    .line 320
    :cond_17
    new-instance v0, Lcom/google/android/youtube/core/transfer/DownloadTask;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->dataSource:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->filePath:Ljava/lang/String;

    const-wide/16 v5, 0x0

    const/high16 v8, 0x2

    move-wide v3, p1

    move-object v7, p0

    move v10, v9

    invoke-direct/range {v0 .. v10}, Lcom/google/android/youtube/core/transfer/DownloadTask;-><init>(Ljava/lang/String;Ljava/lang/String;JJLcom/google/android/youtube/core/transfer/TransferTask$Listener;IZZ)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->downloadTask:Lcom/google/android/youtube/core/transfer/DownloadTask;

    .line 322
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->downloadTask:Lcom/google/android/youtube/core/transfer/DownloadTask;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 324
    :cond_37
    return-void
.end method

.method private getOffset(I)J
    .registers 7
    .parameter "position"

    .prologue
    .line 574
    iget-object v3, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->seekOffsets:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/SortedMap;

    .line 575
    .local v2, offsets:Ljava/util/SortedMap;,"Ljava/util/SortedMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_2c

    .line 576
    div-int/lit16 v3, p1, 0x3e8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    .line 577
    .local v0, headMap:Ljava/util/SortedMap;,"Ljava/util/SortedMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2c

    .line 578
    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 579
    .local v1, lastKey:Ljava/lang/Integer;
    invoke-interface {v2, v1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    .line 582
    .end local v0           #headMap:Ljava/util/SortedMap;,"Ljava/util/SortedMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v1           #lastKey:Ljava/lang/Integer;
    :goto_2b
    return-wide v3

    :cond_2c
    const-wide/16 v3, 0x0

    goto :goto_2b
.end method

.method private internalReset()V
    .registers 6

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 200
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->networkStateReceiver:Lcom/google/android/youtube/core/player/AwfulPlayer$NetworkStateReceiver;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/AwfulPlayer$NetworkStateReceiver;->unregister()V

    .line 202
    iput-object v3, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->dataSource:Landroid/net/Uri;

    .line 203
    iput v4, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->duration:I

    .line 204
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->size:J

    .line 206
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/AwfulPlayer;->cancelDownload()V

    .line 207
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->uiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1c

    .line 208
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->uiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 211
    :cond_1c
    iput-boolean v2, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->preparing:Z

    .line 212
    iput-boolean v2, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->buffering:Z

    .line 213
    iput v4, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->seekPosition:I

    .line 215
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->ranges:Lcom/google/android/youtube/core/utils/Ranges;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/utils/Ranges;->clear()V

    .line 216
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->lastOffset:J

    .line 218
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->loadingOffsets:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 219
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->prepareOffset:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/32 v1, 0x40000

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 221
    iput-object v3, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->context:Landroid/content/Context;

    .line 222
    return-void
.end method

.method private listenPlaybackProgress()V
    .registers 5

    .prologue
    .line 561
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->uiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->uiHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 563
    return-void
.end method

.method private loadSeekOffsets()V
    .registers 3

    .prologue
    .line 437
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->loadingOffsets:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 438
    new-instance v0, Lcom/google/android/youtube/core/player/AwfulPlayer$4;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/player/AwfulPlayer$4;-><init>(Lcom/google/android/youtube/core/player/AwfulPlayer;)V

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/AwfulPlayer$4;->start()V

    .line 461
    return-void
.end method

.method private percent(J)I
    .registers 9
    .parameter "offset"

    .prologue
    .line 570
    const-wide/16 v0, 0x64

    mul-long/2addr v0, p1

    iget-wide v2, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->size:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private setBuffering(Z)V
    .registers 5
    .parameter "buffering"

    .prologue
    .line 242
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->buffering:Z

    .line 243
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->infoListener:Landroid/media/MediaPlayer$OnInfoListener;

    if-eqz v0, :cond_10

    .line 244
    iget-object v1, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->infoListener:Landroid/media/MediaPlayer$OnInfoListener;

    if-eqz p1, :cond_11

    const/16 v0, 0x2bd

    :goto_c
    const/4 v2, 0x0

    invoke-interface {v1, p0, v0, v2}, Landroid/media/MediaPlayer$OnInfoListener;->onInfo(Landroid/media/MediaPlayer;II)Z

    .line 249
    :cond_10
    return-void

    .line 244
    :cond_11
    const/16 v0, 0x2be

    goto :goto_c
.end method

.method private superPause()V
    .registers 1

    .prologue
    .line 556
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/AwfulPlayer;->unlistenPlaybackProgress()V

    .line 557
    invoke-super {p0}, Landroid/media/MediaPlayer;->pause()V

    .line 558
    return-void
.end method

.method private superStart()V
    .registers 1

    .prologue
    .line 551
    invoke-super {p0}, Landroid/media/MediaPlayer;->start()V

    .line 552
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/AwfulPlayer;->listenPlaybackProgress()V

    .line 553
    return-void
.end method

.method private unlistenPlaybackProgress()V
    .registers 3

    .prologue
    .line 566
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->uiHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 567
    return-void
.end method


# virtual methods
.method public doPrepare()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, -0xfa1

    .line 465
    :try_start_4
    invoke-super {p0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_26

    .line 471
    :try_start_7
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/AwfulPlayer;->getDuration()I

    move-result v1

    iput v1, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->duration:I
    :try_end_d
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_d} :catch_2b

    .line 478
    iget-object v1, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->loadingOffsets:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 479
    iput-boolean v3, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->preparing:Z

    .line 480
    iget-object v1, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->preparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    if-eqz v1, :cond_1d

    .line 481
    iget-object v1, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->preparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-interface {v1, p0}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 483
    :cond_1d
    iget v1, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->seekPosition:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_33

    .line 484
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/AwfulPlayer;->doSeekTo()V

    .line 492
    :goto_25
    return-void

    .line 466
    :catch_26
    move-exception v0

    .line 467
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0, p0, v4, v2}, Lcom/google/android/youtube/core/player/AwfulPlayer;->onError(Landroid/media/MediaPlayer;II)Z

    goto :goto_25

    .line 472
    .end local v0           #e:Ljava/lang/Exception;
    :catch_2b
    move-exception v0

    .line 473
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/AwfulPlayer;->release()V

    .line 475
    invoke-virtual {p0, p0, v4, v2}, Lcom/google/android/youtube/core/player/AwfulPlayer;->onError(Landroid/media/MediaPlayer;II)Z

    goto :goto_25

    .line 486
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :cond_33
    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->paused:Z

    if-eqz v1, :cond_3b

    .line 487
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/AwfulPlayer;->superPause()V

    goto :goto_25

    .line 489
    :cond_3b
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/AwfulPlayer;->superStart()V

    goto :goto_25
.end method

.method public doSeekTo()V
    .registers 6

    .prologue
    .line 377
    iget v2, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->seekPosition:I

    invoke-direct {p0, v2}, Lcom/google/android/youtube/core/player/AwfulPlayer;->getOffset(I)J

    move-result-wide v0

    .line 378
    .local v0, offset:J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "seek offset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/youtube/core/L;->v(Ljava/lang/String;)V

    .line 379
    iget-object v2, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->ranges:Lcom/google/android/youtube/core/utils/Ranges;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/youtube/core/utils/Ranges;->nextGap(J)J

    move-result-wide v0

    .line 380
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "next gap at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/youtube/core/L;->v(Ljava/lang/String;)V

    .line 382
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/google/android/youtube/core/player/AwfulPlayer;->setBuffering(Z)V

    .line 383
    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->lastOffset:J

    .line 384
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/AwfulPlayer;->cancelDownload()V

    .line 385
    iget-object v2, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->filePath:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->lastOffset:J

    invoke-virtual {p0, v2, v3, v4}, Lcom/google/android/youtube/core/player/AwfulPlayer;->onProgress(Ljava/lang/String;J)V

    .line 386
    invoke-direct {p0, v0, v1}, Lcom/google/android/youtube/core/player/AwfulPlayer;->downloadFrom(J)V

    .line 387
    return-void
.end method

.method public getCurrentPosition()I
    .registers 4

    .prologue
    .line 349
    iget v1, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->seekPosition:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_8

    .line 350
    iget v1, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->seekPosition:I

    .line 356
    :goto_7
    return v1

    .line 353
    :cond_8
    :try_start_8
    invoke-super {p0}, Landroid/media/MediaPlayer;->getCurrentPosition()I
    :try_end_b
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_7

    .line 354
    :catch_d
    move-exception v0

    .line 356
    .local v0, e:Ljava/lang/IllegalStateException;
    const/4 v1, 0x0

    goto :goto_7
.end method

.method public isPlaying()Z
    .registers 2

    .prologue
    .line 344
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->paused:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onCanceled(Ljava/lang/String;)V
    .registers 2
    .parameter "filePath"

    .prologue
    .line 601
    return-void
.end method

.method public onCompleted(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 8
    .parameter "filePath"
    .parameter "outputExtras"

    .prologue
    .line 604
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->uiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->uiHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    iget-wide v3, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->size:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 606
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 3
    .parameter "mp"

    .prologue
    .line 536
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->completionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    if-eqz v0, :cond_9

    .line 537
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->completionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-interface {v0, p1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 539
    :cond_9
    return-void
.end method

.method public onError(Ljava/lang/String;Lcom/google/android/youtube/core/transfer/TransferException;)V
    .registers 12
    .parameter "filePath"
    .parameter "exception"

    .prologue
    const/4 v4, 0x1

    .line 609
    const-string v5, "download error"

    invoke-static {v5, p2}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 610
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->downloadTask:Lcom/google/android/youtube/core/transfer/DownloadTask;

    .line 611
    iget-object v5, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->networkStateReceiver:Lcom/google/android/youtube/core/player/AwfulPlayer$NetworkStateReceiver;

    if-eqz v5, :cond_4c

    iget-object v5, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->networkStateReceiver:Lcom/google/android/youtube/core/player/AwfulPlayer$NetworkStateReceiver;

    invoke-virtual {v5}, Lcom/google/android/youtube/core/player/AwfulPlayer$NetworkStateReceiver;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_4c

    move v2, v4

    .line 612
    .local v2, connected:Z
    :goto_16
    iget-boolean v5, p2, Lcom/google/android/youtube/core/transfer/TransferException;->fatal:Z

    if-nez v5, :cond_1c

    if-eqz v2, :cond_4b

    .line 613
    :cond_1c
    invoke-virtual {p2}, Lcom/google/android/youtube/core/transfer/TransferException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    instance-of v5, v5, Ljava/io/IOException;

    if-eqz v5, :cond_4e

    .line 614
    new-instance v3, Landroid/os/StatFs;

    iget-object v5, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 615
    .local v3, statFs:Landroid/os/StatFs;
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v7, v7

    mul-long v0, v5, v7

    .line 616
    .local v0, availableBytes:J
    const-wide/32 v5, 0x20000

    cmp-long v5, v0, v5

    if-gez v5, :cond_4e

    .line 617
    const/16 v5, -0xfa2

    invoke-virtual {p0, p0, v4, v5}, Lcom/google/android/youtube/core/player/AwfulPlayer;->onError(Landroid/media/MediaPlayer;II)Z

    .line 623
    .end local v0           #availableBytes:J
    .end local v3           #statFs:Landroid/os/StatFs;
    :cond_4b
    :goto_4b
    return-void

    .line 611
    .end local v2           #connected:Z
    :cond_4c
    const/4 v2, 0x0

    goto :goto_16

    .line 621
    .restart local v2       #connected:Z
    :cond_4e
    const/16 v5, -0xfa0

    invoke-virtual {p0, p0, v4, v5}, Lcom/google/android/youtube/core/player/AwfulPlayer;->onError(Landroid/media/MediaPlayer;II)Z

    goto :goto_4b
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 5
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 542
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/AwfulPlayer;->internalReset()V

    .line 543
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/AwfulPlayer;->deleteFileBuffer()V

    .line 544
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    if-eqz v0, :cond_11

    .line 545
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v0

    .line 547
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .registers 9
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v0, 0x0

    .line 515
    const/4 v1, 0x1

    if-ne p2, v1, :cond_19

    const/16 v1, 0x10

    if-ne p3, v1, :cond_19

    .line 517
    iget-object v1, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->uiHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->delayedShortSeek:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 518
    iget-object v1, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->uiHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->delayedShortSeek:Ljava/lang/Runnable;

    const-wide/16 v3, 0xfa

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 525
    :cond_18
    :goto_18
    return v0

    .line 522
    :cond_19
    iget-object v1, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->infoListener:Landroid/media/MediaPlayer$OnInfoListener;

    if-eqz v1, :cond_18

    .line 523
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->infoListener:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/media/MediaPlayer$OnInfoListener;->onInfo(Landroid/media/MediaPlayer;II)Z

    move-result v0

    goto :goto_18
.end method

.method public onProgress(Ljava/lang/String;J)V
    .registers 8
    .parameter "filePath"
    .parameter "downloaded"

    .prologue
    .line 596
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->uiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->uiHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 598
    return-void
.end method

.method public onSize(Ljava/lang/String;J)V
    .registers 6
    .parameter "filePath"
    .parameter "size"

    .prologue
    .line 588
    iput-wide p2, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->size:J

    .line 589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "size is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->v(Ljava/lang/String;)V

    .line 590
    const-wide/32 v0, 0x6000000

    cmp-long v0, p2, v0

    if-lez v0, :cond_25

    .line 591
    const/4 v0, 0x1

    const/16 v1, -0xfa3

    invoke-virtual {p0, p0, v0, v1}, Lcom/google/android/youtube/core/player/AwfulPlayer;->onError(Landroid/media/MediaPlayer;II)Z

    .line 593
    :cond_25
    return-void
.end method

.method public pause()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 328
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->paused:Z

    .line 329
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->preparing:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->buffering:Z

    if-nez v0, :cond_e

    .line 330
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/AwfulPlayer;->superPause()V

    .line 332
    :cond_e
    return-void
.end method

.method public prepare()V
    .registers 2

    .prologue
    .line 279
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public prepareAsync()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 284
    iget-object v2, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->dataSource:Landroid/net/Uri;

    invoke-static {v2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    :try_start_6
    sget-object v2, Lcom/google/android/youtube/core/player/AwfulPlayer;->BUFFER_FILE_SESSION_PREFIX:Ljava/lang/String;

    const-string v3, ".tmp"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 289
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->deleteOnExit()V

    .line 290
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->filePath:Ljava/lang/String;

    .line 291
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "created file buffer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->filePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/youtube/core/L;->v(Ljava/lang/String;)V

    .line 292
    iget-object v2, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->filePath:Ljava/lang/String;

    invoke-super {p0, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_35} :catch_3d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_35} :catch_4b

    .line 305
    iput-boolean v5, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->preparing:Z

    .line 306
    iget-object v2, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->networkStateReceiver:Lcom/google/android/youtube/core/player/AwfulPlayer$NetworkStateReceiver;

    invoke-virtual {v2}, Lcom/google/android/youtube/core/player/AwfulPlayer$NetworkStateReceiver;->register()V

    .line 307
    .end local v1           #file:Ljava/io/File;
    :goto_3c
    return-void

    .line 293
    :catch_3d
    move-exception v0

    .line 294
    .local v0, e:Ljava/io/IOException;
    iget-object v2, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->uiHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    const/16 v4, -0xfa2

    invoke-static {v2, v3, v5, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3c

    .line 298
    .end local v0           #e:Ljava/io/IOException;
    :catch_4b
    move-exception v0

    .line 299
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->uiHandler:Landroid/os/Handler;

    const/16 v3, -0xfa1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v5, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3c
.end method

.method public release()V
    .registers 1

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/AwfulPlayer;->internalReset()V

    .line 195
    invoke-super {p0}, Landroid/media/MediaPlayer;->release()V

    .line 196
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/AwfulPlayer;->deleteFileBuffer()V

    .line 197
    return-void
.end method

.method public reset()V
    .registers 1

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/AwfulPlayer;->internalReset()V

    .line 188
    invoke-super {p0}, Landroid/media/MediaPlayer;->reset()V

    .line 189
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/AwfulPlayer;->deleteFileBuffer()V

    .line 190
    return-void
.end method

.method public seekTo(I)V
    .registers 4
    .parameter "position"

    .prologue
    .line 363
    iget v0, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->seekPosition:I

    if-eq p1, v0, :cond_2a

    .line 364
    iput p1, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->seekPosition:I

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "seek position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 366
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->preparing:Z

    if-nez v0, :cond_2a

    iget v0, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->duration:I

    if-lez v0, :cond_2a

    .line 367
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/AwfulPlayer;->superPause()V

    .line 368
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/AwfulPlayer;->doSeekTo()V

    .line 371
    :cond_2a
    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 5
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/AwfulPlayer;->internalReset()V

    .line 159
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/AwfulPlayer;->deleteFileBuffer()V

    .line 160
    iput-object p1, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->context:Landroid/content/Context;

    .line 161
    iput-object p2, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->dataSource:Landroid/net/Uri;

    .line 163
    new-instance v0, Lcom/google/android/youtube/core/player/AwfulPlayer$2;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/core/player/AwfulPlayer$2;-><init>(Lcom/google/android/youtube/core/player/AwfulPlayer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->uiHandler:Landroid/os/Handler;

    .line 183
    return-void
.end method

.method public setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 258
    iput-object p1, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->bufferingListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 259
    invoke-super {p0, p1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 260
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 269
    iput-object p1, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->completionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 270
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 274
    iput-object p1, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 275
    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 264
    iput-object p1, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->infoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 265
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 253
    iput-object p1, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->preparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 254
    return-void
.end method

.method public start()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 336
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->paused:Z

    .line 337
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->preparing:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/AwfulPlayer;->buffering:Z

    if-nez v0, :cond_e

    .line 338
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/AwfulPlayer;->superStart()V

    .line 340
    :cond_e
    return-void
.end method

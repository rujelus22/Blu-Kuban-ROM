.class public Lcom/google/android/apps/unveil/env/PictureTracker;
.super Ljava/lang/Object;
.source "PictureTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/env/PictureTracker$Tracker;,
        Lcom/google/android/apps/unveil/env/PictureTracker$Reaper;
    }
.end annotation


# static fields
.field private static instance:Lcom/google/android/apps/unveil/env/PictureTracker;

.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# instance fields
.field volatile exitWhenFinished:Z

.field reaper:Ljava/lang/Thread;

.field referenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Lcom/google/android/apps/unveil/env/Picture;",
            ">;"
        }
    .end annotation
.end field

.field final trackers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/ref/PhantomReference",
            "<",
            "Lcom/google/android/apps/unveil/env/Picture;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/env/PictureTracker;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/env/PictureTracker;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 32
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/env/PictureTracker;->trackers:Ljava/util/Collection;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/unveil/env/PictureTracker;->exitWhenFinished:Z

    .line 47
    return-void
.end method

.method static synthetic access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Lcom/google/android/apps/unveil/env/PictureTracker;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/unveil/env/PictureTracker;Lcom/google/android/apps/unveil/env/Picture;)Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/env/PictureTracker;->getPictureInfo(Lcom/google/android/apps/unveil/env/Picture;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/google/android/apps/unveil/env/PictureTracker;
    .registers 1

    .prologue
    .line 50
    sget-object v0, Lcom/google/android/apps/unveil/env/PictureTracker;->instance:Lcom/google/android/apps/unveil/env/PictureTracker;

    if-nez v0, :cond_b

    .line 51
    new-instance v0, Lcom/google/android/apps/unveil/env/PictureTracker;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/PictureTracker;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/env/PictureTracker;->instance:Lcom/google/android/apps/unveil/env/PictureTracker;

    .line 53
    :cond_b
    sget-object v0, Lcom/google/android/apps/unveil/env/PictureTracker;->instance:Lcom/google/android/apps/unveil/env/PictureTracker;

    return-object v0
.end method

.method private getPictureInfo(Lcom/google/android/apps/unveil/env/Picture;)Ljava/lang/String;
    .registers 5
    .parameter "picture"

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {p1}, Lcom/google/android/apps/unveil/env/Picture;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 92
    const-string v2, " already recycled"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 102
    :goto_24
    return-object v2

    .line 95
    :cond_25
    invoke-virtual {p1}, Lcom/google/android/apps/unveil/env/Picture;->getSize()Lcom/google/android/apps/unveil/env/Size;

    move-result-object v1

    .line 96
    .local v1, size:Lcom/google/android/apps/unveil/env/Size;
    iget v2, v1, Lcom/google/android/apps/unveil/env/Size;->width:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget v2, v1, Lcom/google/android/apps/unveil/env/Size;->height:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {p1}, Lcom/google/android/apps/unveil/env/Picture;->getByteSize()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    const-string v2, " bytes"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_24
.end method


# virtual methods
.method public declared-synchronized exitWhenFinished()V
    .registers 3

    .prologue
    .line 79
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/apps/unveil/env/PictureTracker;->exitWhenFinished:Z

    .line 80
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/PictureTracker;->reaper:Ljava/lang/Thread;

    if-eqz v0, :cond_11

    .line 81
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/PictureTracker;->reaper:Ljava/lang/Thread;

    monitor-enter v1
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_16

    .line 82
    :try_start_b
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/PictureTracker;->reaper:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 83
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_13

    .line 85
    :cond_11
    monitor-exit p0

    return-void

    .line 83
    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    :try_start_15
    throw v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_16

    .line 79
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized track(Lcom/google/android/apps/unveil/env/Picture;Lcom/google/android/apps/unveil/env/Picture;)V
    .registers 8
    .parameter "wrapped"
    .parameter "underlying"

    .prologue
    .line 63
    monitor-enter p0

    if-eqz p1, :cond_5

    if-nez p2, :cond_7

    .line 75
    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    .line 66
    :cond_7
    :try_start_7
    iget-boolean v0, p0, Lcom/google/android/apps/unveil/env/PictureTracker;->exitWhenFinished:Z

    if-eqz v0, :cond_16

    .line 67
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No picture can be added once exitWhenFinished() is called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_13

    .line 63
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0

    .line 69
    :cond_16
    :try_start_16
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/PictureTracker;->reaper:Ljava/lang/Thread;

    if-nez v0, :cond_26

    .line 70
    new-instance v0, Lcom/google/android/apps/unveil/env/PictureTracker$Reaper;

    invoke-direct {v0, p0}, Lcom/google/android/apps/unveil/env/PictureTracker$Reaper;-><init>(Lcom/google/android/apps/unveil/env/PictureTracker;)V

    iput-object v0, p0, Lcom/google/android/apps/unveil/env/PictureTracker;->reaper:Ljava/lang/Thread;

    .line 71
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/PictureTracker;->reaper:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 73
    :cond_26
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/PictureTracker;->trackers:Ljava/util/Collection;

    new-instance v1, Lcom/google/android/apps/unveil/env/PictureTracker$Tracker;

    iget-object v2, p0, Lcom/google/android/apps/unveil/env/PictureTracker;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, p0, p1, v2, p2}, Lcom/google/android/apps/unveil/env/PictureTracker$Tracker;-><init>(Lcom/google/android/apps/unveil/env/PictureTracker;Lcom/google/android/apps/unveil/env/Picture;Ljava/lang/ref/ReferenceQueue;Lcom/google/android/apps/unveil/env/Picture;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v0, Lcom/google/android/apps/unveil/env/PictureTracker;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "Tracked: %s, total %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {p0, p2}, Lcom/google/android/apps/unveil/env/PictureTracker;->getPictureInfo(Lcom/google/android/apps/unveil/env/Picture;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/apps/unveil/env/PictureTracker;->trackers:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_50
    .catchall {:try_start_16 .. :try_end_50} :catchall_13

    goto :goto_5
.end method

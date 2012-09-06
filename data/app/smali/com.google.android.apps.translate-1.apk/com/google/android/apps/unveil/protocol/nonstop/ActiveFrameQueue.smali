.class public Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue;
.super Ljava/lang/Object;
.source "ActiveFrameQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$1;,
        Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;
    }
.end annotation


# static fields
.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# instance fields
.field private final activeFrames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;",
            ">;"
        }
    .end annotation
.end field

.field private final maxSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "maxSize"

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue;->activeFrames:Ljava/util/List;

    .line 76
    iput p1, p0, Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue;->maxSize:I

    .line 77
    return-void
.end method

.method private declared-synchronized getByFrameNum(I)Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;
    .registers 5
    .parameter "frameNum"

    .prologue
    .line 126
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue;->activeFrames:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;

    .line 127
    .local v0, frame:Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;
    iget v2, v0, Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;->frameNum:I
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_1b

    if-ne v2, p1, :cond_7

    .line 132
    .end local v0           #frame:Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;
    :goto_17
    monitor-exit p0

    return-object v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_17

    .line 126
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_1b
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized trimToSize(I)V
    .registers 8
    .parameter "size"

    .prologue
    .line 149
    monitor-enter p0

    if-gez p1, :cond_c

    .line 150
    :try_start_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_9

    .line 149
    :catchall_9
    move-exception v1

    monitor-exit p0

    throw v1

    .line 153
    :cond_c
    :goto_c
    :try_start_c
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue;->activeFrames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p1, :cond_38

    .line 154
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue;->activeFrames:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;

    .line 155
    .local v0, oldFrame:Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;
    iget-object v1, v0, Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;->downsampledImage:Lcom/google/android/apps/unveil/env/DownsampledImage;

    invoke-virtual {v1}, Lcom/google/android/apps/unveil/env/DownsampledImage;->removeReference()V

    .line 156
    sget-object v1, Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v2, "Removing active frame: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;->getMetadata()Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;->getTimingString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_37
    .catchall {:try_start_c .. :try_end_37} :catchall_9

    goto :goto_c

    .line 158
    .end local v0           #oldFrame:Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;
    :cond_38
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .registers 2

    .prologue
    .line 161
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, v0}, Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue;->trimToSize(I)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 162
    monitor-exit p0

    return-void

    .line 161
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized drawDebug(Landroid/graphics/Canvas;)V
    .registers 7
    .parameter "canvas"

    .prologue
    .line 166
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue;->maxSize:I

    div-int/2addr v3, v4

    int-to-float v2, v3

    .line 168
    .local v2, thumbnailWidth:F
    iget-object v3, p0, Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue;->activeFrames:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 169
    .local v1, numFrames:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_10
    if-ge v0, v1, :cond_24

    .line 171
    iget-object v3, p0, Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue;->activeFrames:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;

    iget v4, p0, Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue;->maxSize:I

    add-int/2addr v4, v0

    sub-int/2addr v4, v1

    invoke-virtual {v3, p1, v4, v2}, Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;->draw(Landroid/graphics/Canvas;IF)V
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_26

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 173
    :cond_24
    monitor-exit p0

    return-void

    .line 166
    .end local v0           #i:I
    .end local v1           #numFrames:I
    .end local v2           #thumbnailWidth:F
    :catchall_26
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getActionNumbers()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue;->activeFrames:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 84
    .local v0, actionNumbers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue;->activeFrames:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;

    .line 85
    .local v1, f:Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;
    invoke-virtual {v1}, Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;->getFrameNum()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2a

    goto :goto_12

    .line 83
    .end local v0           #actionNumbers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v1           #f:Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_2a
    move-exception v3

    monitor-exit p0

    throw v3

    .line 87
    .restart local v0       #actionNumbers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_2d
    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized getByTimestamp(J)Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;
    .registers 7
    .parameter "resultFrameTimestamp"

    .prologue
    .line 136
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue;->activeFrames:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;

    .line 137
    .local v0, frame:Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;
    invoke-virtual {v0}, Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;->getTimestamp()J
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_1f

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_7

    .line 142
    .end local v0           #frame:Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;
    :goto_1b
    monitor-exit p0

    return-object v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1b

    .line 136
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_1f
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getFrames()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue;->activeFrames:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLastFrameNum()Ljava/lang/Integer;
    .registers 3

    .prologue
    .line 102
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue;->activeFrames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_25

    move-result v0

    if-eqz v0, :cond_c

    .line 103
    const/4 v0, 0x0

    .line 106
    :goto_a
    monitor-exit p0

    return-object v0

    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue;->activeFrames:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue;->activeFrames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;->getFrameNum()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_25

    move-result-object v0

    goto :goto_a

    .line 102
    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized maybeAdd(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;[B)Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;
    .registers 6
    .parameter "frame"
    .parameter "cachedJpeg"

    .prologue
    .line 114
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getFrameNum()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue;->getByFrameNum(I)Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_1f

    move-result-object v0

    .line 115
    .local v0, existing:Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;
    if-eqz v0, :cond_d

    .line 122
    .end local v0           #existing:Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;
    :goto_b
    monitor-exit p0

    return-object v0

    .line 119
    .restart local v0       #existing:Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;
    :cond_d
    :try_start_d
    new-instance v1, Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;-><init>(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;[BLcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$1;)V

    .line 120
    .local v1, newActiveFrame:Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;
    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue;->activeFrames:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    iget v2, p0, Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue;->maxSize:I

    invoke-direct {p0, v2}, Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue;->trimToSize(I)V
    :try_end_1d
    .catchall {:try_start_d .. :try_end_1d} :catchall_1f

    move-object v0, v1

    .line 122
    goto :goto_b

    .line 114
    .end local v0           #existing:Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;
    .end local v1           #newActiveFrame:Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;
    :catchall_1f
    move-exception v2

    monitor-exit p0

    throw v2
.end method

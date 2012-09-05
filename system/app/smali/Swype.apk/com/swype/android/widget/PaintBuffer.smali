.class public Lcom/swype/android/widget/PaintBuffer;
.super Ljava/lang/Object;
.source "PaintBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swype/android/widget/PaintBuffer$PaintBufferListener;,
        Lcom/swype/android/widget/PaintBuffer$Frame;,
        Lcom/swype/android/widget/PaintBuffer$MessageHandler;
    }
.end annotation


# static fields
.field protected static final MSG_FLUSH_FRAME:I = 0x1


# instance fields
.field final FRAME_MAX_COUNT:I

.field final POOL_MAX_COUNT:I

.field private final frameObjectPool:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/swype/android/widget/PaintBuffer$Frame;",
            ">;"
        }
    .end annotation
.end field

.field private final frameQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/swype/android/widget/PaintBuffer$Frame;",
            ">;"
        }
    .end annotation
.end field

.field private final handler:Landroid/os/Handler;

.field private final listener:Lcom/swype/android/widget/PaintBuffer$PaintBufferListener;

.field private nextFrameToDraw:Lcom/swype/android/widget/PaintBuffer$Frame;

.field private final paintCommandPool:Lcom/swype/android/widget/PaintCommand$Pool;


# direct methods
.method constructor <init>(Lcom/swype/android/widget/PaintBuffer$PaintBufferListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    const/16 v1, 0x19

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Lcom/swype/android/widget/PaintBuffer$MessageHandler;

    invoke-direct {v0, p0}, Lcom/swype/android/widget/PaintBuffer$MessageHandler;-><init>(Lcom/swype/android/widget/PaintBuffer;)V

    iput-object v0, p0, Lcom/swype/android/widget/PaintBuffer;->handler:Landroid/os/Handler;

    .line 126
    new-instance v0, Lcom/swype/android/widget/PaintCommand$Pool;

    invoke-direct {v0}, Lcom/swype/android/widget/PaintCommand$Pool;-><init>()V

    iput-object v0, p0, Lcom/swype/android/widget/PaintBuffer;->paintCommandPool:Lcom/swype/android/widget/PaintCommand$Pool;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/swype/android/widget/PaintBuffer;->frameObjectPool:Ljava/util/List;

    .line 136
    iput v1, p0, Lcom/swype/android/widget/PaintBuffer;->POOL_MAX_COUNT:I

    .line 141
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/swype/android/widget/PaintBuffer;->frameQueue:Ljava/util/Queue;

    .line 147
    iput v1, p0, Lcom/swype/android/widget/PaintBuffer;->FRAME_MAX_COUNT:I

    .line 153
    iput-object p1, p0, Lcom/swype/android/widget/PaintBuffer;->listener:Lcom/swype/android/widget/PaintBuffer$PaintBufferListener;

    .line 154
    return-void
.end method

.method static synthetic access$000(Lcom/swype/android/widget/PaintBuffer;Lcom/swype/android/widget/PaintBuffer$Frame;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/swype/android/widget/PaintBuffer;->queueFrame(Lcom/swype/android/widget/PaintBuffer$Frame;)V

    return-void
.end method

.method static synthetic access$100(Lcom/swype/android/widget/PaintBuffer;Landroid/graphics/Rect;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/swype/android/widget/PaintBuffer;->notifyPaintBufferUpdated(Landroid/graphics/Rect;)V

    return-void
.end method

.method private notifyPaintBufferUpdated(Landroid/graphics/Rect;)V
    .registers 3
    .parameter "rect"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/swype/android/widget/PaintBuffer;->listener:Lcom/swype/android/widget/PaintBuffer$PaintBufferListener;

    invoke-interface {v0, p1}, Lcom/swype/android/widget/PaintBuffer$PaintBufferListener;->paintBufferUpdated(Landroid/graphics/Rect;)V

    .line 177
    return-void
.end method

.method private declared-synchronized queueFrame(Lcom/swype/android/widget/PaintBuffer$Frame;)V
    .registers 4
    .parameter

    .prologue
    .line 184
    monitor-enter p0

    :cond_1
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/swype/android/widget/PaintBuffer;->frameQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v1, 0x19

    if-le v0, v1, :cond_1c

    .line 185
    iget-object v0, p0, Lcom/swype/android/widget/PaintBuffer;->frameQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swype/android/widget/PaintBuffer$Frame;

    .line 186
    if-eqz v0, :cond_1

    .line 188
    invoke-virtual {p0, v0}, Lcom/swype/android/widget/PaintBuffer;->checkinFrame(Lcom/swype/android/widget/PaintBuffer$Frame;)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_19

    goto :goto_1

    .line 184
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0

    .line 193
    :cond_1c
    :try_start_1c
    iget-object v0, p0, Lcom/swype/android/widget/PaintBuffer;->frameQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_19

    .line 194
    monitor-exit p0

    return-void
.end method


# virtual methods
.method declared-synchronized addCommand(Lcom/swype/android/widget/PaintCommand;)V
    .registers 8
    .parameter

    .prologue
    .line 201
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/swype/android/widget/PaintBuffer;->nextFrameToDraw:Lcom/swype/android/widget/PaintBuffer$Frame;

    if-nez v0, :cond_b

    .line 202
    invoke-virtual {p0}, Lcom/swype/android/widget/PaintBuffer;->checkoutFrame()Lcom/swype/android/widget/PaintBuffer$Frame;

    move-result-object v0

    iput-object v0, p0, Lcom/swype/android/widget/PaintBuffer;->nextFrameToDraw:Lcom/swype/android/widget/PaintBuffer$Frame;

    .line 205
    :cond_b
    iget-object v0, p0, Lcom/swype/android/widget/PaintBuffer;->nextFrameToDraw:Lcom/swype/android/widget/PaintBuffer$Frame;

    invoke-virtual {v0, p1}, Lcom/swype/android/widget/PaintBuffer$Frame;->add(Ljava/lang/Object;)Z

    .line 206
    invoke-virtual {p1}, Lcom/swype/android/widget/PaintCommand;->getType()Lcom/swype/android/widget/PaintCommandType;

    move-result-object v0

    sget-object v1, Lcom/swype/android/widget/PaintCommandType;->FLUSH_BUF:Lcom/swype/android/widget/PaintCommandType;

    if-ne v0, v1, :cond_34

    .line 207
    invoke-virtual {p1}, Lcom/swype/android/widget/PaintCommand;->getIntArgs()[I

    move-result-object v0

    .line 208
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v4, 0x2

    aget v4, v0, v4

    const/4 v5, 0x3

    aget v0, v0, v5

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 209
    iget-object v0, p0, Lcom/swype/android/widget/PaintBuffer;->nextFrameToDraw:Lcom/swype/android/widget/PaintBuffer$Frame;

    invoke-virtual {v0, v1}, Lcom/swype/android/widget/PaintBuffer$Frame;->addDirtyRect(Landroid/graphics/Rect;)V
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_4c

    .line 216
    :cond_32
    :goto_32
    monitor-exit p0

    return-void

    .line 210
    :cond_34
    :try_start_34
    invoke-virtual {p1}, Lcom/swype/android/widget/PaintCommand;->getType()Lcom/swype/android/widget/PaintCommandType;

    move-result-object v0

    sget-object v1, Lcom/swype/android/widget/PaintCommandType;->FLUSH_DRAWING:Lcom/swype/android/widget/PaintCommandType;

    if-ne v0, v1, :cond_32

    .line 213
    iget-object v0, p0, Lcom/swype/android/widget/PaintBuffer;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/swype/android/widget/PaintBuffer;->nextFrameToDraw:Lcom/swype/android/widget/PaintBuffer$Frame;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/swype/android/widget/PaintBuffer;->nextFrameToDraw:Lcom/swype/android/widget/PaintBuffer$Frame;
    :try_end_4b
    .catchall {:try_start_34 .. :try_end_4b} :catchall_4c

    goto :goto_32

    .line 201
    :catchall_4c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized checkinFrame(Lcom/swype/android/widget/PaintBuffer$Frame;)V
    .registers 4
    .parameter

    .prologue
    .line 161
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/swype/android/widget/PaintBuffer;->paintCommandPool:Lcom/swype/android/widget/PaintCommand$Pool;

    invoke-virtual {p1, v0}, Lcom/swype/android/widget/PaintBuffer$Frame;->freeCommands(Lcom/swype/android/widget/PaintCommand$Pool;)V

    .line 162
    iget-object v0, p0, Lcom/swype/android/widget/PaintBuffer;->frameObjectPool:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x19

    if-ge v0, v1, :cond_15

    .line 163
    iget-object v0, p0, Lcom/swype/android/widget/PaintBuffer;->frameObjectPool:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 165
    :cond_15
    monitor-exit p0

    return-void

    .line 161
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized checkinFrames(Ljava/util/Collection;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/swype/android/widget/PaintBuffer$Frame;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 168
    .local p1, frames:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/swype/android/widget/PaintBuffer$Frame;>;"
    monitor-enter p0

    :try_start_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swype/android/widget/PaintBuffer$Frame;

    .line 169
    .local v0, frame:Lcom/swype/android/widget/PaintBuffer$Frame;
    invoke-virtual {p0, v0}, Lcom/swype/android/widget/PaintBuffer;->checkinFrame(Lcom/swype/android/widget/PaintBuffer$Frame;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_15

    goto :goto_5

    .line 168
    .end local v0           #frame:Lcom/swype/android/widget/PaintBuffer$Frame;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_15
    move-exception v2

    monitor-exit p0

    throw v2

    .line 171
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_18
    monitor-exit p0

    return-void
.end method

.method declared-synchronized checkoutFrame()Lcom/swype/android/widget/PaintBuffer$Frame;
    .registers 4

    .prologue
    .line 157
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/swype/android/widget/PaintBuffer;->frameObjectPool:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Lcom/swype/android/widget/PaintBuffer$Frame;

    invoke-direct {v0}, Lcom/swype/android/widget/PaintBuffer$Frame;-><init>()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_21

    :goto_e
    monitor-exit p0

    return-object v0

    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/swype/android/widget/PaintBuffer;->frameObjectPool:Ljava/util/List;

    iget-object v1, p0, Lcom/swype/android/widget/PaintBuffer;->frameObjectPool:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swype/android/widget/PaintBuffer$Frame;
    :try_end_20
    .catchall {:try_start_10 .. :try_end_20} :catchall_21

    goto :goto_e

    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized clear()V
    .registers 3

    .prologue
    .line 241
    monitor-enter p0

    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lcom/swype/android/widget/PaintBuffer;->getNextFrame()Lcom/swype/android/widget/PaintBuffer$Frame;

    move-result-object v0

    .local v0, frame:Lcom/swype/android/widget/PaintBuffer$Frame;
    if-eqz v0, :cond_e

    .line 242
    invoke-virtual {p0, v0}, Lcom/swype/android/widget/PaintBuffer;->checkinFrame(Lcom/swype/android/widget/PaintBuffer$Frame;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_b

    goto :goto_1

    .line 241
    .end local v0           #frame:Lcom/swype/android/widget/PaintBuffer$Frame;
    :catchall_b
    move-exception v1

    monitor-exit p0

    throw v1

    .line 244
    .restart local v0       #frame:Lcom/swype/android/widget/PaintBuffer$Frame;
    :cond_e
    monitor-exit p0

    return-void
.end method

.method declared-synchronized getAllFrames(Ljava/util/Collection;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/swype/android/widget/PaintBuffer$Frame;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 231
    monitor-enter p0

    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lcom/swype/android/widget/PaintBuffer;->getNextFrame()Lcom/swype/android/widget/PaintBuffer$Frame;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 232
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_b

    goto :goto_1

    .line 231
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 234
    :cond_e
    monitor-exit p0

    return-void
.end method

.method declared-synchronized getNextFrame()Lcom/swype/android/widget/PaintBuffer$Frame;
    .registers 2

    .prologue
    .line 223
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/swype/android/widget/PaintBuffer;->frameQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swype/android/widget/PaintBuffer$Frame;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getPaintCommandPool()Lcom/swype/android/widget/PaintCommand$Pool;
    .registers 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/swype/android/widget/PaintBuffer;->paintCommandPool:Lcom/swype/android/widget/PaintCommand$Pool;

    return-object v0
.end method

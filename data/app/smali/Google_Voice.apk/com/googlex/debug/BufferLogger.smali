.class public Lcom/googlex/debug/BufferLogger;
.super Lcom/googlex/debug/SimpleLogger;


# static fields
.field private static final DEFAULT_MAX_BUFFER_SIZE:I = 0x20000

.field private static final REMOVE_FRACTION_WHEN_FULL:I = 0x4


# instance fields
.field protected final buffer:Ljava/lang/StringBuffer;

.field private final maxBufferSize:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/high16 v0, 0x2

    invoke-direct {p0, v0}, Lcom/googlex/debug/BufferLogger;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Lcom/googlex/debug/SimpleLogger;-><init>()V

    iput p1, p0, Lcom/googlex/debug/BufferLogger;->maxBufferSize:I

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/googlex/debug/BufferLogger;->buffer:Ljava/lang/StringBuffer;

    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/googlex/debug/BufferLogger;->buffer:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLogs()[B
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/googlex/debug/BufferLogger;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iget-object v1, p0, Lcom/googlex/debug/BufferLogger;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->setLength(I)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-object v0

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized log(Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/googlex/debug/BufferLogger;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    iget v1, p0, Lcom/googlex/debug/BufferLogger;->maxBufferSize:I

    if-lt v0, v1, :cond_20

    iget v0, p0, Lcom/googlex/debug/BufferLogger;->maxBufferSize:I

    iget v1, p0, Lcom/googlex/debug/BufferLogger;->maxBufferSize:I

    div-int/lit8 v1, v1, 0x4

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/googlex/debug/BufferLogger;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/googlex/debug/BufferLogger;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    sub-int v0, v3, v0

    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    :cond_20
    iget-object v0, p0, Lcom/googlex/debug/BufferLogger;->buffer:Ljava/lang/StringBuffer;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/googlex/debug/BufferLogger;->buffer:Ljava/lang/StringBuffer;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/googlex/debug/BufferLogger;->buffer:Ljava/lang/StringBuffer;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/googlex/debug/BufferLogger;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/googlex/debug/BufferLogger;->buffer:Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_45

    monitor-exit p0

    return-void

    :catchall_45
    move-exception v0

    monitor-exit p0

    throw v0
.end method

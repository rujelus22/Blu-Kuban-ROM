.class public final Lorg/apache/commons/net/io/DotTerminatedMessageReader;
.super Ljava/io/BufferedReader;


# static fields
.field private static final CR:C = '\r'

.field private static final DOT:I = 0x2e

.field private static final LF:C = '\n'


# instance fields
.field private atBeginning:Z

.field private eof:Z

.field private seenCR:Z


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->atBeginning:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->eof:Z

    return-void
.end method


# virtual methods
.method public close()V
    .registers 4

    iget-object v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->eof:Z

    if-nez v0, :cond_e

    :cond_7
    invoke-virtual {p0}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->read()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_7

    :cond_e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->eof:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->atBeginning:Z

    monitor-exit v1

    return-void

    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public read()I
    .registers 7

    const/16 v5, 0xa

    const/16 v1, 0x2e

    const/4 v0, -0x1

    iget-object v3, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->lock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_8
    iget-boolean v2, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->eof:Z

    if-eqz v2, :cond_e

    monitor-exit v3

    :goto_d
    return v0

    :cond_e
    invoke-super {p0}, Ljava/io/BufferedReader;->read()I

    move-result v2

    if-ne v2, v0, :cond_1c

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->eof:Z

    monitor-exit v3

    goto :goto_d

    :catchall_19
    move-exception v0

    monitor-exit v3
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_19

    throw v0

    :cond_1c
    :try_start_1c
    iget-boolean v4, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->atBeginning:Z

    if-eqz v4, :cond_5a

    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->atBeginning:Z

    if-ne v2, v1, :cond_5a

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->mark(I)V

    invoke-super {p0}, Ljava/io/BufferedReader;->read()I

    move-result v2

    if-ne v2, v0, :cond_35

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->eof:Z

    monitor-exit v3

    move v0, v1

    goto :goto_d

    :cond_35
    if-ne v2, v1, :cond_3a

    monitor-exit v3

    move v0, v2

    goto :goto_d

    :cond_3a
    const/16 v4, 0xd

    if-ne v2, v4, :cond_54

    invoke-super {p0}, Ljava/io/BufferedReader;->read()I

    move-result v2

    if-ne v2, v0, :cond_4a

    invoke-virtual {p0}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->reset()V

    monitor-exit v3

    move v0, v1

    goto :goto_d

    :cond_4a
    if-ne v2, v5, :cond_54

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->atBeginning:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->eof:Z

    monitor-exit v3

    goto :goto_d

    :cond_54
    invoke-virtual {p0}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->reset()V

    monitor-exit v3

    move v0, v1

    goto :goto_d

    :cond_5a
    iget-boolean v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->seenCR:Z

    if-eqz v0, :cond_66

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->seenCR:Z

    if-ne v2, v5, :cond_66

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->atBeginning:Z

    :cond_66
    const/16 v0, 0xd

    if-ne v2, v0, :cond_6d

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->seenCR:Z

    :cond_6d
    monitor-exit v3
    :try_end_6e
    .catchall {:try_start_1c .. :try_end_6e} :catchall_19

    move v0, v2

    goto :goto_d
.end method

.method public read([C)I
    .registers 4

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->read([CII)I

    move-result v0

    return v0
.end method

.method public read([CII)I
    .registers 9

    const/4 v0, -0x1

    iget-object v4, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->lock:Ljava/lang/Object;

    monitor-enter v4

    const/4 v1, 0x1

    if-ge p3, v1, :cond_a

    const/4 v0, 0x0

    :try_start_8
    monitor-exit v4

    :goto_9
    return v0

    :cond_a
    invoke-virtual {p0}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->read()I

    move-result v1

    if-ne v1, v0, :cond_15

    monitor-exit v4

    goto :goto_9

    :catchall_12
    move-exception v0

    monitor-exit v4
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_12

    throw v0

    :cond_15
    move v2, p2

    :goto_16
    add-int/lit8 v3, v2, 0x1

    int-to-char v1, v1

    :try_start_19
    aput-char v1, p1, v2

    add-int/lit8 p3, p3, -0x1

    if-lez p3, :cond_25

    invoke-virtual {p0}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->read()I

    move-result v1

    if-ne v1, v0, :cond_29

    :cond_25
    sub-int v0, v3, p2

    monitor-exit v4
    :try_end_28
    .catchall {:try_start_19 .. :try_end_28} :catchall_12

    goto :goto_9

    :cond_29
    move v2, v3

    goto :goto_16
.end method

.method public readLine()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    :goto_8
    :try_start_8
    invoke-virtual {p0}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->read()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2c

    const/16 v3, 0xa

    if-ne v2, v3, :cond_24

    iget-boolean v3, p0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;->atBeginning:Z

    if-eqz v3, :cond_24

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    :cond_23
    :goto_23
    return-object v0

    :cond_24
    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8

    :catchall_29
    move-exception v0

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_29

    throw v0

    :cond_2c
    :try_start_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_29

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_23

    const/4 v0, 0x0

    goto :goto_23
.end method

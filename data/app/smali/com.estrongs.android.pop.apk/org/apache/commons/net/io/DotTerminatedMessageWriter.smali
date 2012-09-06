.class public final Lorg/apache/commons/net/io/DotTerminatedMessageWriter;
.super Ljava/io/Writer;


# static fields
.field private static final __LAST_WAS_CR_STATE:I = 0x1

.field private static final __LAST_WAS_NL_STATE:I = 0x2

.field private static final __NOTHING_SPECIAL_STATE:I


# instance fields
.field private __output:Ljava/io/Writer;

.field private __state:I


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__output:Ljava/io/Writer;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__state:I

    return-void
.end method


# virtual methods
.method public close()V
    .registers 4

    iget-object v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__output:Ljava/io/Writer;

    if-nez v0, :cond_9

    monitor-exit v1

    :goto_8
    return-void

    :cond_9
    iget v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__state:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_29

    iget-object v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__output:Ljava/io/Writer;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(I)V

    :cond_15
    :goto_15
    iget-object v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__output:Ljava/io/Writer;

    const-string v2, ".\r\n"

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__output:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__output:Ljava/io/Writer;

    monitor-exit v1

    goto :goto_8

    :catchall_26
    move-exception v0

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v0

    :cond_29
    :try_start_29
    iget v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__state:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_15

    iget-object v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__output:Ljava/io/Writer;

    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_35
    .catchall {:try_start_29 .. :try_end_35} :catchall_26

    goto :goto_15
.end method

.method public flush()V
    .registers 3

    iget-object v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__output:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public write(I)V
    .registers 6

    const/4 v3, 0x2

    const/4 v2, 0x1

    iget-object v1, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    sparse-switch p1, :sswitch_data_44

    :cond_8
    :goto_8
    const/4 v0, 0x0

    :try_start_9
    iput v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__state:I

    iget-object v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__output:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(I)V

    monitor-exit v1

    :goto_11
    return-void

    :sswitch_12
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__state:I

    iget-object v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__output:Ljava/io/Writer;

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(I)V

    monitor-exit v1

    goto :goto_11

    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_9 .. :try_end_20} :catchall_1e

    throw v0

    :sswitch_21
    :try_start_21
    iget v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__state:I

    if-eq v0, v2, :cond_2c

    iget-object v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__output:Ljava/io/Writer;

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(I)V

    :cond_2c
    iget-object v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__output:Ljava/io/Writer;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(I)V

    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__state:I

    monitor-exit v1

    goto :goto_11

    :sswitch_38
    iget v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__state:I

    if-ne v0, v3, :cond_8

    iget-object v0, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->__output:Ljava/io/Writer;

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(I)V
    :try_end_43
    .catchall {:try_start_21 .. :try_end_43} :catchall_1e

    goto :goto_8

    :sswitch_data_44
    .sparse-switch
        0xa -> :sswitch_21
        0xd -> :sswitch_12
        0x2e -> :sswitch_38
    .end sparse-switch
.end method

.method public write(Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->write([C)V

    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .registers 5

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->write([CII)V

    return-void
.end method

.method public write([C)V
    .registers 4

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->write([CII)V

    return-void
.end method

.method public write([CII)V
    .registers 8

    iget-object v2, p0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->lock:Ljava/lang/Object;

    monitor-enter v2

    :goto_3
    add-int/lit8 v0, p3, -0x1

    if-lez p3, :cond_11

    add-int/lit8 v1, p2, 0x1

    :try_start_9
    aget-char v3, p1, p2

    invoke-virtual {p0, v3}, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;->write(I)V

    move p3, v0

    move p2, v1

    goto :goto_3

    :cond_11
    monitor-exit v2

    return-void

    :catchall_13
    move-exception v0

    monitor-exit v2
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_13

    throw v0
.end method

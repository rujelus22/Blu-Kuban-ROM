.class public final Lorg/apache/commons/net/io/ToNetASCIIOutputStream;
.super Ljava/io/FilterOutputStream;


# instance fields
.field private __lastWasCR:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/net/io/ToNetASCIIOutputStream;->__lastWasCR:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized write(I)V
    .registers 4

    monitor-enter p0

    packed-switch p1, :pswitch_data_28

    :cond_4
    :goto_4
    :pswitch_4
    const/4 v0, 0x0

    :try_start_5
    iput-boolean v0, p0, Lorg/apache/commons/net/io/ToNetASCIIOutputStream;->__lastWasCR:Z

    iget-object v0, p0, Lorg/apache/commons/net/io/ToNetASCIIOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_19

    :goto_c
    monitor-exit p0

    return-void

    :pswitch_e
    const/4 v0, 0x1

    :try_start_f
    iput-boolean v0, p0, Lorg/apache/commons/net/io/ToNetASCIIOutputStream;->__lastWasCR:Z

    iget-object v0, p0, Lorg/apache/commons/net/io/ToNetASCIIOutputStream;->out:Ljava/io/OutputStream;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_19

    goto :goto_c

    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_1c
    :try_start_1c
    iget-boolean v0, p0, Lorg/apache/commons/net/io/ToNetASCIIOutputStream;->__lastWasCR:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/apache/commons/net/io/ToNetASCIIOutputStream;->out:Ljava/io/OutputStream;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V
    :try_end_27
    .catchall {:try_start_1c .. :try_end_27} :catchall_19

    goto :goto_4

    :pswitch_data_28
    .packed-switch 0xa
        :pswitch_1c
        :pswitch_4
        :pswitch_4
        :pswitch_e
    .end packed-switch
.end method

.method public declared-synchronized write([B)V
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/net/io/ToNetASCIIOutputStream;->write([BII)V
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write([BII)V
    .registers 7

    monitor-enter p0

    :goto_1
    add-int/lit8 v0, p3, -0x1

    if-lez p3, :cond_f

    add-int/lit8 v1, p2, 0x1

    :try_start_7
    aget-byte v2, p1, p2

    invoke-virtual {p0, v2}, Lorg/apache/commons/net/io/ToNetASCIIOutputStream;->write(I)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_11

    move p3, v0

    move p2, v1

    goto :goto_1

    :cond_f
    monitor-exit p0

    return-void

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

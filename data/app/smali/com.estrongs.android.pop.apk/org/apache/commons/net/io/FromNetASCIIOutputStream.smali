.class public final Lorg/apache/commons/net/io/FromNetASCIIOutputStream;
.super Ljava/io/FilterOutputStream;


# instance fields
.field private __lastWasCR:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->__lastWasCR:Z

    return-void
.end method

.method private __write(I)V
    .registers 5

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_34

    :pswitch_4
    iget-boolean v0, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->__lastWasCR:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->out:Ljava/io/OutputStream;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iput-boolean v2, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->__lastWasCR:Z

    :cond_11
    iget-object v0, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    :goto_16
    return-void

    :pswitch_17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->__lastWasCR:Z

    goto :goto_16

    :pswitch_1b
    iget-boolean v0, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->__lastWasCR:Z

    if-eqz v0, :cond_29

    iget-object v0, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->_lineSeparatorBytes:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iput-boolean v2, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->__lastWasCR:Z

    goto :goto_16

    :cond_29
    iput-boolean v2, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->__lastWasCR:Z

    iget-object v0, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->out:Ljava/io/OutputStream;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_16

    nop

    :pswitch_data_34
    .packed-switch 0xa
        :pswitch_1b
        :pswitch_4
        :pswitch_4
        :pswitch_17
    .end packed-switch
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 3

    monitor-enter p0

    :try_start_1
    sget-boolean v0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->_noConversionRequired:Z

    if-eqz v0, :cond_a

    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_19

    :goto_8
    monitor-exit p0

    return-void

    :cond_a
    :try_start_a
    iget-boolean v0, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->__lastWasCR:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->out:Ljava/io/OutputStream;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    :cond_15
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_19

    goto :goto_8

    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write(I)V
    .registers 3

    monitor-enter p0

    :try_start_1
    sget-boolean v0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->_noConversionRequired:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_10

    :goto_a
    monitor-exit p0

    return-void

    :cond_c
    :try_start_c
    invoke-direct {p0, p1}, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->__write(I)V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_10

    goto :goto_a

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write([B)V
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->write([BII)V
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

    :try_start_1
    sget-boolean v0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->_noConversionRequired:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_1a

    :cond_a
    monitor-exit p0

    return-void

    :cond_c
    :goto_c
    add-int/lit8 v0, p3, -0x1

    if-lez p3, :cond_a

    add-int/lit8 v1, p2, 0x1

    :try_start_12
    aget-byte v2, p1, p2

    invoke-direct {p0, v2}, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->__write(I)V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_1a

    move p3, v0

    move p2, v1

    goto :goto_c

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

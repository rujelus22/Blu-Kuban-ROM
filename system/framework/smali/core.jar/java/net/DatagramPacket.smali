.class public final Ljava/net/DatagramPacket;
.super Ljava/lang/Object;
.source "DatagramPacket.java"


# instance fields
.field address:Ljava/net/InetAddress;

.field capacity:I

.field data:[B

.field length:I

.field offset:I

.field port:I


# direct methods
.method public constructor <init>([BI)V
    .registers 4
    .parameter "data"
    .parameter "length"

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Ljava/net/DatagramPacket;-><init>([BII)V

    .line 61
    return-void
.end method

.method public constructor <init>([BII)V
    .registers 5
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 74
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Ljava/net/DatagramPacket;->port:I

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Ljava/net/DatagramPacket;->offset:I

    .line 75
    invoke-virtual {p0, p1, p2, p3}, Ljava/net/DatagramPacket;->setData([BII)V

    .line 76
    return-void
.end method

.method public constructor <init>([BIILjava/net/InetAddress;I)V
    .registers 6
    .parameter "data"
    .parameter "offset"
    .parameter "length"
    .parameter "host"
    .parameter "aPort"

    .prologue
    .line 97
    invoke-direct {p0, p1, p2, p3}, Ljava/net/DatagramPacket;-><init>([BII)V

    .line 98
    invoke-virtual {p0, p5}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 99
    iput-object p4, p0, Ljava/net/DatagramPacket;->address:Ljava/net/InetAddress;

    .line 100
    return-void
.end method

.method public constructor <init>([BIILjava/net/SocketAddress;)V
    .registers 5
    .parameter "data"
    .parameter "offset"
    .parameter "length"
    .parameter "sockAddr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 292
    invoke-direct {p0, p1, p2, p3}, Ljava/net/DatagramPacket;-><init>([BII)V

    .line 293
    invoke-virtual {p0, p4}, Ljava/net/DatagramPacket;->setSocketAddress(Ljava/net/SocketAddress;)V

    .line 294
    return-void
.end method

.method public constructor <init>([BILjava/net/InetAddress;I)V
    .registers 11
    .parameter "data"
    .parameter "length"
    .parameter "host"
    .parameter "port"

    .prologue
    .line 118
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Ljava/net/DatagramPacket;-><init>([BIILjava/net/InetAddress;I)V

    .line 119
    return-void
.end method

.method public constructor <init>([BILjava/net/SocketAddress;)V
    .registers 5
    .parameter "data"
    .parameter "length"
    .parameter "sockAddr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 269
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Ljava/net/DatagramPacket;-><init>([BII)V

    .line 270
    invoke-virtual {p0, p3}, Ljava/net/DatagramPacket;->setSocketAddress(Ljava/net/SocketAddress;)V

    .line 271
    return-void
.end method


# virtual methods
.method public declared-synchronized getAddress()Ljava/net/InetAddress;
    .registers 2

    .prologue
    .line 128
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/net/DatagramPacket;->address:Ljava/net/InetAddress;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getCapacity()I
    .registers 2

    .prologue
    .line 211
    monitor-enter p0

    :try_start_1
    iget v0, p0, Ljava/net/DatagramPacket;->capacity:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getData()[B
    .registers 2

    .prologue
    .line 137
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/net/DatagramPacket;->data:[B
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLength()I
    .registers 2

    .prologue
    .line 146
    monitor-enter p0

    :try_start_1
    iget v0, p0, Ljava/net/DatagramPacket;->length:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getOffset()I
    .registers 2

    .prologue
    .line 155
    monitor-enter p0

    :try_start_1
    iget v0, p0, Ljava/net/DatagramPacket;->offset:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPort()I
    .registers 2

    .prologue
    .line 165
    monitor-enter p0

    :try_start_1
    iget v0, p0, Ljava/net/DatagramPacket;->port:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSocketAddress()Ljava/net/SocketAddress;
    .registers 4

    .prologue
    .line 303
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/DatagramPacket;->getPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object v0

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAddress(Ljava/net/InetAddress;)V
    .registers 3
    .parameter "addr"

    .prologue
    .line 175
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Ljava/net/DatagramPacket;->address:Ljava/net/InetAddress;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 176
    monitor-exit p0

    return-void

    .line 175
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setData([B)V
    .registers 3
    .parameter "buf"

    .prologue
    .line 199
    monitor-enter p0

    :try_start_1
    array-length v0, p1

    iput v0, p0, Ljava/net/DatagramPacket;->length:I

    .line 200
    array-length v0, p1

    iput v0, p0, Ljava/net/DatagramPacket;->capacity:I

    .line 201
    iput-object p1, p0, Ljava/net/DatagramPacket;->data:[B

    .line 202
    const/4 v0, 0x0

    iput v0, p0, Ljava/net/DatagramPacket;->offset:I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 203
    monitor-exit p0

    return-void

    .line 199
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setData([BII)V
    .registers 5
    .parameter "data"
    .parameter "offset"
    .parameter "byteCount"

    .prologue
    .line 182
    monitor-enter p0

    or-int v0, p2, p3

    if-ltz v0, :cond_c

    :try_start_5
    array-length v0, p1

    if-gt p2, v0, :cond_c

    array-length v0, p1

    sub-int/2addr v0, p2

    if-le p3, v0, :cond_15

    .line 183
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_12

    .line 182
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0

    .line 185
    :cond_15
    :try_start_15
    iput-object p1, p0, Ljava/net/DatagramPacket;->data:[B

    .line 186
    iput p2, p0, Ljava/net/DatagramPacket;->offset:I

    .line 187
    iput p3, p0, Ljava/net/DatagramPacket;->length:I

    .line 188
    iput p3, p0, Ljava/net/DatagramPacket;->capacity:I
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_12

    .line 189
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setLength(I)V
    .registers 3
    .parameter "length"

    .prologue
    .line 222
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Ljava/net/DatagramPacket;->setLengthOnly(I)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 224
    monitor-exit p0

    return-void

    .line 222
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setLengthOnly(I)V
    .registers 5
    .parameter "length"

    .prologue
    .line 233
    monitor-enter p0

    if-ltz p1, :cond_b

    :try_start_3
    iget v0, p0, Ljava/net/DatagramPacket;->offset:I

    add-int/2addr v0, p1

    iget-object v1, p0, Ljava/net/DatagramPacket;->data:[B

    array-length v1, v1

    if-le v0, v1, :cond_40

    .line 234
    :cond_b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/net/DatagramPacket;->offset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", buffer size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/net/DatagramPacket;->data:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_3d

    .line 233
    :catchall_3d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 237
    :cond_40
    :try_start_40
    iput p1, p0, Ljava/net/DatagramPacket;->length:I
    :try_end_42
    .catchall {:try_start_40 .. :try_end_42} :catchall_3d

    .line 238
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setPort(I)V
    .registers 5
    .parameter "aPort"

    .prologue
    .line 247
    monitor-enter p0

    if-ltz p1, :cond_8

    const v0, 0xffff

    if-le p1, v0, :cond_24

    .line 248
    :cond_8
    :try_start_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Port out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_21

    .line 247
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0

    .line 250
    :cond_24
    :try_start_24
    iput p1, p0, Ljava/net/DatagramPacket;->port:I
    :try_end_26
    .catchall {:try_start_24 .. :try_end_26} :catchall_21

    .line 251
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setSocketAddress(Ljava/net/SocketAddress;)V
    .registers 7
    .parameter "sockAddr"

    .prologue
    .line 313
    monitor-enter p0

    :try_start_1
    instance-of v2, p1, Ljava/net/InetSocketAddress;

    if-nez v2, :cond_29

    .line 314
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Socket address not an InetSocketAddress: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p1, :cond_24

    const/4 v2, 0x0

    :goto_15
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_21

    .line 313
    :catchall_21
    move-exception v2

    monitor-exit p0

    throw v2

    .line 314
    :cond_24
    :try_start_24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_15

    .line 317
    :cond_29
    move-object v0, p1

    check-cast v0, Ljava/net/InetSocketAddress;

    move-object v1, v0

    .line 318
    .local v1, inetAddr:Ljava/net/InetSocketAddress;
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 319
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Socket address unresolved: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 321
    :cond_4c
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    iput v2, p0, Ljava/net/DatagramPacket;->port:I

    .line 322
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    iput-object v2, p0, Ljava/net/DatagramPacket;->address:Ljava/net/InetAddress;
    :try_end_58
    .catchall {:try_start_24 .. :try_end_58} :catchall_21

    .line 323
    monitor-exit p0

    return-void
.end method

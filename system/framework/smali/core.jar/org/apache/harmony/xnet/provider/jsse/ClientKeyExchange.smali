.class public Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;
.super Lorg/apache/harmony/xnet/provider/jsse/Message;
.source "ClientKeyExchange.java"


# instance fields
.field final exchange_keys:[B

.field final isRSA:Z

.field isTLS:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/Message;-><init>()V

    .line 84
    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->exchange_keys:[B

    .line 85
    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    .line 86
    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->isRSA:Z

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .registers 7
    .parameter "dh_Yc"

    .prologue
    const/4 v4, 0x0

    .line 67
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/Message;-><init>()V

    .line 68
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 69
    .local v0, bb:[B
    aget-byte v1, v0, v4

    if-nez v1, :cond_26

    .line 70
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->exchange_keys:[B

    .line 71
    const/4 v1, 0x1

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->exchange_keys:[B

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->exchange_keys:[B

    array-length v3, v3

    invoke-static {v0, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    :goto_1c
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->exchange_keys:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    .line 76
    iput-boolean v4, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->isRSA:Z

    .line 77
    return-void

    .line 73
    :cond_26
    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->exchange_keys:[B

    goto :goto_1c
.end method

.method public constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;IZZ)V
    .registers 8
    .parameter "in"
    .parameter "length"
    .parameter "isTLS"
    .parameter "isRSA"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/Message;-><init>()V

    .line 98
    iput-boolean p3, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->isTLS:Z

    .line 99
    iput-boolean p4, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->isRSA:Z

    .line 100
    if-nez p2, :cond_11

    .line 101
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    .line 102
    sget-object v1, Llibcore/util/EmptyArray;->BYTE:[B

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->exchange_keys:[B

    .line 118
    :cond_10
    :goto_10
    return-void

    .line 105
    :cond_11
    if-eqz p4, :cond_2d

    if-nez p3, :cond_2d

    .line 106
    move v0, p2

    .line 107
    .local v0, size:I
    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    .line 112
    :goto_18
    new-array v1, v0, [B

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->exchange_keys:[B

    .line 113
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->exchange_keys:[B

    invoke-static {p1, v1}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[B)V

    .line 114
    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    if-eq v1, p2, :cond_10

    .line 115
    const/16 v1, 0x32

    const-string v2, "DECODE ERROR: incorrect ClientKeyExchange"

    invoke-virtual {p0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->fatalAlert(BLjava/lang/String;)V

    goto :goto_10

    .line 109
    .end local v0           #size:I
    :cond_2d
    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->readUint16()I

    move-result v0

    .line 110
    .restart local v0       #size:I
    add-int/lit8 v1, v0, 0x2

    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    goto :goto_18
.end method

.method public constructor <init>([BZ)V
    .registers 4
    .parameter "encrypted_pre_master_secret"
    .parameter "isTLS"

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/Message;-><init>()V

    .line 54
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->exchange_keys:[B

    .line 55
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->exchange_keys:[B

    array-length v0, v0

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    .line 56
    if-eqz p2, :cond_12

    .line 57
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    .line 59
    :cond_12
    iput-boolean p2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->isTLS:Z

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->isRSA:Z

    .line 61
    return-void
.end method


# virtual methods
.method public getType()I
    .registers 2

    .prologue
    .line 140
    const/16 v0, 0x10

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->exchange_keys:[B

    array-length v0, v0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public send(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;)V
    .registers 4
    .parameter "out"

    .prologue
    .line 126
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->exchange_keys:[B

    array-length v0, v0

    if-eqz v0, :cond_19

    .line 127
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->isRSA:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->isTLS:Z

    if-eqz v0, :cond_14

    .line 128
    :cond_d
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->exchange_keys:[B

    array-length v0, v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->writeUint16(J)V

    .line 130
    :cond_14
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->exchange_keys:[B

    invoke-virtual {p1, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write([B)V

    .line 132
    :cond_19
    return-void
.end method

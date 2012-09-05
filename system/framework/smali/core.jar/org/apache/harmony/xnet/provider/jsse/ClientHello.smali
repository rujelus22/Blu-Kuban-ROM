.class public Lorg/apache/harmony/xnet/provider/jsse/ClientHello;
.super Lorg/apache/harmony/xnet/provider/jsse/Message;
.source "ClientHello.java"


# instance fields
.field final cipher_suites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

.field final client_version:[B

.field final compression_methods:[B

.field final random:[B

.field final session_id:[B


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;[B[B[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;)V
    .registers 15
    .parameter "sr"
    .parameter "version"
    .parameter "ses_id"
    .parameter "cipher_suite"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-wide/16 v6, 0xff

    .line 67
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/Message;-><init>()V

    .line 42
    const/16 v2, 0x20

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->random:[B

    .line 68
    iput-object p2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->client_version:[B

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v0, v2, v4

    .line 70
    .local v0, gmt_unix_time:J
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->random:[B

    invoke-virtual {p1, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 71
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->random:[B

    and-long v3, v0, v6

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v2, v8

    .line 72
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->random:[B

    and-long v3, v0, v6

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v2, v9

    .line 73
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->random:[B

    const/4 v3, 0x2

    and-long v4, v0, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 74
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->random:[B

    const/4 v3, 0x3

    and-long v4, v0, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 75
    iput-object p3, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->session_id:[B

    .line 76
    iput-object p4, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->cipher_suites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    .line 77
    new-array v2, v9, [B

    aput-byte v8, v2, v8

    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->compression_methods:[B

    .line 78
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->session_id:[B

    array-length v2, v2

    add-int/lit8 v2, v2, 0x26

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->cipher_suites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    array-length v3, v3

    shl-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->compression_methods:[B

    array-length v3, v3

    add-int/2addr v2, v3

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    .line 80
    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;)V
    .registers 14
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/16 v11, 0x32

    const/16 v10, 0x20

    const/4 v9, 0x0

    .line 128
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/Message;-><init>()V

    .line 42
    new-array v6, v10, [B

    iput-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->random:[B

    .line 129
    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->readUint8()I

    move-result v6

    if-eq v6, v8, :cond_18

    .line 130
    const-string v6, "DECODE ERROR: incorrect V2ClientHello"

    invoke-virtual {p0, v11, v6}, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->fatalAlert(BLjava/lang/String;)V

    .line 132
    :cond_18
    const/4 v6, 0x2

    new-array v6, v6, [B

    iput-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->client_version:[B

    .line 133
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->client_version:[B

    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->readUint8()I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v6, v9

    .line 134
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->client_version:[B

    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->readUint8()I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v6, v8

    .line 135
    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->readUint16()I

    move-result v4

    .line 136
    .local v4, cipher_spec_length:I
    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->readUint16()I

    move-result v6

    if-eqz v6, :cond_3e

    .line 139
    const-string v6, "DECODE ERROR: incorrect V2ClientHello, cannot be used for resuming"

    invoke-virtual {p0, v11, v6}, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->fatalAlert(BLjava/lang/String;)V

    .line 142
    :cond_3e
    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->readUint16()I

    move-result v3

    .line 143
    .local v3, challenge_length:I
    const/16 v6, 0x10

    if-ge v3, v6, :cond_4b

    .line 144
    const-string v6, "DECODE ERROR: incorrect V2ClientHello, short challenge data"

    invoke-virtual {p0, v11, v6}, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->fatalAlert(BLjava/lang/String;)V

    .line 146
    :cond_4b
    sget-object v6, Llibcore/util/EmptyArray;->BYTE:[B

    iput-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->session_id:[B

    .line 147
    div-int/lit8 v6, v4, 0x3

    new-array v6, v6, [Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    iput-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->cipher_suites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    .line 148
    const/4 v5, 0x0

    .local v5, i:I
    :goto_56
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->cipher_suites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    array-length v6, v6

    if-ge v5, v6, :cond_75

    .line 149
    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read()I

    move-result v6

    int-to-byte v0, v6

    .line 150
    .local v0, b0:B
    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read()I

    move-result v6

    int-to-byte v1, v6

    .line 151
    .local v1, b1:B
    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read()I

    move-result v6

    int-to-byte v2, v6

    .line 152
    .local v2, b2:B
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->cipher_suites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    invoke-static {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getByCode(BBB)Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-result-object v7

    aput-object v7, v6, v5

    .line 148
    add-int/lit8 v5, v5, 0x1

    goto :goto_56

    .line 154
    .end local v0           #b0:B
    .end local v1           #b1:B
    .end local v2           #b2:B
    :cond_75
    new-array v6, v8, [B

    aput-byte v9, v6, v9

    iput-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->compression_methods:[B

    .line 156
    if-ge v3, v10, :cond_ac

    .line 157
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->random:[B

    rsub-int/lit8 v7, v3, 0x20

    invoke-static {v6, v9, v7, v9}, Ljava/util/Arrays;->fill([BIIB)V

    .line 158
    invoke-virtual {p1, v3}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read(I)[B

    move-result-object v6

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->random:[B

    rsub-int/lit8 v8, v3, 0x20

    invoke-static {v6, v9, v7, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    :goto_8f
    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->available()I

    move-result v6

    if-lez v6, :cond_9a

    .line 165
    const-string v6, "DECODE ERROR: incorrect V2ClientHello, extra data"

    invoke-virtual {p0, v11, v6}, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->fatalAlert(BLjava/lang/String;)V

    .line 167
    :cond_9a
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->session_id:[B

    array-length v6, v6

    add-int/lit8 v6, v6, 0x26

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->cipher_suites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    array-length v7, v7

    shl-int/lit8 v7, v7, 0x1

    add-int/2addr v6, v7

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->compression_methods:[B

    array-length v7, v7

    add-int/2addr v6, v7

    iput v6, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    .line 169
    return-void

    .line 159
    :cond_ac
    if-ne v3, v10, :cond_b8

    .line 160
    invoke-virtual {p1, v10}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read(I)[B

    move-result-object v6

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->random:[B

    invoke-static {v6, v9, v7, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_8f

    .line 162
    :cond_b8
    invoke-virtual {p1, v3}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read(I)[B

    move-result-object v6

    add-int/lit8 v7, v3, -0x20

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->random:[B

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_8f
.end method

.method public constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;I)V
    .registers 13
    .parameter "in"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x32

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 88
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/Message;-><init>()V

    .line 42
    const/16 v5, 0x20

    new-array v5, v5, [B

    iput-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->random:[B

    .line 89
    const/4 v5, 0x2

    new-array v5, v5, [B

    iput-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->client_version:[B

    .line 90
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->client_version:[B

    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->readUint8()I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v5, v7

    .line 91
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->client_version:[B

    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->readUint8()I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v5, v8

    .line 92
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->random:[B

    invoke-static {p1, v5}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[B)V

    .line 93
    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read()I

    move-result v4

    .line 94
    .local v4, size:I
    new-array v5, v4, [B

    iput-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->session_id:[B

    .line 95
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->session_id:[B

    invoke-virtual {p1, v5, v7, v4}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read([BII)I

    .line 96
    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->readUint16()I

    move-result v3

    .line 97
    .local v3, l:I
    and-int/lit8 v5, v3, 0x1

    if-ne v5, v8, :cond_43

    .line 98
    const-string v5, "DECODE ERROR: incorrect ClientHello"

    invoke-virtual {p0, v9, v5}, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->fatalAlert(BLjava/lang/String;)V

    .line 101
    :cond_43
    shr-int/lit8 v4, v3, 0x1

    .line 102
    new-array v5, v4, [Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    iput-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->cipher_suites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    .line 103
    const/4 v2, 0x0

    .local v2, i:I
    :goto_4a
    if-ge v2, v4, :cond_61

    .line 104
    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read()I

    move-result v5

    int-to-byte v0, v5

    .line 105
    .local v0, b0:B
    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read()I

    move-result v5

    int-to-byte v1, v5

    .line 106
    .local v1, b1:B
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->cipher_suites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    invoke-static {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getByCode(BB)Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-result-object v6

    aput-object v6, v5, v2

    .line 103
    add-int/lit8 v2, v2, 0x1

    goto :goto_4a

    .line 108
    .end local v0           #b0:B
    .end local v1           #b1:B
    :cond_61
    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read()I

    move-result v4

    .line 109
    new-array v5, v4, [B

    iput-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->compression_methods:[B

    .line 110
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->compression_methods:[B

    invoke-virtual {p1, v5, v7, v4}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read([BII)I

    .line 111
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->session_id:[B

    array-length v5, v5

    add-int/lit8 v5, v5, 0x26

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->cipher_suites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    array-length v6, v6

    shl-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->compression_methods:[B

    array-length v6, v6

    add-int/2addr v5, v6

    iput v5, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    .line 113
    iget v5, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    if-le v5, p2, :cond_88

    .line 114
    const-string v5, "DECODE ERROR: incorrect ClientHello"

    invoke-virtual {p0, v9, v5}, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->fatalAlert(BLjava/lang/String;)V

    .line 118
    :cond_88
    iget v5, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    if-ge v5, p2, :cond_96

    .line 119
    iget v5, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    sub-int v5, p2, v5

    int-to-long v5, v5

    invoke-virtual {p1, v5, v6}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->skip(J)J

    .line 120
    iput p2, p0, Lorg/apache/harmony/xnet/provider/jsse/Message;->length:I

    .line 122
    :cond_96
    return-void
.end method


# virtual methods
.method public getRandom()[B
    .registers 2

    .prologue
    .line 197
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->random:[B

    return-object v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 206
    const/4 v0, 0x1

    return v0
.end method

.method public send(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;)V
    .registers 6
    .parameter "out"

    .prologue
    .line 177
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->client_version:[B

    invoke-virtual {p1, v2}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write([B)V

    .line 178
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->random:[B

    invoke-virtual {p1, v2}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write([B)V

    .line 179
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->session_id:[B

    array-length v2, v2

    int-to-long v2, v2

    invoke-virtual {p1, v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->writeUint8(J)V

    .line 180
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->session_id:[B

    invoke-virtual {p1, v2}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write([B)V

    .line 181
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->cipher_suites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    array-length v2, v2

    shl-int/lit8 v1, v2, 0x1

    .line 182
    .local v1, size:I
    int-to-long v2, v1

    invoke-virtual {p1, v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->writeUint16(J)V

    .line 183
    const/4 v0, 0x0

    .local v0, i:I
    :goto_20
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->cipher_suites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    array-length v2, v2

    if-ge v0, v2, :cond_33

    .line 184
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->cipher_suites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->toBytes()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write([B)V

    .line 183
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 186
    :cond_33
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->compression_methods:[B

    array-length v2, v2

    int-to-long v2, v2

    invoke-virtual {p1, v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->writeUint8(J)V

    .line 187
    const/4 v0, 0x0

    :goto_3b
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->compression_methods:[B

    array-length v2, v2

    if-ge v0, v2, :cond_4a

    .line 188
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->compression_methods:[B

    aget-byte v2, v2, v0

    invoke-virtual {p1, v2}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write(B)V

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    .line 190
    :cond_4a
    return-void
.end method

.class public Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;
.super Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;
.source "HandshakeIODataStream.java"

# interfaces
.implements Lorg/apache/harmony/xnet/provider/jsse/Appendable;
.implements Lorg/apache/harmony/xnet/provider/jsse/DataStream;


# static fields
.field private static final md5:Ljava/security/MessageDigest;

.field private static final sha:Ljava/security/MessageDigest;


# instance fields
.field private buff_size:I

.field private buffer:[B

.field private inc_buff_size:I

.field private marked_pos:I

.field private read_pos:I

.field private read_pos_end:I

.field private write_pos:I

.field private write_pos_beg:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 72
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    sput-object v1, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->md5:Ljava/security/MessageDigest;

    .line 73
    const-string v1, "SHA-1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    sput-object v1, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->sha:Ljava/security/MessageDigest;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    .line 79
    return-void

    .line 74
    :catch_11
    move-exception v0

    .line 75
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 76
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not initialize the Digest Algorithms."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/16 v0, 0x400

    .line 81
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;-><init>()V

    .line 84
    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buff_size:I

    .line 85
    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->inc_buff_size:I

    .line 86
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buff_size:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    .line 81
    return-void
.end method

.method private append([BII)V
    .registers 8
    .parameter "src"
    .parameter "from"
    .parameter "length"

    .prologue
    .line 193
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos:I

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos_end:I

    if-ne v0, v1, :cond_29

    .line 195
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos_beg:I

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    if-eq v0, v1, :cond_1b

    .line 198
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/AlertException;

    const/16 v1, 0xa

    new-instance v2, Ljavax/net/ssl/SSLHandshakeException;

    const-string v3, "Handshake message has been received before the last oubound message had been sent."

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;-><init>(BLjavax/net/ssl/SSLException;)V

    throw v0

    .line 204
    :cond_1b
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos:I

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    if-ge v0, v1, :cond_29

    .line 205
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos:I

    .line 206
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos:I

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos_end:I

    .line 209
    :cond_29
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos_end:I

    add-int/2addr v0, p3

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buff_size:I

    if-le v0, v1, :cond_39

    .line 210
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos_end:I

    add-int/2addr v0, p3

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buff_size:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->enlargeBuffer(I)V

    .line 212
    :cond_39
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos_end:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 213
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos_end:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos_end:I

    .line 214
    return-void
.end method

.method private check(I)V
    .registers 7
    .parameter "length"

    .prologue
    .line 246
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos_beg:I

    if-ne v0, v1, :cond_48

    .line 248
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos:I

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos_end:I

    if-eq v0, v1, :cond_3a

    .line 251
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/AlertException;

    const/16 v1, 0x50

    new-instance v2, Ljavax/net/ssl/SSLHandshakeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Data was not fully read: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos_end:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;-><init>(BLjavax/net/ssl/SSLException;)V

    throw v0

    .line 257
    :cond_3a
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos_beg:I

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos_end:I

    if-ge v0, v1, :cond_48

    .line 258
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos_end:I

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos_beg:I

    .line 259
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos_beg:I

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    .line 263
    :cond_48
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    add-int/2addr v0, p1

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buff_size:I

    if-lt v0, v1, :cond_52

    .line 264
    invoke-direct {p0, p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->enlargeBuffer(I)V

    .line 266
    :cond_52
    return-void
.end method

.method private enlargeBuffer(I)V
    .registers 6
    .parameter "size"

    .prologue
    const/4 v3, 0x0

    .line 217
    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->inc_buff_size:I

    if-ge p1, v1, :cond_1b

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buff_size:I

    iget v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->inc_buff_size:I

    add-int/2addr v1, v2

    :goto_a
    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buff_size:I

    .line 220
    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buff_size:I

    new-array v0, v1, [B

    .line 221
    .local v0, new_buff:[B
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 222
    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    .line 223
    return-void

    .line 217
    .end local v0           #new_buff:[B
    :cond_1b
    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buff_size:I

    add-int/2addr v1, p1

    goto :goto_a
.end method


# virtual methods
.method public append([B)V
    .registers 4
    .parameter "src"

    .prologue
    .line 189
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->append([BII)V

    .line 190
    return-void
.end method

.method public available()I
    .registers 3

    .prologue
    .line 99
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos_end:I

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected clearBuffer()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 226
    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos:I

    .line 227
    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->marked_pos:I

    .line 228
    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos_end:I

    .line 229
    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    .line 230
    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos_beg:I

    .line 231
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 232
    return-void
.end method

.method public getData(I)[B
    .registers 8
    .parameter "length"

    .prologue
    const/4 v5, 0x0

    .line 358
    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    iget v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos_beg:I

    sub-int/2addr v1, v2

    if-ge v1, p1, :cond_20

    .line 359
    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    iget v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos_beg:I

    sub-int/2addr v1, v2

    new-array v0, v1, [B

    .line 360
    .local v0, res:[B
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos_beg:I

    iget v3, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    iget v4, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos_beg:I

    sub-int/2addr v3, v4

    invoke-static {v1, v2, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 362
    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos_beg:I

    .line 368
    :goto_1f
    return-object v0

    .line 364
    .end local v0           #res:[B
    :cond_20
    new-array v0, p1, [B

    .line 365
    .restart local v0       #res:[B
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos_beg:I

    invoke-static {v1, v2, v0, v5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 366
    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos_beg:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos_beg:I

    goto :goto_1f
.end method

.method protected getDigestMD5()[B
    .registers 6

    .prologue
    .line 378
    sget-object v2, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->md5:Ljava/security/MessageDigest;

    monitor-enter v2

    .line 379
    :try_start_3
    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos_end:I

    iget v3, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    if-le v1, v3, :cond_1b

    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos_end:I

    .line 382
    .local v0, len:I
    :goto_b
    sget-object v1, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->md5:Ljava/security/MessageDigest;

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v0}, Ljava/security/MessageDigest;->update([BII)V

    .line 383
    sget-object v1, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 379
    .end local v0           #len:I
    :cond_1b
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    goto :goto_b

    .line 384
    :catchall_1e
    move-exception v1

    monitor-exit v2
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method protected getDigestMD5withoutLast()[B
    .registers 6

    .prologue
    .line 407
    sget-object v1, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->md5:Ljava/security/MessageDigest;

    monitor-enter v1

    .line 408
    :try_start_3
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->md5:Ljava/security/MessageDigest;

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    const/4 v3, 0x0

    iget v4, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->marked_pos:I

    invoke-virtual {v0, v2, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 409
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 410
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v0
.end method

.method protected getDigestSHA()[B
    .registers 6

    .prologue
    .line 392
    sget-object v2, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->sha:Ljava/security/MessageDigest;

    monitor-enter v2

    .line 393
    :try_start_3
    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos_end:I

    iget v3, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    if-le v1, v3, :cond_1b

    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos_end:I

    .line 396
    .local v0, len:I
    :goto_b
    sget-object v1, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->sha:Ljava/security/MessageDigest;

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v0}, Ljava/security/MessageDigest;->update([BII)V

    .line 397
    sget-object v1, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->sha:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 393
    .end local v0           #len:I
    :cond_1b
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    goto :goto_b

    .line 398
    :catchall_1e
    move-exception v1

    monitor-exit v2
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method protected getDigestSHAwithoutLast()[B
    .registers 6

    .prologue
    .line 419
    sget-object v1, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->sha:Ljava/security/MessageDigest;

    monitor-enter v1

    .line 420
    :try_start_3
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->sha:Ljava/security/MessageDigest;

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    const/4 v3, 0x0

    iget v4, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->marked_pos:I

    invoke-virtual {v0, v2, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 421
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->sha:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 422
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v0
.end method

.method protected getMessages()[B
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 430
    iget v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos_end:I

    iget v3, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    if-le v2, v3, :cond_11

    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos_end:I

    .line 431
    .local v0, len:I
    :goto_9
    new-array v1, v0, [B

    .line 432
    .local v1, res:[B
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    invoke-static {v2, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 433
    return-object v1

    .line 430
    .end local v0           #len:I
    .end local v1           #res:[B
    :cond_11
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    goto :goto_9
.end method

.method public hasData()Z
    .registers 3

    .prologue
    .line 348
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos_beg:I

    if-le v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public mark()V
    .registers 2

    .prologue
    .line 113
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos:I

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->marked_pos:I

    .line 114
    return-void
.end method

.method public mark(I)V
    .registers 3
    .parameter "limit"

    .prologue
    .line 109
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos:I

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->marked_pos:I

    .line 110
    return-void
.end method

.method public markSupported()Z
    .registers 2

    .prologue
    .line 104
    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos:I

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos_end:I

    if-ne v0, v1, :cond_c

    .line 142
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/EndOfBufferException;

    invoke-direct {v0}, Lorg/apache/harmony/xnet/provider/jsse/EndOfBufferException;-><init>()V

    throw v0

    .line 144
    :cond_c
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([BII)I
    .registers 6
    .parameter "dst"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->available()I

    move-result v0

    if-le p3, v0, :cond_c

    .line 166
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/EndOfBufferException;

    invoke-direct {v0}, Lorg/apache/harmony/xnet/provider/jsse/EndOfBufferException;-><init>()V

    throw v0

    .line 168
    :cond_c
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos:I

    .line 170
    return p3
.end method

.method public read(I)[B
    .registers 6
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->available()I

    move-result v1

    if-le p1, v1, :cond_c

    .line 155
    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/EndOfBufferException;

    invoke-direct {v1}, Lorg/apache/harmony/xnet/provider/jsse/EndOfBufferException;-><init>()V

    throw v1

    .line 157
    :cond_c
    new-array v0, p1, [B

    .line 158
    .local v0, res:[B
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos:I

    .line 160
    return-object v0
.end method

.method protected removeFromMarkedPosition()V
    .registers 7

    .prologue
    .line 127
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos:I

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v3, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->marked_pos:I

    iget v4, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos_end:I

    iget v5, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos:I

    sub-int/2addr v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos_end:I

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos:I

    iget v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->marked_pos:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos_end:I

    .line 130
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->marked_pos:I

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos:I

    .line 131
    return-void
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 118
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->marked_pos:I

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read_pos:I

    .line 119
    return-void
.end method

.method public write(B)V
    .registers 5
    .parameter "b"

    .prologue
    .line 273
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->check(I)V

    .line 274
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    aput-byte p1, v0, v1

    .line 275
    return-void
.end method

.method public write([B)V
    .registers 6
    .parameter "vector"

    .prologue
    .line 340
    array-length v0, p1

    invoke-direct {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->check(I)V

    .line 341
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 342
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    .line 343
    return-void
.end method

.method public writeUint16(J)V
    .registers 8
    .parameter "n"

    .prologue
    .line 291
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->check(I)V

    .line 292
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    const-wide/32 v2, 0xff00

    and-long/2addr v2, p1

    const/16 v4, 0x8

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 293
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    const-wide/16 v2, 0xff

    and-long/2addr v2, p1

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 294
    return-void
.end method

.method public writeUint24(J)V
    .registers 8
    .parameter "n"

    .prologue
    .line 301
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->check(I)V

    .line 302
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    const-wide/32 v2, 0xff0000

    and-long/2addr v2, p1

    const/16 v4, 0x10

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 303
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    const-wide/32 v2, 0xff00

    and-long/2addr v2, p1

    const/16 v4, 0x8

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 304
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    const-wide/16 v2, 0xff

    and-long/2addr v2, p1

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 305
    return-void
.end method

.method public writeUint32(J)V
    .registers 8
    .parameter "n"

    .prologue
    .line 312
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->check(I)V

    .line 313
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    const-wide/32 v2, -0x1000000

    and-long/2addr v2, p1

    const/16 v4, 0x18

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 314
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    const-wide/32 v2, 0xff0000

    and-long/2addr v2, p1

    const/16 v4, 0x10

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 315
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    const-wide/32 v2, 0xff00

    and-long/2addr v2, p1

    const/16 v4, 0x8

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 316
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    const-wide/16 v2, 0xff

    and-long/2addr v2, p1

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 317
    return-void
.end method

.method public writeUint64(J)V
    .registers 9
    .parameter "n"

    .prologue
    const/16 v5, 0x8

    .line 324
    invoke-direct {p0, v5}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->check(I)V

    .line 325
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    const-wide/high16 v2, -0x100

    and-long/2addr v2, p1

    const/16 v4, 0x38

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 326
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    const-wide/high16 v2, 0xff

    and-long/2addr v2, p1

    const/16 v4, 0x30

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 327
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    const-wide v2, 0xff0000000000L

    and-long/2addr v2, p1

    const/16 v4, 0x28

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 328
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    const-wide v2, 0xff00000000L

    and-long/2addr v2, p1

    const/16 v4, 0x20

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 329
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    const-wide/32 v2, -0x1000000

    and-long/2addr v2, p1

    const/16 v4, 0x18

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 330
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    const-wide/32 v2, 0xff0000

    and-long/2addr v2, p1

    const/16 v4, 0x10

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 331
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    const-wide/32 v2, 0xff00

    and-long/2addr v2, p1

    shr-long/2addr v2, v5

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 332
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    const-wide/16 v2, 0xff

    and-long/2addr v2, p1

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 333
    return-void
.end method

.method public writeUint8(J)V
    .registers 7
    .parameter "n"

    .prologue
    .line 282
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->check(I)V

    .line 283
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write_pos:I

    const-wide/16 v2, 0xff

    and-long/2addr v2, p1

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 284
    return-void
.end method

.class public Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;
.super Ljava/security/SecureRandomSpi;
.source "SHA1PRNG_SecureRandomImpl.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/harmony/security/provider/crypto/SHA1_Data;


# static fields
.field private static final COUNTER_BASE:I = 0x0

.field private static final END_FLAGS:[I = null

.field private static final EXTRAFRAME_OFFSET:I = 0x5

.field private static final FRAME_LENGTH:I = 0x10

.field private static final FRAME_OFFSET:I = 0x15

.field private static final HASHBYTES_TO_USE:I = 0x14

.field private static final HASHCOPY_OFFSET:I = 0x0

.field private static final LEFT:[I = null

.field private static final MASK:[I = null

.field private static final MAX_BYTES:I = 0x30

.field private static final NEXT_BYTES:I = 0x2

.field private static final RIGHT1:[I = null

.field private static final RIGHT2:[I = null

.field private static final SET_SEED:I = 0x1

.field private static final UNDEFINED:I = 0x0

.field private static myRandom:Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl; = null

.field private static final serialVersionUID:J = 0x3f0091d1f89aebbL


# instance fields
.field private transient copies:[I

.field private transient counter:J

.field private transient nextBIndex:I

.field private transient nextBytes:[B

.field private transient seed:[I

.field private transient seedLength:J

.field private transient state:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x4

    .line 52
    new-array v0, v1, [I

    fill-array-data v0, :array_26

    sput-object v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->END_FLAGS:[I

    .line 54
    new-array v0, v1, [I

    fill-array-data v0, :array_32

    sput-object v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->RIGHT1:[I

    .line 56
    new-array v0, v1, [I

    fill-array-data v0, :array_3e

    sput-object v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->RIGHT2:[I

    .line 58
    new-array v0, v1, [I

    fill-array-data v0, :array_4a

    sput-object v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->LEFT:[I

    .line 60
    new-array v0, v1, [I

    fill-array-data v0, :array_56

    sput-object v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->MASK:[I

    return-void

    .line 52
    nop

    :array_26
    .array-data 0x4
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x80t 0x0t
        0x0t 0x80t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
    .end array-data

    .line 54
    :array_32
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x38t 0x0t 0x0t 0x0t
    .end array-data

    .line 56
    :array_3e
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
    .end array-data

    .line 58
    :array_4a
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    .line 60
    :array_56
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0x0t
        0xfft 0xfft 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    const/16 v3, 0x14

    .line 156
    invoke-direct {p0}, Ljava/security/SecureRandomSpi;-><init>()V

    .line 158
    const/16 v0, 0x57

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    .line 159
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v1, 0x52

    const v2, 0x67452301

    aput v2, v0, v1

    .line 160
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v1, 0x53

    const v2, -0x10325477

    aput v2, v0, v1

    .line 161
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v1, 0x54

    const v2, -0x67452302

    aput v2, v0, v1

    .line 162
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v1, 0x55

    const v2, 0x10325476

    aput v2, v0, v1

    .line 163
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v1, 0x56

    const v2, -0x3c2d1e10

    aput v2, v0, v1

    .line 165
    iput-wide v4, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seedLength:J

    .line 166
    const/16 v0, 0x25

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->copies:[I

    .line 167
    new-array v0, v3, [B

    iput-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBytes:[B

    .line 168
    iput v3, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    .line 169
    iput-wide v4, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->counter:J

    .line 170
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->state:I

    .line 171
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 9
    .parameter "ois"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x10

    const/16 v4, 0x51

    const/4 v5, 0x5

    .line 480
    const/16 v2, 0x57

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    .line 481
    const/16 v2, 0x25

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->copies:[I

    .line 482
    const/16 v2, 0x14

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBytes:[B

    .line 484
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seedLength:J

    .line 485
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->counter:J

    .line 486
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    iput v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->state:I

    .line 487
    iget-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    aput v3, v2, v4

    .line 489
    iget-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    aget v2, v2, v4

    add-int/lit8 v2, v2, 0x3

    shr-int/lit8 v1, v2, 0x2

    .line 491
    .local v1, nRemaining:I
    iget v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->state:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_5c

    .line 493
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3f
    if-ge v0, v1, :cond_4c

    .line 494
    iget-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    aput v3, v2, v0

    .line 493
    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    .line 496
    :cond_4c
    const/4 v0, 0x0

    :goto_4d
    if-ge v0, v5, :cond_c6

    .line 497
    iget-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    add-int/lit8 v3, v0, 0x52

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v4

    aput v4, v2, v3

    .line 496
    add-int/lit8 v0, v0, 0x1

    goto :goto_4d

    .line 500
    .end local v0           #i:I
    :cond_5c
    iget-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    aget v2, v2, v4

    const/16 v3, 0x30

    if-lt v2, v3, :cond_8a

    .line 503
    iget-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    aput v3, v2, v6

    .line 504
    iget-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v3, 0x11

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v4

    aput v4, v2, v3

    .line 505
    iget-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v3, 0x1e

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v4

    aput v4, v2, v3

    .line 506
    iget-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v3, 0x1f

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v4

    aput v4, v2, v3

    .line 509
    :cond_8a
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_8b
    if-ge v0, v6, :cond_98

    .line 510
    iget-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    aput v3, v2, v0

    .line 509
    add-int/lit8 v0, v0, 0x1

    goto :goto_8b

    .line 513
    :cond_98
    const/4 v0, 0x0

    :goto_99
    if-ge v0, v1, :cond_a8

    .line 514
    iget-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->copies:[I

    add-int/lit8 v3, v0, 0x15

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v4

    aput v4, v2, v3

    .line 513
    add-int/lit8 v0, v0, 0x1

    goto :goto_99

    .line 517
    :cond_a8
    const/4 v0, 0x0

    :goto_a9
    if-ge v0, v5, :cond_b6

    .line 518
    iget-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->copies:[I

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    aput v3, v2, v0

    .line 517
    add-int/lit8 v0, v0, 0x1

    goto :goto_a9

    .line 521
    :cond_b6
    const/4 v0, 0x0

    :goto_b7
    if-ge v0, v5, :cond_c6

    .line 522
    iget-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    add-int/lit8 v3, v0, 0x52

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v4

    aput v4, v2, v3

    .line 521
    add-int/lit8 v0, v0, 0x1

    goto :goto_b7

    .line 526
    :cond_c6
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    iput v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    .line 527
    iget-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBytes:[B

    iget v3, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    iget v4, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    rsub-int/lit8 v4, v4, 0x14

    invoke-static {p1, v2, v3, v4}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V

    .line 528
    return-void
.end method

.method private updateSeed([B)V
    .registers 6
    .parameter "bytes"

    .prologue
    .line 185
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/4 v1, 0x0

    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, p1, v1, v2}, Lorg/apache/harmony/security/provider/crypto/SHA1Impl;->updateHash([I[BII)V

    .line 187
    iget-wide v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seedLength:J

    array-length v2, p1

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seedLength:J

    .line 188
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 16
    .parameter "oos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v13, 0x10

    const/4 v12, 0x2

    const/16 v9, 0x51

    const/4 v11, 0x5

    const/4 v10, 0x0

    .line 409
    const/4 v3, 0x0

    .line 411
    .local v3, intData:[I
    const/4 v6, 0x5

    .line 412
    .local v6, only_hash:I
    const/16 v0, 0x1a

    .line 413
    .local v0, hashes_and_frame:I
    const/16 v1, 0x2a

    .line 416
    .local v1, hashes_and_frame_extra:I
    iget-wide v7, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seedLength:J

    invoke-virtual {p1, v7, v8}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 417
    iget-wide v7, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->counter:J

    invoke-virtual {p1, v7, v8}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 418
    iget v7, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->state:I

    invoke-virtual {p1, v7}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 419
    iget-object v7, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    aget v7, v7, v9

    invoke-virtual {p1, v7}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 421
    iget-object v7, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    aget v7, v7, v9

    add-int/lit8 v7, v7, 0x3

    shr-int/lit8 v4, v7, 0x2

    .line 423
    .local v4, nRemaining:I
    iget v7, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->state:I

    if-eq v7, v12, :cond_4b

    .line 429
    add-int/lit8 v7, v4, 0x5

    new-array v3, v7, [I

    .line 431
    iget-object v7, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    invoke-static {v7, v10, v3, v10, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 432
    iget-object v7, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v8, 0x52

    invoke-static {v7, v8, v3, v4, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 469
    :goto_3f
    const/4 v2, 0x0

    .local v2, i:I
    :goto_40
    array-length v7, v3

    if-ge v2, v7, :cond_9d

    .line 470
    aget v7, v3, v2

    invoke-virtual {p1, v7}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 469
    add-int/lit8 v2, v2, 0x1

    goto :goto_40

    .line 440
    .end local v2           #i:I
    :cond_4b
    const/4 v5, 0x0

    .line 441
    .local v5, offset:I
    iget-object v7, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    aget v7, v7, v9

    const/16 v8, 0x30

    if-ge v7, v8, :cond_76

    .line 443
    add-int/lit8 v7, v4, 0x1a

    new-array v3, v7, [I

    .line 456
    :goto_58
    iget-object v7, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    invoke-static {v7, v10, v3, v5, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 457
    add-int/lit8 v5, v5, 0x10

    .line 459
    iget-object v7, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->copies:[I

    const/16 v8, 0x15

    invoke-static {v7, v8, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 461
    add-int/2addr v5, v4

    .line 463
    iget-object v7, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->copies:[I

    invoke-static {v7, v10, v3, v5, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 464
    add-int/lit8 v5, v5, 0x5

    .line 466
    iget-object v7, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v8, 0x52

    invoke-static {v7, v8, v3, v5, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3f

    .line 447
    :cond_76
    add-int/lit8 v7, v4, 0x2a

    new-array v3, v7, [I

    .line 449
    iget-object v7, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    aget v7, v7, v13

    aput v7, v3, v5

    .line 450
    const/4 v7, 0x1

    iget-object v8, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v9, 0x11

    aget v8, v8, v9

    aput v8, v3, v7

    .line 451
    iget-object v7, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v8, 0x1e

    aget v7, v7, v8

    aput v7, v3, v12

    .line 452
    const/4 v7, 0x3

    iget-object v8, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v9, 0x1f

    aget v8, v8, v9

    aput v8, v3, v7

    .line 453
    add-int/lit8 v5, v5, 0x4

    goto :goto_58

    .line 473
    .end local v5           #offset:I
    .restart local v2       #i:I
    :cond_9d
    iget v7, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    invoke-virtual {p1, v7}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 474
    iget-object v7, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBytes:[B

    iget v8, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    iget v9, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    rsub-int/lit8 v9, v9, 0x14

    invoke-virtual {p1, v7, v8, v9}, Ljava/io/ObjectOutputStream;->write([BII)V

    .line 475
    return-void
.end method


# virtual methods
.method protected declared-synchronized engineGenerateSeed(I)[B
    .registers 5
    .parameter "numBytes"

    .prologue
    .line 235
    monitor-enter p0

    if-gez p1, :cond_10

    .line 236
    :try_start_3
    new-instance v1, Ljava/lang/NegativeArraySizeException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NegativeArraySizeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_d

    .line 235
    :catchall_d
    move-exception v1

    monitor-exit p0

    throw v1

    .line 238
    :cond_10
    if-nez p1, :cond_16

    .line 239
    :try_start_12
    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B
    :try_end_14
    .catchall {:try_start_12 .. :try_end_14} :catchall_d

    .line 250
    :goto_14
    monitor-exit p0

    return-object v0

    .line 242
    :cond_16
    :try_start_16
    sget-object v1, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->myRandom:Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;

    if-nez v1, :cond_2c

    .line 243
    new-instance v1, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;

    invoke-direct {v1}, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;-><init>()V

    sput-object v1, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->myRandom:Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;

    .line 244
    sget-object v1, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->myRandom:Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;

    const/16 v2, 0x14

    invoke-static {v2}, Lorg/apache/harmony/security/provider/crypto/RandomBitsSupplier;->getRandomBits(I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->engineSetSeed([B)V

    .line 247
    :cond_2c
    new-array v0, p1, [B

    .line 248
    .local v0, myBytes:[B
    sget-object v1, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->myRandom:Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;

    invoke-virtual {v1, v0}, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->engineNextBytes([B)V
    :try_end_33
    .catchall {:try_start_16 .. :try_end_33} :catchall_d

    goto :goto_14
.end method

.method protected declared-synchronized engineNextBytes([B)V
    .registers 18
    .parameter "bytes"

    .prologue
    .line 276
    monitor-enter p0

    const/4 v3, 0x7

    .line 278
    .local v3, extrabytes:I
    if-nez p1, :cond_f

    .line 279
    :try_start_4
    new-instance v10, Ljava/lang/NullPointerException;

    const-string v11, "bytes == null"

    invoke-direct {v10, v11}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_c

    .line 276
    :catchall_c
    move-exception v10

    monitor-exit p0

    throw v10

    .line 282
    :cond_f
    :try_start_f
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v11, 0x51

    aget v10, v10, v11

    if-nez v10, :cond_3d

    const/4 v7, 0x0

    .line 285
    .local v7, lastWord:I
    :goto_1a
    move-object/from16 v0, p0

    iget v10, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->state:I

    if-nez v10, :cond_4a

    .line 288
    const/16 v10, 0x14

    invoke-static {v10}, Lorg/apache/harmony/security/provider/crypto/RandomBitsSupplier;->getRandomBits(I)[B

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->updateSeed([B)V

    .line 289
    const/16 v10, 0x14

    move-object/from16 v0, p0

    iput v10, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    .line 327
    :cond_31
    :goto_31
    const/4 v10, 0x2

    move-object/from16 v0, p0

    iput v10, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->state:I

    .line 329
    move-object/from16 v0, p1

    array-length v10, v0
    :try_end_39
    .catchall {:try_start_f .. :try_end_39} :catchall_c

    if-nez v10, :cond_c0

    .line 405
    :cond_3b
    :goto_3b
    monitor-exit p0

    return-void

    .line 282
    .end local v7           #lastWord:I
    :cond_3d
    :try_start_3d
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v11, 0x51

    aget v10, v10, v11

    add-int/lit8 v10, v10, 0x7

    shr-int/lit8 v7, v10, 0x2

    goto :goto_1a

    .line 291
    .restart local v7       #lastWord:I
    :cond_4a
    move-object/from16 v0, p0

    iget v10, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->state:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_31

    .line 293
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v11, 0x52

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->copies:[I

    const/4 v13, 0x0

    const/4 v14, 0x5

    invoke-static {v10, v11, v12, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 309
    add-int/lit8 v4, v7, 0x3

    .local v4, i:I
    :goto_62
    const/16 v10, 0x12

    if-ge v4, v10, :cond_70

    .line 310
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/4 v11, 0x0

    aput v11, v10, v4

    .line 309
    add-int/lit8 v4, v4, 0x1

    goto :goto_62

    .line 313
    :cond_70
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seedLength:J

    const/4 v12, 0x3

    shl-long/2addr v10, v12

    const-wide/16 v12, 0x40

    add-long v1, v10, v12

    .line 317
    .local v1, bits:J
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v11, 0x51

    aget v10, v10, v11

    const/16 v11, 0x30

    if-ge v10, v11, :cond_a6

    .line 318
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v11, 0xe

    const/16 v12, 0x20

    ushr-long v12, v1, v12

    long-to-int v12, v12

    aput v12, v10, v11

    .line 319
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v11, 0xf

    const-wide/16 v12, -0x1

    and-long/2addr v12, v1

    long-to-int v12, v12

    aput v12, v10, v11

    .line 325
    :goto_9f
    const/16 v10, 0x14

    move-object/from16 v0, p0

    iput v10, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    goto :goto_31

    .line 321
    :cond_a6
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->copies:[I

    const/16 v11, 0x13

    const/16 v12, 0x20

    ushr-long v12, v1, v12

    long-to-int v12, v12

    aput v12, v10, v11

    .line 322
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->copies:[I

    const/16 v11, 0x14

    const-wide/16 v12, -0x1

    and-long/2addr v12, v1

    long-to-int v12, v12

    aput v12, v10, v11

    goto :goto_9f

    .line 333
    .end local v1           #bits:J
    .end local v4           #i:I
    :cond_c0
    const/4 v9, 0x0

    .line 336
    .local v9, nextByteToReturn:I
    move-object/from16 v0, p0

    iget v10, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    rsub-int/lit8 v10, v10, 0x14

    move-object/from16 v0, p1

    array-length v11, v0

    sub-int/2addr v11, v9

    if-ge v10, v11, :cond_1e0

    move-object/from16 v0, p0

    iget v10, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    rsub-int/lit8 v8, v10, 0x14

    .line 339
    .local v8, n:I
    :goto_d3
    if-lez v8, :cond_ec

    .line 340
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBytes:[B

    move-object/from16 v0, p0

    iget v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    move-object/from16 v0, p1

    invoke-static {v10, v11, v0, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 341
    move-object/from16 v0, p0

    iget v10, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    add-int/2addr v10, v8

    move-object/from16 v0, p0

    iput v10, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    .line 342
    add-int/2addr v9, v8

    .line 345
    :cond_ec
    move-object/from16 v0, p1

    array-length v10, v0

    if-ge v9, v10, :cond_3b

    .line 349
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v11, 0x51

    aget v10, v10, v11

    and-int/lit8 v8, v10, 0x3

    .line 351
    :cond_fb
    if-nez v8, :cond_1e7

    .line 353
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    move-object/from16 v0, p0

    iget-wide v11, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->counter:J

    const/16 v13, 0x20

    ushr-long/2addr v11, v13

    long-to-int v11, v11

    aput v11, v10, v7

    .line 354
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    add-int/lit8 v11, v7, 0x1

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->counter:J

    const-wide/16 v14, -0x1

    and-long/2addr v12, v14

    long-to-int v12, v12

    aput v12, v10, v11

    .line 355
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    add-int/lit8 v11, v7, 0x2

    sget-object v12, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->END_FLAGS:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    aput v12, v10, v11

    .line 363
    :goto_128
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v11, 0x51

    aget v10, v10, v11

    const/16 v11, 0x30

    if-le v10, v11, :cond_152

    .line 364
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->copies:[I

    const/4 v11, 0x5

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v13, 0x10

    aget v12, v12, v13

    aput v12, v10, v11

    .line 365
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->copies:[I

    const/4 v11, 0x6

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v13, 0x11

    aget v12, v12, v13

    aput v12, v10, v11

    .line 368
    :cond_152
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    invoke-static {v10}, Lorg/apache/harmony/security/provider/crypto/SHA1Impl;->computeHash([I)V

    .line 370
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v11, 0x51

    aget v10, v10, v11

    const/16 v11, 0x30

    if-le v10, v11, :cond_19b

    .line 372
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->copies:[I

    const/16 v13, 0x15

    const/16 v14, 0x10

    invoke-static {v10, v11, v12, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 373
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->copies:[I

    const/4 v11, 0x5

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/4 v13, 0x0

    const/16 v14, 0x10

    invoke-static {v10, v11, v12, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 376
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    invoke-static {v10}, Lorg/apache/harmony/security/provider/crypto/SHA1Impl;->computeHash([I)V

    .line 377
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->copies:[I

    const/16 v11, 0x15

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/4 v13, 0x0

    const/16 v14, 0x10

    invoke-static {v10, v11, v12, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 379
    :cond_19b
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->counter:J

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    move-object/from16 v0, p0

    iput-wide v10, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->counter:J

    .line 381
    const/4 v5, 0x0

    .line 382
    .local v5, j:I
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_1a8
    const/4 v10, 0x5

    if-ge v4, v10, :cond_22f

    .line 383
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    add-int/lit8 v11, v4, 0x52

    aget v6, v10, v11

    .line 384
    .local v6, k:I
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBytes:[B

    ushr-int/lit8 v11, v6, 0x18

    int-to-byte v11, v11

    aput-byte v11, v10, v5

    .line 385
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBytes:[B

    add-int/lit8 v11, v5, 0x1

    ushr-int/lit8 v12, v6, 0x10

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    .line 386
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBytes:[B

    add-int/lit8 v11, v5, 0x2

    ushr-int/lit8 v12, v6, 0x8

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    .line 387
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBytes:[B

    add-int/lit8 v11, v5, 0x3

    int-to-byte v12, v6

    aput-byte v12, v10, v11

    .line 388
    add-int/lit8 v5, v5, 0x4

    .line 382
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a8

    .line 336
    .end local v4           #i:I
    .end local v5           #j:I
    .end local v6           #k:I
    .end local v8           #n:I
    :cond_1e0
    move-object/from16 v0, p1

    array-length v10, v0

    sub-int v8, v10, v9

    goto/16 :goto_d3

    .line 359
    .restart local v8       #n:I
    :cond_1e7
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    aget v11, v10, v7

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->counter:J

    sget-object v14, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->RIGHT1:[I

    aget v14, v14, v8

    ushr-long/2addr v12, v14

    sget-object v14, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->MASK:[I

    aget v14, v14, v8

    int-to-long v14, v14

    and-long/2addr v12, v14

    long-to-int v12, v12

    or-int/2addr v11, v12

    aput v11, v10, v7

    .line 360
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    add-int/lit8 v11, v7, 0x1

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->counter:J

    sget-object v14, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->RIGHT2:[I

    aget v14, v14, v8

    ushr-long/2addr v12, v14

    const-wide/16 v14, -0x1

    and-long/2addr v12, v14

    long-to-int v12, v12

    aput v12, v10, v11

    .line 361
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    add-int/lit8 v11, v7, 0x2

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->counter:J

    sget-object v14, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->LEFT:[I

    aget v14, v14, v8

    shl-long/2addr v12, v14

    sget-object v14, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->END_FLAGS:[I

    aget v14, v14, v8

    int-to-long v14, v14

    or-long/2addr v12, v14

    long-to-int v12, v12

    aput v12, v10, v11

    goto/16 :goto_128

    .line 391
    .restart local v4       #i:I
    .restart local v5       #j:I
    :cond_22f
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput v10, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    .line 392
    const/16 v10, 0x14

    move-object/from16 v0, p1

    array-length v11, v0

    sub-int/2addr v11, v9

    if-ge v10, v11, :cond_25b

    const/16 v5, 0x14

    .line 395
    :goto_23e
    if-lez v5, :cond_254

    .line 396
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBytes:[B

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-static {v10, v11, v0, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 397
    add-int/2addr v9, v5

    .line 398
    move-object/from16 v0, p0

    iget v10, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    add-int/2addr v10, v5

    move-object/from16 v0, p0

    iput v10, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    .line 401
    :cond_254
    move-object/from16 v0, p1

    array-length v10, v0

    if-lt v9, v10, :cond_fb

    goto/16 :goto_3b

    .line 392
    :cond_25b
    move-object/from16 v0, p1

    array-length v10, v0
    :try_end_25e
    .catchall {:try_start_3d .. :try_end_25e} :catchall_c

    sub-int v5, v10, v9

    goto :goto_23e
.end method

.method protected declared-synchronized engineSetSeed([B)V
    .registers 7
    .parameter "seed"

    .prologue
    .line 204
    monitor-enter p0

    if-nez p1, :cond_e

    .line 205
    :try_start_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "seed == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_b

    .line 204
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 208
    :cond_e
    :try_start_e
    iget v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1e

    .line 209
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->copies:[I

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v3, 0x52

    const/4 v4, 0x5

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    :cond_1e
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->state:I

    .line 214
    array-length v0, p1

    if-eqz v0, :cond_27

    .line 215
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->updateSeed([B)V
    :try_end_27
    .catchall {:try_start_e .. :try_end_27} :catchall_b

    .line 217
    :cond_27
    monitor-exit p0

    return-void
.end method

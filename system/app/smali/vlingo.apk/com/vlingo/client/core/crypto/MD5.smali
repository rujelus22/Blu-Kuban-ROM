.class public Lcom/vlingo/client/core/crypto/MD5;
.super Ljava/lang/Object;
.source "MD5.java"

# interfaces
.implements Lcom/vlingo/client/core/crypto/HashFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/core/crypto/MD5$MD5State;
    }
.end annotation


# static fields
.field private static final HEX_CHARS:[C

.field private static final padding:[B


# instance fields
.field private finals:Lcom/vlingo/client/core/crypto/MD5$MD5State;

.field private state:Lcom/vlingo/client/core/crypto/MD5$MD5State;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_14

    sput-object v0, Lcom/vlingo/client/core/crypto/MD5;->HEX_CHARS:[C

    .line 17
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_28

    sput-object v0, Lcom/vlingo/client/core/crypto/MD5;->padding:[B

    return-void

    .line 12
    nop

    :array_14
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
    .end array-data

    .line 17
    :array_28
    .array-data 0x1
        0x80t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 277
    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-direct {p0, v0}, Lcom/vlingo/client/core/crypto/MD5;-><init>([B)V

    .line 278
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "data"

    .prologue
    .line 281
    invoke-static {p1}, Lcom/vlingo/client/core/util/StringUtils;->convertStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vlingo/client/core/crypto/MD5;-><init>([B)V

    .line 282
    return-void
.end method

.method public constructor <init>([B)V
    .registers 3
    .parameter "data"

    .prologue
    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    new-instance v0, Lcom/vlingo/client/core/crypto/MD5$MD5State;

    invoke-direct {v0, p0}, Lcom/vlingo/client/core/crypto/MD5$MD5State;-><init>(Lcom/vlingo/client/core/crypto/MD5;)V

    iput-object v0, p0, Lcom/vlingo/client/core/crypto/MD5;->state:Lcom/vlingo/client/core/crypto/MD5$MD5State;

    .line 286
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/core/crypto/MD5;->finals:Lcom/vlingo/client/core/crypto/MD5$MD5State;

    .line 287
    invoke-virtual {p0, p1}, Lcom/vlingo/client/core/crypto/MD5;->update([B)V

    .line 288
    return-void
.end method

.method private final decode([BI[I)V
    .registers 7
    .parameter "buffer"
    .parameter "shift"
    .parameter "out"

    .prologue
    .line 30
    const/4 v0, 0x0

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x3

    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    aput v1, p3, v0

    .line 31
    const/4 v0, 0x1

    add-int/lit8 v1, p2, 0x4

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p2, 0x5

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x6

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x7

    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    aput v1, p3, v0

    .line 32
    const/4 v0, 0x2

    add-int/lit8 v1, p2, 0x8

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p2, 0x9

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, p2, 0xa

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, p2, 0xb

    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    aput v1, p3, v0

    .line 33
    const/4 v0, 0x3

    add-int/lit8 v1, p2, 0xc

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p2, 0xd

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, p2, 0xe

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, p2, 0xf

    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    aput v1, p3, v0

    .line 34
    const/4 v0, 0x4

    add-int/lit8 v1, p2, 0x10

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p2, 0x11

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x12

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x13

    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    aput v1, p3, v0

    .line 35
    const/4 v0, 0x5

    add-int/lit8 v1, p2, 0x14

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p2, 0x15

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x16

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x17

    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    aput v1, p3, v0

    .line 36
    const/4 v0, 0x6

    add-int/lit8 v1, p2, 0x18

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p2, 0x19

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x1a

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x1b

    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    aput v1, p3, v0

    .line 37
    const/4 v0, 0x7

    add-int/lit8 v1, p2, 0x1c

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p2, 0x1d

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x1e

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x1f

    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    aput v1, p3, v0

    .line 38
    const/16 v0, 0x8

    add-int/lit8 v1, p2, 0x20

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p2, 0x21

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x22

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x23

    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    aput v1, p3, v0

    .line 39
    const/16 v0, 0x9

    add-int/lit8 v1, p2, 0x24

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p2, 0x25

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x26

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x27

    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    aput v1, p3, v0

    .line 40
    const/16 v0, 0xa

    add-int/lit8 v1, p2, 0x28

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p2, 0x29

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x2a

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x2b

    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    aput v1, p3, v0

    .line 41
    const/16 v0, 0xb

    add-int/lit8 v1, p2, 0x2c

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p2, 0x2d

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x2e

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x2f

    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    aput v1, p3, v0

    .line 42
    const/16 v0, 0xc

    add-int/lit8 v1, p2, 0x30

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p2, 0x31

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x32

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x33

    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    aput v1, p3, v0

    .line 43
    const/16 v0, 0xd

    add-int/lit8 v1, p2, 0x34

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p2, 0x35

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x36

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x37

    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    aput v1, p3, v0

    .line 44
    const/16 v0, 0xe

    add-int/lit8 v1, p2, 0x38

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p2, 0x39

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x3a

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x3b

    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    aput v1, p3, v0

    .line 45
    const/16 v0, 0xf

    add-int/lit8 v1, p2, 0x3c

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p2, 0x3d

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x3e

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x3f

    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    aput v1, p3, v0

    .line 46
    return-void
.end method

.method private static final encode([II)[B
    .registers 7
    .parameter "input"
    .parameter "len"

    .prologue
    .line 266
    new-array v2, p1, [B

    .line 267
    .local v2, out:[B
    const/4 v1, 0x0

    .local v1, j:I
    move v0, v1

    .local v0, i:I
    :goto_4
    if-ge v1, p1, :cond_33

    .line 268
    aget v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 269
    add-int/lit8 v3, v1, 0x1

    aget v4, p0, v0

    ushr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 270
    add-int/lit8 v3, v1, 0x2

    aget v4, p0, v0

    ushr-int/lit8 v4, v4, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 271
    add-int/lit8 v3, v1, 0x3

    aget v4, p0, v0

    ushr-int/lit8 v4, v4, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 267
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x4

    goto :goto_4

    .line 273
    :cond_33
    return-object v2
.end method

.method public static final equals([B[B)Z
    .registers 8
    .parameter "hash1"
    .parameter "hash2"

    .prologue
    const/16 v5, 0x10

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 388
    if-nez p0, :cond_c

    .line 389
    if-nez p1, :cond_a

    :goto_8
    move v3, v2

    .line 408
    :cond_9
    :goto_9
    return v3

    :cond_a
    move v2, v3

    .line 389
    goto :goto_8

    .line 391
    :cond_c
    if-eqz p1, :cond_9

    .line 394
    const/16 v1, 0x10

    .line 395
    .local v1, targ:I
    array-length v4, p0

    if-ge v4, v5, :cond_24

    .line 396
    array-length v4, p1

    array-length v5, p0

    if-ne v4, v5, :cond_9

    .line 399
    array-length v1, p0

    .line 403
    :cond_18
    const/4 v0, 0x0

    .local v0, i:I
    :goto_19
    if-ge v0, v1, :cond_28

    .line 404
    aget-byte v4, p0, v0

    aget-byte v5, p1, v0

    if-ne v4, v5, :cond_9

    .line 403
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 400
    .end local v0           #i:I
    :cond_24
    array-length v4, p1

    if-ge v4, v5, :cond_18

    goto :goto_9

    .restart local v0       #i:I
    :cond_28
    move v3, v2

    .line 408
    goto :goto_9
.end method

.method public static final toBase64([B)Ljava/lang/String;
    .registers 11
    .parameter "data"

    .prologue
    const/16 v8, 0x40

    .line 345
    const-string v7, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/="

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 346
    .local v0, alphabet:[C
    array-length v7, p0

    add-int/lit8 v7, v7, 0x2

    div-int/lit8 v7, v7, 0x3

    mul-int/lit8 v7, v7, 0x4

    new-array v3, v7, [C

    .line 347
    .local v3, out:[C
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v2, 0x0

    .local v2, index:I
    :goto_13
    array-length v7, p0

    if-ge v1, v7, :cond_6d

    .line 348
    const/4 v4, 0x0

    .line 349
    .local v4, quad:Z
    const/4 v5, 0x0

    .line 351
    .local v5, trip:Z
    aget-byte v7, p0, v1

    and-int/lit16 v6, v7, 0xff

    .line 352
    .local v6, val:I
    shl-int/lit8 v6, v6, 0x8

    .line 353
    add-int/lit8 v7, v1, 0x1

    array-length v9, p0

    if-ge v7, v9, :cond_2b

    .line 354
    add-int/lit8 v7, v1, 0x1

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    .line 355
    const/4 v5, 0x1

    .line 357
    :cond_2b
    shl-int/lit8 v6, v6, 0x8

    .line 358
    add-int/lit8 v7, v1, 0x2

    array-length v9, p0

    if-ge v7, v9, :cond_3a

    .line 359
    add-int/lit8 v7, v1, 0x2

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    .line 360
    const/4 v4, 0x1

    .line 362
    :cond_3a
    add-int/lit8 v9, v2, 0x3

    if-eqz v4, :cond_69

    and-int/lit8 v7, v6, 0x3f

    :goto_40
    aget-char v7, v0, v7

    aput-char v7, v3, v9

    .line 363
    shr-int/lit8 v6, v6, 0x6

    .line 364
    add-int/lit8 v9, v2, 0x2

    if-eqz v5, :cond_6b

    and-int/lit8 v7, v6, 0x3f

    :goto_4c
    aget-char v7, v0, v7

    aput-char v7, v3, v9

    .line 365
    shr-int/lit8 v6, v6, 0x6

    .line 366
    add-int/lit8 v7, v2, 0x1

    and-int/lit8 v9, v6, 0x3f

    aget-char v9, v0, v9

    aput-char v9, v3, v7

    .line 367
    shr-int/lit8 v6, v6, 0x6

    .line 368
    add-int/lit8 v7, v2, 0x0

    and-int/lit8 v9, v6, 0x3f

    aget-char v9, v0, v9

    aput-char v9, v3, v7

    .line 347
    add-int/lit8 v1, v1, 0x3

    add-int/lit8 v2, v2, 0x4

    goto :goto_13

    :cond_69
    move v7, v8

    .line 362
    goto :goto_40

    :cond_6b
    move v7, v8

    .line 364
    goto :goto_4c

    .line 370
    .end local v4           #quad:Z
    .end local v5           #trip:Z
    .end local v6           #val:I
    :cond_6d
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v3}, Ljava/lang/String;-><init>([C)V

    return-object v7
.end method

.method public static final toHex([B)Ljava/lang/String;
    .registers 7
    .parameter "hash"

    .prologue
    .line 336
    array-length v4, p0

    mul-int/lit8 v4, v4, 0x2

    new-array v0, v4, [C

    .line 337
    .local v0, buf:[C
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v2, 0x0

    .local v2, x:I
    :goto_7
    array-length v4, p0

    if-ge v1, v4, :cond_27

    .line 338
    add-int/lit8 v3, v2, 0x1

    .end local v2           #x:I
    .local v3, x:I
    sget-object v4, Lcom/vlingo/client/core/crypto/MD5;->HEX_CHARS:[C

    aget-byte v5, p0, v1

    ushr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    aput-char v4, v0, v2

    .line 339
    add-int/lit8 v2, v3, 0x1

    .end local v3           #x:I
    .restart local v2       #x:I
    sget-object v4, Lcom/vlingo/client/core/crypto/MD5;->HEX_CHARS:[C

    aget-byte v5, p0, v1

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 337
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 341
    :cond_27
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([C)V

    return-object v4
.end method

.method private final transform(Lcom/vlingo/client/core/crypto/MD5$MD5State;[BI[I)V
    .registers 13
    .parameter "state"
    .parameter "buffer"
    .parameter "shift"
    .parameter "decode_buf"

    .prologue
    .line 49
    iget-object v5, p1, Lcom/vlingo/client/core/crypto/MD5$MD5State;->state:[I

    const/4 v6, 0x0

    aget v0, v5, v6

    .local v0, a:I
    iget-object v5, p1, Lcom/vlingo/client/core/crypto/MD5$MD5State;->state:[I

    const/4 v6, 0x1

    aget v1, v5, v6

    .local v1, b:I
    iget-object v5, p1, Lcom/vlingo/client/core/crypto/MD5$MD5State;->state:[I

    const/4 v6, 0x2

    aget v2, v5, v6

    .local v2, c:I
    iget-object v5, p1, Lcom/vlingo/client/core/crypto/MD5$MD5State;->state:[I

    const/4 v6, 0x3

    aget v3, v5, v6

    .local v3, d:I
    move-object v4, p4

    .line 51
    .local v4, x:[I
    invoke-direct {p0, p2, p3, p4}, Lcom/vlingo/client/core/crypto/MD5;->decode([BI[I)V

    .line 54
    and-int v5, v1, v2

    xor-int/lit8 v6, v1, -0x1

    and-int/2addr v6, v3

    or-int/2addr v5, v6

    const/4 v6, 0x0

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x28955b88

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 55
    shl-int/lit8 v5, v0, 0x7

    ushr-int/lit8 v6, v0, 0x19

    or-int/2addr v5, v6

    add-int v0, v5, v1

    .line 56
    and-int v5, v0, v1

    xor-int/lit8 v6, v0, -0x1

    and-int/2addr v6, v2

    or-int/2addr v5, v6

    const/4 v6, 0x1

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x173848aa

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 57
    shl-int/lit8 v5, v3, 0xc

    ushr-int/lit8 v6, v3, 0x14

    or-int/2addr v5, v6

    add-int v3, v5, v0

    .line 58
    and-int v5, v3, v0

    xor-int/lit8 v6, v3, -0x1

    and-int/2addr v6, v1

    or-int/2addr v5, v6

    const/4 v6, 0x2

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, 0x242070db

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    .line 59
    shl-int/lit8 v5, v2, 0x11

    ushr-int/lit8 v6, v2, 0xf

    or-int/2addr v5, v6

    add-int v2, v5, v3

    .line 60
    and-int v5, v2, v3

    xor-int/lit8 v6, v2, -0x1

    and-int/2addr v6, v0

    or-int/2addr v5, v6

    const/4 v6, 0x3

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x3e423112

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    .line 61
    shl-int/lit8 v5, v1, 0x16

    ushr-int/lit8 v6, v1, 0xa

    or-int/2addr v5, v6

    add-int v1, v5, v2

    .line 63
    and-int v5, v1, v2

    xor-int/lit8 v6, v1, -0x1

    and-int/2addr v6, v3

    or-int/2addr v5, v6

    const/4 v6, 0x4

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0xa83f051

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 64
    shl-int/lit8 v5, v0, 0x7

    ushr-int/lit8 v6, v0, 0x19

    or-int/2addr v5, v6

    add-int v0, v5, v1

    .line 65
    and-int v5, v0, v1

    xor-int/lit8 v6, v0, -0x1

    and-int/2addr v6, v2

    or-int/2addr v5, v6

    const/4 v6, 0x5

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, 0x4787c62a

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 66
    shl-int/lit8 v5, v3, 0xc

    ushr-int/lit8 v6, v3, 0x14

    or-int/2addr v5, v6

    add-int v3, v5, v0

    .line 67
    and-int v5, v3, v0

    xor-int/lit8 v6, v3, -0x1

    and-int/2addr v6, v1

    or-int/2addr v5, v6

    const/4 v6, 0x6

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x57cfb9ed

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    .line 68
    shl-int/lit8 v5, v2, 0x11

    ushr-int/lit8 v6, v2, 0xf

    or-int/2addr v5, v6

    add-int v2, v5, v3

    .line 69
    and-int v5, v2, v3

    xor-int/lit8 v6, v2, -0x1

    and-int/2addr v6, v0

    or-int/2addr v5, v6

    const/4 v6, 0x7

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x2b96aff

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    .line 70
    shl-int/lit8 v5, v1, 0x16

    ushr-int/lit8 v6, v1, 0xa

    or-int/2addr v5, v6

    add-int v1, v5, v2

    .line 72
    and-int v5, v1, v2

    xor-int/lit8 v6, v1, -0x1

    and-int/2addr v6, v3

    or-int/2addr v5, v6

    const/16 v6, 0x8

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, 0x698098d8

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 73
    shl-int/lit8 v5, v0, 0x7

    ushr-int/lit8 v6, v0, 0x19

    or-int/2addr v5, v6

    add-int v0, v5, v1

    .line 74
    and-int v5, v0, v1

    xor-int/lit8 v6, v0, -0x1

    and-int/2addr v6, v2

    or-int/2addr v5, v6

    const/16 v6, 0x9

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x74bb0851

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 75
    shl-int/lit8 v5, v3, 0xc

    ushr-int/lit8 v6, v3, 0x14

    or-int/2addr v5, v6

    add-int v3, v5, v0

    .line 76
    and-int v5, v3, v0

    xor-int/lit8 v6, v3, -0x1

    and-int/2addr v6, v1

    or-int/2addr v5, v6

    const/16 v6, 0xa

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0xa44f

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    .line 77
    shl-int/lit8 v5, v2, 0x11

    ushr-int/lit8 v6, v2, 0xf

    or-int/2addr v5, v6

    add-int v2, v5, v3

    .line 78
    and-int v5, v2, v3

    xor-int/lit8 v6, v2, -0x1

    and-int/2addr v6, v0

    or-int/2addr v5, v6

    const/16 v6, 0xb

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x76a32842

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    .line 79
    shl-int/lit8 v5, v1, 0x16

    ushr-int/lit8 v6, v1, 0xa

    or-int/2addr v5, v6

    add-int v1, v5, v2

    .line 81
    and-int v5, v1, v2

    xor-int/lit8 v6, v1, -0x1

    and-int/2addr v6, v3

    or-int/2addr v5, v6

    const/16 v6, 0xc

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, 0x6b901122

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 82
    shl-int/lit8 v5, v0, 0x7

    ushr-int/lit8 v6, v0, 0x19

    or-int/2addr v5, v6

    add-int v0, v5, v1

    .line 83
    and-int v5, v0, v1

    xor-int/lit8 v6, v0, -0x1

    and-int/2addr v6, v2

    or-int/2addr v5, v6

    const/16 v6, 0xd

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x2678e6d

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 84
    shl-int/lit8 v5, v3, 0xc

    ushr-int/lit8 v6, v3, 0x14

    or-int/2addr v5, v6

    add-int v3, v5, v0

    .line 85
    and-int v5, v3, v0

    xor-int/lit8 v6, v3, -0x1

    and-int/2addr v6, v1

    or-int/2addr v5, v6

    const/16 v6, 0xe

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x5986bc72

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    .line 86
    shl-int/lit8 v5, v2, 0x11

    ushr-int/lit8 v6, v2, 0xf

    or-int/2addr v5, v6

    add-int v2, v5, v3

    .line 87
    and-int v5, v2, v3

    xor-int/lit8 v6, v2, -0x1

    and-int/2addr v6, v0

    or-int/2addr v5, v6

    const/16 v6, 0xf

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, 0x49b40821

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    .line 88
    shl-int/lit8 v5, v1, 0x16

    ushr-int/lit8 v6, v1, 0xa

    or-int/2addr v5, v6

    add-int v1, v5, v2

    .line 91
    and-int v5, v1, v3

    xor-int/lit8 v6, v3, -0x1

    and-int/2addr v6, v2

    or-int/2addr v5, v6

    const/4 v6, 0x1

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x9e1da9e

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 92
    shl-int/lit8 v5, v0, 0x5

    ushr-int/lit8 v6, v0, 0x1b

    or-int/2addr v5, v6

    add-int v0, v5, v1

    .line 93
    and-int v5, v0, v2

    xor-int/lit8 v6, v2, -0x1

    and-int/2addr v6, v1

    or-int/2addr v5, v6

    const/4 v6, 0x6

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x3fbf4cc0

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 94
    shl-int/lit8 v5, v3, 0x9

    ushr-int/lit8 v6, v3, 0x17

    or-int/2addr v5, v6

    add-int v3, v5, v0

    .line 95
    and-int v5, v3, v1

    xor-int/lit8 v6, v1, -0x1

    and-int/2addr v6, v0

    or-int/2addr v5, v6

    const/16 v6, 0xb

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, 0x265e5a51

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    .line 96
    shl-int/lit8 v5, v2, 0xe

    ushr-int/lit8 v6, v2, 0x12

    or-int/2addr v5, v6

    add-int v2, v5, v3

    .line 97
    and-int v5, v2, v0

    xor-int/lit8 v6, v0, -0x1

    and-int/2addr v6, v3

    or-int/2addr v5, v6

    const/4 v6, 0x0

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x16493856

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    .line 98
    shl-int/lit8 v5, v1, 0x14

    ushr-int/lit8 v6, v1, 0xc

    or-int/2addr v5, v6

    add-int v1, v5, v2

    .line 100
    and-int v5, v1, v3

    xor-int/lit8 v6, v3, -0x1

    and-int/2addr v6, v2

    or-int/2addr v5, v6

    const/4 v6, 0x5

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x29d0efa3

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 101
    shl-int/lit8 v5, v0, 0x5

    ushr-int/lit8 v6, v0, 0x1b

    or-int/2addr v5, v6

    add-int v0, v5, v1

    .line 102
    and-int v5, v0, v2

    xor-int/lit8 v6, v2, -0x1

    and-int/2addr v6, v1

    or-int/2addr v5, v6

    const/16 v6, 0xa

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, 0x2441453

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 103
    shl-int/lit8 v5, v3, 0x9

    ushr-int/lit8 v6, v3, 0x17

    or-int/2addr v5, v6

    add-int v3, v5, v0

    .line 104
    and-int v5, v3, v1

    xor-int/lit8 v6, v1, -0x1

    and-int/2addr v6, v0

    or-int/2addr v5, v6

    const/16 v6, 0xf

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x275e197f

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    .line 105
    shl-int/lit8 v5, v2, 0xe

    ushr-int/lit8 v6, v2, 0x12

    or-int/2addr v5, v6

    add-int v2, v5, v3

    .line 106
    and-int v5, v2, v0

    xor-int/lit8 v6, v0, -0x1

    and-int/2addr v6, v3

    or-int/2addr v5, v6

    const/4 v6, 0x4

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x182c0438

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    .line 107
    shl-int/lit8 v5, v1, 0x14

    ushr-int/lit8 v6, v1, 0xc

    or-int/2addr v5, v6

    add-int v1, v5, v2

    .line 109
    and-int v5, v1, v3

    xor-int/lit8 v6, v3, -0x1

    and-int/2addr v6, v2

    or-int/2addr v5, v6

    const/16 v6, 0x9

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, 0x21e1cde6

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 110
    shl-int/lit8 v5, v0, 0x5

    ushr-int/lit8 v6, v0, 0x1b

    or-int/2addr v5, v6

    add-int v0, v5, v1

    .line 111
    and-int v5, v0, v2

    xor-int/lit8 v6, v2, -0x1

    and-int/2addr v6, v1

    or-int/2addr v5, v6

    const/16 v6, 0xe

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x3cc8f82a

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 112
    shl-int/lit8 v5, v3, 0x9

    ushr-int/lit8 v6, v3, 0x17

    or-int/2addr v5, v6

    add-int v3, v5, v0

    .line 113
    and-int v5, v3, v1

    xor-int/lit8 v6, v1, -0x1

    and-int/2addr v6, v0

    or-int/2addr v5, v6

    const/4 v6, 0x3

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0xb2af279

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    .line 114
    shl-int/lit8 v5, v2, 0xe

    ushr-int/lit8 v6, v2, 0x12

    or-int/2addr v5, v6

    add-int v2, v5, v3

    .line 115
    and-int v5, v2, v0

    xor-int/lit8 v6, v0, -0x1

    and-int/2addr v6, v3

    or-int/2addr v5, v6

    const/16 v6, 0x8

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, 0x455a14ed

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    .line 116
    shl-int/lit8 v5, v1, 0x14

    ushr-int/lit8 v6, v1, 0xc

    or-int/2addr v5, v6

    add-int v1, v5, v2

    .line 118
    and-int v5, v1, v3

    xor-int/lit8 v6, v3, -0x1

    and-int/2addr v6, v2

    or-int/2addr v5, v6

    const/16 v6, 0xd

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x561c16fb

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 119
    shl-int/lit8 v5, v0, 0x5

    ushr-int/lit8 v6, v0, 0x1b

    or-int/2addr v5, v6

    add-int v0, v5, v1

    .line 120
    and-int v5, v0, v2

    xor-int/lit8 v6, v2, -0x1

    and-int/2addr v6, v1

    or-int/2addr v5, v6

    const/4 v6, 0x2

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x3105c08

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 121
    shl-int/lit8 v5, v3, 0x9

    ushr-int/lit8 v6, v3, 0x17

    or-int/2addr v5, v6

    add-int v3, v5, v0

    .line 122
    and-int v5, v3, v1

    xor-int/lit8 v6, v1, -0x1

    and-int/2addr v6, v0

    or-int/2addr v5, v6

    const/4 v6, 0x7

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, 0x676f02d9

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    .line 123
    shl-int/lit8 v5, v2, 0xe

    ushr-int/lit8 v6, v2, 0x12

    or-int/2addr v5, v6

    add-int v2, v5, v3

    .line 124
    and-int v5, v2, v0

    xor-int/lit8 v6, v0, -0x1

    and-int/2addr v6, v3

    or-int/2addr v5, v6

    const/16 v6, 0xc

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x72d5b376

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    .line 125
    shl-int/lit8 v5, v1, 0x14

    ushr-int/lit8 v6, v1, 0xc

    or-int/2addr v5, v6

    add-int v1, v5, v2

    .line 128
    xor-int v5, v1, v2

    xor-int/2addr v5, v3

    const/4 v6, 0x5

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x5c6be

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 129
    shl-int/lit8 v5, v0, 0x4

    ushr-int/lit8 v6, v0, 0x1c

    or-int/2addr v5, v6

    add-int v0, v5, v1

    .line 130
    xor-int v5, v0, v1

    xor-int/2addr v5, v2

    const/16 v6, 0x8

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x788e097f

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 131
    shl-int/lit8 v5, v3, 0xb

    ushr-int/lit8 v6, v3, 0x15

    or-int/2addr v5, v6

    add-int v3, v5, v0

    .line 132
    xor-int v5, v3, v0

    xor-int/2addr v5, v1

    const/16 v6, 0xb

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, 0x6d9d6122

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    .line 133
    shl-int/lit8 v5, v2, 0x10

    ushr-int/lit8 v6, v2, 0x10

    or-int/2addr v5, v6

    add-int v2, v5, v3

    .line 134
    xor-int v5, v2, v3

    xor-int/2addr v5, v0

    const/16 v6, 0xe

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x21ac7f4

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    .line 135
    shl-int/lit8 v5, v1, 0x17

    ushr-int/lit8 v6, v1, 0x9

    or-int/2addr v5, v6

    add-int v1, v5, v2

    .line 137
    xor-int v5, v1, v2

    xor-int/2addr v5, v3

    const/4 v6, 0x1

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x5b4115bc

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 138
    shl-int/lit8 v5, v0, 0x4

    ushr-int/lit8 v6, v0, 0x1c

    or-int/2addr v5, v6

    add-int v0, v5, v1

    .line 139
    xor-int v5, v0, v1

    xor-int/2addr v5, v2

    const/4 v6, 0x4

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, 0x4bdecfa9

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 140
    shl-int/lit8 v5, v3, 0xb

    ushr-int/lit8 v6, v3, 0x15

    or-int/2addr v5, v6

    add-int v3, v5, v0

    .line 141
    xor-int v5, v3, v0

    xor-int/2addr v5, v1

    const/4 v6, 0x7

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x944b4a0

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    .line 142
    shl-int/lit8 v5, v2, 0x10

    ushr-int/lit8 v6, v2, 0x10

    or-int/2addr v5, v6

    add-int v2, v5, v3

    .line 143
    xor-int v5, v2, v3

    xor-int/2addr v5, v0

    const/16 v6, 0xa

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x41404390

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    .line 144
    shl-int/lit8 v5, v1, 0x17

    ushr-int/lit8 v6, v1, 0x9

    or-int/2addr v5, v6

    add-int v1, v5, v2

    .line 146
    xor-int v5, v1, v2

    xor-int/2addr v5, v3

    const/16 v6, 0xd

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, 0x289b7ec6

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 147
    shl-int/lit8 v5, v0, 0x4

    ushr-int/lit8 v6, v0, 0x1c

    or-int/2addr v5, v6

    add-int v0, v5, v1

    .line 148
    xor-int v5, v0, v1

    xor-int/2addr v5, v2

    const/4 v6, 0x0

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x155ed806

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 149
    shl-int/lit8 v5, v3, 0xb

    ushr-int/lit8 v6, v3, 0x15

    or-int/2addr v5, v6

    add-int v3, v5, v0

    .line 150
    xor-int v5, v3, v0

    xor-int/2addr v5, v1

    const/4 v6, 0x3

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x2b10cf7b

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    .line 151
    shl-int/lit8 v5, v2, 0x10

    ushr-int/lit8 v6, v2, 0x10

    or-int/2addr v5, v6

    add-int v2, v5, v3

    .line 152
    xor-int v5, v2, v3

    xor-int/2addr v5, v0

    const/4 v6, 0x6

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, 0x4881d05

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    .line 153
    shl-int/lit8 v5, v1, 0x17

    ushr-int/lit8 v6, v1, 0x9

    or-int/2addr v5, v6

    add-int v1, v5, v2

    .line 155
    xor-int v5, v1, v2

    xor-int/2addr v5, v3

    const/16 v6, 0x9

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x262b2fc7

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 156
    shl-int/lit8 v5, v0, 0x4

    ushr-int/lit8 v6, v0, 0x1c

    or-int/2addr v5, v6

    add-int v0, v5, v1

    .line 157
    xor-int v5, v0, v1

    xor-int/2addr v5, v2

    const/16 v6, 0xc

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x1924661b

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 158
    shl-int/lit8 v5, v3, 0xb

    ushr-int/lit8 v6, v3, 0x15

    or-int/2addr v5, v6

    add-int v3, v5, v0

    .line 159
    xor-int v5, v3, v0

    xor-int/2addr v5, v1

    const/16 v6, 0xf

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, 0x1fa27cf8

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    .line 160
    shl-int/lit8 v5, v2, 0x10

    ushr-int/lit8 v6, v2, 0x10

    or-int/2addr v5, v6

    add-int v2, v5, v3

    .line 161
    xor-int v5, v2, v3

    xor-int/2addr v5, v0

    const/4 v6, 0x2

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x3b53a99b

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    .line 162
    shl-int/lit8 v5, v1, 0x17

    ushr-int/lit8 v6, v1, 0x9

    or-int/2addr v5, v6

    add-int v1, v5, v2

    .line 165
    xor-int/lit8 v5, v3, -0x1

    or-int/2addr v5, v1

    xor-int/2addr v5, v2

    const/4 v6, 0x0

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0xbd6ddbc

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 166
    shl-int/lit8 v5, v0, 0x6

    ushr-int/lit8 v6, v0, 0x1a

    or-int/2addr v5, v6

    add-int v0, v5, v1

    .line 167
    xor-int/lit8 v5, v2, -0x1

    or-int/2addr v5, v0

    xor-int/2addr v5, v1

    const/4 v6, 0x7

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, 0x432aff97

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 168
    shl-int/lit8 v5, v3, 0xa

    ushr-int/lit8 v6, v3, 0x16

    or-int/2addr v5, v6

    add-int v3, v5, v0

    .line 169
    xor-int/lit8 v5, v1, -0x1

    or-int/2addr v5, v3

    xor-int/2addr v5, v0

    const/16 v6, 0xe

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x546bdc59

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    .line 170
    shl-int/lit8 v5, v2, 0xf

    ushr-int/lit8 v6, v2, 0x11

    or-int/2addr v5, v6

    add-int v2, v5, v3

    .line 171
    xor-int/lit8 v5, v0, -0x1

    or-int/2addr v5, v2

    xor-int/2addr v5, v3

    const/4 v6, 0x5

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x36c5fc7

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    .line 172
    shl-int/lit8 v5, v1, 0x15

    ushr-int/lit8 v6, v1, 0xb

    or-int/2addr v5, v6

    add-int v1, v5, v2

    .line 174
    xor-int/lit8 v5, v3, -0x1

    or-int/2addr v5, v1

    xor-int/2addr v5, v2

    const/16 v6, 0xc

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, 0x655b59c3

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 175
    shl-int/lit8 v5, v0, 0x6

    ushr-int/lit8 v6, v0, 0x1a

    or-int/2addr v5, v6

    add-int v0, v5, v1

    .line 176
    xor-int/lit8 v5, v2, -0x1

    or-int/2addr v5, v0

    xor-int/2addr v5, v1

    const/4 v6, 0x3

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x70f3336e

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 177
    shl-int/lit8 v5, v3, 0xa

    ushr-int/lit8 v6, v3, 0x16

    or-int/2addr v5, v6

    add-int v3, v5, v0

    .line 178
    xor-int/lit8 v5, v1, -0x1

    or-int/2addr v5, v3

    xor-int/2addr v5, v0

    const/16 v6, 0xa

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x100b83

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    .line 179
    shl-int/lit8 v5, v2, 0xf

    ushr-int/lit8 v6, v2, 0x11

    or-int/2addr v5, v6

    add-int v2, v5, v3

    .line 180
    xor-int/lit8 v5, v0, -0x1

    or-int/2addr v5, v2

    xor-int/2addr v5, v3

    const/4 v6, 0x1

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x7a7ba22f

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    .line 181
    shl-int/lit8 v5, v1, 0x15

    ushr-int/lit8 v6, v1, 0xb

    or-int/2addr v5, v6

    add-int v1, v5, v2

    .line 183
    xor-int/lit8 v5, v3, -0x1

    or-int/2addr v5, v1

    xor-int/2addr v5, v2

    const/16 v6, 0x8

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, 0x6fa87e4f

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 184
    shl-int/lit8 v5, v0, 0x6

    ushr-int/lit8 v6, v0, 0x1a

    or-int/2addr v5, v6

    add-int v0, v5, v1

    .line 185
    xor-int/lit8 v5, v2, -0x1

    or-int/2addr v5, v0

    xor-int/2addr v5, v1

    const/16 v6, 0xf

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x1d31920

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 186
    shl-int/lit8 v5, v3, 0xa

    ushr-int/lit8 v6, v3, 0x16

    or-int/2addr v5, v6

    add-int v3, v5, v0

    .line 187
    xor-int/lit8 v5, v1, -0x1

    or-int/2addr v5, v3

    xor-int/2addr v5, v0

    const/4 v6, 0x6

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x5cfebcec

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    .line 188
    shl-int/lit8 v5, v2, 0xf

    ushr-int/lit8 v6, v2, 0x11

    or-int/2addr v5, v6

    add-int v2, v5, v3

    .line 189
    xor-int/lit8 v5, v0, -0x1

    or-int/2addr v5, v2

    xor-int/2addr v5, v3

    const/16 v6, 0xd

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, 0x4e0811a1

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    .line 190
    shl-int/lit8 v5, v1, 0x15

    ushr-int/lit8 v6, v1, 0xb

    or-int/2addr v5, v6

    add-int v1, v5, v2

    .line 192
    xor-int/lit8 v5, v3, -0x1

    or-int/2addr v5, v1

    xor-int/2addr v5, v2

    const/4 v6, 0x4

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x8ac817e

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 193
    shl-int/lit8 v5, v0, 0x6

    ushr-int/lit8 v6, v0, 0x1a

    or-int/2addr v5, v6

    add-int v0, v5, v1

    .line 194
    xor-int/lit8 v5, v2, -0x1

    or-int/2addr v5, v0

    xor-int/2addr v5, v1

    const/16 v6, 0xb

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x42c50dcb

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 195
    shl-int/lit8 v5, v3, 0xa

    ushr-int/lit8 v6, v3, 0x16

    or-int/2addr v5, v6

    add-int v3, v5, v0

    .line 196
    xor-int/lit8 v5, v1, -0x1

    or-int/2addr v5, v3

    xor-int/2addr v5, v0

    const/4 v6, 0x2

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, 0x2ad7d2bb

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    .line 197
    shl-int/lit8 v5, v2, 0xf

    ushr-int/lit8 v6, v2, 0x11

    or-int/2addr v5, v6

    add-int v2, v5, v3

    .line 198
    xor-int/lit8 v5, v0, -0x1

    or-int/2addr v5, v2

    xor-int/2addr v5, v3

    const/16 v6, 0x9

    aget v6, v4, v6

    add-int/2addr v5, v6

    const v6, -0x14792c6f

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    .line 199
    shl-int/lit8 v5, v1, 0x15

    ushr-int/lit8 v6, v1, 0xb

    or-int/2addr v5, v6

    add-int v1, v5, v2

    .line 201
    iget-object v5, p1, Lcom/vlingo/client/core/crypto/MD5$MD5State;->state:[I

    const/4 v6, 0x0

    aget v7, v5, v6

    add-int/2addr v7, v0

    aput v7, v5, v6

    .line 202
    iget-object v5, p1, Lcom/vlingo/client/core/crypto/MD5$MD5State;->state:[I

    const/4 v6, 0x1

    aget v7, v5, v6

    add-int/2addr v7, v1

    aput v7, v5, v6

    .line 203
    iget-object v5, p1, Lcom/vlingo/client/core/crypto/MD5$MD5State;->state:[I

    const/4 v6, 0x2

    aget v7, v5, v6

    add-int/2addr v7, v2

    aput v7, v5, v6

    .line 204
    iget-object v5, p1, Lcom/vlingo/client/core/crypto/MD5$MD5State;->state:[I

    const/4 v6, 0x3

    aget v7, v5, v6

    add-int/2addr v7, v3

    aput v7, v5, v6

    .line 205
    return-void
.end method

.method private final update(Lcom/vlingo/client/core/crypto/MD5$MD5State;[BII)V
    .registers 14
    .parameter "stat"
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 223
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/vlingo/client/core/crypto/MD5;->finals:Lcom/vlingo/client/core/crypto/MD5$MD5State;

    .line 225
    sub-int v5, p4, p3

    array-length v6, p2

    if-le v5, v6, :cond_b

    .line 226
    array-length v5, p2

    sub-int p4, v5, p3

    .line 231
    :cond_b
    iget-wide v5, p1, Lcom/vlingo/client/core/crypto/MD5$MD5State;->count:J

    const-wide/16 v7, 0x3f

    and-long/2addr v5, v7

    long-to-int v2, v5

    .line 232
    .local v2, index:I
    iget-wide v5, p1, Lcom/vlingo/client/core/crypto/MD5$MD5State;->count:J

    int-to-long v7, p4

    add-long/2addr v5, v7

    iput-wide v5, p1, Lcom/vlingo/client/core/crypto/MD5$MD5State;->count:J

    .line 234
    rsub-int/lit8 v3, v2, 0x40

    .line 236
    .local v3, partlen:I
    if-lt p4, v3, :cond_5c

    .line 238
    const/16 v5, 0x10

    new-array v0, v5, [I

    .line 239
    .local v0, decode_buf:[I
    const/16 v5, 0x40

    if-ne v3, v5, :cond_31

    .line 240
    const/4 v3, 0x0

    .line 247
    :goto_24
    move v1, v3

    .local v1, i:I
    :goto_25
    add-int/lit8 v5, v1, 0x3f

    if-ge v5, p4, :cond_48

    .line 248
    add-int v5, v1, p3

    invoke-direct {p0, p1, p2, v5, v0}, Lcom/vlingo/client/core/crypto/MD5;->transform(Lcom/vlingo/client/core/crypto/MD5$MD5State;[BI[I)V

    .line 247
    add-int/lit8 v1, v1, 0x40

    goto :goto_25

    .line 242
    .end local v1           #i:I
    :cond_31
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_32
    if-ge v1, v3, :cond_41

    .line 243
    iget-object v5, p1, Lcom/vlingo/client/core/crypto/MD5$MD5State;->buffer:[B

    add-int v6, v1, v2

    add-int v7, v1, p3

    aget-byte v7, p2, v7

    aput-byte v7, v5, v6

    .line 242
    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    .line 245
    :cond_41
    iget-object v5, p1, Lcom/vlingo/client/core/crypto/MD5$MD5State;->buffer:[B

    const/4 v6, 0x0

    invoke-direct {p0, p1, v5, v6, v0}, Lcom/vlingo/client/core/crypto/MD5;->transform(Lcom/vlingo/client/core/crypto/MD5$MD5State;[BI[I)V

    goto :goto_24

    .line 250
    :cond_48
    const/4 v2, 0x0

    .line 255
    .end local v0           #decode_buf:[I
    :goto_49
    if-ge v1, p4, :cond_5e

    .line 256
    move v4, v1

    .line 257
    .local v4, start:I
    :goto_4c
    if-ge v1, p4, :cond_5e

    .line 258
    iget-object v5, p1, Lcom/vlingo/client/core/crypto/MD5$MD5State;->buffer:[B

    add-int v6, v2, v1

    sub-int/2addr v6, v4

    add-int v7, v1, p3

    aget-byte v7, p2, v7

    aput-byte v7, v5, v6

    .line 257
    add-int/lit8 v1, v1, 0x1

    goto :goto_4c

    .line 252
    .end local v1           #i:I
    .end local v4           #start:I
    :cond_5c
    const/4 v1, 0x0

    .restart local v1       #i:I
    goto :goto_49

    .line 261
    :cond_5e
    return-void
.end method


# virtual methods
.method public final declared-synchronized doFinal()[B
    .registers 10

    .prologue
    .line 315
    monitor-enter p0

    :try_start_1
    iget-object v5, p0, Lcom/vlingo/client/core/crypto/MD5;->finals:Lcom/vlingo/client/core/crypto/MD5$MD5State;

    if-nez v5, :cond_40

    .line 316
    new-instance v2, Lcom/vlingo/client/core/crypto/MD5$MD5State;

    iget-object v5, p0, Lcom/vlingo/client/core/crypto/MD5;->state:Lcom/vlingo/client/core/crypto/MD5$MD5State;

    invoke-direct {v2, p0, v5}, Lcom/vlingo/client/core/crypto/MD5$MD5State;-><init>(Lcom/vlingo/client/core/crypto/MD5;Lcom/vlingo/client/core/crypto/MD5$MD5State;)V

    .line 317
    .local v2, fin:Lcom/vlingo/client/core/crypto/MD5$MD5State;
    const/4 v5, 0x2

    new-array v1, v5, [I

    const/4 v5, 0x0

    iget-wide v6, v2, Lcom/vlingo/client/core/crypto/MD5$MD5State;->count:J

    const/4 v8, 0x3

    shl-long/2addr v6, v8

    long-to-int v6, v6

    aput v6, v1, v5

    const/4 v5, 0x1

    iget-wide v6, v2, Lcom/vlingo/client/core/crypto/MD5$MD5State;->count:J

    const/16 v8, 0x1d

    shr-long/2addr v6, v8

    long-to-int v6, v6

    aput v6, v1, v5

    .line 318
    .local v1, count_ints:[I
    const/16 v5, 0x8

    invoke-static {v1, v5}, Lcom/vlingo/client/core/crypto/MD5;->encode([II)[B

    move-result-object v0

    .line 319
    .local v0, bits:[B
    iget-wide v5, v2, Lcom/vlingo/client/core/crypto/MD5$MD5State;->count:J

    const-wide/16 v7, 0x3f

    and-long/2addr v5, v7

    long-to-int v3, v5

    .line 320
    .local v3, index:I
    const/16 v5, 0x38

    if-ge v3, v5, :cond_4c

    rsub-int/lit8 v4, v3, 0x38

    .line 321
    .local v4, padlen:I
    :goto_32
    sget-object v5, Lcom/vlingo/client/core/crypto/MD5;->padding:[B

    const/4 v6, 0x0

    invoke-direct {p0, v2, v5, v6, v4}, Lcom/vlingo/client/core/crypto/MD5;->update(Lcom/vlingo/client/core/crypto/MD5$MD5State;[BII)V

    .line 322
    const/4 v5, 0x0

    const/16 v6, 0x8

    invoke-direct {p0, v2, v0, v5, v6}, Lcom/vlingo/client/core/crypto/MD5;->update(Lcom/vlingo/client/core/crypto/MD5$MD5State;[BII)V

    .line 324
    iput-object v2, p0, Lcom/vlingo/client/core/crypto/MD5;->finals:Lcom/vlingo/client/core/crypto/MD5$MD5State;

    .line 327
    .end local v0           #bits:[B
    .end local v1           #count_ints:[I
    .end local v2           #fin:Lcom/vlingo/client/core/crypto/MD5$MD5State;
    .end local v3           #index:I
    .end local v4           #padlen:I
    :cond_40
    iget-object v5, p0, Lcom/vlingo/client/core/crypto/MD5;->finals:Lcom/vlingo/client/core/crypto/MD5$MD5State;

    iget-object v5, v5, Lcom/vlingo/client/core/crypto/MD5$MD5State;->state:[I

    const/16 v6, 0x10

    invoke-static {v5, v6}, Lcom/vlingo/client/core/crypto/MD5;->encode([II)[B
    :try_end_49
    .catchall {:try_start_1 .. :try_end_49} :catchall_4f

    move-result-object v5

    monitor-exit p0

    return-object v5

    .line 320
    .restart local v0       #bits:[B
    .restart local v1       #count_ints:[I
    .restart local v2       #fin:Lcom/vlingo/client/core/crypto/MD5$MD5State;
    .restart local v3       #index:I
    :cond_4c
    rsub-int/lit8 v4, v3, 0x78

    goto :goto_32

    .line 315
    .end local v0           #bits:[B
    .end local v1           #count_ints:[I
    .end local v2           #fin:Lcom/vlingo/client/core/crypto/MD5$MD5State;
    .end local v3           #index:I
    :catchall_4f
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public final fingerprint([B)[B
    .registers 3
    .parameter "data"

    .prologue
    .line 377
    invoke-virtual {p0, p1}, Lcom/vlingo/client/core/crypto/MD5;->update([B)V

    .line 378
    invoke-virtual {p0}, Lcom/vlingo/client/core/crypto/MD5;->doFinal()[B

    move-result-object v0

    return-object v0
.end method

.method public hash(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "str"

    .prologue
    .line 412
    new-instance v1, Lcom/vlingo/client/core/crypto/MD5;

    invoke-static {p1}, Lcom/vlingo/client/core/util/StringUtils;->convertStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/vlingo/client/core/crypto/MD5;-><init>([B)V

    .line 413
    .local v1, md5:Lcom/vlingo/client/core/crypto/MD5;
    invoke-virtual {v1}, Lcom/vlingo/client/core/crypto/MD5;->doFinal()[B

    move-result-object v0

    .line 414
    .local v0, hash:[B
    invoke-static {v0}, Lcom/vlingo/client/core/crypto/MD5;->toHex([B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public final update([B)V
    .registers 5
    .parameter "buffer"

    .prologue
    .line 297
    if-nez p1, :cond_3

    .line 302
    :goto_2
    return-void

    .line 300
    :cond_3
    new-instance v0, Lcom/vlingo/client/core/crypto/MD5$MD5State;

    invoke-direct {v0, p0}, Lcom/vlingo/client/core/crypto/MD5$MD5State;-><init>(Lcom/vlingo/client/core/crypto/MD5;)V

    iput-object v0, p0, Lcom/vlingo/client/core/crypto/MD5;->state:Lcom/vlingo/client/core/crypto/MD5$MD5State;

    .line 301
    iget-object v0, p0, Lcom/vlingo/client/core/crypto/MD5;->state:Lcom/vlingo/client/core/crypto/MD5$MD5State;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/vlingo/client/core/crypto/MD5;->update(Lcom/vlingo/client/core/crypto/MD5$MD5State;[BII)V

    goto :goto_2
.end method

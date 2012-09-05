.class public Lcom/vlingo/client/core/util/CRC32;
.super Ljava/lang/Object;
.source "CRC32.java"


# static fields
.field private static crc_table:[I


# instance fields
.field private crc:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    invoke-static {}, Lcom/vlingo/client/core/util/CRC32;->make_crc_table()[I

    move-result-object v0

    sput-object v0, Lcom/vlingo/client/core/util/CRC32;->crc_table:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/vlingo/client/core/util/CRC32;->crc:I

    return-void
.end method

.method private static make_crc_table()[I
    .registers 7

    .prologue
    const/16 v6, 0x100

    .line 26
    new-array v1, v6, [I

    .line 27
    .local v1, crc_table:[I
    const/4 v3, 0x0

    .local v3, n:I
    :goto_5
    if-ge v3, v6, :cond_22

    .line 28
    move v0, v3

    .line 29
    .local v0, c:I
    const/16 v2, 0x8

    .local v2, k:I
    :goto_a
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_1d

    .line 31
    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_1a

    .line 32
    const v4, -0x12477ce0

    ushr-int/lit8 v5, v0, 0x1

    xor-int v0, v4, v5

    goto :goto_a

    .line 34
    :cond_1a
    ushr-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 36
    :cond_1d
    aput v0, v1, v3

    .line 27
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 38
    .end local v0           #c:I
    .end local v2           #k:I
    :cond_22
    return-object v1
.end method


# virtual methods
.method public getValue()J
    .registers 5

    .prologue
    .line 45
    iget v0, p0, Lcom/vlingo/client/core/util/CRC32;->crc:I

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/vlingo/client/core/util/CRC32;->crc:I

    .line 53
    return-void
.end method

.method public update(I)V
    .registers 5
    .parameter "bval"

    .prologue
    .line 62
    iget v1, p0, Lcom/vlingo/client/core/util/CRC32;->crc:I

    xor-int/lit8 v0, v1, -0x1

    .line 63
    .local v0, c:I
    sget-object v1, Lcom/vlingo/client/core/util/CRC32;->crc_table:[I

    xor-int v2, v0, p1

    and-int/lit16 v2, v2, 0xff

    aget v1, v1, v2

    ushr-int/lit8 v2, v0, 0x8

    xor-int v0, v1, v2

    .line 64
    xor-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/vlingo/client/core/util/CRC32;->crc:I

    .line 65
    return-void
.end method

.method public update([B)V
    .registers 4
    .parameter "buf"

    .prologue
    .line 85
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/vlingo/client/core/util/CRC32;->update([BII)V

    .line 86
    return-void
.end method

.method public update([BII)V
    .registers 8
    .parameter "buf"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 75
    iget v2, p0, Lcom/vlingo/client/core/util/CRC32;->crc:I

    xor-int/lit8 v0, v2, -0x1

    .local v0, c:I
    move v1, p2

    .line 76
    .end local p2
    .local v1, off:I
    :goto_5
    add-int/lit8 p3, p3, -0x1

    if-ltz p3, :cond_1a

    .line 77
    sget-object v2, Lcom/vlingo/client/core/util/CRC32;->crc_table:[I

    add-int/lit8 p2, v1, 0x1

    .end local v1           #off:I
    .restart local p2
    aget-byte v3, p1, v1

    xor-int/2addr v3, v0

    and-int/lit16 v3, v3, 0xff

    aget v2, v2, v3

    ushr-int/lit8 v3, v0, 0x8

    xor-int v0, v2, v3

    move v1, p2

    .end local p2
    .restart local v1       #off:I
    goto :goto_5

    .line 78
    :cond_1a
    xor-int/lit8 v2, v0, -0x1

    iput v2, p0, Lcom/vlingo/client/core/util/CRC32;->crc:I

    .line 79
    return-void
.end method

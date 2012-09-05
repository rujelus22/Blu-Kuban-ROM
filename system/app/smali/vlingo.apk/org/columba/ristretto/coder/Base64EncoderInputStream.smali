.class public Lorg/columba/ristretto/coder/Base64EncoderInputStream;
.super Ljava/io/FilterInputStream;
.source "Base64EncoderInputStream.java"


# static fields
.field private static final table:[B


# instance fields
.field private available:I

.field private blockCount:I

.field private inBytes:[B

.field private outBytes:[B

.field private pos:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 54
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lorg/columba/ristretto/coder/Base64EncoderInputStream;->table:[B

    return-void

    :array_a
    .array-data 0x1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 77
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/columba/ristretto/coder/Base64EncoderInputStream;->outBytes:[B

    .line 78
    const/4 v0, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/columba/ristretto/coder/Base64EncoderInputStream;->inBytes:[B

    .line 79
    return-void
.end method

.method private encodeNextPack()I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x3d

    const/4 v7, 0x3

    const/4 v1, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 91
    iget v2, p0, Lorg/columba/ristretto/coder/Base64EncoderInputStream;->blockCount:I

    const/16 v3, 0x18

    if-ne v2, v3, :cond_1b

    .line 92
    iget-object v2, p0, Lorg/columba/ristretto/coder/Base64EncoderInputStream;->outBytes:[B

    const/16 v3, 0xd

    aput-byte v3, v2, v5

    .line 93
    iget-object v2, p0, Lorg/columba/ristretto/coder/Base64EncoderInputStream;->outBytes:[B

    const/16 v3, 0xa

    aput-byte v3, v2, v6

    .line 94
    iput v5, p0, Lorg/columba/ristretto/coder/Base64EncoderInputStream;->blockCount:I

    .line 124
    :goto_1a
    return v1

    .line 98
    :cond_1b
    iget-object v2, p0, Lorg/columba/ristretto/coder/Base64EncoderInputStream;->in:Ljava/io/InputStream;

    iget-object v3, p0, Lorg/columba/ristretto/coder/Base64EncoderInputStream;->inBytes:[B

    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 100
    .local v0, read:I
    if-ne v0, v7, :cond_81

    .line 101
    iget-object v2, p0, Lorg/columba/ristretto/coder/Base64EncoderInputStream;->outBytes:[B

    sget-object v3, Lorg/columba/ristretto/coder/Base64EncoderInputStream;->table:[B

    iget-object v4, p0, Lorg/columba/ristretto/coder/Base64EncoderInputStream;->inBytes:[B

    aget-byte v4, v4, v5

    shr-int/lit8 v4, v4, 0x2

    and-int/lit8 v4, v4, 0x3f

    int-to-byte v4, v4

    aget-byte v3, v3, v4

    aput-byte v3, v2, v5

    .line 102
    iget-object v2, p0, Lorg/columba/ristretto/coder/Base64EncoderInputStream;->outBytes:[B

    sget-object v3, Lorg/columba/ristretto/coder/Base64EncoderInputStream;->table:[B

    iget-object v4, p0, Lorg/columba/ristretto/coder/Base64EncoderInputStream;->inBytes:[B

    aget-byte v4, v4, v5

    shl-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0x3f

    iget-object v5, p0, Lorg/columba/ristretto/coder/Base64EncoderInputStream;->inBytes:[B

    aget-byte v5, v5, v6

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0xf

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aget-byte v3, v3, v4

    aput-byte v3, v2, v6

    .line 103
    iget-object v2, p0, Lorg/columba/ristretto/coder/Base64EncoderInputStream;->outBytes:[B

    sget-object v3, Lorg/columba/ristretto/coder/Base64EncoderInputStream;->table:[B

    iget-object v4, p0, Lorg/columba/ristretto/coder/Base64EncoderInputStream;->inBytes:[B

    aget-byte v4, v4, v6

    shl-int/lit8 v4, v4, 0x2

    and-int/lit8 v4, v4, 0x3f

    iget-object v5, p0, Lorg/columba/ristretto/coder/Base64EncoderInputStream;->inBytes:[B

    aget-byte v5, v5, v1

    shr-int/lit8 v5, v5, 0x6

    and-int/lit8 v5, v5, 0x3

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aget-byte v3, v3, v4

    aput-byte v3, v2, v1

    .line 104
    iget-object v2, p0, Lorg/columba/ristretto/coder/Base64EncoderInputStream;->outBytes:[B

    sget-object v3, Lorg/columba/ristretto/coder/Base64EncoderInputStream;->table:[B

    iget-object v4, p0, Lorg/columba/ristretto/coder/Base64EncoderInputStream;->inBytes:[B

    aget-byte v1, v4, v1

    and-int/lit8 v1, v1, 0x3f

    int-to-byte v1, v1

    aget-byte v1, v3, v1

    aput-byte v1, v2, v7

    .line 106
    iget v1, p0, Lorg/columba/ristretto/coder/Base64EncoderInputStream;->blockCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/columba/ristretto/coder/Base64EncoderInputStream;->blockCount:I

    .line 124
    :goto_7f
    const/4 v1, 0x4

    goto :goto_1a

    .line 107
    :cond_81
    if-lez v0, :cond_e0

    .line 109
    iget-object v2, p0, Lorg/columba/ristretto/coder/Base64EncoderInputStream;->outBytes:[B

    sget-object v3, Lorg/columba/ristretto/coder/Base64EncoderInputStream;->table:[B

    iget-object v4, p0, Lorg/columba/ristretto/coder/Base64EncoderInputStream;->inBytes:[B

    aget-byte v4, v4, v5

    shr-int/lit8 v4, v4, 0x2

    and-int/lit8 v4, v4, 0x3f

    int-to-byte v4, v4

    aget-byte v3, v3, v4

    aput-byte v3, v2, v5

    .line 111
    if-ne v0, v1, :cond_c6

    .line 112
    iget-object v2, p0, Lorg/columba/ristretto/coder/Base64EncoderInputStream;->outBytes:[B

    sget-object v3, Lorg/columba/ristretto/coder/Base64EncoderInputStream;->table:[B

    iget-object v4, p0, Lorg/columba/ristretto/coder/Base64EncoderInputStream;->inBytes:[B

    aget-byte v4, v4, v5

    shl-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0x3f

    iget-object v5, p0, Lorg/columba/ristretto/coder/Base64EncoderInputStream;->inBytes:[B

    aget-byte v5, v5, v6

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0xf

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aget-byte v3, v3, v4

    aput-byte v3, v2, v6

    .line 113
    iget-object v2, p0, Lorg/columba/ristretto/coder/Base64EncoderInputStream;->outBytes:[B

    sget-object v3, Lorg/columba/ristretto/coder/Base64EncoderInputStream;->table:[B

    iget-object v4, p0, Lorg/columba/ristretto/coder/Base64EncoderInputStream;->inBytes:[B

    aget-byte v4, v4, v6

    shl-int/lit8 v4, v4, 0x2

    and-int/lit8 v4, v4, 0x3f

    int-to-byte v4, v4

    aget-byte v3, v3, v4

    aput-byte v3, v2, v1

    .line 114
    iget-object v1, p0, Lorg/columba/ristretto/coder/Base64EncoderInputStream;->outBytes:[B

    aput-byte v8, v1, v7

    goto :goto_7f

    .line 116
    :cond_c6
    iget-object v2, p0, Lorg/columba/ristretto/coder/Base64EncoderInputStream;->outBytes:[B

    sget-object v3, Lorg/columba/ristretto/coder/Base64EncoderInputStream;->table:[B

    iget-object v4, p0, Lorg/columba/ristretto/coder/Base64EncoderInputStream;->inBytes:[B

    aget-byte v4, v4, v5

    shl-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0x3f

    int-to-byte v4, v4

    aget-byte v3, v3, v4

    aput-byte v3, v2, v6

    .line 117
    iget-object v2, p0, Lorg/columba/ristretto/coder/Base64EncoderInputStream;->outBytes:[B

    aput-byte v8, v2, v1

    .line 118
    iget-object v1, p0, Lorg/columba/ristretto/coder/Base64EncoderInputStream;->outBytes:[B

    aput-byte v8, v1, v7

    goto :goto_7f

    .line 121
    :cond_e0
    const/4 v1, -0x1

    goto/16 :goto_1a
.end method


# virtual methods
.method public available()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lorg/columba/ristretto/coder/Base64EncoderInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3ff547ae147ae148L

    mul-double/2addr v0, v2

    double-to-int v0, v0

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
    const/4 v0, -0x1

    .line 131
    iget v1, p0, Lorg/columba/ristretto/coder/Base64EncoderInputStream;->pos:I

    iget v2, p0, Lorg/columba/ristretto/coder/Base64EncoderInputStream;->available:I

    if-ne v1, v2, :cond_10

    .line 132
    invoke-direct {p0}, Lorg/columba/ristretto/coder/Base64EncoderInputStream;->encodeNextPack()I

    move-result v1

    iput v1, p0, Lorg/columba/ristretto/coder/Base64EncoderInputStream;->available:I

    .line 133
    const/4 v1, 0x0

    iput v1, p0, Lorg/columba/ristretto/coder/Base64EncoderInputStream;->pos:I

    .line 136
    :cond_10
    iget v1, p0, Lorg/columba/ristretto/coder/Base64EncoderInputStream;->available:I

    if-ne v1, v0, :cond_15

    .line 138
    :goto_14
    return v0

    :cond_15
    iget-object v0, p0, Lorg/columba/ristretto/coder/Base64EncoderInputStream;->outBytes:[B

    iget v1, p0, Lorg/columba/ristretto/coder/Base64EncoderInputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/columba/ristretto/coder/Base64EncoderInputStream;->pos:I

    aget-byte v0, v0, v1

    goto :goto_14
.end method

.method public read([BII)I
    .registers 9
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 146
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, p3, :cond_16

    .line 147
    invoke-virtual {p0}, Lorg/columba/ristretto/coder/Base64EncoderInputStream;->read()I

    move-result v1

    .line 148
    .local v1, next:I
    if-ne v1, v2, :cond_e

    .line 149
    if-nez v0, :cond_d

    move v0, v2

    .line 157
    .end local v0           #i:I
    .end local v1           #next:I
    :cond_d
    :goto_d
    return v0

    .line 155
    .restart local v0       #i:I
    .restart local v1       #next:I
    :cond_e
    add-int v3, p2, v0

    int-to-byte v4, v1

    aput-byte v4, p1, v3

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v1           #next:I
    :cond_16
    move v0, p3

    .line 157
    goto :goto_d
.end method

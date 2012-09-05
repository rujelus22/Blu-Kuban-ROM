.class public Lorg/columba/ristretto/coder/Base64DecoderInputStream;
.super Ljava/io/FilterInputStream;
.source "Base64DecoderInputStream.java"


# static fields
.field private static table:[B


# instance fields
.field private available:I

.field private inBytes:[B

.field private outBytes:[I

.field private pos:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 54
    const/16 v0, 0x80

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lorg/columba/ristretto/coder/Base64DecoderInputStream;->table:[B

    return-void

    :array_a
    .array-data 0x1
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
        0x3et
        0x0t
        0x0t
        0x0t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 127
    new-instance v0, Lorg/columba/ristretto/coder/CRLFFilterInputStream;

    invoke-direct {v0, p1}, Lorg/columba/ristretto/coder/CRLFFilterInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 128
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/columba/ristretto/coder/Base64DecoderInputStream;->outBytes:[I

    .line 129
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/columba/ristretto/coder/Base64DecoderInputStream;->inBytes:[B

    .line 130
    return-void
.end method

.method private readNextPack()I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v4, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x2

    .line 140
    new-array v0, v7, [I

    .line 143
    .local v0, lookedUp:[I
    iget-object v5, p0, Lorg/columba/ristretto/coder/Base64DecoderInputStream;->in:Ljava/io/InputStream;

    iget-object v6, p0, Lorg/columba/ristretto/coder/Base64DecoderInputStream;->inBytes:[B

    invoke-virtual {v5, v6}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 145
    .local v1, read:I
    if-eq v1, v7, :cond_13

    .line 146
    const/4 v2, -0x1

    .line 166
    :cond_12
    :goto_12
    return v2

    .line 148
    :cond_13
    sget-object v5, Lorg/columba/ristretto/coder/Base64DecoderInputStream;->table:[B

    iget-object v6, p0, Lorg/columba/ristretto/coder/Base64DecoderInputStream;->inBytes:[B

    aget-byte v6, v6, v8

    aget-byte v5, v5, v6

    aput v5, v0, v8

    .line 149
    sget-object v5, Lorg/columba/ristretto/coder/Base64DecoderInputStream;->table:[B

    iget-object v6, p0, Lorg/columba/ristretto/coder/Base64DecoderInputStream;->inBytes:[B

    aget-byte v6, v6, v2

    aget-byte v5, v5, v6

    aput v5, v0, v2

    .line 150
    sget-object v5, Lorg/columba/ristretto/coder/Base64DecoderInputStream;->table:[B

    iget-object v6, p0, Lorg/columba/ristretto/coder/Base64DecoderInputStream;->inBytes:[B

    aget-byte v6, v6, v3

    aget-byte v5, v5, v6

    aput v5, v0, v3

    .line 151
    sget-object v5, Lorg/columba/ristretto/coder/Base64DecoderInputStream;->table:[B

    iget-object v6, p0, Lorg/columba/ristretto/coder/Base64DecoderInputStream;->inBytes:[B

    aget-byte v6, v6, v4

    aget-byte v5, v5, v6

    aput v5, v0, v4

    .line 153
    iget-object v5, p0, Lorg/columba/ristretto/coder/Base64DecoderInputStream;->outBytes:[I

    aget v6, v0, v8

    shl-int/lit8 v6, v6, 0x2

    aget v7, v0, v2

    shr-int/lit8 v7, v7, 0x4

    or-int/2addr v6, v7

    and-int/lit16 v6, v6, 0xff

    aput v6, v5, v8

    .line 154
    iget-object v5, p0, Lorg/columba/ristretto/coder/Base64DecoderInputStream;->outBytes:[I

    aget v6, v0, v2

    shl-int/lit8 v6, v6, 0x4

    aget v7, v0, v3

    shr-int/lit8 v7, v7, 0x2

    or-int/2addr v6, v7

    and-int/lit16 v6, v6, 0xff

    aput v6, v5, v2

    .line 155
    iget-object v5, p0, Lorg/columba/ristretto/coder/Base64DecoderInputStream;->outBytes:[I

    aget v6, v0, v3

    shl-int/lit8 v6, v6, 0x6

    aget v7, v0, v4

    or-int/2addr v6, v7

    and-int/lit16 v6, v6, 0xff

    aput v6, v5, v3

    .line 159
    iget-object v5, p0, Lorg/columba/ristretto/coder/Base64DecoderInputStream;->inBytes:[B

    aget-byte v5, v5, v3

    const/16 v6, 0x3d

    if-eq v5, v6, :cond_12

    .line 162
    iget-object v2, p0, Lorg/columba/ristretto/coder/Base64DecoderInputStream;->inBytes:[B

    aget-byte v2, v2, v4

    const/16 v5, 0x3d

    if-ne v2, v5, :cond_78

    move v2, v3

    .line 163
    goto :goto_12

    :cond_78
    move v2, v4

    .line 166
    goto :goto_12
.end method


# virtual methods
.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 174
    iget v1, p0, Lorg/columba/ristretto/coder/Base64DecoderInputStream;->pos:I

    iget v2, p0, Lorg/columba/ristretto/coder/Base64DecoderInputStream;->available:I

    if-ne v1, v2, :cond_10

    .line 175
    invoke-direct {p0}, Lorg/columba/ristretto/coder/Base64DecoderInputStream;->readNextPack()I

    move-result v1

    iput v1, p0, Lorg/columba/ristretto/coder/Base64DecoderInputStream;->available:I

    .line 176
    const/4 v1, 0x0

    iput v1, p0, Lorg/columba/ristretto/coder/Base64DecoderInputStream;->pos:I

    .line 180
    :cond_10
    iget v1, p0, Lorg/columba/ristretto/coder/Base64DecoderInputStream;->available:I

    if-ne v1, v0, :cond_15

    .line 183
    :goto_14
    return v0

    :cond_15
    iget-object v0, p0, Lorg/columba/ristretto/coder/Base64DecoderInputStream;->outBytes:[I

    iget v1, p0, Lorg/columba/ristretto/coder/Base64DecoderInputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/columba/ristretto/coder/Base64DecoderInputStream;->pos:I

    aget v0, v0, v1

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

    .line 191
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, p3, :cond_16

    .line 192
    invoke-virtual {p0}, Lorg/columba/ristretto/coder/Base64DecoderInputStream;->read()I

    move-result v1

    .line 193
    .local v1, next:I
    if-ne v1, v2, :cond_e

    .line 194
    if-nez v0, :cond_d

    move v0, v2

    .line 202
    .end local v0           #i:I
    .end local v1           #next:I
    :cond_d
    :goto_d
    return v0

    .line 200
    .restart local v0       #i:I
    .restart local v1       #next:I
    :cond_e
    add-int v3, p2, v0

    int-to-byte v4, v1

    aput-byte v4, p1, v3

    .line 191
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v1           #next:I
    :cond_16
    move v0, p3

    .line 202
    goto :goto_d
.end method

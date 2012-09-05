.class public Lorg/columba/ristretto/coder/QuotedPrintableEncoderInputStream;
.super Ljava/io/FilterInputStream;
.source "QuotedPrintableEncoderInputStream.java"


# static fields
.field private static final hexTable:[C


# instance fields
.field private available:I

.field private lineLength:I

.field private outBytes:Ljava/nio/IntBuffer;

.field private pos:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 56
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lorg/columba/ristretto/coder/QuotedPrintableEncoderInputStream;->hexTable:[C

    return-void

    :array_a
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
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .parameter "arg0"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 89
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/columba/ristretto/coder/QuotedPrintableEncoderInputStream;->outBytes:Ljava/nio/IntBuffer;

    .line 91
    return-void
.end method

.method private processNextInput()I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v2, -0x1

    const/16 v7, 0x3d

    const/16 v6, 0xd

    const/16 v5, 0xa

    .line 104
    iget-object v3, p0, Lorg/columba/ristretto/coder/QuotedPrintableEncoderInputStream;->outBytes:Ljava/nio/IntBuffer;

    invoke-virtual {v3}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 105
    iget-object v3, p0, Lorg/columba/ristretto/coder/QuotedPrintableEncoderInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 107
    .local v1, read:I
    if-ne v1, v2, :cond_16

    .line 173
    :goto_15
    return v2

    .line 115
    :cond_16
    const/16 v3, 0x9

    if-eq v1, v3, :cond_1e

    const/16 v3, 0x20

    if-ne v1, v3, :cond_38

    .line 117
    :cond_1e
    iget v3, p0, Lorg/columba/ristretto/coder/QuotedPrintableEncoderInputStream;->lineLength:I

    const/16 v4, 0x4a

    if-lt v3, v4, :cond_6b

    .line 118
    iget-object v2, p0, Lorg/columba/ristretto/coder/QuotedPrintableEncoderInputStream;->outBytes:Ljava/nio/IntBuffer;

    invoke-virtual {v2, v7}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 119
    iget-object v2, p0, Lorg/columba/ristretto/coder/QuotedPrintableEncoderInputStream;->outBytes:Ljava/nio/IntBuffer;

    invoke-direct {p0, v1}, Lorg/columba/ristretto/coder/QuotedPrintableEncoderInputStream;->toHexString(I)[I

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 120
    iget v2, p0, Lorg/columba/ristretto/coder/QuotedPrintableEncoderInputStream;->lineLength:I

    add-int/lit8 v2, v2, 0x3

    iput v2, p0, Lorg/columba/ristretto/coder/QuotedPrintableEncoderInputStream;->lineLength:I

    .line 145
    :cond_38
    :goto_38
    const/16 v2, 0x21

    if-lt v1, v2, :cond_99

    if-eq v1, v7, :cond_99

    const/16 v2, 0x7e

    if-gt v1, v2, :cond_99

    .line 146
    iget-object v2, p0, Lorg/columba/ristretto/coder/QuotedPrintableEncoderInputStream;->outBytes:Ljava/nio/IntBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 147
    iget v2, p0, Lorg/columba/ristretto/coder/QuotedPrintableEncoderInputStream;->lineLength:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/columba/ristretto/coder/QuotedPrintableEncoderInputStream;->lineLength:I

    .line 166
    :goto_4d
    iget v2, p0, Lorg/columba/ristretto/coder/QuotedPrintableEncoderInputStream;->lineLength:I

    const/16 v3, 0x4a

    if-lt v2, v3, :cond_64

    .line 167
    iget-object v2, p0, Lorg/columba/ristretto/coder/QuotedPrintableEncoderInputStream;->outBytes:Ljava/nio/IntBuffer;

    invoke-virtual {v2, v7}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 168
    iget-object v2, p0, Lorg/columba/ristretto/coder/QuotedPrintableEncoderInputStream;->outBytes:Ljava/nio/IntBuffer;

    invoke-virtual {v2, v6}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 169
    iget-object v2, p0, Lorg/columba/ristretto/coder/QuotedPrintableEncoderInputStream;->outBytes:Ljava/nio/IntBuffer;

    invoke-virtual {v2, v5}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 170
    iput v8, p0, Lorg/columba/ristretto/coder/QuotedPrintableEncoderInputStream;->lineLength:I

    .line 173
    :cond_64
    iget-object v2, p0, Lorg/columba/ristretto/coder/QuotedPrintableEncoderInputStream;->outBytes:Ljava/nio/IntBuffer;

    invoke-virtual {v2}, Ljava/nio/IntBuffer;->position()I

    move-result v2

    goto :goto_15

    .line 123
    :cond_6b
    iget-object v3, p0, Lorg/columba/ristretto/coder/QuotedPrintableEncoderInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 124
    .local v0, next:I
    if-eq v0, v2, :cond_38

    .line 126
    if-eq v0, v6, :cond_77

    if-ne v0, v5, :cond_8d

    .line 127
    :cond_77
    iget-object v2, p0, Lorg/columba/ristretto/coder/QuotedPrintableEncoderInputStream;->outBytes:Ljava/nio/IntBuffer;

    invoke-virtual {v2, v7}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 128
    iget-object v2, p0, Lorg/columba/ristretto/coder/QuotedPrintableEncoderInputStream;->outBytes:Ljava/nio/IntBuffer;

    invoke-direct {p0, v1}, Lorg/columba/ristretto/coder/QuotedPrintableEncoderInputStream;->toHexString(I)[I

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 129
    iget v2, p0, Lorg/columba/ristretto/coder/QuotedPrintableEncoderInputStream;->lineLength:I

    add-int/lit8 v2, v2, 0x3

    iput v2, p0, Lorg/columba/ristretto/coder/QuotedPrintableEncoderInputStream;->lineLength:I

    .line 139
    :goto_8b
    move v1, v0

    goto :goto_38

    .line 132
    :cond_8d
    iget-object v2, p0, Lorg/columba/ristretto/coder/QuotedPrintableEncoderInputStream;->outBytes:Ljava/nio/IntBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 133
    iget v2, p0, Lorg/columba/ristretto/coder/QuotedPrintableEncoderInputStream;->lineLength:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/columba/ristretto/coder/QuotedPrintableEncoderInputStream;->lineLength:I

    goto :goto_8b

    .line 148
    .end local v0           #next:I
    :cond_99
    if-ne v1, v6, :cond_ad

    .line 149
    iget-object v2, p0, Lorg/columba/ristretto/coder/QuotedPrintableEncoderInputStream;->outBytes:Ljava/nio/IntBuffer;

    invoke-virtual {v2, v6}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 150
    iget-object v2, p0, Lorg/columba/ristretto/coder/QuotedPrintableEncoderInputStream;->outBytes:Ljava/nio/IntBuffer;

    invoke-virtual {v2, v5}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 152
    iget-object v2, p0, Lorg/columba/ristretto/coder/QuotedPrintableEncoderInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    .line 153
    iput v8, p0, Lorg/columba/ristretto/coder/QuotedPrintableEncoderInputStream;->lineLength:I

    goto :goto_4d

    .line 154
    :cond_ad
    if-ne v1, v5, :cond_bc

    .line 156
    iget-object v2, p0, Lorg/columba/ristretto/coder/QuotedPrintableEncoderInputStream;->outBytes:Ljava/nio/IntBuffer;

    invoke-virtual {v2, v6}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 157
    iget-object v2, p0, Lorg/columba/ristretto/coder/QuotedPrintableEncoderInputStream;->outBytes:Ljava/nio/IntBuffer;

    invoke-virtual {v2, v5}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 158
    iput v8, p0, Lorg/columba/ristretto/coder/QuotedPrintableEncoderInputStream;->lineLength:I

    goto :goto_4d

    .line 160
    :cond_bc
    iget-object v2, p0, Lorg/columba/ristretto/coder/QuotedPrintableEncoderInputStream;->outBytes:Ljava/nio/IntBuffer;

    invoke-virtual {v2, v7}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 161
    iget-object v2, p0, Lorg/columba/ristretto/coder/QuotedPrintableEncoderInputStream;->outBytes:Ljava/nio/IntBuffer;

    invoke-direct {p0, v1}, Lorg/columba/ristretto/coder/QuotedPrintableEncoderInputStream;->toHexString(I)[I

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 162
    iget v2, p0, Lorg/columba/ristretto/coder/QuotedPrintableEncoderInputStream;->lineLength:I

    add-int/lit8 v2, v2, 0x3

    iput v2, p0, Lorg/columba/ristretto/coder/QuotedPrintableEncoderInputStream;->lineLength:I

    goto/16 :goto_4d
.end method

.method private toHexString(I)[I
    .registers 8
    .parameter "in"

    .prologue
    .line 217
    const/4 v4, 0x2

    new-array v2, v4, [I

    .line 219
    .local v2, result:[I
    if-gez p1, :cond_1c

    .line 220
    and-int/lit8 v4, p1, 0x7f

    or-int/lit16 v3, v4, 0x80

    .line 225
    .local v3, value:I
    :goto_9
    div-int/lit8 v0, v3, 0x10

    .line 226
    .local v0, hi:I
    rem-int/lit8 v1, v3, 0x10

    .line 227
    .local v1, lo:I
    const/4 v4, 0x0

    sget-object v5, Lorg/columba/ristretto/coder/QuotedPrintableEncoderInputStream;->hexTable:[C

    aget-char v5, v5, v0

    aput v5, v2, v4

    .line 228
    const/4 v4, 0x1

    sget-object v5, Lorg/columba/ristretto/coder/QuotedPrintableEncoderInputStream;->hexTable:[C

    aget-char v5, v5, v1

    aput v5, v2, v4

    .line 229
    return-object v2

    .line 222
    .end local v0           #hi:I
    .end local v1           #lo:I
    .end local v3           #value:I
    :cond_1c
    move v3, p1

    .restart local v3       #value:I
    goto :goto_9
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

    .line 180
    iget v1, p0, Lorg/columba/ristretto/coder/QuotedPrintableEncoderInputStream;->pos:I

    iget v2, p0, Lorg/columba/ristretto/coder/QuotedPrintableEncoderInputStream;->available:I

    if-ne v1, v2, :cond_10

    .line 181
    invoke-direct {p0}, Lorg/columba/ristretto/coder/QuotedPrintableEncoderInputStream;->processNextInput()I

    move-result v1

    iput v1, p0, Lorg/columba/ristretto/coder/QuotedPrintableEncoderInputStream;->available:I

    .line 182
    const/4 v1, 0x0

    iput v1, p0, Lorg/columba/ristretto/coder/QuotedPrintableEncoderInputStream;->pos:I

    .line 185
    :cond_10
    iget v1, p0, Lorg/columba/ristretto/coder/QuotedPrintableEncoderInputStream;->available:I

    if-ne v1, v0, :cond_15

    .line 187
    :goto_14
    return v0

    :cond_15
    iget-object v0, p0, Lorg/columba/ristretto/coder/QuotedPrintableEncoderInputStream;->outBytes:Ljava/nio/IntBuffer;

    iget v1, p0, Lorg/columba/ristretto/coder/QuotedPrintableEncoderInputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/columba/ristretto/coder/QuotedPrintableEncoderInputStream;->pos:I

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

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

    .line 195
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, p3, :cond_16

    .line 196
    invoke-virtual {p0}, Lorg/columba/ristretto/coder/QuotedPrintableEncoderInputStream;->read()I

    move-result v1

    .line 197
    .local v1, next:I
    if-ne v1, v2, :cond_e

    .line 198
    if-nez v0, :cond_d

    move v0, v2

    .line 206
    .end local v0           #i:I
    .end local v1           #next:I
    :cond_d
    :goto_d
    return v0

    .line 204
    .restart local v0       #i:I
    .restart local v1       #next:I
    :cond_e
    add-int v3, p2, v0

    int-to-byte v4, v1

    aput-byte v4, p1, v3

    .line 195
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v1           #next:I
    :cond_16
    move v0, p3

    .line 206
    goto :goto_d
.end method

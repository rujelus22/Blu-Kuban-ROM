.class public Lcom/google/android/maps/driveabout/vector/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:[B

.field protected b:I

.field protected c:I

.field d:Ljava/nio/ByteBuffer;

.field protected e:I

.field protected f:Lv/b;

.field private g:I

.field private h:Z

.field private i:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .parameter

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/driveabout/vector/p;-><init>(IZ)V

    .line 82
    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput v0, p0, Lcom/google/android/maps/driveabout/vector/p;->e:I

    .line 74
    iput v0, p0, Lcom/google/android/maps/driveabout/vector/p;->i:I

    .line 91
    iput-boolean p2, p0, Lcom/google/android/maps/driveabout/vector/p;->h:Z

    .line 92
    iput p1, p0, Lcom/google/android/maps/driveabout/vector/p;->b:I

    .line 93
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/p;->d()V

    .line 94
    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/vector/p;[BI)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/p;->a([BI)V

    return-void
.end method

.method private a([BI)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 307
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/p;->i:I

    if-lez v1, :cond_1e

    .line 308
    :goto_5
    if-ge v0, p2, :cond_23

    .line 309
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    .line 310
    iget v2, p0, Lcom/google/android/maps/driveabout/vector/p;->i:I

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/p;->i:I

    rsub-int v3, v3, 0xff

    mul-int/2addr v1, v3

    div-int/lit16 v1, v1, 0xff

    add-int/2addr v1, v2

    .line 311
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/p;->d:Ljava/nio/ByteBuffer;

    int-to-byte v1, v1

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 308
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 314
    :cond_1e
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/p;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, v0, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 316
    :cond_23
    return-void
.end method

.method private d()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 201
    iput v2, p0, Lcom/google/android/maps/driveabout/vector/p;->g:I

    .line 202
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/p;->a:[B

    if-nez v0, :cond_28

    .line 203
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/p;->b:I

    mul-int/lit8 v0, v0, 0x4

    .line 204
    const/16 v1, 0x1000

    if-lt v0, v1, :cond_13

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/p;->h:Z

    if-eqz v1, :cond_1d

    .line 205
    :cond_13
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/p;->a:[B

    .line 214
    :cond_17
    :goto_17
    iput v2, p0, Lcom/google/android/maps/driveabout/vector/p;->c:I

    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/p;->d:Ljava/nio/ByteBuffer;

    .line 216
    return-void

    .line 207
    :cond_1d
    new-instance v1, Lv/b;

    invoke-direct {v1, v0}, Lv/b;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/p;->f:Lv/b;

    .line 208
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/p;->a()V

    goto :goto_17

    .line 210
    :cond_28
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/p;->f:Lv/b;

    if-eqz v0, :cond_17

    .line 211
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/p;->f:Lv/b;

    invoke-virtual {v0}, Lv/b;->a()V

    .line 212
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/p;->a()V

    goto :goto_17
.end method


# virtual methods
.method protected a()V
    .registers 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/p;->f:Lv/b;

    if-eqz v0, :cond_19

    .line 113
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/p;->f:Lv/b;

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/p;->g:I

    invoke-virtual {v0, v1}, Lv/b;->b(I)V

    .line 114
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/p;->f:Lv/b;

    iget-object v0, v0, Lv/b;->c:Ljava/lang/Object;

    check-cast v0, [B

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/p;->a:[B

    .line 115
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/p;->f:Lv/b;

    iget v0, v0, Lv/b;->d:I

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/p;->g:I

    .line 117
    :cond_19
    return-void
.end method

.method public a(I)V
    .registers 2
    .parameter

    .prologue
    .line 108
    iput p1, p0, Lcom/google/android/maps/driveabout/vector/p;->i:I

    .line 109
    return-void
.end method

.method public a(II)V
    .registers 11
    .parameter
    .parameter

    .prologue
    .line 154
    ushr-int/lit8 v0, p1, 0x18

    int-to-byte v1, v0

    .line 155
    ushr-int/lit8 v0, p1, 0x10

    int-to-byte v2, v0

    .line 156
    ushr-int/lit8 v0, p1, 0x8

    int-to-byte v3, v0

    .line 157
    int-to-byte v4, p1

    .line 158
    const/4 v0, 0x0

    :goto_b
    if-ge v0, p2, :cond_41

    .line 159
    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/p;->a:[B

    iget v6, p0, Lcom/google/android/maps/driveabout/vector/p;->g:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/android/maps/driveabout/vector/p;->g:I

    aput-byte v1, v5, v6

    .line 160
    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/p;->a:[B

    iget v6, p0, Lcom/google/android/maps/driveabout/vector/p;->g:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/android/maps/driveabout/vector/p;->g:I

    aput-byte v2, v5, v6

    .line 161
    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/p;->a:[B

    iget v6, p0, Lcom/google/android/maps/driveabout/vector/p;->g:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/android/maps/driveabout/vector/p;->g:I

    aput-byte v3, v5, v6

    .line 162
    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/p;->a:[B

    iget v6, p0, Lcom/google/android/maps/driveabout/vector/p;->g:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/android/maps/driveabout/vector/p;->g:I

    aput-byte v4, v5, v6

    .line 163
    iget v5, p0, Lcom/google/android/maps/driveabout/vector/p;->g:I

    const/16 v6, 0x1000

    if-lt v5, v6, :cond_3e

    .line 164
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/p;->a()V

    .line 158
    :cond_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 167
    :cond_41
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/p;->c:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/p;->c:I

    .line 168
    return-void
.end method

.method protected a(IZ)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 325
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/p;->f:Lv/b;

    if-nez v0, :cond_25

    .line 326
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/p;->a:[B

    invoke-direct {p0, v0, p1}, Lcom/google/android/maps/driveabout/vector/p;->a([BI)V

    .line 336
    :goto_a
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/p;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 337
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/p;->d:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 339
    if-eqz p2, :cond_24

    .line 340
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/p;->f:Lv/b;

    if-eqz v0, :cond_22

    .line 341
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/p;->f:Lv/b;

    invoke-virtual {v0}, Lv/b;->c()V

    .line 342
    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/p;->f:Lv/b;

    .line 344
    :cond_22
    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/p;->a:[B

    .line 346
    :cond_24
    return-void

    .line 328
    :cond_25
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/p;->a()V

    .line 329
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/p;->f:Lv/b;

    new-instance v1, Lcom/google/android/maps/driveabout/vector/q;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/vector/q;-><init>(Lcom/google/android/maps/driveabout/vector/p;)V

    invoke-virtual {v0, v1}, Lv/b;->a(Lv/d;)V

    goto :goto_a
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 2
    .parameter

    .prologue
    .line 232
    return-void
.end method

.method public b()I
    .registers 2

    .prologue
    .line 350
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/p;->e:I

    return v0
.end method

.method public b(I)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 252
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/p;->b:I

    if-le p1, v0, :cond_40

    .line 253
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/p;->b:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 254
    mul-int/lit8 v0, v1, 0x4

    .line 255
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/p;->f:Lv/b;

    if-nez v2, :cond_60

    .line 256
    const/16 v2, 0x1000

    if-lt v0, v2, :cond_1b

    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/p;->h:Z

    if-eqz v2, :cond_41

    .line 257
    :cond_1b
    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/p;->h:Z

    if-eqz v2, :cond_33

    .line 258
    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v2

    if-nez v2, :cond_2b

    invoke-static {}, Lcom/google/googlenav/common/c;->b()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 259
    :cond_2b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Attempt to grow fixed size buffer"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_33
    new-array v0, v0, [B

    .line 265
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/p;->a:[B

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/p;->g:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 266
    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/p;->a:[B

    .line 276
    :goto_3e
    iput v1, p0, Lcom/google/android/maps/driveabout/vector/p;->b:I

    .line 278
    :cond_40
    return-void

    .line 268
    :cond_41
    new-instance v2, Lv/b;

    invoke-direct {v2, v0}, Lv/b;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/p;->f:Lv/b;

    .line 269
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/p;->f:Lv/b;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/p;->a:[B

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/p;->g:I

    invoke-virtual {v0, v2, v3}, Lv/b;->a(Ljava/lang/Object;I)V

    .line 270
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/p;->f:Lv/b;

    iget-object v0, v0, Lv/b;->c:Ljava/lang/Object;

    check-cast v0, [B

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/p;->a:[B

    .line 271
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/p;->f:Lv/b;

    iget v0, v0, Lv/b;->d:I

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/p;->g:I

    goto :goto_3e

    .line 274
    :cond_60
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/p;->f:Lv/b;

    invoke-virtual {v2, v0}, Lv/b;->c(I)V

    goto :goto_3e
.end method

.method public b(II)V
    .registers 11
    .parameter
    .parameter

    .prologue
    .line 175
    ushr-int/lit8 v0, p1, 0x18

    int-to-byte v1, v0

    .line 176
    ushr-int/lit8 v0, p1, 0x10

    int-to-byte v2, v0

    .line 177
    ushr-int/lit8 v0, p1, 0x8

    int-to-byte v3, v0

    .line 178
    int-to-byte v4, p1

    .line 179
    const/4 v0, 0x0

    :goto_b
    if-ge v0, p2, :cond_41

    .line 180
    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/p;->a:[B

    iget v6, p0, Lcom/google/android/maps/driveabout/vector/p;->g:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/android/maps/driveabout/vector/p;->g:I

    aput-byte v2, v5, v6

    .line 181
    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/p;->a:[B

    iget v6, p0, Lcom/google/android/maps/driveabout/vector/p;->g:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/android/maps/driveabout/vector/p;->g:I

    aput-byte v3, v5, v6

    .line 182
    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/p;->a:[B

    iget v6, p0, Lcom/google/android/maps/driveabout/vector/p;->g:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/android/maps/driveabout/vector/p;->g:I

    aput-byte v4, v5, v6

    .line 183
    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/p;->a:[B

    iget v6, p0, Lcom/google/android/maps/driveabout/vector/p;->g:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/android/maps/driveabout/vector/p;->g:I

    aput-byte v1, v5, v6

    .line 184
    iget v5, p0, Lcom/google/android/maps/driveabout/vector/p;->g:I

    const/16 v6, 0x1000

    if-lt v5, v6, :cond_3e

    .line 185
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/p;->a()V

    .line 179
    :cond_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 188
    :cond_41
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/p;->c:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/p;->c:I

    .line 189
    return-void
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 239
    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/p;->a(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 240
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/p;->f:Lv/b;

    if-eqz v0, :cond_f

    .line 241
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/p;->f:Lv/b;

    invoke-virtual {v0}, Lv/b;->c()V

    .line 242
    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/p;->f:Lv/b;

    .line 244
    :cond_f
    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/p;->a:[B

    .line 245
    return-void
.end method

.method public c()I
    .registers 3

    .prologue
    .line 357
    const/16 v0, 0x20

    .line 358
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/p;->f:Lv/b;

    if-eqz v1, :cond_19

    .line 360
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/p;->f:Lv/b;

    invoke-virtual {v1}, Lv/b;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 364
    :cond_d
    :goto_d
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/p;->d:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_18

    .line 365
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/p;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    add-int/2addr v0, v1

    .line 367
    :cond_18
    return v0

    .line 361
    :cond_19
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/p;->a:[B

    if-eqz v1, :cond_d

    .line 362
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/p;->a:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    goto :goto_d
.end method

.method public c(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 7
    .parameter

    .prologue
    .line 285
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/p;->d:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_7

    .line 286
    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/p;->d(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 288
    :cond_7
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/p;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/p;->e:I

    .line 294
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v1, 0x4

    const/16 v2, 0x1401

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/p;->d:Ljava/nio/ByteBuffer;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    .line 296
    return-void
.end method

.method protected d(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 4
    .parameter

    .prologue
    .line 300
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/p;->c:I

    mul-int/lit8 v0, v0, 0x4

    .line 301
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aU;->k()Lcom/google/android/maps/driveabout/vector/cp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/cp;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/p;->d:Ljava/nio/ByteBuffer;

    .line 303
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/maps/driveabout/vector/p;->a(IZ)V

    .line 304
    return-void
.end method

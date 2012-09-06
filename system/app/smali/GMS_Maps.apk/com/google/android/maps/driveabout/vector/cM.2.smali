.class public Lcom/google/android/maps/driveabout/vector/cM;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/cO;


# instance fields
.field protected a:I

.field b:[I

.field c:I

.field d:I

.field e:Ljava/nio/Buffer;

.field protected final f:I

.field protected final g:I

.field protected final h:I

.field i:I

.field protected j:Lv/f;

.field private k:Z


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cM;->a:I

    .line 123
    const/16 v0, 0x140c

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cM;->f:I

    .line 124
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cM;->g:I

    .line 125
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cM;->h:I

    .line 126
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/driveabout/vector/cM;-><init>(IZ)V

    .line 102
    return-void
.end method

.method protected constructor <init>(IIIZ)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cM;->a:I

    .line 141
    iput-boolean p4, p0, Lcom/google/android/maps/driveabout/vector/cM;->k:Z

    .line 142
    iput p1, p0, Lcom/google/android/maps/driveabout/vector/cM;->c:I

    .line 143
    sparse-switch p2, :sswitch_data_28

    .line 155
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "glNativeType must be one of GL_FIXED, GL_SHORT or GL_BYTE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :sswitch_15
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cM;->g:I

    .line 158
    :goto_18
    iput p2, p0, Lcom/google/android/maps/driveabout/vector/cM;->f:I

    .line 159
    iput p3, p0, Lcom/google/android/maps/driveabout/vector/cM;->h:I

    .line 160
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cM;->d()V

    .line 161
    return-void

    .line 148
    :sswitch_20
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cM;->g:I

    goto :goto_18

    .line 152
    :sswitch_24
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cM;->g:I

    goto :goto_18

    .line 143
    :sswitch_data_28
    .sparse-switch
        0x1400 -> :sswitch_24
        0x1401 -> :sswitch_24
        0x1402 -> :sswitch_20
        0x140c -> :sswitch_15
    .end sparse-switch
.end method

.method public constructor <init>(IZ)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cM;->a:I

    .line 111
    iput-boolean p2, p0, Lcom/google/android/maps/driveabout/vector/cM;->k:Z

    .line 112
    iput p1, p0, Lcom/google/android/maps/driveabout/vector/cM;->c:I

    .line 113
    const/16 v0, 0x140c

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cM;->f:I

    .line 114
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cM;->g:I

    .line 115
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cM;->h:I

    .line 116
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cM;->d()V

    .line 117
    return-void
.end method

.method private d()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 247
    iput v2, p0, Lcom/google/android/maps/driveabout/vector/cM;->i:I

    .line 248
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cM;->b:[I

    if-nez v0, :cond_28

    .line 249
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cM;->c:I

    mul-int/lit8 v0, v0, 0x2

    .line 250
    const/16 v1, 0x400

    if-lt v0, v1, :cond_13

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/cM;->k:Z

    if-eqz v1, :cond_1d

    .line 251
    :cond_13
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cM;->b:[I

    .line 260
    :cond_17
    :goto_17
    iput v2, p0, Lcom/google/android/maps/driveabout/vector/cM;->d:I

    .line 261
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cM;->e:Ljava/nio/Buffer;

    .line 262
    return-void

    .line 253
    :cond_1d
    new-instance v1, Lv/f;

    invoke-direct {v1, v0}, Lv/f;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/cM;->j:Lv/f;

    .line 254
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/cM;->a()V

    goto :goto_17

    .line 256
    :cond_28
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cM;->j:Lv/f;

    if-eqz v0, :cond_17

    .line 257
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cM;->j:Lv/f;

    invoke-virtual {v0}, Lv/f;->a()V

    .line 258
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/cM;->a()V

    goto :goto_17
.end method


# virtual methods
.method protected a()V
    .registers 3

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cM;->j:Lv/f;

    if-eqz v0, :cond_19

    .line 165
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cM;->j:Lv/f;

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cM;->i:I

    invoke-virtual {v0, v1}, Lv/f;->b(I)V

    .line 166
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cM;->j:Lv/f;

    iget-object v0, v0, Lv/f;->c:Ljava/lang/Object;

    check-cast v0, [I

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cM;->b:[I

    .line 167
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cM;->j:Lv/f;

    iget v0, v0, Lv/f;->d:I

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cM;->i:I

    .line 169
    :cond_19
    return-void
.end method

.method public a(FF)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/high16 v3, 0x4780

    .line 188
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cM;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cM;->d:I

    .line 189
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cM;->b:[I

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cM;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/cM;->i:I

    mul-float v2, p1, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    aput v2, v0, v1

    .line 190
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cM;->b:[I

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cM;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/cM;->i:I

    mul-float v2, p2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    aput v2, v0, v1

    .line 191
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cM;->i:I

    const/16 v1, 0x400

    if-lt v0, v1, :cond_31

    .line 192
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/cM;->a()V

    .line 194
    :cond_31
    return-void
.end method

.method public a(II)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 175
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cM;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cM;->d:I

    .line 176
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cM;->b:[I

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cM;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/cM;->i:I

    aput p1, v0, v1

    .line 177
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cM;->b:[I

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cM;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/cM;->i:I

    aput p2, v0, v1

    .line 178
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cM;->i:I

    const/16 v1, 0x400

    if-lt v0, v1, :cond_23

    .line 179
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/cM;->a()V

    .line 181
    :cond_23
    return-void
.end method

.method public a(III)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 220
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_23

    .line 221
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cM;->b:[I

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/cM;->i:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/maps/driveabout/vector/cM;->i:I

    aput p1, v1, v2

    .line 222
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cM;->b:[I

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/cM;->i:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/maps/driveabout/vector/cM;->i:I

    aput p2, v1, v2

    .line 223
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cM;->i:I

    const/16 v2, 0x400

    if-lt v1, v2, :cond_20

    .line 224
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/cM;->a()V

    .line 220
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 227
    :cond_23
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cM;->d:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cM;->d:I

    .line 228
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 2
    .parameter

    .prologue
    .line 266
    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/cM;->b(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 267
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cM;->d()V

    .line 268
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aU;I)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 348
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cM;->e:Ljava/nio/Buffer;

    if-nez v0, :cond_7

    .line 349
    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/cM;->e(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 351
    :cond_7
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cM;->e:Ljava/nio/Buffer;

    mul-int/lit8 v1, p2, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 352
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cM;->e:Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    sub-int/2addr v0, p2

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cM;->g:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cM;->a:I

    .line 358
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/cM;->f:I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/cM;->e:Ljava/nio/Buffer;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 360
    return-void
.end method

.method protected a(Ljava/nio/ByteBuffer;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 367
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_11

    .line 368
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cM;->b:[I

    aget v1, v1, v0

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/cM;->h:I

    div-int/2addr v1, v2

    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 367
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 370
    :cond_11
    return-void
.end method

.method protected a(Ljava/nio/ShortBuffer;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 377
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_11

    .line 378
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cM;->b:[I

    aget v1, v1, v0

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/cM;->h:I

    div-int/2addr v1, v2

    int-to-short v1, v1

    invoke-virtual {p1, v1}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 377
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 380
    :cond_11
    return-void
.end method

.method public a([I)V
    .registers 4
    .parameter

    .prologue
    .line 234
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/maps/driveabout/vector/cM;->a([III)V

    .line 235
    return-void
.end method

.method public a([III)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cM;->j:Lv/f;

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cM;->i:I

    add-int/2addr v0, p3

    const/16 v1, 0x400

    if-ge v0, v1, :cond_1f

    .line 201
    :cond_b
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cM;->b:[I

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cM;->i:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 202
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cM;->i:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cM;->i:I

    .line 213
    :cond_17
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cM;->d:I

    div-int/lit8 v1, p3, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cM;->d:I

    .line 214
    return-void

    .line 204
    :cond_1f
    add-int v0, p2, p3

    .line 205
    :goto_21
    if-ge p2, v0, :cond_17

    .line 206
    sub-int v1, v0, p2

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/cM;->i:I

    rsub-int v2, v2, 0x400

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 207
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cM;->b:[I

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/cM;->i:I

    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 208
    add-int/2addr p2, v1

    .line 209
    iget v2, p0, Lcom/google/android/maps/driveabout/vector/cM;->i:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/cM;->i:I

    .line 210
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/cM;->a()V

    goto :goto_21
.end method

.method public b()I
    .registers 2

    .prologue
    .line 432
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cM;->a:I

    return v0
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 2
    .parameter

    .prologue
    .line 275
    return-void
.end method

.method public c()I
    .registers 4

    .prologue
    .line 439
    const/16 v0, 0x2c

    .line 440
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cM;->j:Lv/f;

    if-eqz v1, :cond_1e

    .line 442
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cM;->j:Lv/f;

    invoke-virtual {v1}, Lv/f;->b()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    .line 446
    :cond_f
    :goto_f
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cM;->e:Ljava/nio/Buffer;

    if-eqz v1, :cond_1d

    .line 447
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cM;->e:Ljava/nio/Buffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/cM;->g:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 449
    :cond_1d
    return v0

    .line 443
    :cond_1e
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cM;->b:[I

    if-eqz v1, :cond_f

    .line 444
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cM;->b:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    goto :goto_f
.end method

.method public c(I)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 295
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cM;->c:I

    if-le p1, v0, :cond_40

    .line 296
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cM;->c:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 297
    mul-int/lit8 v0, v1, 0x2

    .line 298
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cM;->j:Lv/f;

    if-nez v2, :cond_60

    .line 299
    const/16 v2, 0x400

    if-lt v0, v2, :cond_1b

    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/cM;->k:Z

    if-eqz v2, :cond_41

    .line 300
    :cond_1b
    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/cM;->k:Z

    if-eqz v2, :cond_33

    .line 301
    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v2

    if-nez v2, :cond_2b

    invoke-static {}, Lcom/google/googlenav/common/c;->b()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 302
    :cond_2b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Attempt to grow fixed size buffer"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    :cond_33
    new-array v0, v0, [I

    .line 308
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cM;->b:[I

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/cM;->i:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 309
    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cM;->b:[I

    .line 319
    :goto_3e
    iput v1, p0, Lcom/google/android/maps/driveabout/vector/cM;->c:I

    .line 321
    :cond_40
    return-void

    .line 311
    :cond_41
    new-instance v2, Lv/f;

    invoke-direct {v2, v0}, Lv/f;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/cM;->j:Lv/f;

    .line 312
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cM;->j:Lv/f;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cM;->b:[I

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/cM;->i:I

    invoke-virtual {v0, v2, v3}, Lv/f;->a(Ljava/lang/Object;I)V

    .line 313
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cM;->j:Lv/f;

    iget-object v0, v0, Lv/f;->c:Ljava/lang/Object;

    check-cast v0, [I

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cM;->b:[I

    .line 314
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cM;->j:Lv/f;

    iget v0, v0, Lv/f;->d:I

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cM;->i:I

    goto :goto_3e

    .line 317
    :cond_60
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cM;->j:Lv/f;

    invoke-virtual {v2, v0}, Lv/f;->c(I)V

    goto :goto_3e
.end method

.method public c(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 282
    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/cM;->b(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 283
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cM;->j:Lv/f;

    if-eqz v0, :cond_f

    .line 284
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cM;->j:Lv/f;

    invoke-virtual {v0}, Lv/f;->c()V

    .line 285
    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/cM;->j:Lv/f;

    .line 287
    :cond_f
    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/cM;->b:[I

    .line 288
    return-void
.end method

.method public d(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 328
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cM;->e:Ljava/nio/Buffer;

    if-nez v0, :cond_8

    .line 329
    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/cM;->e(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 331
    :cond_8
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cM;->e:Ljava/nio/Buffer;

    invoke-virtual {v0, v4}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 332
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cM;->e:Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cM;->g:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cM;->a:I

    .line 338
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/cM;->f:I

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cM;->e:Ljava/nio/Buffer;

    invoke-interface {v0, v1, v2, v4, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 340
    return-void
.end method

.method protected e(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 392
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cM;->d:I

    mul-int/lit8 v1, v0, 0x2

    .line 393
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aU;->k()Lcom/google/android/maps/driveabout/vector/cp;

    move-result-object v0

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/cM;->g:I

    mul-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/vector/cp;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 394
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 397
    iget v2, p0, Lcom/google/android/maps/driveabout/vector/cM;->f:I

    const/16 v3, 0x1402

    if-ne v2, v3, :cond_4b

    .line 398
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cM;->e:Ljava/nio/Buffer;

    .line 399
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cM;->j:Lv/f;

    if-nez v0, :cond_3c

    .line 400
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cM;->e:Ljava/nio/Buffer;

    check-cast v0, Ljava/nio/ShortBuffer;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/maps/driveabout/vector/cM;->a(Ljava/nio/ShortBuffer;I)V

    .line 423
    :goto_2e
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cM;->j:Lv/f;

    if-eqz v0, :cond_39

    .line 424
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cM;->j:Lv/f;

    invoke-virtual {v0}, Lv/f;->c()V

    .line 425
    iput-object v4, p0, Lcom/google/android/maps/driveabout/vector/cM;->j:Lv/f;

    .line 427
    :cond_39
    iput-object v4, p0, Lcom/google/android/maps/driveabout/vector/cM;->b:[I

    .line 428
    return-void

    .line 402
    :cond_3c
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/cM;->a()V

    .line 403
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cM;->j:Lv/f;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cM;->e:Ljava/nio/Buffer;

    check-cast v0, Ljava/nio/ShortBuffer;

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/cM;->h:I

    invoke-virtual {v1, v0, v2}, Lv/f;->a(Ljava/nio/ShortBuffer;I)V

    goto :goto_2e

    .line 405
    :cond_4b
    iget v2, p0, Lcom/google/android/maps/driveabout/vector/cM;->f:I

    const/16 v3, 0x1400

    if-eq v2, v3, :cond_57

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/cM;->f:I

    const/16 v3, 0x1401

    if-ne v2, v3, :cond_74

    .line 406
    :cond_57
    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cM;->e:Ljava/nio/Buffer;

    .line 407
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cM;->j:Lv/f;

    if-nez v0, :cond_65

    .line 408
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cM;->e:Ljava/nio/Buffer;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/maps/driveabout/vector/cM;->a(Ljava/nio/ByteBuffer;I)V

    goto :goto_2e

    .line 410
    :cond_65
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/cM;->a()V

    .line 411
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cM;->j:Lv/f;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cM;->e:Ljava/nio/Buffer;

    check-cast v0, Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/cM;->h:I

    invoke-virtual {v1, v0, v2}, Lv/f;->a(Ljava/nio/ByteBuffer;I)V

    goto :goto_2e

    .line 414
    :cond_74
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cM;->e:Ljava/nio/Buffer;

    .line 415
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cM;->j:Lv/f;

    if-nez v0, :cond_89

    .line 416
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cM;->e:Ljava/nio/Buffer;

    check-cast v0, Ljava/nio/IntBuffer;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cM;->b:[I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    goto :goto_2e

    .line 418
    :cond_89
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/cM;->a()V

    .line 419
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cM;->j:Lv/f;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cM;->e:Ljava/nio/Buffer;

    check-cast v0, Ljava/nio/IntBuffer;

    invoke-virtual {v1, v0}, Lv/f;->a(Ljava/nio/IntBuffer;)V

    goto :goto_2e
.end method

.method public g()I
    .registers 2

    .prologue
    .line 242
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cM;->d:I

    return v0
.end method

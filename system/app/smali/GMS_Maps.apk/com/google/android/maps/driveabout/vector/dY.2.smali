.class public Lcom/google/android/maps/driveabout/vector/dY;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/ea;


# instance fields
.field protected a:I

.field b:[I

.field c:I

.field d:I

.field e:Ljava/nio/IntBuffer;

.field f:I

.field protected g:Lv/f;

.field private h:Z


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/dY;->a:I

    .line 97
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/driveabout/vector/dY;-><init>(IZ)V

    .line 79
    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/dY;->a:I

    .line 88
    iput-boolean p2, p0, Lcom/google/android/maps/driveabout/vector/dY;->h:Z

    .line 89
    iput p1, p0, Lcom/google/android/maps/driveabout/vector/dY;->c:I

    .line 90
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/dY;->e()V

    .line 91
    return-void
.end method

.method private e()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 180
    iput v2, p0, Lcom/google/android/maps/driveabout/vector/dY;->f:I

    .line 181
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dY;->b:[I

    if-nez v0, :cond_28

    .line 182
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/dY;->c:I

    mul-int/lit8 v0, v0, 0x3

    .line 183
    const/16 v1, 0x400

    if-lt v0, v1, :cond_13

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/dY;->h:Z

    if-eqz v1, :cond_1d

    .line 184
    :cond_13
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/dY;->b:[I

    .line 193
    :cond_17
    :goto_17
    iput v2, p0, Lcom/google/android/maps/driveabout/vector/dY;->d:I

    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/dY;->e:Ljava/nio/IntBuffer;

    .line 195
    return-void

    .line 186
    :cond_1d
    new-instance v1, Lv/f;

    invoke-direct {v1, v0}, Lv/f;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/dY;->g:Lv/f;

    .line 187
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/dY;->b()V

    goto :goto_17

    .line 189
    :cond_28
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dY;->g:Lv/f;

    if-eqz v0, :cond_17

    .line 190
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dY;->g:Lv/f;

    invoke-virtual {v0}, Lv/f;->a()V

    .line 191
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/dY;->b()V

    goto :goto_17
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 175
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/dY;->d:I

    return v0
.end method

.method public a(FFF)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v3, 0x4780

    .line 147
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/dY;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/dY;->d:I

    .line 148
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dY;->b:[I

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/dY;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/dY;->f:I

    mul-float v2, p1, v3

    float-to-int v2, v2

    aput v2, v0, v1

    .line 149
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dY;->b:[I

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/dY;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/dY;->f:I

    mul-float v2, p2, v3

    float-to-int v2, v2

    aput v2, v0, v1

    .line 150
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dY;->b:[I

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/dY;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/dY;->f:I

    mul-float v2, p3, v3

    float-to-int v2, v2

    aput v2, v0, v1

    .line 151
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/dY;->f:I

    const/16 v1, 0x400

    if-lt v0, v1, :cond_38

    .line 152
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/dY;->b()V

    .line 154
    :cond_38
    return-void
.end method

.method public a(I)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 228
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/dY;->c:I

    if-le p1, v0, :cond_40

    .line 229
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/dY;->c:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 230
    mul-int/lit8 v0, v1, 0x3

    .line 231
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/dY;->g:Lv/f;

    if-nez v2, :cond_60

    .line 232
    const/16 v2, 0x400

    if-lt v0, v2, :cond_1b

    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/dY;->h:Z

    if-eqz v2, :cond_41

    .line 233
    :cond_1b
    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/dY;->h:Z

    if-eqz v2, :cond_33

    .line 234
    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v2

    if-nez v2, :cond_2b

    invoke-static {}, Lcom/google/googlenav/common/c;->b()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 235
    :cond_2b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Attempt to grow fixed size buffer"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_33
    new-array v0, v0, [I

    .line 241
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/dY;->b:[I

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/dY;->f:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 242
    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/dY;->b:[I

    .line 252
    :goto_3e
    iput v1, p0, Lcom/google/android/maps/driveabout/vector/dY;->c:I

    .line 254
    :cond_40
    return-void

    .line 244
    :cond_41
    new-instance v2, Lv/f;

    invoke-direct {v2, v0}, Lv/f;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/dY;->g:Lv/f;

    .line 245
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dY;->g:Lv/f;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/dY;->b:[I

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/dY;->f:I

    invoke-virtual {v0, v2, v3}, Lv/f;->a(Ljava/lang/Object;I)V

    .line 246
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dY;->g:Lv/f;

    iget-object v0, v0, Lv/f;->c:Ljava/lang/Object;

    check-cast v0, [I

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/dY;->b:[I

    .line 247
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dY;->g:Lv/f;

    iget v0, v0, Lv/f;->d:I

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/dY;->f:I

    goto :goto_3e

    .line 250
    :cond_60
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/dY;->g:Lv/f;

    invoke-virtual {v2, v0}, Lv/f;->c(I)V

    goto :goto_3e
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 2
    .parameter

    .prologue
    .line 199
    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/dY;->b(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 200
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/dY;->e()V

    .line 201
    return-void
.end method

.method public a(Ln/Q;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 125
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/dY;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/dY;->d:I

    .line 126
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dY;->b:[I

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/dY;->f:I

    invoke-virtual {p1, p2, v0, v1}, Ln/Q;->a(I[II)V

    .line 127
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/dY;->f:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/dY;->f:I

    .line 128
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/dY;->f:I

    const/16 v1, 0x400

    if-lt v0, v1, :cond_1c

    .line 129
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/dY;->b()V

    .line 131
    :cond_1c
    return-void
.end method

.method public a(Ln/Q;IB)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 139
    invoke-virtual {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/dY;->a(Ln/Q;I)V

    .line 140
    return-void
.end method

.method protected b()V
    .registers 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dY;->g:Lv/f;

    if-eqz v0, :cond_19

    .line 101
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dY;->g:Lv/f;

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/dY;->f:I

    invoke-virtual {v0, v1}, Lv/f;->b(I)V

    .line 102
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dY;->g:Lv/f;

    iget-object v0, v0, Lv/f;->c:Ljava/lang/Object;

    check-cast v0, [I

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/dY;->b:[I

    .line 103
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dY;->g:Lv/f;

    iget v0, v0, Lv/f;->d:I

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/dY;->f:I

    .line 105
    :cond_19
    return-void
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 2
    .parameter

    .prologue
    .line 208
    return-void
.end method

.method public c()I
    .registers 2

    .prologue
    .line 304
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/dY;->a:I

    return v0
.end method

.method public c(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 215
    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/dY;->b(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 216
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dY;->g:Lv/f;

    if-eqz v0, :cond_f

    .line 217
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dY;->g:Lv/f;

    invoke-virtual {v0}, Lv/f;->c()V

    .line 218
    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/dY;->g:Lv/f;

    .line 220
    :cond_f
    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/dY;->b:[I

    .line 221
    return-void
.end method

.method public d()I
    .registers 3

    .prologue
    .line 311
    const/16 v0, 0x20

    .line 312
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/dY;->g:Lv/f;

    if-eqz v1, :cond_1d

    .line 314
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/dY;->g:Lv/f;

    invoke-virtual {v1}, Lv/f;->b()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    .line 318
    :cond_f
    :goto_f
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/dY;->e:Ljava/nio/IntBuffer;

    if-eqz v1, :cond_1c

    .line 319
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/dY;->e:Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->capacity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    .line 321
    :cond_1c
    return v0

    .line 315
    :cond_1d
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/dY;->b:[I

    if-eqz v1, :cond_f

    .line 316
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/dY;->b:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    goto :goto_f
.end method

.method public d(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 7
    .parameter

    .prologue
    .line 268
    monitor-enter p0

    .line 269
    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dY;->e:Ljava/nio/IntBuffer;

    if-nez v0, :cond_8

    .line 270
    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/dY;->e(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 272
    :cond_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_1f

    .line 273
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dY;->e:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->limit()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/dY;->a:I

    .line 280
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v1, 0x3

    const/16 v2, 0x140c

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/dY;->e:Ljava/nio/IntBuffer;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 282
    return-void

    .line 272
    :catchall_1f
    move-exception v0

    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method protected e(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 286
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/dY;->d:I

    mul-int/lit8 v0, v0, 0x3

    .line 287
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aU;->k()Lcom/google/android/maps/driveabout/vector/cp;

    move-result-object v1

    mul-int/lit8 v2, v0, 0x4

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/vector/cp;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 288
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 289
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/dY;->e:Ljava/nio/IntBuffer;

    .line 290
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/dY;->g:Lv/f;

    if-nez v1, :cond_30

    .line 291
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/dY;->e:Ljava/nio/IntBuffer;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/dY;->b:[I

    invoke-virtual {v1, v2, v3, v0}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    .line 298
    :goto_28
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dY;->e:Ljava/nio/IntBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 299
    iput-object v4, p0, Lcom/google/android/maps/driveabout/vector/dY;->b:[I

    .line 300
    return-void

    .line 293
    :cond_30
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/dY;->b()V

    .line 294
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dY;->g:Lv/f;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/dY;->e:Ljava/nio/IntBuffer;

    invoke-virtual {v0, v1}, Lv/f;->a(Ljava/nio/IntBuffer;)V

    .line 295
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dY;->g:Lv/f;

    invoke-virtual {v0}, Lv/f;->c()V

    .line 296
    iput-object v4, p0, Lcom/google/android/maps/driveabout/vector/dY;->g:Lv/f;

    goto :goto_28
.end method

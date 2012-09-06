.class Lx/z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected b:Lx/a;

.field protected c:[I

.field d:I


# direct methods
.method protected constructor <init>(Lx/a;)V
    .registers 3
    .parameter

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lx/z;->b:Lx/a;

    .line 67
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lx/z;->c:[I

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lx/z;->d:I

    .line 69
    return-void
.end method

.method protected constructor <init>(Lx/a;[I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lx/z;->b:Lx/a;

    .line 73
    iput-object p2, p0, Lx/z;->c:[I

    .line 74
    array-length v0, p2

    iput v0, p0, Lx/z;->d:I

    .line 75
    return-void
.end method

.method protected constructor <init>([D)V
    .registers 3
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static {p1}, Lx/r;->a([D)Lx/r;

    move-result-object v0

    iput-object v0, p0, Lx/z;->b:Lx/a;

    .line 61
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lx/z;->c:[I

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lx/z;->d:I

    .line 63
    return-void
.end method

.method private static a([II)I
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 388
    if-nez p0, :cond_4

    .line 395
    :cond_3
    return v0

    .line 391
    :cond_4
    const/4 v1, 0x1

    move v3, v0

    move v0, v1

    move v1, v3

    .line 392
    :goto_8
    if-ge v1, p1, :cond_3

    .line 393
    mul-int/lit8 v0, v0, 0x1f

    aget v2, p0, v1

    add-int/2addr v2, v0

    .line 392
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_8
.end method

.method private static a([II[II)Z
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 364
    if-ne p1, v1, :cond_5

    .line 365
    array-length p1, p0

    .line 367
    :cond_5
    if-ne p3, v1, :cond_8

    .line 368
    array-length p3, p2

    .line 370
    :cond_8
    if-ne p1, p3, :cond_14

    if-eqz p0, :cond_14

    if-eqz p2, :cond_14

    array-length v1, p0

    if-lt v1, p1, :cond_14

    array-length v1, p2

    if-ge v1, p1, :cond_15

    .line 379
    :cond_14
    :goto_14
    return v0

    :cond_15
    move v1, v0

    .line 374
    :goto_16
    if-ge v1, p1, :cond_21

    .line 375
    aget v2, p0, v1

    aget v3, p2, v1

    if-ne v2, v3, :cond_14

    .line 374
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 379
    :cond_21
    const/4 v0, 0x1

    goto :goto_14
.end method

.method private q(I)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 329
    iget v0, p0, Lx/z;->d:I

    add-int/2addr v0, p1

    .line 330
    iget-object v1, p0, Lx/z;->c:[I

    array-length v1, v1

    if-ge v1, v0, :cond_27

    .line 332
    iget v0, p0, Lx/z;->d:I

    iget-object v1, p0, Lx/z;->c:[I

    array-length v1, v1

    int-to-double v1, v1

    const-wide/high16 v3, 0x3ff8

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x3ff0

    add-double/2addr v1, v3

    double-to-int v1, v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 334
    new-array v0, v0, [I

    .line 335
    iget-object v1, p0, Lx/z;->c:[I

    iget-object v2, p0, Lx/z;->c:[I

    array-length v2, v2

    invoke-static {v1, v5, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 336
    iput-object v0, p0, Lx/z;->c:[I

    .line 338
    :cond_27
    return-void
.end method


# virtual methods
.method public a(III)D
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Lx/z;->b:Lx/a;

    invoke-virtual {v0, p1, p2, p3}, Lx/a;->a(III)D

    move-result-wide v0

    return-wide v0
.end method

.method public a()V
    .registers 2

    .prologue
    .line 253
    const/4 v0, 0x0

    iput v0, p0, Lx/z;->d:I

    .line 254
    return-void
.end method

.method public a(I)V
    .registers 6
    .parameter

    .prologue
    .line 294
    iget-object v0, p0, Lx/z;->c:[I

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lx/z;->c:[I

    iget v3, p0, Lx/z;->d:I

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 295
    iget v0, p0, Lx/z;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lx/z;->d:I

    .line 296
    return-void
.end method

.method protected a(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 360
    instance-of v0, p1, Lx/z;

    return v0
.end method

.method public b(I)D
    .registers 4
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lx/z;->b:Lx/a;

    invoke-virtual {v0, p1}, Lx/a;->a(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public b(III)D
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    .line 234
    iget-object v0, p0, Lx/z;->b:Lx/a;

    iget-object v1, p0, Lx/z;->c:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Lx/a;->a(I)D

    move-result-wide v0

    iget-object v2, p0, Lx/z;->b:Lx/a;

    iget-object v3, p0, Lx/z;->c:[I

    aget v3, v3, p2

    invoke-virtual {v2, v3}, Lx/a;->a(I)D

    move-result-wide v2

    sub-double/2addr v0, v2

    iget-object v2, p0, Lx/z;->b:Lx/a;

    iget-object v3, p0, Lx/z;->c:[I

    aget v3, v3, p3

    invoke-virtual {v2, v3}, Lx/a;->b(I)D

    move-result-wide v2

    iget-object v4, p0, Lx/z;->b:Lx/a;

    iget-object v5, p0, Lx/z;->c:[I

    aget v5, v5, p2

    invoke-virtual {v4, v5}, Lx/a;->b(I)D

    move-result-wide v4

    sub-double/2addr v2, v4

    mul-double/2addr v0, v2

    iget-object v2, p0, Lx/z;->b:Lx/a;

    iget-object v3, p0, Lx/z;->c:[I

    aget v3, v3, p1

    invoke-virtual {v2, v3}, Lx/a;->b(I)D

    move-result-wide v2

    iget-object v4, p0, Lx/z;->b:Lx/a;

    iget-object v5, p0, Lx/z;->c:[I

    aget v5, v5, p2

    invoke-virtual {v4, v5}, Lx/a;->b(I)D

    move-result-wide v4

    sub-double/2addr v2, v4

    iget-object v4, p0, Lx/z;->b:Lx/a;

    iget-object v5, p0, Lx/z;->c:[I

    aget v5, v5, p3

    invoke-virtual {v4, v5}, Lx/a;->a(I)D

    move-result-wide v4

    iget-object v6, p0, Lx/z;->b:Lx/a;

    iget-object v7, p0, Lx/z;->c:[I

    aget v7, v7, p2

    invoke-virtual {v6, v7}, Lx/a;->a(I)D

    move-result-wide v6

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    neg-double v0, v0

    const-wide/high16 v2, 0x4000

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public b()V
    .registers 2

    .prologue
    .line 289
    iget v0, p0, Lx/z;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lx/z;->d:I

    .line 290
    return-void
.end method

.method public varargs b([I)V
    .registers 7
    .parameter

    .prologue
    .line 258
    array-length v0, p1

    invoke-direct {p0, v0}, Lx/z;->q(I)V

    .line 259
    array-length v1, p1

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v1, :cond_1d

    aget v2, p1, v0

    .line 260
    iget-object v3, p0, Lx/z;->c:[I

    iget v4, p0, Lx/z;->d:I

    invoke-virtual {p0, v2}, Lx/z;->o(I)I

    move-result v2

    aput v2, v3, v4

    .line 261
    iget v2, p0, Lx/z;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lx/z;->d:I

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 263
    :cond_1d
    return-void
.end method

.method public c(I)D
    .registers 4
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lx/z;->b:Lx/a;

    invoke-virtual {v0, p1}, Lx/a;->b(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public c(III)D
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 246
    iget-object v0, p0, Lx/z;->b:Lx/a;

    invoke-virtual {v0, p1, p2, p3}, Lx/a;->b(III)D

    move-result-wide v0

    return-wide v0
.end method

.method public c()Lx/z;
    .registers 3

    .prologue
    .line 54
    new-instance v0, Lx/z;

    iget-object v1, p0, Lx/z;->b:Lx/a;

    invoke-direct {v0, v1}, Lx/z;-><init>(Lx/a;)V

    return-object v0
.end method

.method public d()I
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lx/z;->b:Lx/a;

    invoke-virtual {v0}, Lx/a;->a()I

    move-result v0

    return v0
.end method

.method public d(I)I
    .registers 3
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lx/z;->b:Lx/a;

    invoke-virtual {v0, p1}, Lx/a;->c(I)I

    move-result v0

    return v0
.end method

.method public e()I
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lx/z;->b:Lx/a;

    iget v0, v0, Lx/a;->a:I

    return v0
.end method

.method public e(I)I
    .registers 3
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lx/z;->b:Lx/a;

    invoke-virtual {v0, p1}, Lx/a;->d(I)I

    move-result v0

    return v0
.end method

.method public e(II)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 267
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lx/z;->q(I)V

    .line 268
    iget-object v0, p0, Lx/z;->c:[I

    iget-object v1, p0, Lx/z;->c:[I

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lx/z;->d:I

    sub-int/2addr v3, p1

    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 269
    iget-object v0, p0, Lx/z;->c:[I

    invoke-virtual {p0, p2}, Lx/z;->o(I)I

    move-result v1

    aput v1, v0, p1

    .line 270
    iget v0, p0, Lx/z;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lx/z;->d:I

    .line 271
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 344
    if-ne p1, p0, :cond_5

    .line 356
    :cond_4
    :goto_4
    return v0

    .line 347
    :cond_5
    instance-of v2, p1, Lx/z;

    if-nez v2, :cond_b

    move v0, v1

    .line 348
    goto :goto_4

    .line 350
    :cond_b
    check-cast p1, Lx/z;

    .line 351
    invoke-virtual {p1, p0}, Lx/z;->a(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lx/z;->b:Lx/a;

    iget-object v3, p1, Lx/z;->b:Lx/a;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lx/z;->c:[I

    iget v3, p0, Lx/z;->d:I

    iget-object v4, p1, Lx/z;->c:[I

    iget v5, p1, Lx/z;->d:I

    invoke-static {v2, v3, v4, v5}, Lx/z;->a([II[II)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_2b
    move v0, v1

    .line 353
    goto :goto_4
.end method

.method public f()I
    .registers 3

    .prologue
    .line 171
    iget-object v0, p0, Lx/z;->b:Lx/a;

    iget v1, p0, Lx/z;->d:I

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p0, v1}, Lx/z;->j(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lx/a;->h(I)I

    move-result v0

    return v0
.end method

.method public f(I)Lx/c;
    .registers 3
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lx/z;->b:Lx/a;

    invoke-virtual {v0, p1}, Lx/a;->e(I)Lx/c;

    move-result-object v0

    return-object v0
.end method

.method public f(II)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 275
    iget-object v0, p0, Lx/z;->c:[I

    invoke-virtual {p0, p1}, Lx/z;->n(I)I

    move-result v1

    invoke-virtual {p0, p2}, Lx/z;->o(I)I

    move-result v2

    aput v2, v0, v1

    .line 276
    return-void
.end method

.method public g(I)D
    .registers 4
    .parameter

    .prologue
    .line 141
    iget-object v0, p0, Lx/z;->b:Lx/a;

    invoke-virtual {p0, p1}, Lx/z;->j(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lx/a;->a(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public g(II)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lx/z;->b:Lx/a;

    invoke-virtual {v0, p1, p2}, Lx/a;->a(II)I

    move-result v0

    return v0
.end method

.method public h(I)D
    .registers 4
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lx/z;->b:Lx/a;

    invoke-virtual {p0, p1}, Lx/z;->j(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lx/a;->b(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public h(II)I
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 181
    iget-object v0, p0, Lx/z;->b:Lx/a;

    invoke-virtual {v0, p1}, Lx/a;->h(I)I

    move-result v0

    .line 182
    :goto_6
    iget v1, p0, Lx/z;->d:I

    if-ge p2, v1, :cond_14

    .line 183
    invoke-virtual {p0, p2}, Lx/z;->j(I)I

    move-result v1

    if-ne v1, v0, :cond_11

    .line 187
    :goto_10
    return p2

    .line 182
    :cond_11
    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    .line 187
    :cond_14
    const/4 p2, -0x1

    goto :goto_10
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 384
    iget-object v0, p0, Lx/z;->b:Lx/a;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lx/z;->c:[I

    iget v2, p0, Lx/z;->d:I

    invoke-static {v1, v2}, Lx/z;->a([II)I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

.method public i(I)Z
    .registers 4
    .parameter

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lx/z;->j(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public i(II)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 192
    iget-object v0, p0, Lx/z;->b:Lx/a;

    invoke-virtual {p0, p2}, Lx/z;->j(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lx/a;->h(I)I

    move-result v0

    iget-object v1, p0, Lx/z;->b:Lx/a;

    invoke-virtual {v1, p1}, Lx/a;->h(I)I

    move-result v1

    if-ne v0, v1, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public j(I)I
    .registers 4
    .parameter

    .prologue
    .line 156
    iget-object v0, p0, Lx/z;->c:[I

    invoke-virtual {p0, p1}, Lx/z;->n(I)I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public k(I)I
    .registers 4
    .parameter

    .prologue
    .line 161
    iget-object v0, p0, Lx/z;->b:Lx/a;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Lx/z;->j(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lx/a;->h(I)I

    move-result v0

    return v0
.end method

.method public l(I)Z
    .registers 5
    .parameter

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Lx/z;->k(I)I

    move-result v0

    iget-object v1, p0, Lx/z;->b:Lx/a;

    invoke-virtual {p0, p1}, Lx/z;->j(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lx/a;->d(I)I

    move-result v1

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public m(I)Z
    .registers 5
    .parameter

    .prologue
    .line 209
    invoke-virtual {p0, p1}, Lx/z;->k(I)I

    move-result v0

    iget-object v1, p0, Lx/z;->b:Lx/a;

    invoke-virtual {p0, p1}, Lx/z;->j(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lx/a;->c(I)I

    move-result v1

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method protected n(I)I
    .registers 4
    .parameter

    .prologue
    .line 306
    iget v0, p0, Lx/z;->d:I

    if-nez v0, :cond_a

    .line 307
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 309
    :cond_a
    iget v0, p0, Lx/z;->d:I

    rem-int v0, p1, v0

    .line 312
    if-gez v0, :cond_13

    iget v1, p0, Lx/z;->d:I

    add-int/2addr v0, v1

    :cond_13
    return v0
.end method

.method protected o(I)I
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 320
    if-ne p1, v0, :cond_4

    .line 323
    :goto_3
    return v0

    :cond_4
    iget-object v0, p0, Lx/z;->b:Lx/a;

    invoke-virtual {v0, p1}, Lx/a;->h(I)I

    move-result v0

    goto :goto_3
.end method

.method p(I)Ljava/lang/String;
    .registers 9
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 413
    iget v0, p0, Lx/z;->d:I

    add-int/lit8 v2, v0, -0x1

    .line 414
    const/4 v0, -0x1

    if-ne v2, v0, :cond_b

    .line 415
    const-string v0, "[]"

    .line 423
    :goto_a
    return-object v0

    .line 418
    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 419
    const/16 v0, 0x5b

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v1

    .line 421
    :goto_16
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lx/z;->c:[I

    aget v6, v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    if-ne v0, v2, :cond_50

    .line 423
    const/16 v0, 0x5d

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 425
    :cond_50
    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    add-int/lit8 v0, v0, 0x1

    goto :goto_16
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 401
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lx/z;->p(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    iget v1, p0, Lx/z;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 405
    const-string v1, ",\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    iget-object v1, p0, Lx/z;->b:Lx/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 407
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

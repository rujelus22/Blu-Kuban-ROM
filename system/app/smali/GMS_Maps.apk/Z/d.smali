.class public Lz/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz/C;


# instance fields
.field private a:Lz/w;

.field private volatile b:[F

.field c:[F

.field d:I

.field private e:[F

.field private f:[F

.field private g:[F

.field private h:Z

.field private i:B

.field private j:Z

.field private final k:F

.field private final l:F

.field private final m:F

.field private final n:Lz/f;

.field private o:Ljava/util/List;


# direct methods
.method public constructor <init>(Lz/w;I[F)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x10

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-array v0, v1, [F

    iput-object v0, p0, Lz/d;->b:[F

    .line 42
    new-array v0, v1, [F

    iput-object v0, p0, Lz/d;->e:[F

    .line 49
    new-array v0, v1, [F

    iput-object v0, p0, Lz/d;->c:[F

    .line 54
    new-array v0, v1, [F

    iput-object v0, p0, Lz/d;->f:[F

    .line 60
    new-array v0, v1, [F

    iput-object v0, p0, Lz/d;->g:[F

    .line 65
    iput-boolean v2, p0, Lz/d;->h:Z

    .line 71
    iput v2, p0, Lz/d;->d:I

    .line 85
    iput-boolean v2, p0, Lz/d;->j:Z

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz/d;->o:Ljava/util/List;

    .line 155
    iput-object p1, p0, Lz/d;->a:Lz/w;

    .line 156
    int-to-byte v0, p2

    iput-byte v0, p0, Lz/d;->i:B

    .line 157
    const/high16 v0, -0x4080

    iput v0, p0, Lz/d;->k:F

    .line 158
    const/high16 v0, 0x3f80

    iput v0, p0, Lz/d;->l:F

    .line 159
    const/4 v0, 0x0

    iput v0, p0, Lz/d;->m:F

    .line 160
    sget-object v0, Lz/f;->c:Lz/f;

    iput-object v0, p0, Lz/d;->n:Lz/f;

    .line 161
    iget-object v0, p0, Lz/d;->b:[F

    invoke-static {p3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lz/d;->h:Z

    .line 163
    return-void
.end method


# virtual methods
.method A()V
    .registers 1

    .prologue
    .line 341
    return-void
.end method

.method public B()B
    .registers 2

    .prologue
    .line 385
    iget-byte v0, p0, Lz/d;->i:B

    return v0
.end method

.method C()V
    .registers 4

    .prologue
    .line 516
    iget-object v0, p0, Lz/d;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz/u;

    .line 517
    iget-object v2, p0, Lz/d;->g:[F

    invoke-interface {v0, p0, v2}, Lz/u;->a(Lz/d;[F)V

    goto :goto_6

    .line 519
    :cond_18
    return-void
.end method

.method public a(Lz/B;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 194
    iget-boolean v0, p0, Lz/d;->j:Z

    if-eqz v0, :cond_8

    .line 195
    invoke-static {}, Lz/j;->c()V

    .line 200
    :cond_8
    iget-object v0, p0, Lz/d;->b:[F

    iget-object v1, p1, Lz/B;->a:[F

    invoke-static {v0, v2, v1, v2}, Landroid/opengl/Matrix;->invertM([FI[FI)Z

    .line 201
    invoke-virtual {p0}, Lz/d;->x()V

    .line 202
    return-void
.end method

.method a(Lz/w;II)V
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    .line 290
    iget-object v8, p0, Lz/d;->g:[F

    monitor-enter v8

    .line 291
    :try_start_3
    sget-object v0, Lz/e;->a:[I

    iget-object v1, p0, Lz/d;->n:Lz/f;

    invoke-virtual {v1}, Lz/f;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_4a

    .line 303
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unimplemented projection type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lz/d;->n:Lz/f;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    :catchall_2b
    move-exception v0

    monitor-exit v8
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v0

    .line 293
    :pswitch_2e
    :try_start_2e
    iget-object v0, p0, Lz/d;->g:[F

    invoke-virtual {p0, v0, p2, p3}, Lz/d;->a([FII)V

    .line 305
    :goto_33
    :pswitch_33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lz/d;->h:Z

    .line 306
    invoke-virtual {p0}, Lz/d;->C()V

    .line 307
    monitor-exit v8

    .line 308
    return-void

    .line 296
    :pswitch_3b
    iget-object v1, p0, Lz/d;->g:[F

    const/4 v2, 0x0

    int-to-float v3, p2

    const/4 v4, 0x0

    int-to-float v5, p3

    iget v6, p0, Lz/d;->k:F

    iget v7, p0, Lz/d;->l:F

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lz/d;->a([FFFFFFF)V
    :try_end_49
    .catchall {:try_start_2e .. :try_end_49} :catchall_2b

    goto :goto_33

    .line 291
    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_3b
        :pswitch_33
    .end packed-switch
.end method

.method public a([FFFFFFF)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x4000

    const/4 v3, 0x0

    .line 451
    cmpl-float v0, p2, p3

    if-eqz v0, :cond_f

    cmpl-float v0, p5, p4

    if-eqz v0, :cond_f

    cmpl-float v0, p6, p7

    if-nez v0, :cond_10

    .line 481
    :cond_f
    :goto_f
    return-void

    .line 459
    :cond_10
    const/4 v0, 0x0

    sub-float v1, p3, p2

    div-float v1, v2, v1

    aput v1, p1, v0

    .line 460
    const/4 v0, 0x1

    aput v3, p1, v0

    .line 461
    const/4 v0, 0x2

    aput v3, p1, v0

    .line 462
    const/4 v0, 0x3

    aput v3, p1, v0

    .line 465
    const/4 v0, 0x4

    aput v3, p1, v0

    .line 466
    const/4 v0, 0x5

    sub-float v1, p5, p4

    div-float v1, v2, v1

    aput v1, p1, v0

    .line 467
    const/4 v0, 0x6

    aput v3, p1, v0

    .line 468
    const/4 v0, 0x7

    aput v3, p1, v0

    .line 471
    const/16 v0, 0x8

    aput v3, p1, v0

    .line 472
    const/16 v0, 0x9

    aput v3, p1, v0

    .line 473
    const/16 v0, 0xa

    const/high16 v1, -0x4000

    sub-float v2, p7, p6

    div-float/2addr v1, v2

    aput v1, p1, v0

    .line 474
    const/16 v0, 0xb

    aput v3, p1, v0

    .line 477
    const/16 v0, 0xc

    add-float v1, p3, p2

    neg-float v1, v1

    sub-float v2, p3, p2

    div-float/2addr v1, v2

    aput v1, p1, v0

    .line 478
    const/16 v0, 0xd

    add-float v1, p5, p4

    neg-float v1, v1

    sub-float v2, p5, p4

    div-float/2addr v1, v2

    aput v1, p1, v0

    .line 479
    const/16 v0, 0xe

    add-float v1, p7, p6

    neg-float v1, v1

    sub-float v2, p7, p6

    div-float/2addr v1, v2

    aput v1, p1, v0

    .line 480
    const/16 v0, 0xf

    const/high16 v1, 0x3f80

    aput v1, p1, v0

    goto :goto_f
.end method

.method public a([FII)V
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v8, 0x4000

    const/4 v7, 0x0

    .line 399
    if-nez p3, :cond_88

    .line 400
    const/high16 v0, 0x3f80

    .line 409
    :goto_7
    iget v1, p0, Lz/d;->k:F

    iget v2, p0, Lz/d;->m:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4000

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v1, v2

    .line 411
    neg-float v2, v1

    .line 413
    neg-float v3, v1

    div-float/2addr v3, v0

    .line 414
    div-float v0, v1, v0

    .line 417
    const/4 v4, 0x0

    iget v5, p0, Lz/d;->k:F

    mul-float/2addr v5, v8

    sub-float v6, v1, v2

    div-float/2addr v5, v6

    aput v5, p1, v4

    .line 418
    const/4 v4, 0x1

    aput v7, p1, v4

    .line 419
    const/4 v4, 0x2

    aput v7, p1, v4

    .line 420
    const/4 v4, 0x3

    aput v7, p1, v4

    .line 423
    const/4 v4, 0x4

    aput v7, p1, v4

    .line 424
    const/4 v4, 0x5

    iget v5, p0, Lz/d;->k:F

    mul-float/2addr v5, v8

    sub-float v6, v0, v3

    div-float/2addr v5, v6

    aput v5, p1, v4

    .line 425
    const/4 v4, 0x6

    aput v7, p1, v4

    .line 426
    const/4 v4, 0x7

    aput v7, p1, v4

    .line 429
    const/16 v4, 0x8

    add-float v5, v1, v2

    sub-float/2addr v1, v2

    div-float v1, v5, v1

    aput v1, p1, v4

    .line 430
    const/16 v1, 0x9

    add-float v2, v0, v3

    sub-float/2addr v0, v3

    div-float v0, v2, v0

    aput v0, p1, v1

    .line 431
    const/16 v0, 0xa

    iget v1, p0, Lz/d;->l:F

    iget v2, p0, Lz/d;->k:F

    add-float/2addr v1, v2

    neg-float v1, v1

    iget v2, p0, Lz/d;->l:F

    iget v3, p0, Lz/d;->k:F

    sub-float/2addr v2, v3

    div-float/2addr v1, v2

    aput v1, p1, v0

    .line 432
    const/16 v0, 0xb

    const/high16 v1, -0x4080

    aput v1, p1, v0

    .line 435
    const/16 v0, 0xc

    aput v7, p1, v0

    .line 436
    const/16 v0, 0xd

    aput v7, p1, v0

    .line 437
    const/16 v0, 0xe

    iget v1, p0, Lz/d;->l:F

    mul-float/2addr v1, v8

    iget v2, p0, Lz/d;->k:F

    mul-float/2addr v1, v2

    neg-float v1, v1

    iget v2, p0, Lz/d;->l:F

    iget v3, p0, Lz/d;->k:F

    sub-float/2addr v2, v3

    div-float/2addr v1, v2

    aput v1, p1, v0

    .line 438
    const/16 v0, 0xf

    aput v7, p1, v0

    .line 439
    return-void

    .line 402
    :cond_88
    int-to-float v0, p2

    int-to-float v1, p3

    div-float/2addr v0, v1

    goto/16 :goto_7
.end method

.method a(Lz/j;Lz/i;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 264
    iget-boolean v0, p2, Lz/i;->e:Z

    iget-boolean v1, p0, Lz/d;->j:Z

    if-ne v0, v1, :cond_c

    iget-boolean v0, p2, Lz/i;->f:Z

    if-nez v0, :cond_c

    .line 265
    const/4 v0, 0x0

    .line 278
    :goto_b
    return v0

    .line 268
    :cond_c
    iget-boolean v0, p2, Lz/i;->e:Z

    iput-boolean v0, p0, Lz/d;->j:Z

    .line 270
    iget-boolean v0, p0, Lz/d;->j:Z

    if-eqz v0, :cond_31

    .line 271
    iget-object v0, p0, Lz/d;->a:Lz/w;

    invoke-virtual {v0, p0}, Lz/w;->a(Lz/d;)V

    .line 272
    iget-object v0, p0, Lz/d;->a:Lz/w;

    iget-object v1, p0, Lz/d;->a:Lz/w;

    invoke-virtual {v1}, Lz/w;->b()I

    move-result v1

    iget-object v2, p0, Lz/d;->a:Lz/w;

    invoke-virtual {v2}, Lz/w;->c()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lz/d;->a(Lz/w;II)V

    .line 277
    :goto_2a
    iget-object v0, p0, Lz/d;->a:Lz/w;

    invoke-virtual {v0, p1, p2}, Lz/w;->a(Lz/j;Lz/i;)Z

    .line 278
    const/4 v0, 0x1

    goto :goto_b

    .line 274
    :cond_31
    iget-object v0, p0, Lz/d;->a:Lz/w;

    invoke-virtual {v0, p0}, Lz/w;->b(Lz/d;)V

    goto :goto_2a
.end method

.method protected x()V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 248
    iget-object v0, p0, Lz/d;->f:[F

    iget-object v2, p0, Lz/d;->c:[F

    iget-object v4, p0, Lz/d;->b:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 249
    iget v0, p0, Lz/d;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lz/d;->d:I

    .line 250
    return-void
.end method

.method public y()Lz/w;
    .registers 2

    .prologue
    .line 253
    iget-object v0, p0, Lz/d;->a:Lz/w;

    return-object v0
.end method

.method z()V
    .registers 7

    .prologue
    .line 331
    iget-object v1, p0, Lz/d;->g:[F

    monitor-enter v1

    .line 332
    :try_start_3
    iget-boolean v0, p0, Lz/d;->h:Z

    if-eqz v0, :cond_18

    .line 333
    iget-object v0, p0, Lz/d;->g:[F

    const/4 v2, 0x0

    iget-object v3, p0, Lz/d;->c:[F

    const/4 v4, 0x0

    const/16 v5, 0x10

    invoke-static {v0, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 334
    invoke-virtual {p0}, Lz/d;->x()V

    .line 335
    const/4 v0, 0x0

    iput-boolean v0, p0, Lz/d;->h:Z

    .line 337
    :cond_18
    monitor-exit v1

    .line 338
    return-void

    .line 337
    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v0
.end method

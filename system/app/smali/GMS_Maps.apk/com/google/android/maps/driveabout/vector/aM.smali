.class public Lcom/google/android/maps/driveabout/vector/aM;
.super Lcom/google/android/maps/driveabout/vector/aD;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/vector/aN;

.field private b:Lcom/google/android/maps/driveabout/vector/aN;

.field private c:Lcom/google/android/maps/driveabout/vector/aN;

.field private final d:Ljava/util/ArrayList;

.field private e:Ln/aa;

.field private f:F

.field private g:F

.field private h:I

.field private final i:Lcom/google/android/maps/driveabout/vector/ea;

.field private final j:Lcom/google/android/maps/driveabout/vector/bJ;

.field private final k:Lcom/google/android/maps/driveabout/vector/cO;

.field private l:I

.field private final m:F

.field private final n:I

.field private o:Z

.field private p:Z


# direct methods
.method public constructor <init>(Ln/U;II[IF)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v1, 0x20

    .line 113
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/aD;-><init>()V

    .line 114
    new-instance v0, Lcom/google/android/maps/driveabout/vector/aN;

    invoke-direct {v0, p1, p4}, Lcom/google/android/maps/driveabout/vector/aN;-><init>(Ln/U;[I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aM;->a:Lcom/google/android/maps/driveabout/vector/aN;

    .line 115
    iput p2, p0, Lcom/google/android/maps/driveabout/vector/aM;->h:I

    .line 116
    iput p5, p0, Lcom/google/android/maps/driveabout/vector/aM;->m:F

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aM;->d:Ljava/util/ArrayList;

    .line 119
    iput p3, p0, Lcom/google/android/maps/driveabout/vector/aM;->n:I

    .line 120
    new-instance v0, Lcom/google/android/maps/driveabout/vector/dY;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/dY;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aM;->i:Lcom/google/android/maps/driveabout/vector/ea;

    .line 121
    new-instance v0, Lcom/google/android/maps/driveabout/vector/cM;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/cM;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aM;->k:Lcom/google/android/maps/driveabout/vector/cO;

    .line 122
    new-instance v0, Lcom/google/android/maps/driveabout/vector/bI;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/bI;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aM;->j:Lcom/google/android/maps/driveabout/vector/bJ;

    .line 123
    const v0, 0x249f0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aM;->l:I

    .line 124
    return-void
.end method

.method static a(Lcom/google/android/maps/driveabout/vector/aN;FI)Lcom/google/android/maps/driveabout/vector/aN;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 312
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aN;->a:Ln/U;

    invoke-virtual {v0, p1, p2}, Ln/U;->a(FI)[Z

    move-result-object v3

    .line 316
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aN;->b:[I

    if-eqz v0, :cond_23

    move v0, v1

    .line 317
    :goto_d
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_23

    .line 318
    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/aN;->b:[I

    aget v4, v4, v0

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/aN;->b:[I

    add-int/lit8 v6, v0, 0x1

    aget v5, v5, v6

    if-eq v4, v5, :cond_20

    .line 319
    aput-boolean v1, v3, v0

    .line 317
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_23
    move v0, v2

    move v1, v2

    .line 326
    :goto_25
    array-length v4, v3

    if-ge v0, v4, :cond_31

    .line 327
    aget-boolean v4, v3, v0

    if-eqz v4, :cond_2e

    add-int/lit8 v1, v1, 0x1

    .line 326
    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 330
    :cond_31
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aN;->a:Ln/U;

    invoke-virtual {v0}, Ln/U;->b()I

    move-result v0

    if-ne v1, v0, :cond_3a

    .line 351
    :goto_39
    return-object p0

    .line 334
    :cond_3a
    const/4 v0, 0x0

    .line 335
    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/aN;->b:[I

    if-eqz v4, :cond_41

    .line 336
    new-array v0, v1, [I

    .line 338
    :cond_41
    mul-int/lit8 v1, v1, 0x3

    new-array v4, v1, [I

    .line 340
    new-instance v5, Ln/Q;

    invoke-direct {v5}, Ln/Q;-><init>()V

    move v1, v2

    .line 341
    :goto_4b
    array-length v6, v3

    if-ge v2, v6, :cond_67

    .line 342
    aget-boolean v6, v3, v2

    if-eqz v6, :cond_64

    .line 343
    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/aN;->a:Ln/U;

    invoke-virtual {v6, v2, v5}, Ln/U;->a(ILn/Q;)V

    .line 344
    invoke-virtual {v5, v4, v1}, Ln/Q;->a([II)V

    .line 345
    if-eqz v0, :cond_62

    .line 346
    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/aN;->b:[I

    aget v6, v6, v2

    aput v6, v0, v1

    .line 348
    :cond_62
    add-int/lit8 v1, v1, 0x1

    .line 341
    :cond_64
    add-int/lit8 v2, v2, 0x1

    goto :goto_4b

    .line 351
    :cond_67
    new-instance p0, Lcom/google/android/maps/driveabout/vector/aN;

    invoke-static {v4}, Ln/U;->a([I)Ln/U;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/google/android/maps/driveabout/vector/aN;-><init>(Ln/U;[I)V

    goto :goto_39
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/aN;Lcom/google/android/maps/driveabout/vector/k;)V
    .registers 13
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x1

    .line 377
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aM;->e:Ln/aa;

    invoke-virtual {v0}, Ln/aa;->d()Ln/Q;

    move-result-object v4

    .line 378
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aM;->e:Ln/aa;

    invoke-virtual {v0}, Ln/aa;->g()I

    move-result v5

    .line 379
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/k;->s()F

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/aM;->m:F

    mul-float v2, v0, v1

    .line 380
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/bc;->a()Lcom/google/android/maps/driveabout/vector/bc;

    move-result-object v0

    .line 381
    iget-object v1, p1, Lcom/google/android/maps/driveabout/vector/aN;->a:Ln/U;

    const/high16 v6, 0x3f80

    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/aM;->i:Lcom/google/android/maps/driveabout/vector/ea;

    iget-object v8, p0, Lcom/google/android/maps/driveabout/vector/aM;->j:Lcom/google/android/maps/driveabout/vector/bJ;

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/maps/driveabout/vector/bc;->a(Ln/U;FZLn/Q;IFLcom/google/android/maps/driveabout/vector/ea;Lcom/google/android/maps/driveabout/vector/bJ;Lcom/google/android/maps/driveabout/vector/cO;)V

    .line 388
    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/aM;->o:Z

    if-eqz v1, :cond_3a

    iget-object v5, p1, Lcom/google/android/maps/driveabout/vector/aN;->b:[I

    .line 389
    :goto_2b
    iget-object v1, p1, Lcom/google/android/maps/driveabout/vector/aN;->a:Ln/U;

    invoke-virtual {v1}, Ln/U;->b()I

    move-result v2

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/aM;->n:I

    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/aM;->k:Lcom/google/android/maps/driveabout/vector/cO;

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/maps/driveabout/vector/bc;->a(IZI[ILcom/google/android/maps/driveabout/vector/cO;)V

    .line 392
    return-void

    :cond_3a
    move-object v5, v9

    .line 388
    goto :goto_2b
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 182
    iget-object v1, p1, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    .line 185
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aM;->e:Ln/aa;

    invoke-virtual {v0}, Ln/aa;->d()Ln/Q;

    move-result-object v0

    .line 186
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aM;->e:Ln/aa;

    invoke-virtual {v2}, Ln/aa;->g()I

    move-result v2

    int-to-float v2, v2

    .line 187
    invoke-static {p1, p2, v0, v2}, Lcom/google/android/maps/driveabout/vector/dz;->a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Ln/Q;F)V

    .line 190
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aU;->o()V

    .line 191
    const/4 v0, 0x1

    const/16 v2, 0x303

    invoke-interface {v1, v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 192
    const/16 v0, 0x2300

    const/16 v2, 0x2200

    const/16 v3, 0x1e01

    invoke-interface {v1, v0, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    .line 195
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aM;->i:Lcom/google/android/maps/driveabout/vector/ea;

    check-cast v0, Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/dY;->d(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 196
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aM;->k:Lcom/google/android/maps/driveabout/vector/cO;

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cM;->d(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 197
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aM;->h:I

    invoke-static {p1, v0}, Lcom/google/android/maps/driveabout/vector/cX;->a(Lcom/google/android/maps/driveabout/vector/aU;I)Lcom/google/android/maps/driveabout/vector/cV;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cV;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 198
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aM;->j:Lcom/google/android/maps/driveabout/vector/bJ;

    check-cast v0, Lcom/google/android/maps/driveabout/vector/bI;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lcom/google/android/maps/driveabout/vector/bI;->a(Lcom/google/android/maps/driveabout/vector/aU;I)V

    .line 199
    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/k;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v4, 0x3fa0

    .line 206
    monitor-enter p0

    .line 207
    :try_start_5
    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/aM;->p:Z

    if-eqz v2, :cond_e

    .line 208
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/aM;->p:Z

    .line 209
    monitor-exit p0

    .line 217
    :cond_d
    :goto_d
    return v0

    .line 211
    :cond_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_23

    .line 212
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->i()F

    move-result v2

    .line 213
    iget v3, p0, Lcom/google/android/maps/driveabout/vector/aM;->g:F

    mul-float/2addr v3, v4

    cmpl-float v3, v2, v3

    if-gtz v3, :cond_d

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/aM;->g:F

    div-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_d

    move v0, v1

    .line 217
    goto :goto_d

    .line 211
    :catchall_23
    move-exception v0

    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v0
.end method

.method private b(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 362
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aM;->i:Lcom/google/android/maps/driveabout/vector/ea;

    check-cast v0, Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/dY;->a(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 363
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aM;->j:Lcom/google/android/maps/driveabout/vector/bJ;

    check-cast v0, Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bI;->a(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 364
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aM;->k:Lcom/google/android/maps/driveabout/vector/cO;

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cM;->a(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 366
    const/4 v0, 0x0

    move v1, v0

    :goto_17
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aM;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2e

    .line 367
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aM;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aN;

    invoke-direct {p0, v0, p2}, Lcom/google/android/maps/driveabout/vector/aM;->a(Lcom/google/android/maps/driveabout/vector/aN;Lcom/google/android/maps/driveabout/vector/k;)V

    .line 366
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_17

    .line 369
    :cond_2e
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/k;->i()F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aM;->g:F

    .line 370
    return-void
.end method

.method private b(Lcom/google/android/maps/driveabout/vector/k;)Z
    .registers 6
    .parameter

    .prologue
    const/high16 v3, 0x4000

    const/4 v0, 0x1

    .line 224
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aM;->e:Ln/aa;

    if-nez v1, :cond_8

    .line 238
    :cond_7
    :goto_7
    return v0

    .line 229
    :cond_8
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->i()F

    move-result v1

    .line 230
    iget v2, p0, Lcom/google/android/maps/driveabout/vector/aM;->f:F

    mul-float/2addr v2, v3

    cmpl-float v2, v1, v2

    if-gtz v2, :cond_7

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/aM;->f:F

    div-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_7

    .line 235
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aM;->e:Ln/aa;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->v()Ln/aK;

    move-result-object v2

    invoke-virtual {v2}, Ln/aK;->c()Ln/ab;

    move-result-object v2

    invoke-virtual {v1, v2}, Ln/aa;->b(Ln/ab;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 238
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private c(Lcom/google/android/maps/driveabout/vector/k;)V
    .registers 10
    .parameter

    .prologue
    const v7, 0x1fffffff

    const/high16 v6, -0x2000

    const/4 v2, 0x0

    .line 247
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aM;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 248
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->l()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/aM;->a(F)Lcom/google/android/maps/driveabout/vector/aN;

    move-result-object v0

    .line 253
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->v()Ln/aK;

    move-result-object v1

    invoke-virtual {v1}, Ln/aK;->b()Ln/aa;

    move-result-object v1

    .line 255
    invoke-virtual {v1}, Ln/aa;->g()I

    move-result v3

    .line 256
    invoke-virtual {v1}, Ln/aa;->h()I

    move-result v4

    .line 257
    const v5, 0x71c71c7

    .line 258
    if-gt v3, v5, :cond_2a

    if-le v4, v5, :cond_69

    .line 259
    :cond_2a
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aM;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    new-instance v0, Ln/aa;

    new-instance v1, Ln/Q;

    invoke-direct {v1, v6, v6}, Ln/Q;-><init>(II)V

    new-instance v3, Ln/Q;

    invoke-direct {v3, v7, v7}, Ln/Q;-><init>(II)V

    invoke-direct {v0, v1, v3}, Ln/aa;-><init>(Ln/Q;Ln/Q;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aM;->e:Ln/aa;

    .line 295
    :cond_40
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->l()F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/aM;->d(I)I

    move-result v1

    .line 296
    :goto_4b
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aM;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_f2

    .line 297
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aM;->d:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aM;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aN;

    int-to-float v4, v1

    const/4 v5, 0x1

    invoke-static {v0, v4, v5}, Lcom/google/android/maps/driveabout/vector/aM;->a(Lcom/google/android/maps/driveabout/vector/aN;FI)Lcom/google/android/maps/driveabout/vector/aN;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 296
    add-int/lit8 v2, v2, 0x1

    goto :goto_4b

    .line 264
    :cond_69
    new-instance v5, Ln/Q;

    mul-int/lit8 v3, v3, 0x4

    mul-int/lit8 v4, v4, 0x4

    invoke-direct {v5, v3, v4}, Ln/Q;-><init>(II)V

    .line 266
    invoke-virtual {v1}, Ln/aa;->d()Ln/Q;

    move-result-object v3

    invoke-virtual {v3, v5}, Ln/Q;->f(Ln/Q;)Ln/Q;

    move-result-object v3

    .line 267
    invoke-virtual {v1}, Ln/aa;->e()Ln/Q;

    move-result-object v1

    invoke-virtual {v1, v5}, Ln/Q;->e(Ln/Q;)Ln/Q;

    move-result-object v1

    .line 268
    invoke-virtual {v3, v3}, Ln/Q;->j(Ln/Q;)V

    .line 269
    invoke-virtual {v1, v1}, Ln/Q;->j(Ln/Q;)V

    .line 270
    new-instance v4, Ln/aa;

    invoke-direct {v4, v3, v1}, Ln/aa;-><init>(Ln/Q;Ln/Q;)V

    iput-object v4, p0, Lcom/google/android/maps/driveabout/vector/aM;->e:Ln/aa;

    .line 272
    new-instance v1, Ln/f;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aM;->e:Ln/aa;

    invoke-direct {v1, v3}, Ln/f;-><init>(Ln/ab;)V

    .line 274
    iget-object v3, v0, Lcom/google/android/maps/driveabout/vector/aN;->b:[I

    if-nez v3, :cond_c0

    .line 275
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 276
    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/aN;->a:Ln/U;

    invoke-virtual {v1, v0, v3}, Ln/f;->a(Ln/U;Ljava/util/List;)V

    move v1, v2

    .line 277
    :goto_a5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_40

    .line 278
    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/aM;->d:Ljava/util/ArrayList;

    new-instance v5, Lcom/google/android/maps/driveabout/vector/aN;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/U;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6}, Lcom/google/android/maps/driveabout/vector/aN;-><init>(Ln/U;[I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a5

    .line 281
    :cond_c0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 282
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 283
    iget-object v3, v0, Lcom/google/android/maps/driveabout/vector/aN;->a:Ln/U;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/aN;->b:[I

    invoke-virtual {v1, v3, v0, v4, v5}, Ln/f;->a(Ln/U;[ILjava/util/List;Ljava/util/List;)V

    move v3, v2

    .line 286
    :goto_d2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_40

    .line 287
    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/aM;->d:Ljava/util/ArrayList;

    new-instance v7, Lcom/google/android/maps/driveabout/vector/aN;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/U;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    invoke-direct {v7, v0, v1}, Lcom/google/android/maps/driveabout/vector/aN;-><init>(Ln/U;[I)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_d2

    .line 301
    :cond_f2
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->i()F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aM;->f:F

    .line 302
    return-void
.end method

.method private static d(I)I
    .registers 3
    .parameter

    .prologue
    .line 421
    const/4 v0, 0x2

    rsub-int/lit8 v1, p0, 0x1e

    shl-int/2addr v0, v1

    div-int/lit16 v0, v0, 0x100

    return v0
.end method

.method private e()V
    .registers 4

    .prologue
    .line 411
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aM;->b:Lcom/google/android/maps/driveabout/vector/aN;

    if-nez v0, :cond_24

    .line 412
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aM;->a:Lcom/google/android/maps/driveabout/vector/aN;

    const/16 v1, 0xa

    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/aM;->d(I)I

    move-result v1

    int-to-float v1, v1

    const/16 v2, 0x8

    invoke-static {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/aM;->a(Lcom/google/android/maps/driveabout/vector/aN;FI)Lcom/google/android/maps/driveabout/vector/aN;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aM;->b:Lcom/google/android/maps/driveabout/vector/aN;

    .line 414
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aM;->b:Lcom/google/android/maps/driveabout/vector/aN;

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/aM;->d(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/aM;->a(Lcom/google/android/maps/driveabout/vector/aN;FI)Lcom/google/android/maps/driveabout/vector/aN;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aM;->c:Lcom/google/android/maps/driveabout/vector/aN;

    .line 417
    :cond_24
    return-void
.end method


# virtual methods
.method a(F)Lcom/google/android/maps/driveabout/vector/aN;
    .registers 3
    .parameter

    .prologue
    .line 397
    const/high16 v0, 0x4120

    cmpl-float v0, p1, v0

    if-lez v0, :cond_9

    .line 398
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aM;->a:Lcom/google/android/maps/driveabout/vector/aN;

    .line 404
    :goto_8
    return-object v0

    .line 400
    :cond_9
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/aM;->e()V

    .line 401
    const/high16 v0, 0x40c0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_15

    .line 402
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aM;->b:Lcom/google/android/maps/driveabout/vector/aN;

    goto :goto_8

    .line 404
    :cond_15
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aM;->c:Lcom/google/android/maps/driveabout/vector/aN;

    goto :goto_8
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 164
    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/E;->b()I

    move-result v0

    if-nez v0, :cond_29

    .line 165
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aM;->e:Ln/aa;

    if-nez v0, :cond_d

    .line 167
    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/vector/aM;->c(Lcom/google/android/maps/driveabout/vector/k;)V

    .line 169
    :cond_d
    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/vector/aM;->a(Lcom/google/android/maps/driveabout/vector/k;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 170
    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/aM;->b(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;)V

    .line 172
    :cond_16
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aM;->i:Lcom/google/android/maps/driveabout/vector/ea;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/ea;->a()I

    move-result v0

    if-lez v0, :cond_29

    .line 173
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    .line 174
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 175
    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/aM;->a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;)V

    .line 176
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 179
    :cond_29
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/aU;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 142
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/aM;->b(Lcom/google/android/maps/driveabout/vector/k;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 143
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/aM;->c(Lcom/google/android/maps/driveabout/vector/k;)V

    .line 144
    monitor-enter p0

    .line 145
    const/4 v0, 0x1

    :try_start_c
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aM;->p:Z

    .line 146
    monitor-exit p0

    .line 148
    :cond_f
    return v1

    .line 146
    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_10

    throw v0
.end method

.method public b(I)V
    .registers 2
    .parameter

    .prologue
    .line 128
    iput p1, p0, Lcom/google/android/maps/driveabout/vector/aM;->h:I

    .line 129
    return-void
.end method

.method public c(I)V
    .registers 2
    .parameter

    .prologue
    .line 132
    iput p1, p0, Lcom/google/android/maps/driveabout/vector/aM;->l:I

    .line 133
    return-void
.end method

.method public declared-synchronized c(Z)V
    .registers 3
    .parameter

    .prologue
    .line 156
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aM;->o:Z

    if-eq v0, p1, :cond_a

    .line 157
    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/aM;->o:Z

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aM;->p:Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 160
    :cond_a
    monitor-exit p0

    return-void

    .line 156
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public u_()I
    .registers 2

    .prologue
    .line 137
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aM;->l:I

    return v0
.end method

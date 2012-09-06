.class LaP/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/common/collect/P;

.field private b:I

.field private c:I

.field private final d:Lad/b;

.field private e:Lcom/google/googlenav/ui/view/android/rideabout/m;

.field private f:Lcom/google/googlenav/ui/view/android/rideabout/m;

.field private g:I


# direct methods
.method public constructor <init>(Lad/b;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    invoke-static {}, Lcom/google/common/collect/P;->g()Lcom/google/common/collect/P;

    move-result-object v0

    iput-object v0, p0, LaP/f;->a:Lcom/google/common/collect/P;

    .line 273
    iput v1, p0, LaP/f;->b:I

    .line 274
    iput v1, p0, LaP/f;->c:I

    .line 281
    iput-object p1, p0, LaP/f;->d:Lad/b;

    .line 282
    sget-object v0, Lcom/google/googlenav/ui/view/android/rideabout/m;->a:Lcom/google/googlenav/ui/view/android/rideabout/m;

    iput-object v0, p0, LaP/f;->f:Lcom/google/googlenav/ui/view/android/rideabout/m;

    .line 283
    invoke-direct {p0}, LaP/f;->o()V

    .line 284
    invoke-direct {p0}, LaP/f;->m()V

    .line 285
    return-void
.end method

.method private static a(Lad/t;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 435
    invoke-virtual {p0}, Lad/t;->o()Lat/B;

    move-result-object v1

    if-nez v1, :cond_8

    .line 445
    :cond_7
    :goto_7
    return v0

    .line 437
    :cond_8
    invoke-virtual {p0}, Lad/t;->k()Lat/B;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 440
    invoke-virtual {p0}, Lad/t;->O()[Lad/u;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_14
    if-ge v1, v3, :cond_21

    aget-object v4, v2, v1

    .line 441
    invoke-virtual {v4}, Lad/u;->d()Lat/B;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 440
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 445
    :cond_21
    const/4 v0, 0x1

    goto :goto_7
.end method

.method private c(I)Lad/t;
    .registers 5
    .parameter

    .prologue
    .line 312
    if-ltz p1, :cond_a

    iget-object v0, p0, LaP/f;->d:Lad/b;

    invoke-virtual {v0}, Lad/b;->ae()I

    move-result v0

    if-lt p1, v0, :cond_29

    .line 313
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Step at position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 315
    :cond_29
    iget-object v0, p0, LaP/f;->d:Lad/b;

    invoke-virtual {v0, p1}, Lad/b;->n(I)Lad/t;

    move-result-object v0

    return-object v0
.end method

.method private d(I)I
    .registers 3
    .parameter

    .prologue
    .line 376
    invoke-direct {p0, p1}, LaP/f;->f(I)I

    move-result v0

    .line 377
    add-int/lit8 v0, v0, 0x1

    .line 378
    invoke-direct {p0, v0}, LaP/f;->e(I)I

    move-result v0

    .line 379
    return v0
.end method

.method private e(I)I
    .registers 4
    .parameter

    .prologue
    .line 478
    invoke-virtual {p0, p1}, LaP/f;->a(I)Z

    move-result v0

    if-nez v0, :cond_26

    invoke-direct {p0, p1}, LaP/f;->c(I)Lad/t;

    move-result-object v0

    invoke-virtual {v0}, Lad/t;->C()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    invoke-virtual {p0, p1}, LaP/f;->b(I)Z

    move-result v0

    if-nez v0, :cond_26

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, LaP/f;->c(I)Lad/t;

    move-result-object v0

    invoke-virtual {v0}, Lad/t;->C()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    .line 482
    add-int/lit8 p1, p1, 0x1

    .line 484
    :cond_26
    return p1
.end method

.method private f(I)I
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x2

    .line 496
    :goto_1
    invoke-virtual {p0, p1}, LaP/f;->a(I)Z

    move-result v0

    if-nez v0, :cond_26

    invoke-virtual {p0}, LaP/f;->b()Lad/t;

    move-result-object v0

    invoke-virtual {v0}, Lad/t;->C()I

    move-result v0

    if-ne v0, v1, :cond_26

    invoke-virtual {p0, p1}, LaP/f;->b(I)Z

    move-result v0

    if-nez v0, :cond_26

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, LaP/f;->c(I)Lad/t;

    move-result-object v0

    invoke-virtual {v0}, Lad/t;->C()I

    move-result v0

    if-ne v0, v1, :cond_26

    .line 497
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 499
    :cond_26
    return p1
.end method

.method private g(I)Z
    .registers 4
    .parameter

    .prologue
    .line 519
    iget-object v0, p0, LaP/f;->d:Lad/b;

    invoke-virtual {v0}, Lad/b;->ae()I

    move-result v0

    if-ge p1, v0, :cond_13

    invoke-direct {p0, p1}, LaP/f;->c(I)Lad/t;

    move-result-object v0

    invoke-virtual {v0}, Lad/t;->C()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_15

    :cond_13
    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method private l()I
    .registers 4

    .prologue
    .line 351
    invoke-virtual {p0}, LaP/f;->j()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 352
    invoke-virtual {p0}, LaP/f;->b()Lad/t;

    move-result-object v2

    .line 353
    iget v0, p0, LaP/f;->c:I

    move v1, v0

    :goto_d
    iget-object v0, p0, LaP/f;->d:Lad/b;

    invoke-virtual {v0}, Lad/b;->f()I

    move-result v0

    if-ge v1, v0, :cond_2c

    .line 354
    iget-object v0, p0, LaP/f;->d:Lad/b;

    invoke-virtual {v0, v1}, Lad/b;->b(I)Lcom/google/googlenav/E;

    move-result-object v0

    check-cast v0, Lad/m;

    .line 355
    invoke-virtual {v0}, Lad/m;->m()Lad/t;

    move-result-object v0

    if-ne v0, v2, :cond_28

    .line 356
    iput v1, p0, LaP/f;->c:I

    .line 357
    iget v0, p0, LaP/f;->c:I

    .line 366
    :goto_27
    return v0

    .line 353
    :cond_28
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    .line 361
    :cond_2c
    iget-object v0, p0, LaP/f;->d:Lad/b;

    invoke-virtual {v0}, Lad/b;->f()I

    move-result v0

    if-lez v0, :cond_3d

    .line 363
    iget-object v0, p0, LaP/f;->d:Lad/b;

    invoke-virtual {v0}, Lad/b;->f()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_27

    .line 366
    :cond_3d
    const/4 v0, -0x1

    goto :goto_27
.end method

.method private m()V
    .registers 4

    .prologue
    .line 391
    invoke-virtual {p0}, LaP/f;->j()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 406
    :cond_6
    :goto_6
    return-void

    .line 394
    :cond_7
    invoke-virtual {p0}, LaP/f;->b()Lad/t;

    move-result-object v0

    invoke-virtual {v0}, Lad/t;->C()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_16

    .line 395
    invoke-direct {p0}, LaP/f;->n()V

    goto :goto_6

    .line 397
    :cond_16
    iget-object v0, p0, LaP/f;->d:Lad/b;

    iget v1, p0, LaP/f;->b:I

    iget v2, p0, LaP/f;->b:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lad/b;->a(II)[Lat/B;

    move-result-object v0

    .line 398
    if-eqz v0, :cond_6

    array-length v1, v0

    if-eqz v1, :cond_6

    .line 401
    iget-object v1, p0, LaP/f;->d:Lad/b;

    iget v2, p0, LaP/f;->b:I

    invoke-virtual {v1, v2}, Lad/b;->n(I)Lad/t;

    move-result-object v1

    .line 402
    invoke-static {v1}, LaP/f;->a(Lad/t;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 403
    iget-object v2, p0, LaP/f;->a:Lcom/google/common/collect/P;

    invoke-static {v0, v1, v2}, LaP/x;->a([Lat/B;Lad/t;Lcom/google/common/collect/P;)V

    goto :goto_6
.end method

.method private n()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 413
    iget-object v0, p0, LaP/f;->a:Lcom/google/common/collect/P;

    invoke-virtual {v0}, Lcom/google/common/collect/P;->e()V

    .line 414
    iget v0, p0, LaP/f;->b:I

    .line 415
    :goto_8
    invoke-direct {p0, v0}, LaP/f;->g(I)Z

    move-result v1

    if-nez v1, :cond_4a

    invoke-direct {p0, v0}, LaP/f;->c(I)Lad/t;

    move-result-object v1

    invoke-virtual {v1}, Lad/t;->C()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4a

    .line 416
    iget v1, p0, LaP/f;->b:I

    if-eq v0, v1, :cond_30

    .line 417
    invoke-direct {p0, v0}, LaP/f;->c(I)Lad/t;

    move-result-object v1

    invoke-virtual {v1}, Lad/t;->o()Lat/B;

    move-result-object v1

    .line 418
    if-eqz v1, :cond_30

    .line 419
    iget-object v2, p0, LaP/f;->a:Lcom/google/common/collect/P;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/google/common/collect/P;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 422
    :cond_30
    iget-object v1, p0, LaP/f;->d:Lad/b;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v0, v2}, Lad/b;->a(II)[Lat/B;

    move-result-object v1

    .line 423
    if-eqz v1, :cond_47

    .line 424
    iget-object v2, p0, LaP/f;->a:Lcom/google/common/collect/P;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/google/common/collect/P;->a(Ljava/lang/Object;Ljava/lang/Iterable;)Z

    .line 426
    :cond_47
    add-int/lit8 v0, v0, 0x1

    .line 427
    goto :goto_8

    .line 428
    :cond_4a
    return-void
.end method

.method private o()V
    .registers 3

    .prologue
    .line 463
    invoke-virtual {p0}, LaP/f;->j()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/google/googlenav/ui/view/android/rideabout/m;->a:Lcom/google/googlenav/ui/view/android/rideabout/m;

    :goto_8
    iput-object v0, p0, LaP/f;->e:Lcom/google/googlenav/ui/view/android/rideabout/m;

    .line 468
    return-void

    .line 463
    :cond_b
    invoke-virtual {p0}, LaP/f;->d()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_15

    sget-object v0, Lcom/google/googlenav/ui/view/android/rideabout/m;->c:Lcom/google/googlenav/ui/view/android/rideabout/m;

    goto :goto_8

    :cond_15
    sget-object v0, Lcom/google/googlenav/ui/view/android/rideabout/m;->b:Lcom/google/googlenav/ui/view/android/rideabout/m;

    goto :goto_8
.end method


# virtual methods
.method public a()Lad/t;
    .registers 3

    .prologue
    .line 292
    iget v0, p0, LaP/f;->b:I

    invoke-direct {p0, v0}, LaP/f;->d(I)I

    move-result v0

    .line 293
    iget-object v1, p0, LaP/f;->d:Lad/b;

    invoke-virtual {v1}, Lad/b;->ae()I

    move-result v1

    if-lt v0, v1, :cond_10

    .line 294
    const/4 v0, 0x0

    .line 296
    :goto_f
    return-object v0

    :cond_10
    invoke-direct {p0, v0}, LaP/f;->c(I)Lad/t;

    move-result-object v0

    goto :goto_f
.end method

.method public a(I)Z
    .registers 3
    .parameter

    .prologue
    .line 507
    iget-object v0, p0, LaP/f;->d:Lad/b;

    if-eqz v0, :cond_a

    invoke-direct {p0, p1}, LaP/f;->g(I)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public b()Lad/t;
    .registers 2

    .prologue
    .line 300
    iget v0, p0, LaP/f;->b:I

    invoke-direct {p0, v0}, LaP/f;->c(I)Lad/t;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Z
    .registers 3
    .parameter

    .prologue
    .line 515
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, LaP/f;->g(I)Z

    move-result v0

    return v0
.end method

.method public c()Lad/t;
    .registers 2

    .prologue
    .line 304
    iget v0, p0, LaP/f;->g:I

    invoke-direct {p0, v0}, LaP/f;->c(I)Lad/t;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .registers 2

    .prologue
    .line 308
    invoke-virtual {p0}, LaP/f;->b()Lad/t;

    move-result-object v0

    invoke-virtual {v0}, Lad/t;->C()I

    move-result v0

    return v0
.end method

.method public e()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 323
    iget v0, p0, LaP/f;->b:I

    :goto_3
    iget-object v2, p0, LaP/f;->d:Lad/b;

    invoke-virtual {v2}, Lad/b;->ae()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_27

    .line 324
    invoke-direct {p0, v0}, LaP/f;->c(I)Lad/t;

    move-result-object v2

    .line 325
    invoke-virtual {v2}, Lad/t;->C()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1a

    move v0, v1

    .line 332
    :goto_19
    return v0

    .line 328
    :cond_1a
    add-int/lit8 v2, v0, 0x1

    invoke-direct {p0, v2}, LaP/f;->g(I)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 329
    const/4 v0, 0x1

    goto :goto_19

    .line 323
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_27
    move v0, v1

    .line 332
    goto :goto_19
.end method

.method public f()I
    .registers 2

    .prologue
    .line 339
    invoke-direct {p0}, LaP/f;->l()I

    move-result v0

    return v0
.end method

.method public g()I
    .registers 2

    .prologue
    .line 346
    invoke-virtual {p0}, LaP/f;->f()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 347
    if-gez v0, :cond_9

    const/4 v0, 0x0

    :cond_9
    return v0
.end method

.method public h()V
    .registers 2

    .prologue
    .line 383
    iget v0, p0, LaP/f;->b:I

    iput v0, p0, LaP/f;->g:I

    .line 384
    iget v0, p0, LaP/f;->b:I

    invoke-direct {p0, v0}, LaP/f;->d(I)I

    move-result v0

    iput v0, p0, LaP/f;->b:I

    .line 385
    iget-object v0, p0, LaP/f;->e:Lcom/google/googlenav/ui/view/android/rideabout/m;

    iput-object v0, p0, LaP/f;->f:Lcom/google/googlenav/ui/view/android/rideabout/m;

    .line 386
    invoke-direct {p0}, LaP/f;->o()V

    .line 387
    invoke-direct {p0}, LaP/f;->m()V

    .line 388
    return-void
.end method

.method public i()Lcom/google/common/collect/P;
    .registers 2

    .prologue
    .line 459
    iget-object v0, p0, LaP/f;->a:Lcom/google/common/collect/P;

    return-object v0
.end method

.method public j()Z
    .registers 2

    .prologue
    .line 503
    iget v0, p0, LaP/f;->b:I

    invoke-virtual {p0, v0}, LaP/f;->a(I)Z

    move-result v0

    return v0
.end method

.method public k()Lcom/google/googlenav/ui/view/android/rideabout/m;
    .registers 2

    .prologue
    .line 524
    iget-object v0, p0, LaP/f;->f:Lcom/google/googlenav/ui/view/android/rideabout/m;

    return-object v0
.end method

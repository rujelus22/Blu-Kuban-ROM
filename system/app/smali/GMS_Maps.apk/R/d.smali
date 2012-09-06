.class public abstract Lr/d;
.super Lr/j;
.source "SourceFile"


# instance fields
.field protected a:I

.field protected b:[[B

.field final synthetic c:Lr/c;


# direct methods
.method protected constructor <init>(Lr/c;)V
    .registers 3
    .parameter

    .prologue
    const/16 v0, 0x8

    .line 306
    iput-object p1, p0, Lr/d;->c:Lr/c;

    .line 307
    invoke-direct {p0, v0}, Lr/j;-><init>(I)V

    .line 308
    new-array v0, v0, [[B

    iput-object v0, p0, Lr/d;->b:[[B

    .line 309
    return-void
.end method

.method private a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Landroid/util/Pair;
    .registers 10
    .parameter

    .prologue
    .line 514
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v1

    .line 515
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v2

    .line 516
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    iget-object v3, p0, Lr/d;->c:Lr/c;

    invoke-static {v3}, Lr/c;->f(Lr/c;)I

    move-result v3

    sub-int v3, v0, v3

    .line 518
    new-instance v4, Ln/av;

    invoke-direct {v4}, Ln/av;-><init>()V

    .line 519
    invoke-static {}, Ln/aq;->values()[Ln/aq;

    move-result-object v5

    array-length v6, v5

    const/4 v0, 0x0

    :goto_22
    if-ge v0, v6, :cond_32

    aget-object v7, v5, v0

    .line 520
    invoke-virtual {v7, p1}, Ln/aq;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ln/ao;

    move-result-object v7

    .line 521
    if-eqz v7, :cond_2f

    .line 522
    invoke-virtual {v4, v7}, Ln/av;->a(Ln/ao;)V

    .line 519
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 525
    :cond_32
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/dg;->a(I)Lcom/google/android/maps/driveabout/vector/dg;

    move-result-object v0

    .line 526
    new-instance v5, Ln/am;

    invoke-direct {v5, v3, v1, v2, v4}, Ln/am;-><init>(IIILn/av;)V

    .line 527
    invoke-static {v0, v5}, Lh/a;->a(Lcom/google/android/maps/driveabout/vector/dg;Ln/am;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/io/InputStream;)V
    .registers 6
    .parameter

    .prologue
    .line 428
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 429
    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/hm;->g:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v1, p1, v0}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/InputStream;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)I

    .line 434
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v1

    iput v1, p0, Lr/d;->a:I

    .line 435
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    .line 436
    if-eqz v0, :cond_35

    .line 437
    iget-object v1, p0, Lr/d;->c:Lr/c;

    invoke-virtual {v1}, Lr/c;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received tile response code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lh/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    :cond_35
    return-void
.end method

.method private b(Ljava/io/InputStream;)V
    .registers 12
    .parameter

    .prologue
    const/16 v9, 0x8

    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 442
    invoke-virtual {p0}, Lr/d;->c()I

    move-result v5

    move v0, v1

    .line 447
    :goto_9
    new-instance v4, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v2, 0x0

    invoke-direct {v4, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 448
    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/hm;->g:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v2, p1, v4}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/InputStream;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)I

    move-result v2

    .line 451
    if-ne v2, v3, :cond_1a

    .line 498
    if-eq v0, v5, :cond_19

    .line 502
    :cond_19
    return-void

    .line 455
    :cond_1a
    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v6

    .line 456
    invoke-virtual {v6, v9}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-virtual {v6, v9}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v2

    .line 460
    :goto_29
    const/4 v7, 0x2

    invoke-virtual {v4, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBytes(I)[B

    move-result-object v7

    .line 461
    if-eqz v7, :cond_43

    array-length v4, v7

    .line 468
    :goto_31
    invoke-virtual {p0, v4, v2}, Lr/d;->a(II)[B

    move-result-object v2

    .line 470
    if-eqz v7, :cond_3c

    .line 471
    array-length v8, v2

    sub-int/2addr v8, v4

    invoke-static {v7, v1, v2, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 474
    :cond_3c
    if-lt v0, v5, :cond_45

    .line 495
    :cond_3e
    :goto_3e
    add-int/lit8 v0, v0, 0x1

    .line 496
    goto :goto_9

    :cond_41
    move v2, v3

    .line 456
    goto :goto_29

    :cond_43
    move v4, v1

    .line 461
    goto :goto_31

    .line 477
    :cond_45
    invoke-direct {p0, v6}, Lr/d;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Landroid/util/Pair;

    move-result-object v6

    .line 478
    invoke-virtual {p0, v6}, Lr/d;->a(Landroid/util/Pair;)Ljava/lang/Integer;

    move-result-object v6

    .line 479
    if-nez v6, :cond_5b

    .line 480
    iget-object v2, p0, Lr/d;->c:Lr/c;

    invoke-virtual {v2}, Lr/c;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Received wrong tile"

    invoke-static {v2, v4}, Lh/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3e

    .line 481
    :cond_5b
    if-eqz v4, :cond_3e

    .line 492
    iget-object v4, p0, Lr/d;->b:[[B

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput-object v2, v4, v6

    goto :goto_3e
.end method

.method private k()Z
    .registers 2

    .prologue
    .line 393
    invoke-static {}, Lt/m;->a()Lt/k;

    move-result-object v0

    invoke-virtual {v0}, Lt/k;->F()Z

    move-result v0

    return v0
.end method

.method private l()Lr/e;
    .registers 6

    .prologue
    .line 402
    sget-object v1, Lr/e;->a:Lr/e;

    .line 404
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p0}, Lr/d;->c()I

    move-result v2

    if-ge v0, v2, :cond_23

    .line 405
    invoke-virtual {p0, v0}, Lr/d;->a(I)Lr/m;

    move-result-object v2

    invoke-virtual {v2}, Lr/m;->d()Lr/e;

    move-result-object v2

    .line 406
    sget-object v3, Lr/e;->a:Lr/e;

    if-eq v1, v3, :cond_1f

    invoke-virtual {v2}, Lr/e;->a()I

    move-result v3

    invoke-virtual {v1}, Lr/e;->a()I

    move-result v4

    if-ge v3, v4, :cond_20

    :cond_1f
    move-object v1, v2

    .line 404
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 411
    :cond_23
    return-object v1
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 321
    const/16 v0, 0x6c

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 14
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v11, 0x4

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x3

    .line 326
    new-instance v2, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/hm;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 328
    new-instance v3, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/hm;->d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v3, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 331
    invoke-virtual {v3, v9, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 332
    iget-object v0, p0, Lr/d;->c:Lr/c;

    invoke-static {v0}, Lr/c;->a(Lr/c;)I

    move-result v0

    invoke-virtual {v2, v9, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 333
    iget-object v0, p0, Lr/d;->c:Lr/c;

    invoke-static {v0}, Lr/c;->b(Lr/c;)I

    move-result v0

    invoke-virtual {v2, v11, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 334
    const/4 v0, 0x5

    invoke-direct {p0}, Lr/d;->l()Lr/e;

    move-result-object v4

    invoke-virtual {v4}, Lr/e;->a()I

    move-result v4

    invoke-virtual {v2, v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 335
    iget-object v0, p0, Lr/d;->c:Lr/c;

    invoke-static {v0}, Lr/c;->c(Lr/c;)F

    move-result v0

    const/high16 v4, 0x3f80

    cmpl-float v0, v0, v4

    if-lez v0, :cond_4a

    .line 336
    const/4 v0, 0x6

    iget-object v4, p0, Lr/d;->c:Lr/c;

    invoke-static {v4}, Lr/c;->c(Lr/c;)F

    move-result v4

    invoke-virtual {v2, v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setFloat(IF)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 339
    :cond_4a
    iget-object v0, p0, Lr/d;->c:Lr/c;

    invoke-static {v0}, Lr/c;->d(Lr/c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_54
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_68

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 340
    invoke-virtual {v2, v10, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addInt(II)V

    goto :goto_54

    .line 343
    :cond_68
    iget-object v0, p0, Lr/d;->c:Lr/c;

    invoke-static {v0}, Lr/c;->e(Lr/c;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 344
    invoke-virtual {v2, v8, v10}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addInt(II)V

    .line 348
    :cond_73
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/dD;->a()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 349
    invoke-virtual {v2, v8, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addInt(II)V

    .line 353
    :cond_7c
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->v()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 354
    invoke-virtual {v2, v8, v11}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addInt(II)V

    .line 358
    :cond_89
    invoke-direct {p0}, Lr/d;->k()Z

    move-result v0

    if-eqz v0, :cond_92

    .line 359
    invoke-virtual {v2, v8, v8}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addInt(II)V

    .line 363
    :cond_92
    invoke-direct {p0}, Lr/d;->l()Lr/e;

    move-result-object v0

    sget-object v4, Lr/e;->a:Lr/e;

    if-eq v0, v4, :cond_a6

    .line 364
    const/4 v0, 0x5

    invoke-direct {p0}, Lr/d;->l()Lr/e;

    move-result-object v4

    invoke-virtual {v4}, Lr/e;->a()I

    move-result v4

    invoke-virtual {v2, v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 367
    :cond_a6
    invoke-virtual {p0}, Lr/d;->c()I

    move-result v2

    move v0, v1

    .line 368
    :goto_ab
    if-ge v0, v2, :cond_10d

    .line 369
    invoke-virtual {p0, v0}, Lr/d;->a(I)Lr/m;

    move-result-object v1

    .line 370
    invoke-virtual {v1}, Lr/m;->c()Ln/am;

    move-result-object v4

    .line 371
    new-instance v5, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v6, Lcom/google/wireless/googlenav/proto/j2me/hm;->i:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v5, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 372
    invoke-virtual {v4}, Ln/am;->c()I

    move-result v6

    invoke-virtual {v5, v10, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 373
    invoke-virtual {v4}, Ln/am;->d()I

    move-result v6

    invoke-virtual {v5, v8, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 374
    invoke-virtual {v4}, Ln/am;->b()I

    move-result v6

    iget-object v7, p0, Lr/d;->c:Lr/c;

    invoke-static {v7}, Lr/c;->f(Lr/c;)I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v5, v11, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 375
    iget-object v6, p0, Lr/d;->c:Lr/c;

    iget-object v6, v6, Lr/c;->a:Lcom/google/android/maps/driveabout/vector/dg;

    iget v6, v6, Lcom/google/android/maps/driveabout/vector/dg;->u:I

    invoke-virtual {v5, v9, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 376
    const/4 v6, 0x7

    iget-object v7, p0, Lr/d;->c:Lr/c;

    iget-object v7, v7, Lr/c;->a:Lcom/google/android/maps/driveabout/vector/dg;

    iget v7, v7, Lcom/google/android/maps/driveabout/vector/dg;->v:I

    invoke-virtual {v5, v6, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 377
    iget-object v6, p0, Lr/d;->c:Lr/c;

    iget-object v6, v6, Lr/c;->a:Lcom/google/android/maps/driveabout/vector/dg;

    invoke-virtual {v4, v6, v5}, Ln/am;->a(Lcom/google/android/maps/driveabout/vector/dg;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 378
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlenav/K;->v()Z

    move-result v4

    if-eqz v4, :cond_105

    .line 381
    const/16 v4, 0x8

    invoke-virtual {v1}, Lr/m;->g()I

    move-result v1

    invoke-virtual {v5, v4, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 383
    :cond_105
    const/16 v1, 0x9

    invoke-virtual {v3, v1, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 368
    add-int/lit8 v0, v0, 0x1

    goto :goto_ab

    .line 386
    :cond_10d
    invoke-static {p1, v3}, Lcom/google/googlenav/common/io/protocol/b;->a(Ljava/io/DataOutput;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 387
    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 4
    .parameter

    .prologue
    .line 532
    invoke-static {p1}, Lcom/google/googlenav/common/io/protocol/b;->a(Ljava/io/DataInput;)Ljava/io/InputStream;

    move-result-object v1

    .line 535
    :try_start_4
    invoke-direct {p0, v1}, Lr/d;->a(Ljava/io/InputStream;)V

    .line 536
    invoke-direct {p0, v1}, Lr/d;->b(Ljava/io/InputStream;)V
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_f

    .line 538
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 541
    const/4 v0, 0x1

    return v0

    .line 538
    :catchall_f
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0
.end method

.method protected a(Lr/m;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 421
    invoke-virtual {p0}, Lr/d;->c()I

    move-result v2

    if-nez v2, :cond_9

    .line 424
    :cond_8
    :goto_8
    return v0

    :cond_9
    invoke-virtual {p0, v1}, Lr/d;->a(I)Lr/m;

    move-result-object v2

    invoke-virtual {v2}, Lr/m;->c()Ln/am;

    move-result-object v2

    invoke-virtual {v2}, Ln/am;->b()I

    move-result v2

    invoke-virtual {p1}, Lr/m;->c()Ln/am;

    move-result-object v3

    invoke-virtual {v3}, Ln/am;->b()I

    move-result v3

    if-eq v2, v3, :cond_8

    move v0, v1

    goto :goto_8
.end method

.method protected a(II)[B
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 415
    new-array v0, p1, [B

    return-object v0
.end method

.method protected b()I
    .registers 2

    .prologue
    .line 313
    iget v0, p0, Lr/d;->a:I

    return v0
.end method

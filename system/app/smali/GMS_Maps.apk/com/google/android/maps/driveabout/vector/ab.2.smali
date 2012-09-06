.class public Lcom/google/android/maps/driveabout/vector/aB;
.super Lcom/google/android/maps/driveabout/vector/e;
.source "SourceFile"


# instance fields
.field private final d:Ljava/util/LinkedList;

.field private final e:Ljava/util/HashMap;

.field private final f:Ljava/util/HashMap;

.field private g:Ln/aK;

.field private h:Ljava/util/List;

.field private final i:I

.field private j:I

.field private k:Z

.field private l:Lcom/google/android/maps/driveabout/vector/ay;

.field private m:Lcom/google/android/maps/driveabout/vector/aC;


# direct methods
.method protected constructor <init>(ILcom/google/android/maps/driveabout/vector/S;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 110
    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/vector/e;-><init>(Lcom/google/android/maps/driveabout/vector/S;)V

    .line 64
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->d:Ljava/util/LinkedList;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->e:Ljava/util/HashMap;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->f:Ljava/util/HashMap;

    .line 93
    iput v1, p0, Lcom/google/android/maps/driveabout/vector/aB;->j:I

    .line 96
    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/aB;->k:Z

    .line 111
    iput p1, p0, Lcom/google/android/maps/driveabout/vector/aB;->i:I

    .line 112
    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/k;)V
    .registers 7
    .parameter

    .prologue
    .line 435
    invoke-static {}, Ll/q;->a()Ll/q;

    move-result-object v1

    .line 436
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/ay;

    .line 437
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ay;->f()Ln/B;

    move-result-object v3

    .line 438
    if-eqz v3, :cond_a

    .line 439
    invoke-virtual {v3}, Ln/B;->a()Ln/p;

    move-result-object v3

    invoke-virtual {v1, v3}, Ll/q;->e(Ln/p;)Ll/k;

    move-result-object v3

    .line 441
    if-eqz v3, :cond_a

    .line 446
    monitor-enter v0

    .line 447
    :try_start_27
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ay;->e()Ln/Q;

    move-result-object v4

    .line 448
    invoke-virtual {v3, p1, v4}, Ll/k;->a(Lcom/google/android/maps/driveabout/vector/k;Ln/Q;)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v4, v3}, Ln/Q;->b(I)V

    .line 449
    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/vector/ay;->a(Ln/Q;)V

    .line 450
    monitor-exit v0

    goto :goto_a

    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_27 .. :try_end_3a} :catchall_38

    throw v1

    .line 454
    :cond_3b
    return-void
.end method

.method private a(Ljava/lang/RuntimeException;Ljava/util/Iterator;I)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 557
    const-string v1, "#:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/aB;->j:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/maps/driveabout/vector/aB;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " T:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " E:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " C:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " numM:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 562
    const-string v1, "GLMarkerOverlay"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lh/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    return-void
.end method

.method private b(Lcom/google/android/maps/driveabout/vector/k;)V
    .registers 10
    .parameter

    .prologue
    const v7, -0x41b33333

    .line 462
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->v()Ln/aK;

    move-result-object v1

    .line 463
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->h:Ljava/util/List;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->g:Ln/aK;

    invoke-virtual {v1, v0}, Ln/aK;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 522
    :goto_13
    return-void

    .line 466
    :cond_14
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->h:Ljava/util/List;

    if-nez v0, :cond_9f

    .line 467
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->h:Ljava/util/List;

    .line 471
    :goto_1f
    invoke-virtual {v1}, Ln/aK;->a()Ln/aL;

    move-result-object v2

    .line 478
    invoke-virtual {v1}, Ln/aK;->d()Ln/Q;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->b()Ln/Q;

    move-result-object v3

    invoke-virtual {v0, v3, v7}, Ln/Q;->a(Ln/Q;F)Ln/Q;

    move-result-object v0

    invoke-virtual {v1}, Ln/aK;->e()Ln/Q;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->b()Ln/Q;

    move-result-object v4

    invoke-virtual {v3, v4, v7}, Ln/Q;->a(Ln/Q;F)Ln/Q;

    move-result-object v3

    invoke-virtual {v1}, Ln/aK;->g()Ln/Q;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->b()Ln/Q;

    move-result-object v5

    invoke-virtual {v4, v5, v7}, Ln/Q;->a(Ln/Q;F)Ln/Q;

    move-result-object v4

    invoke-virtual {v1}, Ln/aK;->f()Ln/Q;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->b()Ln/Q;

    move-result-object v6

    invoke-virtual {v5, v6, v7}, Ln/Q;->a(Ln/Q;F)Ln/Q;

    move-result-object v5

    invoke-static {v0, v3, v4, v5}, Ln/aK;->a(Ln/Q;Ln/Q;Ln/Q;Ln/Q;)Ln/aK;

    move-result-object v3

    .line 484
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 486
    :cond_5d
    :goto_5d
    :try_start_5d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 487
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/ay;

    .line 488
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ay;->o()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_5d

    .line 495
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ay;->e()Ln/Q;

    move-result-object v5

    .line 496
    invoke-virtual {v2, v5}, Ln/aL;->a(Ln/Q;)Z

    move-result v6

    if-eqz v6, :cond_7f

    invoke-virtual {v1, v5}, Ln/aK;->a(Ln/Q;)Z

    move-result v6

    if-nez v6, :cond_8b

    .line 500
    :cond_7f
    invoke-virtual {v3, v5}, Ln/aK;->a(Ln/Q;)Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 506
    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/ay;->b(Lcom/google/android/maps/driveabout/vector/k;)Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 511
    :cond_8b
    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/aB;->h:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_90
    .catch Ljava/lang/RuntimeException; {:try_start_5d .. :try_end_90} :catch_91

    goto :goto_5d

    .line 513
    :catch_91
    move-exception v0

    .line 519
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aB;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {p0, v0, v4, v2}, Lcom/google/android/maps/driveabout/vector/aB;->a(Ljava/lang/RuntimeException;Ljava/util/Iterator;I)V

    .line 521
    :cond_9b
    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/aB;->g:Ln/aK;

    goto/16 :goto_13

    .line 469
    :cond_9f
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto/16 :goto_1f
.end method

.method private c(FFLcom/google/android/maps/driveabout/vector/k;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 281
    const/high16 v0, 0x428c

    sub-float v0, p2, v0

    .line 284
    invoke-virtual {p3, p1, v0}, Lcom/google/android/maps/driveabout/vector/k;->d(FF)Ln/Q;

    move-result-object v0

    .line 285
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aB;->l:Lcom/google/android/maps/driveabout/vector/ay;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/ay;->a(Ln/Q;)V

    .line 286
    return-void
.end method

.method private c(Lcom/google/android/maps/driveabout/vector/k;)V
    .registers 4
    .parameter

    .prologue
    .line 532
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/ay;

    .line 533
    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/ay;->a(Lcom/google/android/maps/driveabout/vector/k;)Z

    goto :goto_6

    .line 535
    :cond_16
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_24

    .line 536
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->h:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 538
    :cond_24
    return-void
.end method

.method private d(Lcom/google/android/maps/driveabout/vector/ay;)V
    .registers 4
    .parameter

    .prologue
    .line 216
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/ay;->s()I

    move-result v0

    if-nez v0, :cond_f

    .line 217
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->f:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/ay;->o()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    :cond_f
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/ay;->t()I

    move-result v0

    if-nez v0, :cond_1e

    .line 220
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->f:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/ay;->p()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    :cond_1e
    return-void
.end method

.method private declared-synchronized i()V
    .registers 3

    .prologue
    .line 545
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 546
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 547
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/ay;

    .line 548
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ay;->s()I

    .line 549
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ay;->t()I
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1a

    goto :goto_7

    .line 545
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0

    .line 551
    :cond_1d
    :try_start_1d
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_1a

    .line 552
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/Object;)Lcom/google/android/maps/driveabout/vector/ay;
    .registers 3
    .parameter

    .prologue
    .line 169
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/ay;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aA;Z)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 183
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aB;->a:Lcom/google/android/maps/driveabout/vector/S;

    monitor-enter v1

    .line 184
    :try_start_3
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_2c

    .line 185
    :try_start_4
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 186
    :cond_a
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 187
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/ay;

    .line 188
    invoke-interface {p1, v0}, Lcom/google/android/maps/driveabout/vector/aA;->a(Lcom/google/android/maps/driveabout/vector/ay;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 189
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ay;->r()Z

    move-result v3

    if-eqz v3, :cond_2f

    if-nez p2, :cond_2f

    .line 192
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/vector/ay;->d(Z)V

    goto :goto_a

    .line 207
    :catchall_29
    move-exception v0

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_4 .. :try_end_2b} :catchall_29

    :try_start_2b
    throw v0

    .line 208
    :catchall_2c
    move-exception v0

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_2c

    throw v0

    .line 194
    :cond_2f
    :try_start_2f
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ay;->r()Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 197
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/vector/ay;->d(Z)V

    .line 198
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aB;->a:Lcom/google/android/maps/driveabout/vector/S;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/S;->f()V

    .line 200
    :cond_3e
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aB;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ay;->q()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/aB;->d(Lcom/google/android/maps/driveabout/vector/ay;)V

    .line 202
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->h:Ljava/util/List;

    goto :goto_a

    .line 207
    :cond_51
    monitor-exit p0
    :try_end_52
    .catchall {:try_start_2f .. :try_end_52} :catchall_29

    .line 208
    :try_start_52
    monitor-exit v1
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_2c

    .line 209
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 356
    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/E;->b()I

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_22

    .line 357
    monitor-enter p0

    .line 358
    :try_start_10
    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/vector/aB;->b(Lcom/google/android/maps/driveabout/vector/k;)V

    .line 359
    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/vector/aB;->a(Lcom/google/android/maps/driveabout/vector/k;)V

    .line 360
    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/vector/aB;->c(Lcom/google/android/maps/driveabout/vector/k;)V

    .line 361
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_23

    .line 362
    monitor-exit p0

    .line 404
    :cond_22
    :goto_22
    return-void

    .line 367
    :cond_23
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    .line 368
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aU;->o()V

    .line 369
    const/4 v2, 0x1

    const/16 v3, 0x303

    invoke-interface {v0, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 370
    const/16 v2, 0x2300

    const/16 v3, 0x2200

    const/16 v4, 0x1e01

    invoke-interface {v0, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    .line 372
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aU;->g:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/dY;->d(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 374
    new-instance v3, Lcom/google/android/maps/driveabout/vector/cG;

    invoke-direct {v3, p3}, Lcom/google/android/maps/driveabout/vector/cG;-><init>(Lcom/google/android/maps/driveabout/vector/E;)V

    .line 377
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/google/android/maps/driveabout/vector/cG;->a(I)V

    .line 378
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4b
    :goto_4b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/ay;

    .line 379
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ay;->p()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_4b

    .line 380
    invoke-virtual {v0, p1, p2, v3}, Lcom/google/android/maps/driveabout/vector/ay;->a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V

    goto :goto_4b

    .line 402
    :catchall_61
    move-exception v0

    monitor-exit p0
    :try_end_63
    .catchall {:try_start_10 .. :try_end_63} :catchall_61

    throw v0

    .line 384
    :cond_64
    const/4 v0, 0x1

    :try_start_65
    invoke-virtual {v3, v0}, Lcom/google/android/maps/driveabout/vector/cG;->a(I)V

    .line 385
    const/4 v0, 0x0

    .line 386
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aB;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v0

    :goto_70
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_87

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/ay;

    .line 387
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ay;->r()Z

    move-result v5

    if-eqz v5, :cond_83

    move-object v2, v0

    .line 390
    :cond_83
    invoke-virtual {v0, p1, p2, v3}, Lcom/google/android/maps/driveabout/vector/ay;->a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V

    goto :goto_70

    .line 397
    :cond_87
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/k;->k()F

    move-result v0

    const/4 v4, 0x0

    cmpl-float v0, v0, v4

    if-nez v0, :cond_9b

    move v0, v1

    :goto_91
    invoke-virtual {v3, v0}, Lcom/google/android/maps/driveabout/vector/cG;->a(I)V

    .line 399
    if-eqz v2, :cond_99

    .line 400
    invoke-virtual {v2, p1, p2, v3}, Lcom/google/android/maps/driveabout/vector/ay;->a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V

    .line 402
    :cond_99
    monitor-exit p0
    :try_end_9a
    .catchall {:try_start_65 .. :try_end_9a} :catchall_61

    goto :goto_22

    .line 397
    :cond_9b
    const/4 v0, 0x2

    goto :goto_91
.end method

.method public declared-synchronized a(Lcom/google/android/maps/driveabout/vector/ay;)V
    .registers 4
    .parameter

    .prologue
    .line 122
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->e:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/ay;->q()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 123
    invoke-virtual {p1, p0}, Lcom/google/android/maps/driveabout/vector/ay;->a(Lcom/google/android/maps/driveabout/vector/aB;)V

    .line 124
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->d:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->e:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/ay;->q()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->h:Ljava/util/List;
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    .line 128
    :cond_21
    monitor-exit p0

    return-void

    .line 122
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/util/List;FFLn/Q;Lcom/google/android/maps/driveabout/vector/k;I)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 409
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p5}, Lcom/google/android/maps/driveabout/vector/aB;->b(Lcom/google/android/maps/driveabout/vector/k;)V

    .line 413
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/ay;

    .line 414
    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/d;->k()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 415
    invoke-interface {v0, p2, p3, p4, p5}, Lcom/google/android/maps/driveabout/vector/d;->a(FFLn/Q;Lcom/google/android/maps/driveabout/vector/k;)I

    move-result v2

    .line 416
    if-ge v2, p6, :cond_a

    .line 417
    new-instance v3, Lcom/google/android/maps/driveabout/vector/H;

    invoke-direct {v3, v0, p0, v2}, Lcom/google/android/maps/driveabout/vector/H;-><init>(Lcom/google/android/maps/driveabout/vector/d;Lcom/google/android/maps/driveabout/vector/e;I)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2b

    goto :goto_a

    .line 409
    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 421
    :cond_2e
    monitor-exit p0

    return-void
.end method

.method public a_(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 4
    .parameter

    .prologue
    .line 265
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aB;->a:Lcom/google/android/maps/driveabout/vector/S;

    monitor-enter v1

    .line 266
    :try_start_3
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_d

    .line 269
    :try_start_4
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/aB;->i()V

    .line 270
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_a

    .line 271
    :try_start_8
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_d

    .line 273
    return-void

    .line 270
    :catchall_a
    move-exception v0

    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    :try_start_c
    throw v0

    .line 271
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_d

    throw v0
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/ay;)V
    .registers 5
    .parameter

    .prologue
    .line 135
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aB;->a:Lcom/google/android/maps/driveabout/vector/S;

    monitor-enter v1

    .line 136
    :try_start_3
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_39

    .line 137
    :try_start_4
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->e:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/ay;->q()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 138
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->e:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/ay;->q()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->d:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 140
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/ay;->r()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 142
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/vector/ay;->d(Z)V

    .line 143
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->a:Lcom/google/android/maps/driveabout/vector/S;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/S;->f()V

    .line 145
    :cond_2d
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/aB;->d(Lcom/google/android/maps/driveabout/vector/ay;)V

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->h:Ljava/util/List;

    .line 148
    :cond_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_4 .. :try_end_34} :catchall_36

    .line 149
    :try_start_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_39

    .line 150
    return-void

    .line 148
    :catchall_36
    move-exception v0

    :try_start_37
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    :try_start_38
    throw v0

    .line 149
    :catchall_39
    move-exception v0

    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_39

    throw v0
.end method

.method public b(FFLcom/google/android/maps/driveabout/vector/k;)Z
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 303
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->k:Z

    if-eqz v0, :cond_14

    .line 306
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/aB;->c(FFLcom/google/android/maps/driveabout/vector/k;)V

    .line 307
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->m:Lcom/google/android/maps/driveabout/vector/aC;

    if-eqz v0, :cond_12

    .line 308
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->m:Lcom/google/android/maps/driveabout/vector/aC;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aB;->l:Lcom/google/android/maps/driveabout/vector/ay;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/vector/aC;->a(Lcom/google/android/maps/driveabout/vector/ay;)V

    .line 310
    :cond_12
    const/4 v0, 0x1

    .line 312
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method declared-synchronized c(Lcom/google/android/maps/driveabout/vector/ay;)V
    .registers 4
    .parameter

    .prologue
    .line 157
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->e:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/ay;->q()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 158
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->e:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/ay;->q()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->d:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 160
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/aB;->d(Lcom/google/android/maps/driveabout/vector/ay;)V

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->h:Ljava/util/List;
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    .line 163
    :cond_21
    monitor-exit p0

    return-void

    .line 157
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(FFLn/Q;Lcom/google/android/maps/driveabout/vector/k;)Z
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 317
    monitor-enter p0

    .line 318
    :try_start_3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->h:Ljava/util/List;

    if-nez v0, :cond_a

    .line 319
    monitor-exit p0

    move v0, v1

    .line 332
    :goto_9
    return v0

    .line 321
    :cond_a
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/ay;

    .line 322
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ay;->c()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 323
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/vector/ay;->b(FFLn/Q;Lcom/google/android/maps/driveabout/vector/k;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 324
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/aB;->k:Z

    .line 325
    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->l:Lcom/google/android/maps/driveabout/vector/ay;

    .line 326
    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/maps/driveabout/vector/aB;->c(FFLcom/google/android/maps/driveabout/vector/k;)V

    .line 327
    monitor-exit p0

    move v0, v2

    goto :goto_9

    .line 331
    :cond_33
    monitor-exit p0

    move v0, v1

    .line 332
    goto :goto_9

    .line 331
    :catchall_36
    move-exception v0

    monitor-exit p0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_36

    throw v0
.end method

.method public d(FFLn/Q;Lcom/google/android/maps/driveabout/vector/k;)Z
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 337
    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/aB;->k:Z

    if-eqz v1, :cond_30

    .line 338
    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/maps/driveabout/vector/aB;->c(FFLcom/google/android/maps/driveabout/vector/k;)V

    .line 341
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aB;->l:Lcom/google/android/maps/driveabout/vector/ay;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/ay;->l()Lcom/google/android/maps/driveabout/vector/az;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 342
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aB;->l:Lcom/google/android/maps/driveabout/vector/ay;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/ay;->l()Lcom/google/android/maps/driveabout/vector/az;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aB;->l:Lcom/google/android/maps/driveabout/vector/ay;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/ay;->e()Ln/Q;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/maps/driveabout/vector/az;->a(Ln/Q;)V

    .line 344
    :cond_1f
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aB;->m:Lcom/google/android/maps/driveabout/vector/aC;

    if-eqz v1, :cond_2a

    .line 345
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aB;->m:Lcom/google/android/maps/driveabout/vector/aC;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aB;->l:Lcom/google/android/maps/driveabout/vector/ay;

    invoke-interface {v1, v2}, Lcom/google/android/maps/driveabout/vector/aC;->b(Lcom/google/android/maps/driveabout/vector/ay;)V

    .line 347
    :cond_2a
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/aB;->l:Lcom/google/android/maps/driveabout/vector/ay;

    .line 348
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->k:Z

    .line 349
    const/4 v0, 0x1

    .line 351
    :cond_30
    return v0
.end method

.method public e()V
    .registers 4

    .prologue
    .line 230
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aB;->a:Lcom/google/android/maps/driveabout/vector/S;

    monitor-enter v1

    .line 231
    :try_start_3
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_33

    .line 232
    :try_start_4
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->a:Lcom/google/android/maps/driveabout/vector/S;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/S;->e()Lcom/google/android/maps/driveabout/vector/d;

    move-result-object v0

    .line 233
    if-eqz v0, :cond_1d

    instance-of v2, v0, Lcom/google/android/maps/driveabout/vector/ay;

    if-eqz v2, :cond_1d

    check-cast v0, Lcom/google/android/maps/driveabout/vector/ay;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ay;->n()Lcom/google/android/maps/driveabout/vector/aB;

    move-result-object v0

    if-ne v0, p0, :cond_1d

    .line 235
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->a:Lcom/google/android/maps/driveabout/vector/S;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/S;->f()V

    .line 237
    :cond_1d
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/aB;->i()V

    .line 238
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 239
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 240
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->h:Ljava/util/List;

    .line 241
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_4 .. :try_end_2e} :catchall_30

    .line 242
    :try_start_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_33

    .line 243
    return-void

    .line 241
    :catchall_30
    move-exception v0

    :try_start_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    :try_start_32
    throw v0

    .line 242
    :catchall_33
    move-exception v0

    monitor-exit v1
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_33

    throw v0
.end method

.method h()Ljava/util/HashMap;
    .registers 2

    .prologue
    .line 427
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->f:Ljava/util/HashMap;

    return-object v0
.end method

.method public q_()Z
    .registers 2

    .prologue
    .line 290
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->k:Z

    return v0
.end method

.method public u_()I
    .registers 2

    .prologue
    .line 256
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aB;->i:I

    return v0
.end method

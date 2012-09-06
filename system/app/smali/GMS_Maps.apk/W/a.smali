.class public Lw/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Z

.field private c:I

.field private final d:Ljava/util/LinkedHashSet;

.field private final e:Ljava/util/LinkedHashSet;

.field private f:Ljava/util/Iterator;

.field private final g:Lw/b;

.field private final h:Ljava/util/LinkedList;

.field private i:Lcom/google/android/maps/driveabout/vector/cY;

.field private j:Ln/Q;

.field private k:J

.field private l:J

.field private m:B

.field private n:Z

.field private o:Ljava/util/Map;

.field private p:Ljava/util/Set;

.field private q:Lw/d;


# direct methods
.method public constructor <init>(IIZZ)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    invoke-static {}, Lcom/google/common/collect/dm;->b()Ljava/util/LinkedHashSet;

    move-result-object v0

    iput-object v0, p0, Lw/a;->d:Ljava/util/LinkedHashSet;

    .line 138
    invoke-static {}, Lcom/google/common/collect/dm;->b()Ljava/util/LinkedHashSet;

    move-result-object v0

    iput-object v0, p0, Lw/a;->e:Ljava/util/LinkedHashSet;

    .line 151
    invoke-static {}, Lcom/google/common/collect/cx;->b()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lw/a;->h:Ljava/util/LinkedList;

    .line 163
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lw/a;->k:J

    .line 172
    const/4 v0, 0x4

    iput-byte v0, p0, Lw/a;->m:B

    .line 181
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lw/a;->o:Ljava/util/Map;

    .line 187
    invoke-static {}, Lcom/google/common/collect/dm;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lw/a;->p:Ljava/util/Set;

    .line 195
    iput p1, p0, Lw/a;->a:I

    .line 196
    new-instance v0, Lw/b;

    invoke-direct {v0, p0, p4}, Lw/b;-><init>(Lw/a;Z)V

    iput-object v0, p0, Lw/a;->g:Lw/b;

    .line 198
    iput-boolean p3, p0, Lw/a;->b:Z

    .line 199
    iput p2, p0, Lw/a;->c:I

    .line 200
    return-void
.end method

.method static synthetic a(Lw/a;)Ljava/util/LinkedHashSet;
    .registers 2
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lw/a;->d:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method static synthetic b(Lw/a;)J
    .registers 3
    .parameter

    .prologue
    .line 97
    invoke-direct {p0}, Lw/a;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method private declared-synchronized b(Lw/d;Z)Lw/d;
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 358
    monitor-enter p0

    :try_start_5
    invoke-virtual {p0, p1}, Lw/a;->a(Lw/d;)Z
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_7a

    move-result v1

    if-nez v1, :cond_d

    .line 446
    :cond_b
    :goto_b
    monitor-exit p0

    return-object v0

    .line 362
    :cond_d
    :try_start_d
    iget-wide v1, p1, Lw/d;->c:J

    .line 363
    iget-byte v5, p0, Lw/a;->m:B

    if-nez v5, :cond_22

    .line 364
    iget-object v5, p0, Lw/a;->q:Lw/d;

    iget-wide v5, v5, Lw/d;->c:J

    cmp-long v5, v1, v5

    if-nez v5, :cond_b

    .line 367
    const/4 v5, 0x1

    iput-byte v5, p0, Lw/a;->m:B

    .line 371
    invoke-direct {p0}, Lw/a;->e()V

    move p2, v4

    .line 375
    :cond_22
    if-eqz p2, :cond_36

    iget-object v5, p0, Lw/a;->q:Lw/d;

    if-eq p1, v5, :cond_36

    .line 376
    iget-object v5, p0, Lw/a;->d:Ljava/util/LinkedHashSet;

    iget-object v6, p1, Lw/d;->a:Ln/am;

    invoke-virtual {v5, v6}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 377
    iget-object v5, p0, Lw/a;->p:Ljava/util/Set;

    iget-object v6, p1, Lw/d;->a:Ln/am;

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 380
    :cond_36
    iget-byte v5, p0, Lw/a;->m:B

    if-ne v5, v3, :cond_85

    .line 381
    iget-wide v5, p0, Lw/a;->k:J

    cmp-long v5, v1, v5

    if-nez v5, :cond_b

    .line 386
    iget-object v5, p0, Lw/a;->p:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    iget-object v6, p0, Lw/a;->d:Ljava/util/LinkedHashSet;

    invoke-virtual {v6}, Ljava/util/LinkedHashSet;->size()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, p0, Lw/a;->c:I

    if-ge v5, v6, :cond_72

    .line 388
    iget-object v5, p0, Lw/a;->f:Ljava/util/Iterator;

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_72

    .line 389
    new-instance v1, Lw/d;

    iget-object v0, p0, Lw/a;->f:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/am;

    invoke-direct {p0}, Lw/a;->d()J

    move-result-wide v2

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-direct {v1, v0, v2, v3, v4}, Lw/d;-><init>(Ln/am;JZ)V

    move-object v0, v1

    goto :goto_b

    .line 396
    :cond_72
    iget-boolean v5, p0, Lw/a;->n:Z

    if-eqz v5, :cond_7d

    .line 397
    const/4 v1, 0x4

    iput-byte v1, p0, Lw/a;->m:B
    :try_end_79
    .catchall {:try_start_d .. :try_end_79} :catchall_7a

    goto :goto_b

    .line 358
    :catchall_7a
    move-exception v0

    monitor-exit p0

    throw v0

    .line 401
    :cond_7d
    const/4 v5, 0x2

    :try_start_7e
    iput-byte v5, p0, Lw/a;->m:B

    .line 402
    iget-object v5, p0, Lw/a;->g:Lw/b;

    invoke-virtual {v5}, Lw/b;->a()V

    .line 405
    :cond_85
    iget-object v5, p0, Lw/a;->p:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    iget v6, p0, Lw/a;->c:I

    if-ge v5, v6, :cond_96

    .line 409
    :goto_8f
    if-nez v3, :cond_98

    .line 410
    const/4 v1, 0x4

    iput-byte v1, p0, Lw/a;->m:B

    goto/16 :goto_b

    :cond_96
    move v3, v4

    .line 405
    goto :goto_8f

    .line 414
    :cond_98
    iget-byte v4, p0, Lw/a;->m:B

    if-ne v4, v7, :cond_bb

    .line 415
    iget-object v1, p0, Lw/a;->d:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b6

    .line 416
    iget-wide v1, p1, Lw/d;->c:J

    iget-wide v4, p0, Lw/a;->k:J

    cmp-long v1, v1, v4

    if-nez v1, :cond_b

    if-eqz v3, :cond_b

    .line 417
    iget-object v0, p0, Lw/a;->g:Lw/b;

    invoke-virtual {v0, p2}, Lw/b;->a(Z)Lw/d;

    move-result-object v0

    goto/16 :goto_b

    .line 424
    :cond_b6
    iget-wide v1, p0, Lw/a;->k:J

    .line 425
    const/4 v4, 0x3

    iput-byte v4, p0, Lw/a;->m:B

    .line 436
    :cond_bb
    iget-byte v4, p0, Lw/a;->m:B

    const/4 v5, 0x3

    if-ne v4, v5, :cond_b

    .line 437
    iget-wide v4, p0, Lw/a;->k:J

    cmp-long v1, v1, v4

    if-nez v1, :cond_b

    .line 440
    iget-object v1, p0, Lw/a;->h:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f1

    if-eqz v3, :cond_f1

    .line 441
    iget-object v0, p0, Lw/a;->h:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 442
    new-instance v2, Lw/d;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ln/am;

    invoke-direct {p0}, Lw/a;->d()J

    move-result-wide v3

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {v2, v1, v3, v4, v0}, Lw/d;-><init>(Ln/am;JZ)V

    move-object v0, v2

    goto/16 :goto_b

    .line 444
    :cond_f1
    const/4 v1, 0x4

    iput-byte v1, p0, Lw/a;->m:B
    :try_end_f4
    .catchall {:try_start_7e .. :try_end_f4} :catchall_7a

    goto/16 :goto_b
.end method

.method static synthetic c(Lw/a;)I
    .registers 2
    .parameter

    .prologue
    .line 97
    iget v0, p0, Lw/a;->a:I

    return v0
.end method

.method private d()J
    .registers 5

    .prologue
    .line 204
    iget-wide v0, p0, Lw/a;->k:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lw/a;->k:J

    return-wide v0
.end method

.method static synthetic d(Lw/a;)Ln/Q;
    .registers 2
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lw/a;->j:Ln/Q;

    return-object v0
.end method

.method static synthetic e(Lw/a;)Lcom/google/android/maps/driveabout/vector/cY;
    .registers 2
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lw/a;->i:Lcom/google/android/maps/driveabout/vector/cY;

    return-object v0
.end method

.method private declared-synchronized e()V
    .registers 8

    .prologue
    const/4 v6, -0x1

    .line 268
    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lw/a;->o:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 269
    iget-object v0, p0, Lw/a;->e:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    .line 270
    iget-object v0, p0, Lw/a;->p:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 272
    iget-boolean v0, p0, Lw/a;->b:Z

    if-eqz v0, :cond_55

    .line 277
    invoke-static {}, Lcom/google/common/collect/dm;->b()Ljava/util/LinkedHashSet;

    move-result-object v2

    .line 278
    iget-object v0, p0, Lw/a;->d:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/am;

    .line 279
    invoke-virtual {v0}, Ln/am;->a()Ln/am;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z
    :try_end_32
    .catchall {:try_start_2 .. :try_end_32} :catchall_33

    goto :goto_1f

    .line 268
    :catchall_33
    move-exception v0

    monitor-exit p0

    throw v0

    .line 282
    :cond_36
    :try_start_36
    iget-object v0, p0, Lw/a;->i:Lcom/google/android/maps/driveabout/vector/cY;

    iget v1, p0, Lw/a;->a:I

    iget-object v3, p0, Lw/a;->j:Ln/Q;

    const/16 v4, 0x8

    iget-object v5, p0, Lw/a;->e:Ljava/util/LinkedHashSet;

    invoke-static/range {v0 .. v5}, Lw/c;->a(Lcom/google/android/maps/driveabout/vector/cY;ILjava/util/Collection;Ln/Q;ILjava/util/LinkedHashSet;)Ljava/util/LinkedHashSet;

    .line 287
    iget-boolean v0, p0, Lw/a;->n:Z

    if-eqz v0, :cond_5f

    .line 290
    const/4 v0, 0x2

    .line 291
    iget-object v1, p0, Lw/a;->e:Ljava/util/LinkedHashSet;

    iget-object v2, p0, Lw/a;->i:Lcom/google/android/maps/driveabout/vector/cY;

    iget-object v3, p0, Lw/a;->j:Ln/Q;

    invoke-interface {v2, v0, v3}, Lcom/google/android/maps/driveabout/vector/cY;->a(ILn/Q;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 319
    :cond_55
    iget-object v0, p0, Lw/a;->e:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lw/a;->f:Ljava/util/Iterator;
    :try_end_5d
    .catchall {:try_start_36 .. :try_end_5d} :catchall_33

    .line 320
    monitor-exit p0

    return-void

    .line 296
    :cond_5f
    :try_start_5f
    iget-object v0, p0, Lw/a;->e:Ljava/util/LinkedHashSet;

    invoke-static {v0}, Lcom/google/common/collect/cx;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 297
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 298
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_85

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/am;

    .line 299
    iget-object v2, p0, Lw/a;->h:Ljava/util/LinkedList;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    goto :goto_6c

    .line 305
    :cond_85
    iget-object v0, p0, Lw/a;->e:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v6

    :goto_8c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 306
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/am;

    .line 307
    if-ne v1, v6, :cond_a0

    .line 309
    invoke-virtual {v0}, Ln/am;->b()I

    move-result v0

    :goto_9e
    move v1, v0

    .line 316
    goto :goto_8c

    .line 310
    :cond_a0
    invoke-virtual {v0}, Ln/am;->b()I

    move-result v0

    if-ne v1, v0, :cond_a8

    move v0, v1

    goto :goto_9e

    .line 313
    :cond_a8
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_ab
    .catchall {:try_start_5f .. :try_end_ab} :catchall_33

    move v0, v1

    goto :goto_9e
.end method


# virtual methods
.method public declared-synchronized a(Lw/d;Z)Lw/d;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 331
    monitor-enter p0

    :cond_1
    :try_start_1
    invoke-direct {p0, p1, p2}, Lw/a;->b(Lw/d;Z)Lw/d;

    move-result-object p1

    if-eqz p1, :cond_2e

    .line 333
    const/4 p2, 0x0

    .line 336
    iget-object v0, p0, Lw/a;->o:Ljava/util/Map;

    iget-object v1, p1, Lw/d;->a:Ln/am;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw/d;

    .line 337
    if-eqz v0, :cond_1c

    .line 338
    iget-boolean v0, v0, Lw/d;->b:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lw/d;->b:Z

    if-nez v0, :cond_1

    .line 343
    :cond_1c
    iget-object v0, p0, Lw/a;->o:Ljava/util/Map;

    iget-object v1, p1, Lw/d;->a:Ln/am;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    iget-boolean v0, p1, Lw/d;->b:Z

    if-nez v0, :cond_2e

    .line 347
    iget-object v0, p0, Lw/a;->p:Ljava/util/Set;

    iget-object v1, p1, Lw/d;->a:Ln/am;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_30

    .line 352
    :cond_2e
    monitor-exit p0

    return-object p1

    .line 331
    :catchall_30
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a()V
    .registers 2

    .prologue
    .line 259
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lw/a;->n:Z

    if-nez v0, :cond_8

    .line 260
    const/4 v0, 0x4

    iput-byte v0, p0, Lw/a;->m:B
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 262
    :cond_8
    monitor-exit p0

    return-void

    .line 259
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/google/android/maps/driveabout/vector/cY;Ln/Q;Ljava/util/List;Ljava/util/Set;Ljava/util/Set;Z)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 227
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-byte v0, p0, Lw/a;->m:B

    .line 228
    invoke-direct {p0}, Lw/a;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lw/a;->l:J

    .line 229
    iput-object p1, p0, Lw/a;->i:Lcom/google/android/maps/driveabout/vector/cY;

    .line 230
    iput-object p2, p0, Lw/a;->j:Ln/Q;

    .line 232
    new-instance v0, Lw/d;

    sget-object v1, Lr/aH;->g:Ln/am;

    invoke-direct {p0}, Lw/a;->d()J

    move-result-wide v2

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lw/d;-><init>(Ln/am;JZ)V

    iput-object v0, p0, Lw/a;->q:Lw/d;

    .line 235
    iget-object v0, p0, Lw/a;->d:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    .line 236
    iget-object v0, p0, Lw/a;->d:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p3}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 238
    iget-object v0, p0, Lw/a;->h:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 239
    if-eqz p4, :cond_51

    .line 240
    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_36
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/am;

    .line 241
    iget-object v2, p0, Lw/a;->h:Ljava/util/LinkedList;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_4d
    .catchall {:try_start_2 .. :try_end_4d} :catchall_4e

    goto :goto_36

    .line 227
    :catchall_4e
    move-exception v0

    monitor-exit p0

    throw v0

    .line 245
    :cond_51
    if-eqz p5, :cond_6f

    .line 246
    :try_start_53
    invoke-interface {p5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_57
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/am;

    .line 247
    iget-object v2, p0, Lw/a;->h:Ljava/util/LinkedList;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_57

    .line 251
    :cond_6f
    iput-boolean p6, p0, Lw/a;->n:Z
    :try_end_71
    .catchall {:try_start_53 .. :try_end_71} :catchall_4e

    .line 252
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(Lw/d;)Z
    .registers 6
    .parameter

    .prologue
    .line 458
    monitor-enter p0

    if-eqz p1, :cond_14

    :try_start_3
    iget-wide v0, p1, Lw/d;->c:J

    iget-wide v2, p0, Lw/a;->l:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_14

    invoke-virtual {p0}, Lw/a;->c()Z
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_16

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_12
    monitor-exit p0

    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_12

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()Lw/d;
    .registers 2

    .prologue
    .line 324
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lw/a;->q:Lw/d;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()Z
    .registers 3

    .prologue
    .line 451
    monitor-enter p0

    :try_start_1
    iget-byte v0, p0, Lw/a;->m:B
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_b

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_7
    monitor-exit p0

    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_7

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

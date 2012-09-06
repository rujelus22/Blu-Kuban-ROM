.class public Lau/a;
.super Lat/p;
.source "SourceFile"


# instance fields
.field private final c:Lcom/google/android/maps/driveabout/vector/dI;

.field private d:Lcom/google/android/maps/driveabout/vector/dX;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:[Lat/P;

.field private h:B

.field private i:B

.field private j:Lcom/google/android/maps/driveabout/vector/db;

.field private k:Lcom/google/android/maps/driveabout/vector/db;

.field private l:Z

.field private m:Ll/q;

.field private n:Z

.field private o:Lcom/google/android/maps/driveabout/vector/db;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIILat/B;Lat/Y;I)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 118
    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lat/p;-><init>(IIILat/B;Lat/Y;I)V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lau/a;->f:Landroid/widget/TextView;

    .line 120
    new-instance v0, Lau/b;

    invoke-direct {v0, p0, p1}, Lau/b;-><init>(Lau/a;Landroid/content/Context;)V

    iput-object v0, p0, Lau/a;->c:Lcom/google/android/maps/driveabout/vector/dI;

    .line 148
    invoke-static {}, Ll/q;->a()Ll/q;

    move-result-object v0

    iput-object v0, p0, Lau/a;->m:Ll/q;

    .line 151
    new-instance v0, Lcom/google/android/maps/driveabout/vector/ee;

    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/ee;-><init>(Lac/p;)V

    .line 152
    new-instance v1, Lau/c;

    invoke-direct {v1, p0}, Lau/c;-><init>(Lau/a;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/ee;->a(Lcom/google/android/maps/driveabout/vector/ef;)V

    .line 171
    new-instance v1, Lau/d;

    invoke-direct {v1, p0}, Lau/d;-><init>(Lau/a;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/ee;->a(Lcom/google/android/maps/driveabout/vector/eg;)V

    .line 177
    iget-object v1, p0, Lau/a;->c:Lcom/google/android/maps/driveabout/vector/dI;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/dI;->a(Lcom/google/android/maps/driveabout/vector/ee;)V

    .line 179
    const/4 v0, 0x0

    new-array v0, v0, [Lat/P;

    iput-object v0, p0, Lau/a;->g:[Lat/P;

    .line 180
    return-void
.end method

.method private A()V
    .registers 5

    .prologue
    .line 484
    iget-object v0, p0, Lau/a;->d:Lcom/google/android/maps/driveabout/vector/dX;

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lau/a;->k()B

    move-result v0

    iget-byte v1, p0, Lau/a;->h:B

    if-ne v0, v1, :cond_d

    .line 552
    :cond_c
    :goto_c
    return-void

    .line 487
    :cond_d
    invoke-virtual {p0}, Lau/a;->k()B

    move-result v0

    iput-byte v0, p0, Lau/a;->h:B

    .line 491
    invoke-virtual {p0}, Lau/a;->b()Lat/H;

    move-result-object v0

    .line 492
    invoke-virtual {v0}, Lat/H;->e()Z

    move-result v1

    if-eqz v1, :cond_64

    .line 493
    invoke-virtual {v0}, Lat/H;->g()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 495
    sget-object v0, Lcom/google/android/maps/driveabout/vector/dg;->d:Lcom/google/android/maps/driveabout/vector/dg;

    .line 496
    sget-object v1, Lcom/google/android/maps/driveabout/vector/D;->b:Lcom/google/android/maps/driveabout/vector/D;

    .line 535
    :goto_27
    iget-object v2, p0, Lau/a;->j:Lcom/google/android/maps/driveabout/vector/db;

    if-eqz v2, :cond_32

    .line 536
    iget-object v2, p0, Lau/a;->d:Lcom/google/android/maps/driveabout/vector/dX;

    iget-object v3, p0, Lau/a;->j:Lcom/google/android/maps/driveabout/vector/db;

    invoke-interface {v2, v3}, Lcom/google/android/maps/driveabout/vector/dX;->b(Lcom/google/android/maps/driveabout/vector/aD;)V

    .line 538
    :cond_32
    sget-object v2, Lcom/google/android/maps/driveabout/vector/dg;->a:Lcom/google/android/maps/driveabout/vector/dg;

    if-eq v0, v2, :cond_9b

    sget-object v2, Lcom/google/android/maps/driveabout/vector/dg;->c:Lcom/google/android/maps/driveabout/vector/dg;

    if-eq v0, v2, :cond_9b

    sget-object v2, Lcom/google/android/maps/driveabout/vector/dg;->j:Lcom/google/android/maps/driveabout/vector/dg;

    if-eq v0, v2, :cond_9b

    .line 540
    sget-object v2, Lcom/google/android/maps/driveabout/vector/D;->e:Lcom/google/android/maps/driveabout/vector/D;

    if-ne v1, v2, :cond_8a

    .line 541
    iget-object v2, p0, Lau/a;->d:Lcom/google/android/maps/driveabout/vector/dX;

    invoke-interface {v2}, Lcom/google/android/maps/driveabout/vector/dX;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/maps/driveabout/vector/db;->c(Lcom/google/android/maps/driveabout/vector/dg;Landroid/content/res/Resources;)Lcom/google/android/maps/driveabout/vector/db;

    move-result-object v0

    iput-object v0, p0, Lau/a;->j:Lcom/google/android/maps/driveabout/vector/db;

    .line 547
    :goto_52
    iget-object v0, p0, Lau/a;->d:Lcom/google/android/maps/driveabout/vector/dX;

    iget-object v2, p0, Lau/a;->j:Lcom/google/android/maps/driveabout/vector/db;

    invoke-interface {v0, v2}, Lcom/google/android/maps/driveabout/vector/dX;->a(Lcom/google/android/maps/driveabout/vector/aD;)V

    .line 551
    :goto_59
    iget-object v0, p0, Lau/a;->d:Lcom/google/android/maps/driveabout/vector/dX;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/vector/dX;->setDrawMode(Lcom/google/android/maps/driveabout/vector/D;)V

    goto :goto_c

    .line 502
    :cond_5f
    sget-object v0, Lcom/google/android/maps/driveabout/vector/dg;->d:Lcom/google/android/maps/driveabout/vector/dg;

    .line 503
    sget-object v1, Lcom/google/android/maps/driveabout/vector/D;->b:Lcom/google/android/maps/driveabout/vector/D;

    goto :goto_27

    .line 505
    :cond_64
    invoke-virtual {v0}, Lat/H;->f()Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 506
    invoke-virtual {v0}, Lat/H;->g()Z

    move-result v0

    if-eqz v0, :cond_75

    .line 508
    sget-object v0, Lcom/google/android/maps/driveabout/vector/dg;->e:Lcom/google/android/maps/driveabout/vector/dg;

    .line 509
    sget-object v1, Lcom/google/android/maps/driveabout/vector/D;->b:Lcom/google/android/maps/driveabout/vector/D;

    goto :goto_27

    .line 515
    :cond_75
    sget-object v0, Lcom/google/android/maps/driveabout/vector/dg;->e:Lcom/google/android/maps/driveabout/vector/dg;

    .line 516
    sget-object v1, Lcom/google/android/maps/driveabout/vector/D;->d:Lcom/google/android/maps/driveabout/vector/D;

    goto :goto_27

    .line 519
    :cond_7a
    invoke-virtual {v0}, Lat/H;->g()Z

    move-result v0

    if-eqz v0, :cond_85

    .line 520
    sget-object v0, Lcom/google/android/maps/driveabout/vector/dg;->j:Lcom/google/android/maps/driveabout/vector/dg;

    .line 524
    sget-object v1, Lcom/google/android/maps/driveabout/vector/D;->a:Lcom/google/android/maps/driveabout/vector/D;

    goto :goto_27

    .line 531
    :cond_85
    sget-object v0, Lcom/google/android/maps/driveabout/vector/dg;->a:Lcom/google/android/maps/driveabout/vector/dg;

    .line 532
    sget-object v1, Lcom/google/android/maps/driveabout/vector/D;->a:Lcom/google/android/maps/driveabout/vector/D;

    goto :goto_27

    .line 544
    :cond_8a
    iget-object v2, p0, Lau/a;->d:Lcom/google/android/maps/driveabout/vector/dX;

    invoke-interface {v2}, Lcom/google/android/maps/driveabout/vector/dX;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/maps/driveabout/vector/db;->b(Lcom/google/android/maps/driveabout/vector/dg;Landroid/content/res/Resources;)Lcom/google/android/maps/driveabout/vector/db;

    move-result-object v0

    iput-object v0, p0, Lau/a;->j:Lcom/google/android/maps/driveabout/vector/db;

    goto :goto_52

    .line 549
    :cond_9b
    const/4 v0, 0x0

    iput-object v0, p0, Lau/a;->j:Lcom/google/android/maps/driveabout/vector/db;

    goto :goto_59
.end method

.method private B()V
    .registers 3

    .prologue
    .line 558
    iget-object v0, p0, Lau/a;->d:Lcom/google/android/maps/driveabout/vector/dX;

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lau/a;->l()B

    move-result v0

    iget-byte v1, p0, Lau/a;->i:B

    if-ne v0, v1, :cond_d

    .line 582
    :cond_c
    :goto_c
    return-void

    .line 561
    :cond_d
    invoke-virtual {p0}, Lau/a;->l()B

    move-result v0

    iput-byte v0, p0, Lau/a;->i:B

    .line 569
    invoke-virtual {p0}, Lau/a;->b()Lat/H;

    move-result-object v0

    invoke-virtual {v0}, Lat/H;->g()Z

    move-result v0

    if-eqz v0, :cond_39

    sget-object v0, Lcom/google/android/maps/driveabout/vector/dg;->j:Lcom/google/android/maps/driveabout/vector/dg;

    .line 576
    :goto_1f
    if-eqz v0, :cond_c

    .line 577
    iget-object v1, p0, Lau/a;->d:Lcom/google/android/maps/driveabout/vector/dX;

    invoke-interface {v1}, Lcom/google/android/maps/driveabout/vector/dX;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/db;->a(Lcom/google/android/maps/driveabout/vector/dg;Landroid/content/res/Resources;)Lcom/google/android/maps/driveabout/vector/db;

    move-result-object v0

    .line 579
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/db;->b(Z)V

    .line 580
    iget-object v1, p0, Lau/a;->d:Lcom/google/android/maps/driveabout/vector/dX;

    invoke-interface {v1, v0}, Lcom/google/android/maps/driveabout/vector/dX;->a(Lcom/google/android/maps/driveabout/vector/db;)V

    goto :goto_c

    .line 569
    :cond_39
    invoke-virtual {p0}, Lau/a;->p()Z

    move-result v0

    if-eqz v0, :cond_42

    sget-object v0, Lcom/google/android/maps/driveabout/vector/dg;->c:Lcom/google/android/maps/driveabout/vector/dg;

    goto :goto_1f

    :cond_42
    iget-object v0, p0, Lau/a;->d:Lcom/google/android/maps/driveabout/vector/dX;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/dX;->c()Lcom/google/android/maps/driveabout/vector/dg;

    move-result-object v0

    goto :goto_1f
.end method

.method static synthetic a(Lau/a;I)Ljava/lang/String;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lau/a;->d(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lau/a;)Ll/q;
    .registers 2
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lau/a;->m:Ll/q;

    return-object v0
.end method

.method private d(I)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "|z="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private z()V
    .registers 3

    .prologue
    .line 467
    iget-object v0, p0, Lau/a;->k:Lcom/google/android/maps/driveabout/vector/db;

    if-nez v0, :cond_5

    .line 477
    :cond_4
    :goto_4
    return-void

    .line 470
    :cond_5
    iget-boolean v0, p0, Lau/a;->l:Z

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lau/a;->y()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 471
    iget-object v0, p0, Lau/a;->d:Lcom/google/android/maps/driveabout/vector/dX;

    iget-object v1, p0, Lau/a;->k:Lcom/google/android/maps/driveabout/vector/db;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/vector/dX;->b(Lcom/google/android/maps/driveabout/vector/aD;)V

    .line 472
    const/4 v0, 0x0

    iput-boolean v0, p0, Lau/a;->l:Z

    goto :goto_4

    .line 473
    :cond_1a
    iget-boolean v0, p0, Lau/a;->l:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lau/a;->y()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 474
    iget-object v0, p0, Lau/a;->d:Lcom/google/android/maps/driveabout/vector/dX;

    iget-object v1, p0, Lau/a;->k:Lcom/google/android/maps/driveabout/vector/db;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/vector/dX;->a(Lcom/google/android/maps/driveabout/vector/aD;)V

    .line 475
    const/4 v0, 0x1

    iput-boolean v0, p0, Lau/a;->l:Z

    goto :goto_4
.end method


# virtual methods
.method public a(Lat/B;II)Lat/B;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 424
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getMapPoint should never be called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized a(Lat/H;)V
    .registers 3
    .parameter

    .prologue
    .line 235
    monitor-enter p0

    if-nez p1, :cond_5

    .line 242
    :goto_3
    monitor-exit p0

    return-void

    .line 238
    :cond_5
    :try_start_5
    iput-object p1, p0, Lau/a;->b:Lat/H;

    .line 239
    invoke-direct {p0}, Lau/a;->A()V

    .line 240
    invoke-direct {p0}, Lau/a;->z()V

    .line 241
    invoke-direct {p0}, Lau/a;->B()V
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_11

    goto :goto_3

    .line 235
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lat/Y;)V
    .registers 4
    .parameter

    .prologue
    .line 408
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setZoom should be called on the MapController, not map."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_9

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/bM;)V
    .registers 3
    .parameter

    .prologue
    .line 453
    iput-object p1, p0, Lau/a;->k:Lcom/google/android/maps/driveabout/vector/db;

    .line 454
    const/4 v0, 0x0

    iput-boolean v0, p0, Lau/a;->l:Z

    .line 455
    invoke-direct {p0}, Lau/a;->z()V

    .line 456
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/dX;)V
    .registers 4
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lau/a;->d:Lcom/google/android/maps/driveabout/vector/dX;

    .line 188
    if-eqz p1, :cond_16

    .line 189
    iget-object v0, p0, Lau/a;->d:Lcom/google/android/maps/driveabout/vector/dX;

    iget-object v1, p0, Lau/a;->c:Lcom/google/android/maps/driveabout/vector/dI;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/vector/dX;->setController(Lcom/google/android/maps/driveabout/vector/dI;)V

    .line 190
    invoke-virtual {p0}, Lau/a;->b()Lat/H;

    move-result-object v0

    invoke-virtual {v0}, Lat/H;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Lau/a;->b(I)V

    .line 192
    :cond_16
    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 8
    .parameter

    .prologue
    .line 349
    if-nez p1, :cond_3

    .line 378
    :cond_2
    :goto_2
    return-void

    .line 352
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lat/P;

    iput-object v0, p0, Lau/a;->g:[Lat/P;

    .line 353
    const/4 v0, 0x0

    .line 354
    invoke-virtual {p0}, Lau/a;->k()B

    move-result v2

    .line 355
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/am;

    .line 356
    invoke-virtual {v0}, Ln/am;->b()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Lat/Y;->b(I)Lat/Y;

    move-result-object v4

    .line 357
    if-eqz v4, :cond_88

    .line 358
    invoke-virtual {v0}, Ln/am;->c()I

    move-result v5

    invoke-virtual {v0}, Ln/am;->d()I

    move-result v0

    invoke-static {v2, v5, v0, v4}, Lat/P;->a(BIILat/Y;)Lat/P;

    move-result-object v4

    .line 359
    iget-object v5, p0, Lau/a;->g:[Lat/P;

    add-int/lit8 v0, v1, 0x1

    aput-object v4, v5, v1

    :goto_3f
    move v1, v0

    .line 361
    goto :goto_15

    .line 362
    :cond_41
    iget-object v0, p0, Lau/a;->a:Lat/D;

    invoke-virtual {v0}, Lat/D;->l()V

    .line 364
    iget-object v0, p0, Lau/a;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_7b

    invoke-virtual {p0}, Lau/a;->b()Lat/H;

    move-result-object v0

    invoke-virtual {v0}, Lat/H;->c()I

    move-result v0

    if-nez v0, :cond_7b

    .line 365
    invoke-static {}, Lcom/google/googlenav/prefetch/android/p;->d()Lcom/google/googlenav/prefetch/android/p;

    move-result-object v0

    .line 369
    if-eqz v0, :cond_2

    .line 370
    invoke-virtual {p0}, Lau/a;->g()[Lat/P;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/prefetch/android/p;->a([Lat/P;)I

    move-result v0

    .line 373
    iget-object v1, p0, Lau/a;->f:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "% prefetched"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 375
    :cond_7b
    iget-object v0, p0, Lau/a;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 376
    iget-object v0, p0, Lau/a;->f:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_88
    move v0, v1

    goto :goto_3f
.end method

.method public a(LS/e;ZZZZ)Z
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 444
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "drawMap should never be called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lat/B;Z)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 413
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "canCover should not be called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lat/B;ZLat/Y;)Z
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 419
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "canCover should never be called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lat/P;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 387
    iget-object v2, p0, Lau/a;->g:[Lat/P;

    array-length v3, v2

    move v1, v0

    :goto_5
    if-ge v1, v3, :cond_c

    aget-object v4, v2, v1

    .line 388
    if-ne p1, v4, :cond_d

    .line 389
    const/4 v0, 0x1

    .line 392
    :cond_c
    return v0

    .line 387
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method

.method public declared-synchronized b(Lat/B;)V
    .registers 4
    .parameter

    .prologue
    .line 402
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setCenterPoint should be called on the MapController, not map."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_9

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d(Lat/B;)V
    .registers 2
    .parameter

    .prologue
    .line 398
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public g()[Lat/P;
    .registers 2

    .prologue
    .line 382
    iget-object v0, p0, Lau/a;->g:[Lat/P;

    return-object v0
.end method

.method public v()Z
    .registers 2

    .prologue
    .line 586
    const/4 v0, 0x1

    return v0
.end method

.method public w()Lcom/google/android/maps/driveabout/vector/dI;
    .registers 2

    .prologue
    .line 183
    iget-object v0, p0, Lau/a;->c:Lcom/google/android/maps/driveabout/vector/dI;

    return-object v0
.end method

.method public x()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 201
    iput-object v0, p0, Lau/a;->d:Lcom/google/android/maps/driveabout/vector/dX;

    .line 202
    invoke-virtual {p0, v0}, Lau/a;->a(Ln/A;)V

    .line 203
    iput-object v0, p0, Lau/a;->e:Landroid/widget/TextView;

    .line 204
    iput-object v0, p0, Lau/a;->j:Lcom/google/android/maps/driveabout/vector/db;

    .line 205
    iput-object v0, p0, Lau/a;->k:Lcom/google/android/maps/driveabout/vector/db;

    .line 206
    iput-object v0, p0, Lau/a;->o:Lcom/google/android/maps/driveabout/vector/db;

    .line 207
    iput-byte v1, p0, Lau/a;->h:B

    .line 208
    iput-boolean v1, p0, Lau/a;->n:Z

    .line 209
    return-void
.end method

.method public y()Z
    .registers 3

    .prologue
    .line 462
    invoke-virtual {p0}, Lau/a;->b()Lat/H;

    move-result-object v0

    .line 463
    invoke-virtual {v0}, Lat/H;->d()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {v0}, Lat/H;->g()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

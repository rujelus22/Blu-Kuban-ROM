.class public Lan/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lan/h;
.implements Lan/q;
.implements Ljava/lang/Runnable;


# static fields
.field private static volatile k:Lan/l;


# instance fields
.field a:Ljava/util/List;

.field b:Ljava/util/List;

.field c:Z

.field d:Z

.field private e:Lan/n;

.field private volatile f:Ljava/util/Map;

.field private g:D

.field private h:Lan/s;

.field private i:Lan/s;

.field private j:Z


# direct methods
.method public constructor <init>(ZLjava/util/List;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v2, Lan/o;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lan/o;-><init>(Lan/m;)V

    iput-object v2, p0, Lan/l;->e:Lan/n;

    .line 105
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lan/l;->a:Ljava/util/List;

    .line 111
    invoke-static {}, Lcom/google/common/collect/Maps;->b()Ljava/util/LinkedHashMap;

    move-result-object v2

    iput-object v2, p0, Lan/l;->f:Ljava/util/Map;

    .line 115
    const-wide/high16 v2, -0x3c20

    iput-wide v2, p0, Lan/l;->g:D

    .line 127
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lan/l;->b:Ljava/util/List;

    .line 130
    iput-boolean v0, p0, Lan/l;->c:Z

    .line 134
    iput-boolean v1, p0, Lan/l;->d:Z

    .line 150
    invoke-static {}, Lcom/google/googlenav/common/c;->b()Z

    move-result v2

    if-nez v2, :cond_34

    :goto_2f
    iput-boolean v0, p0, Lan/l;->j:Z

    .line 189
    if-nez p1, :cond_36

    .line 206
    :goto_33
    return-void

    :cond_34
    move v0, v1

    .line 150
    goto :goto_2f

    .line 197
    :cond_36
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_45

    .line 199
    invoke-static {p2}, Lcom/google/common/collect/cx;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lan/l;->a:Ljava/util/List;

    .line 201
    invoke-direct {p0}, Lan/l;->v()V

    .line 204
    :cond_45
    invoke-direct {p0}, Lan/l;->t()V

    .line 205
    invoke-direct {p0}, Lan/l;->u()V

    goto :goto_33
.end method

.method private static a(Lat/B;)Lat/B;
    .registers 2
    .parameter

    .prologue
    .line 729
    invoke-static {p0}, Lan/A;->e(Lat/B;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 730
    invoke-static {}, Lan/A;->k()Lan/A;

    move-result-object v0

    invoke-virtual {v0, p0}, Lan/A;->d(Lat/B;)Lat/B;

    move-result-object p0

    .line 732
    :cond_e
    return-object p0
.end method

.method public static a(Lan/l;)V
    .registers 1
    .parameter

    .prologue
    .line 164
    sput-object p0, Lan/l;->k:Lan/l;

    .line 165
    return-void
.end method

.method private a(Lan/s;)V
    .registers 5
    .parameter

    .prologue
    .line 647
    if-eqz p1, :cond_53

    .line 648
    iput-object p1, p0, Lan/l;->h:Lan/s;

    .line 649
    monitor-enter p0

    .line 650
    :try_start_5
    iget-object v0, p0, Lan/l;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lan/i;

    .line 651
    iget-object v2, p0, Lan/l;->h:Lan/s;

    invoke-interface {v0, v2}, Lan/i;->a(Lan/s;)Lan/s;

    move-result-object v0

    iput-object v0, p0, Lan/l;->h:Lan/s;

    goto :goto_b

    .line 653
    :catchall_20
    move-exception v0

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_20

    throw v0

    :cond_23
    :try_start_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_20

    .line 654
    iget-object v0, p0, Lan/l;->h:Lan/s;

    iput-object v0, p0, Lan/l;->i:Lan/s;

    .line 655
    iget-object v0, p0, Lan/l;->h:Lan/s;

    invoke-virtual {v0}, Lan/s;->a()Lat/B;

    move-result-object v0

    invoke-static {v0}, Lan/l;->a(Lat/B;)Lat/B;

    move-result-object v0

    .line 656
    iget-object v1, p0, Lan/l;->h:Lan/s;

    invoke-virtual {v1}, Lan/s;->a()Lat/B;

    move-result-object v1

    invoke-virtual {v1, v0}, Lat/B;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_53

    .line 657
    new-instance v1, Lan/u;

    invoke-direct {v1}, Lan/u;-><init>()V

    iget-object v2, p0, Lan/l;->h:Lan/s;

    invoke-virtual {v1, v2}, Lan/u;->a(Lan/s;)Lan/u;

    move-result-object v1

    invoke-virtual {v1, v0}, Lan/u;->a(Lat/B;)Lan/u;

    move-result-object v0

    invoke-virtual {v0}, Lan/u;->b()Lan/s;

    move-result-object v0

    iput-object v0, p0, Lan/l;->i:Lan/s;

    .line 663
    :cond_53
    return-void
.end method

.method private a(Lan/j;)Z
    .registers 3
    .parameter

    .prologue
    .line 632
    invoke-virtual {p0}, Lan/l;->s()Lan/j;

    move-result-object v0

    .line 633
    if-eq v0, p1, :cond_8

    .line 634
    const/4 v0, 0x0

    .line 639
    :goto_7
    return v0

    .line 638
    :cond_8
    invoke-interface {v0}, Lan/j;->r()Lan/s;

    move-result-object v0

    invoke-direct {p0, v0}, Lan/l;->a(Lan/s;)V

    .line 639
    const/4 v0, 0x1

    goto :goto_7
.end method

.method protected static a(Lan/j;Lan/j;)Z
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 580
    if-nez p0, :cond_6

    move v0, v1

    .line 617
    :cond_5
    :goto_5
    return v0

    .line 585
    :cond_6
    if-nez p1, :cond_16

    .line 589
    invoke-interface {p0}, Lan/j;->m()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {p0}, Lan/j;->g()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_14
    move v0, v1

    goto :goto_5

    .line 593
    :cond_16
    invoke-interface {p0}, Lan/j;->r()Lan/s;

    move-result-object v2

    .line 594
    invoke-interface {p1}, Lan/j;->r()Lan/s;

    move-result-object v3

    .line 595
    if-nez v2, :cond_22

    move v0, v1

    .line 596
    goto :goto_5

    .line 598
    :cond_22
    if-eqz v3, :cond_5

    .line 604
    invoke-virtual {v2}, Lan/s;->getTime()J

    move-result-wide v4

    invoke-virtual {v3}, Lan/s;->getTime()J

    move-result-wide v6

    const-wide/16 v8, 0x2af8

    add-long/2addr v6, v8

    cmp-long v4, v4, v6

    if-gtz v4, :cond_5

    .line 611
    invoke-virtual {v2}, Lan/s;->hasAccuracy()Z

    move-result v4

    if-nez v4, :cond_3b

    move v0, v1

    .line 612
    goto :goto_5

    .line 614
    :cond_3b
    invoke-virtual {v3}, Lan/s;->hasAccuracy()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 617
    invoke-virtual {v2}, Lan/s;->getAccuracy()F

    move-result v2

    invoke-virtual {v3}, Lan/s;->getAccuracy()F

    move-result v3

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_5

    move v0, v1

    goto :goto_5
.end method

.method static synthetic b(Lan/l;)V
    .registers 1
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Lan/l;->u()V

    return-void
.end method

.method public static p()Lan/h;
    .registers 1

    .prologue
    .line 160
    sget-object v0, Lan/l;->k:Lan/l;

    return-object v0
.end method

.method public static q()V
    .registers 1

    .prologue
    .line 169
    const/4 v0, 0x0

    sput-object v0, Lan/l;->k:Lan/l;

    .line 170
    return-void
.end method

.method private t()V
    .registers 4

    .prologue
    .line 209
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->D()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lan/m;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lan/m;-><init>(Lan/l;Landroid/os/Handler;)V

    invoke-static {v0, v1}, Lan/p;->a(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 221
    return-void
.end method

.method private declared-synchronized u()V
    .registers 4

    .prologue
    .line 224
    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Lan/l;->j:Z

    .line 225
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->D()Landroid/content/Context;

    move-result-object v0

    .line 226
    invoke-static {v0}, Lan/p;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-static {v0}, Lan/p;->b(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x1

    :goto_18
    iput-boolean v0, p0, Lan/l;->j:Z

    .line 229
    iget-boolean v0, p0, Lan/l;->j:Z
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_37

    if-ne v0, v1, :cond_22

    .line 242
    :cond_1e
    :goto_1e
    monitor-exit p0

    return-void

    .line 226
    :cond_20
    const/4 v0, 0x0

    goto :goto_18

    .line 233
    :cond_22
    :try_start_22
    iget-boolean v0, p0, Lan/l;->j:Z

    if-eqz v0, :cond_3a

    iget-boolean v0, p0, Lan/l;->d:Z

    if-eqz v0, :cond_3a

    .line 234
    invoke-direct {p0}, Lan/l;->x()V

    .line 235
    invoke-virtual {p0}, Lan/l;->l()V

    .line 238
    iget-object v0, p0, Lan/l;->e:Lan/n;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p0}, Lan/n;->a(Lat/B;Lan/l;)V
    :try_end_36
    .catchall {:try_start_22 .. :try_end_36} :catchall_37

    goto :goto_1e

    .line 224
    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0

    .line 239
    :cond_3a
    :try_start_3a
    iget-boolean v0, p0, Lan/l;->j:Z

    if-nez v0, :cond_1e

    iget-boolean v0, p0, Lan/l;->c:Z

    if-eqz v0, :cond_1e

    .line 240
    invoke-virtual {p0}, Lan/l;->k()V
    :try_end_45
    .catchall {:try_start_3a .. :try_end_45} :catchall_37

    goto :goto_1e
.end method

.method private v()V
    .registers 3

    .prologue
    .line 260
    iget-object v0, p0, Lan/l;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lan/j;

    .line 261
    invoke-interface {v0, p0}, Lan/j;->a(Lan/q;)V

    goto :goto_6

    .line 263
    :cond_16
    return-void
.end method

.method private w()V
    .registers 8

    .prologue
    .line 362
    iget-object v0, p0, Lan/l;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 363
    iget-object v0, p0, Lan/l;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lan/j;

    .line 364
    new-instance v2, Lan/z;

    invoke-interface {v0}, Lan/j;->m()Z

    move-result v3

    invoke-interface {v0}, Lan/j;->n()Z

    move-result v4

    invoke-interface {v0}, Lan/j;->r()Lan/s;

    move-result-object v5

    invoke-interface {v0}, Lan/j;->d()Lan/s;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lan/z;-><init>(ZZLan/s;Lan/s;)V

    .line 369
    iget-object v3, p0, Lan/l;->f:Ljava/util/Map;

    invoke-interface {v0}, Lan/j;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 371
    :cond_36
    invoke-virtual {p0}, Lan/l;->r()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v0

    long-to-double v0, v0

    iput-wide v0, p0, Lan/l;->g:D

    .line 372
    return-void
.end method

.method private x()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 432
    iput-object v0, p0, Lan/l;->h:Lan/s;

    .line 433
    iput-object v0, p0, Lan/l;->i:Lan/s;

    .line 434
    return-void
.end method


# virtual methods
.method public a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 267
    iget-boolean v0, p0, Lan/l;->j:Z

    if-eqz v0, :cond_7

    move-object v0, v1

    .line 277
    :goto_6
    return-object v0

    .line 272
    :cond_7
    iget-object v0, p0, Lan/l;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lan/j;

    .line 273
    invoke-interface {v0}, Lan/j;->l()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 274
    invoke-interface {v0}, Lan/j;->l()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    goto :goto_6

    :cond_24
    move-object v0, v1

    .line 277
    goto :goto_6
.end method

.method public a(ILan/j;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 687
    invoke-virtual {p0}, Lan/l;->s()Lan/j;

    move-result-object v0

    .line 691
    if-eqz v0, :cond_9

    if-eq v0, p2, :cond_9

    .line 695
    :goto_8
    return-void

    .line 694
    :cond_9
    iget-object v0, p0, Lan/l;->e:Lan/n;

    invoke-interface {v0, p1, p0}, Lan/n;->a(ILan/l;)V

    goto :goto_8
.end method

.method public a(Lan/y;)V
    .registers 3
    .parameter

    .prologue
    .line 519
    iget-boolean v0, p0, Lan/l;->d:Z

    if-eqz v0, :cond_4

    .line 523
    :cond_4
    iget-object v0, p0, Lan/l;->e:Lan/n;

    invoke-interface {v0, p1}, Lan/n;->a(Lan/y;)V

    .line 524
    return-void
.end method

.method public a(Lat/B;Lan/j;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 622
    invoke-direct {p0, p2}, Lan/l;->a(Lan/j;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 623
    iget-object v0, p0, Lan/l;->e:Lan/n;

    invoke-interface {v0, p1, p0}, Lan/n;->a(Lat/B;Lan/l;)V

    .line 625
    :cond_b
    return-void
.end method

.method public b()Lan/s;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 497
    iget-boolean v0, p0, Lan/l;->j:Z

    if-eqz v0, :cond_7

    move-object v0, v1

    .line 514
    :cond_6
    :goto_6
    return-object v0

    .line 501
    :cond_7
    invoke-virtual {p0}, Lan/l;->n()Lan/s;

    move-result-object v0

    .line 502
    if-nez v0, :cond_6

    .line 508
    iget-object v0, p0, Lan/l;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lan/j;

    .line 509
    invoke-interface {v0}, Lan/j;->d()Lan/s;

    move-result-object v0

    .line 510
    if-eqz v0, :cond_13

    goto :goto_6

    :cond_26
    move-object v0, v1

    .line 514
    goto :goto_6
.end method

.method public b(Lan/y;)V
    .registers 3
    .parameter

    .prologue
    .line 528
    iget-object v0, p0, Lan/l;->e:Lan/n;

    invoke-interface {v0, p1}, Lan/n;->b(Lan/y;)V

    .line 529
    return-void
.end method

.method public declared-synchronized c()Ljava/util/Map;
    .registers 5

    .prologue
    .line 351
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lan/l;->g:D

    const-wide v2, 0x409f400000000000L

    add-double/2addr v0, v2

    invoke-virtual {p0}, Lan/l;->r()Lcom/google/googlenav/common/a;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v2

    long-to-double v2, v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_19

    .line 353
    invoke-direct {p0}, Lan/l;->w()V

    .line 355
    :cond_19
    iget-object v0, p0, Lan/l;->f:Ljava/util/Map;
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    monitor-exit p0

    return-object v0

    .line 351
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 2

    .prologue
    .line 316
    invoke-virtual {p0}, Lan/l;->s()Lan/j;

    move-result-object v0

    .line 317
    if-eqz v0, :cond_b

    invoke-interface {v0}, Lan/j;->e()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public e()Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 376
    iget-boolean v0, p0, Lan/l;->j:Z

    if-eqz v0, :cond_7

    .line 377
    const/4 v2, 0x1

    .line 392
    :goto_6
    return v2

    .line 381
    :cond_7
    iget-object v0, p0, Lan/l;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :cond_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lan/j;

    .line 382
    invoke-interface {v0}, Lan/j;->f()Z

    move-result v4

    or-int/2addr v1, v4

    .line 383
    invoke-interface {v0}, Lan/j;->n()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_6

    :cond_26
    move v2, v1

    .line 392
    goto :goto_6
.end method

.method public f()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 397
    iget-boolean v0, p0, Lan/l;->j:Z

    if-eqz v0, :cond_7

    move v0, v1

    .line 411
    :goto_6
    return v0

    .line 401
    :cond_7
    iget-object v0, p0, Lan/l;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lan/j;

    .line 402
    invoke-interface {v0}, Lan/j;->f()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v0}, Lan/j;->i()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v0}, Lan/j;->h()Z

    move-result v0

    if-nez v0, :cond_d

    :cond_2b
    move v0, v1

    .line 404
    goto :goto_6

    .line 411
    :cond_2d
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public g()Z
    .registers 2

    .prologue
    .line 417
    invoke-virtual {p0}, Lan/l;->s()Lan/j;

    move-result-object v0

    .line 418
    if-eqz v0, :cond_e

    invoke-interface {v0}, Lan/j;->o()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public h()Z
    .registers 2

    .prologue
    .line 346
    invoke-virtual {p0}, Lan/l;->s()Lan/j;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public i()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 705
    invoke-virtual {p0}, Lan/l;->m()Lan/s;

    move-result-object v1

    .line 706
    invoke-virtual {p0}, Lan/l;->g()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-static {v1}, Lan/s;->c(Landroid/location/Location;)I

    move-result v1

    if-lt v1, v0, :cond_12

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public j()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 533
    iget-boolean v0, p0, Lan/l;->c:Z

    if-eqz v0, :cond_7

    move v0, v1

    .line 552
    :goto_6
    return v0

    .line 536
    :cond_7
    invoke-virtual {p0}, Lan/l;->s()Lan/j;

    move-result-object v0

    .line 537
    if-nez v0, :cond_f

    move v0, v1

    .line 538
    goto :goto_6

    .line 540
    :cond_f
    invoke-interface {v0}, Lan/j;->o()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 541
    invoke-interface {v0}, Lan/j;->s()Z

    move-result v0

    goto :goto_6

    .line 547
    :cond_1a
    iget-object v0, p0, Lan/l;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lan/j;

    .line 548
    invoke-interface {v0}, Lan/j;->s()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 549
    const/4 v0, 0x1

    goto :goto_6

    :cond_34
    move v0, v1

    .line 552
    goto :goto_6
.end method

.method public declared-synchronized k()V
    .registers 3

    .prologue
    .line 438
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lan/l;->j:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_23

    if-eqz v0, :cond_7

    .line 447
    :cond_5
    monitor-exit p0

    return-void

    .line 442
    :cond_7
    const/4 v0, 0x0

    :try_start_8
    iput-boolean v0, p0, Lan/l;->c:Z

    .line 443
    const/4 v0, 0x1

    iput-boolean v0, p0, Lan/l;->d:Z

    .line 444
    iget-object v0, p0, Lan/l;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lan/j;

    .line 445
    invoke-interface {v0}, Lan/j;->q()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_23

    goto :goto_13

    .line 438
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized l()V
    .registers 3

    .prologue
    .line 458
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lan/l;->c:Z

    .line 459
    iget-object v0, p0, Lan/l;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lan/j;

    .line 460
    invoke-interface {v0}, Lan/j;->p()V
    :try_end_19
    .catchall {:try_start_2 .. :try_end_19} :catchall_1a

    goto :goto_a

    .line 458
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0

    .line 462
    :cond_1d
    monitor-exit p0

    return-void
.end method

.method public m()Lan/s;
    .registers 2

    .prologue
    .line 717
    iget-object v0, p0, Lan/l;->i:Lan/s;

    return-object v0
.end method

.method public n()Lan/s;
    .registers 2

    .prologue
    .line 712
    iget-object v0, p0, Lan/l;->h:Lan/s;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .registers 2

    .prologue
    .line 310
    invoke-virtual {p0}, Lan/l;->s()Lan/j;

    move-result-object v0

    .line 311
    if-eqz v0, :cond_b

    invoke-interface {v0}, Lan/j;->a()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const-string v0, "none"

    goto :goto_a
.end method

.method public r()Lcom/google/googlenav/common/a;
    .registers 2

    .prologue
    .line 282
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .registers 3

    .prologue
    .line 671
    iget-boolean v0, p0, Lan/l;->j:Z

    if-eqz v0, :cond_5

    .line 683
    :goto_4
    return-void

    .line 675
    :cond_5
    monitor-enter p0

    .line 676
    :try_start_6
    iget-boolean v0, p0, Lan/l;->c:Z

    if-eqz v0, :cond_f

    .line 677
    monitor-exit p0

    goto :goto_4

    .line 682
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_c

    throw v0

    .line 679
    :cond_f
    :try_start_f
    iget-object v0, p0, Lan/l;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lan/j;

    .line 680
    invoke-interface {v0}, Lan/j;->q()V

    goto :goto_15

    .line 682
    :cond_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_f .. :try_end_26} :catchall_c

    goto :goto_4
.end method

.method protected s()Lan/j;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 561
    iget-boolean v0, p0, Lan/l;->j:Z

    if-eqz v0, :cond_6

    .line 571
    :cond_5
    return-object v1

    .line 566
    :cond_6
    iget-object v0, p0, Lan/l;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lan/j;

    .line 567
    invoke-static {v0, v1}, Lan/l;->a(Lan/j;Lan/j;)Z

    move-result v3

    if-eqz v3, :cond_20

    :goto_1e
    move-object v1, v0

    .line 568
    goto :goto_c

    :cond_20
    move-object v0, v1

    goto :goto_1e
.end method

.class Lo/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Z

.field b:J

.field private c:Landroid/content/Context;

.field private final d:Lo/E;

.field private e:Lo/D;

.field private final f:Ljava/util/List;

.field private g:Lo/g;

.field private h:Lo/g;

.field private i:Lo/g;

.field private volatile j:Z

.field private volatile k:Z

.field private final l:Ljava/lang/Thread;

.field private m:Lp/u;

.field private n:Z

.field private final o:Ljava/io/File;


# direct methods
.method constructor <init>(Lo/E;Lp/u;Ljava/lang/Thread;Ljava/io/File;Landroid/content/Context;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/p;->k:Z

    .line 133
    iput-object p1, p0, Lo/p;->d:Lo/E;

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/p;->f:Ljava/util/List;

    .line 135
    new-instance v0, Lo/D;

    invoke-direct {v0, p0}, Lo/D;-><init>(Lo/p;)V

    iput-object v0, p0, Lo/p;->e:Lo/D;

    .line 136
    iput-object p3, p0, Lo/p;->l:Ljava/lang/Thread;

    .line 137
    iput-object p2, p0, Lo/p;->m:Lp/u;

    .line 138
    iput-object p4, p0, Lo/p;->o:Ljava/io/File;

    .line 139
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lo/p;->b:J

    .line 140
    iput-object p5, p0, Lo/p;->c:Landroid/content/Context;

    .line 141
    return-void
.end method

.method private a(I)V
    .registers 3
    .parameter

    .prologue
    .line 722
    iget-object v0, p0, Lo/p;->g:Lo/g;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lo/p;->g:Lo/g;

    invoke-virtual {v0}, Lo/g;->o()I

    move-result v0

    if-ne v0, p1, :cond_f

    .line 723
    const/4 v0, 0x0

    iput-object v0, p0, Lo/p;->g:Lo/g;

    .line 725
    :cond_f
    iget-boolean v0, p0, Lo/p;->a:Z

    if-eqz v0, :cond_16

    .line 726
    invoke-direct {p0}, Lo/p;->p()V

    .line 728
    :cond_16
    return-void
.end method

.method private a(Lo/g;I)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 391
    invoke-virtual {p1}, Lo/g;->o()I

    move-result v0

    if-ne v0, v1, :cond_24

    move v0, v1

    .line 393
    :goto_9
    iget-object v3, p0, Lo/p;->e:Lo/D;

    invoke-virtual {v3}, Lo/D;->a()Lo/q;

    move-result-object v3

    .line 394
    invoke-virtual {v3}, Lo/q;->f()[Lo/x;

    move-result-object v4

    .line 395
    invoke-virtual {p1}, Lo/g;->f_()Z

    move-result v5

    if-eqz v5, :cond_47

    .line 396
    iget-object v5, p0, Lo/p;->e:Lo/D;

    invoke-virtual {v5}, Lo/D;->b()Z

    move-result v5

    if-nez v5, :cond_26

    if-eqz v0, :cond_26

    .line 421
    :cond_23
    :goto_23
    return-void

    :cond_24
    move v0, v2

    .line 391
    goto :goto_9

    .line 405
    :cond_26
    invoke-virtual {p1}, Lo/g;->c()[Lo/x;

    move-result-object v0

    aget-object v0, v0, v2

    .line 406
    aget-object v2, v4, p2

    .line 407
    invoke-virtual {v2}, Lo/x;->w()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3b

    .line 408
    invoke-virtual {v2}, Lo/x;->w()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lo/x;->a(Ljava/lang/String;)V

    .line 410
    :cond_3b
    aput-object v0, v4, p2

    .line 413
    iget-object v0, p0, Lo/p;->e:Lo/D;

    invoke-virtual {v3}, Lo/q;->m()I

    move-result v2

    invoke-virtual {v0, v4, v2, v1}, Lo/D;->a([Lo/x;IZ)V

    goto :goto_23

    .line 415
    :cond_47
    if-nez v0, :cond_23

    .line 418
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lo/p;->a(ILo/g;)V

    goto :goto_23
.end method

.method private a(Lo/x;Lo/x;I)Z
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 384
    add-int/lit8 v0, p3, 0x1

    shr-int/lit8 v0, v0, 0x3

    add-int/2addr v0, p3

    .line 385
    invoke-virtual {p1}, Lo/x;->p()I

    move-result v1

    invoke-virtual {p2}, Lo/x;->p()I

    move-result v2

    sub-int/2addr v1, v2

    if-le v1, v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private b(Lo/g;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 279
    iget-object v0, p0, Lo/p;->i:Lo/g;

    if-ne p1, v0, :cond_20

    .line 280
    iput-object v1, p0, Lo/p;->i:Lo/g;

    .line 287
    :cond_7
    :goto_7
    invoke-virtual {p1}, Lo/g;->f_()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 288
    iget-object v0, p0, Lo/p;->c:Landroid/content/Context;

    invoke-static {v0}, Lo/H;->a(Landroid/content/Context;)Lo/H;

    move-result-object v0

    .line 289
    invoke-virtual {p1}, Lo/g;->f()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 290
    invoke-virtual {v0, p1}, Lo/H;->a(Lo/g;)V

    .line 294
    :goto_1c
    invoke-virtual {v0}, Lo/H;->d()V

    .line 296
    :cond_1f
    return-void

    .line 281
    :cond_20
    iget-object v0, p0, Lo/p;->h:Lo/g;

    if-ne p1, v0, :cond_7

    .line 282
    iput-object v1, p0, Lo/p;->h:Lo/g;

    goto :goto_7

    .line 292
    :cond_27
    invoke-virtual {v0, p1}, Lo/H;->b(Lo/g;)Z

    goto :goto_1c
.end method

.method private c(Lo/g;)V
    .registers 10
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 299
    const/4 v0, 0x0

    iput-object v0, p0, Lo/p;->g:Lo/g;

    .line 301
    invoke-virtual {p1}, Lo/g;->f_()Z

    move-result v0

    if-eqz v0, :cond_a2

    .line 303
    iget-object v0, p0, Lo/p;->m:Lp/u;

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lo/p;->a:Z

    if-eqz v0, :cond_17

    .line 304
    invoke-direct {p0}, Lo/p;->p()V

    .line 307
    :cond_17
    invoke-virtual {p1}, Lo/g;->c()[Lo/x;

    move-result-object v1

    .line 308
    array-length v4, v1

    move v0, v3

    :goto_1d
    if-ge v0, v4, :cond_24

    aget-object v5, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 316
    :cond_24
    array-length v0, v1

    if-lt v0, v6, :cond_ac

    aget-object v0, v1, v2

    invoke-virtual {v0}, Lo/x;->v()[Lo/R;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v6, :cond_ac

    aget-object v0, v1, v3

    aget-object v4, v1, v2

    invoke-virtual {p1}, Lo/g;->h()I

    move-result v5

    invoke-direct {p0, v0, v4, v5}, Lo/p;->a(Lo/x;Lo/x;I)Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 319
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [Lo/x;

    .line 321
    array-length v4, v0

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 327
    :goto_47
    array-length v1, v0

    if-lt v1, v6, :cond_78

    .line 329
    aget-object v1, v0, v3

    invoke-virtual {v1}, Lo/x;->p()I

    move-result v1

    move v7, v2

    move v2, v1

    move v1, v7

    .line 330
    :goto_53
    array-length v4, v0

    if-ge v1, v4, :cond_67

    .line 331
    aget-object v4, v0, v1

    invoke-virtual {v4}, Lo/x;->p()I

    move-result v4

    if-ge v4, v2, :cond_64

    .line 332
    aget-object v2, v0, v1

    invoke-virtual {v2}, Lo/x;->p()I

    move-result v2

    .line 330
    :cond_64
    add-int/lit8 v1, v1, 0x1

    goto :goto_53

    .line 336
    :cond_67
    array-length v4, v0

    move v1, v3

    :goto_69
    if-ge v1, v4, :cond_78

    aget-object v5, v0, v1

    .line 337
    invoke-virtual {v5}, Lo/x;->p()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-virtual {v5, v6}, Lo/x;->d(I)V

    .line 336
    add-int/lit8 v1, v1, 0x1

    goto :goto_69

    .line 341
    :cond_78
    aget-object v1, v0, v3

    invoke-virtual {v1}, Lo/x;->y()Z

    move-result v1

    if-eqz v1, :cond_96

    aget-object v1, v0, v3

    invoke-virtual {v1}, Lo/x;->C()Lo/g;

    move-result-object v1

    if-nez v1, :cond_96

    .line 345
    aget-object v1, v0, v3

    iget-object v2, p0, Lo/p;->d:Lo/E;

    aget-object v4, v0, v3

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Lo/E;->a(Lo/x;I)Lo/g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/x;->a(Lo/g;)V

    .line 358
    :cond_96
    iget-object v1, p0, Lo/p;->e:Lo/D;

    aget-object v2, v0, v3

    invoke-virtual {v2}, Lo/x;->h()Z

    move-result v2

    invoke-virtual {v1, v0, v3, v2}, Lo/D;->a([Lo/x;IZ)V

    .line 362
    :cond_a1
    :goto_a1
    return-void

    .line 359
    :cond_a2
    invoke-virtual {p1}, Lo/g;->f()Z

    move-result v0

    if-nez v0, :cond_a1

    .line 360
    invoke-virtual {p0, v6, p1}, Lo/p;->a(ILo/g;)V

    goto :goto_a1

    :cond_ac
    move-object v0, v1

    goto :goto_47
.end method

.method private n()V
    .registers 4

    .prologue
    .line 606
    iget-object v0, p0, Lo/p;->g:Lo/g;

    if-eqz v0, :cond_5

    .line 619
    :cond_4
    :goto_4
    return-void

    .line 609
    :cond_5
    iget-object v0, p0, Lo/p;->e:Lo/D;

    invoke-virtual {v0}, Lo/D;->a()Lo/q;

    move-result-object v0

    invoke-virtual {v0}, Lo/q;->g()Lo/x;

    move-result-object v0

    .line 611
    invoke-virtual {v0}, Lo/x;->C()Lo/g;

    move-result-object v1

    if-nez v1, :cond_4

    .line 614
    iget-object v1, p0, Lo/p;->e:Lo/D;

    invoke-virtual {v1}, Lo/D;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 617
    iget-object v1, p0, Lo/p;->d:Lo/E;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lo/E;->a(Lo/x;I)Lo/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/x;->a(Lo/g;)V

    goto :goto_4
.end method

.method private final o()V
    .registers 3

    .prologue
    .line 684
    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lo/p;->l:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_16

    .line 685
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Method must be called on NavigationThread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 687
    :cond_16
    return-void
.end method

.method private p()V
    .registers 3

    .prologue
    .line 734
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/p;->a:Z

    .line 735
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lo/p;->b:J

    .line 736
    iget-object v0, p0, Lo/p;->m:Lp/u;

    invoke-virtual {v0}, Lp/u;->c()V

    .line 737
    return-void
.end method


# virtual methods
.method declared-synchronized a()V
    .registers 4

    .prologue
    .line 477
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lo/p;->e:Lo/D;

    invoke-virtual {v0}, Lo/D;->a()Lo/q;

    move-result-object v1

    .line 478
    iget-object v0, p0, Lo/p;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/o;

    .line 479
    invoke-interface {v0, v1}, Lo/o;->d(Lo/q;)V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1d

    goto :goto_d

    .line 477
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 481
    :cond_20
    monitor-exit p0

    return-void
.end method

.method declared-synchronized a(ILo/g;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 540
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lo/p;->e:Lo/D;

    invoke-virtual {v0}, Lo/D;->a()Lo/q;

    move-result-object v1

    .line 541
    iget-object v0, p0, Lo/p;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/o;

    .line 542
    invoke-interface {v0, p1, p2, v1}, Lo/o;->a(ILo/g;Lo/q;)V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1d

    goto :goto_d

    .line 540
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 544
    :cond_20
    if-eqz p2, :cond_28

    .line 545
    :try_start_22
    invoke-virtual {p2}, Lo/g;->n()Z
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_1d

    move-result v0

    if-eqz v0, :cond_2a

    .line 557
    :cond_28
    :goto_28
    monitor-exit p0

    return-void

    .line 547
    :cond_2a
    :try_start_2a
    invoke-virtual {p2}, Lo/g;->m()Z

    move-result v0

    if-nez v0, :cond_28

    .line 549
    invoke-virtual {p2}, Lo/g;->k()Z

    move-result v0

    if-nez v0, :cond_28

    .line 551
    invoke-virtual {p2}, Lo/g;->g_()Z
    :try_end_39
    .catchall {:try_start_2a .. :try_end_39} :catchall_1d

    move-result v0

    if-eqz v0, :cond_28

    goto :goto_28
.end method

.method public a(Landroid/location/Location;)V
    .registers 11
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 424
    invoke-direct {p0}, Lo/p;->o()V

    .line 426
    iget-boolean v0, p0, Lo/p;->j:Z

    if-eqz v0, :cond_20

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lo/p;->o:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/navgation_location"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 428
    invoke-static {v0}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;)V

    .line 431
    :cond_20
    iget-object v0, p0, Lo/p;->e:Lo/D;

    invoke-virtual {v0, p1}, Lo/D;->a(Landroid/location/Location;)V

    .line 433
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 439
    invoke-static {}, Lt/m;->a()Lt/k;

    move-result-object v2

    .line 440
    iget-object v3, p0, Lo/p;->e:Lo/D;

    invoke-virtual {v3}, Lo/D;->a()Lo/q;

    move-result-object v3

    invoke-virtual {v3}, Lo/q;->g()Lo/x;

    move-result-object v3

    .line 442
    if-eqz v3, :cond_74

    invoke-virtual {v3}, Lo/x;->B()Z

    move-result v4

    if-eqz v4, :cond_74

    iget-boolean v4, p0, Lo/p;->k:Z

    if-eqz v4, :cond_74

    invoke-virtual {v3}, Lo/x;->z()J

    move-result-wide v4

    invoke-virtual {v2}, Lt/k;->p()I

    move-result v6

    mul-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    add-long/2addr v4, v6

    cmp-long v4, v0, v4

    if-lez v4, :cond_74

    .line 446
    invoke-virtual {v3}, Lo/x;->z()J

    move-result-wide v4

    invoke-virtual {v2}, Lt/k;->q()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v6, v2

    add-long/2addr v4, v6

    cmp-long v0, v0, v4

    if-lez v0, :cond_71

    invoke-virtual {v3}, Lo/x;->t()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 450
    invoke-virtual {v3}, Lo/x;->A()V

    .line 451
    iget-object v0, p0, Lo/p;->e:Lo/D;

    invoke-virtual {v0, v8}, Lo/D;->a(I)Z

    .line 454
    :cond_71
    invoke-direct {p0}, Lo/p;->n()V

    .line 456
    :cond_74
    iget-boolean v0, p0, Lo/p;->j:Z

    if-eqz v0, :cond_7d

    .line 457
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 458
    iput-boolean v8, p0, Lo/p;->j:Z

    .line 460
    :cond_7d
    return-void
.end method

.method public a(Lm/b;)V
    .registers 8
    .parameter

    .prologue
    .line 193
    invoke-direct {p0}, Lo/p;->o()V

    .line 195
    iget-boolean v0, p0, Lo/p;->k:Z

    if-nez v0, :cond_8

    .line 237
    :cond_7
    :goto_7
    return-void

    .line 199
    :cond_8
    iget-object v0, p0, Lo/p;->e:Lo/D;

    invoke-virtual {v0}, Lo/D;->a()Lo/q;

    move-result-object v0

    .line 200
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lo/q;->g()Lo/x;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 215
    invoke-virtual {v0}, Lo/q;->i()Lo/x;

    move-result-object v1

    .line 216
    iget-object v2, p0, Lo/p;->m:Lp/u;

    if-eqz v2, :cond_32

    if-eqz v1, :cond_32

    invoke-virtual {v1}, Lo/x;->d()I

    move-result v2

    if-nez v2, :cond_32

    iget-boolean v2, p0, Lo/p;->a:Z

    if-nez v2, :cond_32

    iget-boolean v2, p0, Lo/p;->n:Z

    if-nez v2, :cond_32

    iget-object v2, p0, Lo/p;->g:Lo/g;

    if-nez v2, :cond_47

    .line 230
    :cond_32
    iget-object v1, p0, Lo/p;->g:Lo/g;

    if-nez v1, :cond_7

    .line 233
    iget-object v1, p0, Lo/p;->d:Lo/E;

    invoke-virtual {v0}, Lo/q;->g()Lo/x;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v1, p1, v0, v2}, Lo/E;->a(Lm/b;Lo/x;I)Lo/g;

    move-result-object v0

    iput-object v0, p0, Lo/p;->g:Lo/g;

    .line 235
    invoke-virtual {p0}, Lo/p;->f()V

    goto :goto_7

    .line 221
    :cond_47
    iget-wide v2, p0, Lo/p;->b:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_5c

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lo/p;->b:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2710

    cmp-long v0, v2, v4

    if-lez v0, :cond_7

    .line 226
    :cond_5c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/p;->a:Z

    .line 227
    iget-object v0, p0, Lo/p;->m:Lp/u;

    invoke-virtual {v0, p1, v1}, Lp/u;->a(Lm/b;Lo/x;)V

    .line 228
    invoke-virtual {p0}, Lo/p;->f()V

    goto :goto_7
.end method

.method public a(Lm/b;Lo/x;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 183
    invoke-direct {p0}, Lo/p;->o()V

    .line 184
    iget-object v0, p0, Lo/p;->d:Lo/E;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, p2, v1}, Lo/E;->a(Lm/b;Lo/x;I)Lo/g;

    move-result-object v0

    iput-object v0, p0, Lo/p;->g:Lo/g;

    .line 186
    return-void
.end method

.method public a(Lm/b;[Lo/P;II[Lo/b;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 155
    invoke-direct {p0}, Lo/p;->o()V

    .line 156
    iget-object v0, p0, Lo/p;->d:Lo/E;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lo/E;->a(Lm/b;[Lo/P;II[Lo/b;)Lo/g;

    move-result-object v0

    iput-object v0, p0, Lo/p;->g:Lo/g;

    .line 158
    return-void
.end method

.method public a(Lo/a;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 370
    invoke-virtual {p1}, Lo/a;->a()Lo/g;

    move-result-object v0

    invoke-virtual {v0}, Lo/g;->c()[Lo/x;

    move-result-object v0

    .line 372
    iget-object v1, p0, Lo/p;->e:Lo/D;

    invoke-virtual {v1, v0, v2, v2}, Lo/D;->a([Lo/x;IZ)V

    .line 373
    return-void
.end method

.method public a(Lo/g;)V
    .registers 5
    .parameter

    .prologue
    .line 240
    invoke-direct {p0}, Lo/p;->o()V

    .line 249
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/p;->n:Z

    .line 251
    invoke-virtual {p1}, Lo/g;->f()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p1}, Lo/g;->e_()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 252
    :cond_12
    invoke-direct {p0, p1}, Lo/p;->b(Lo/g;)V

    .line 276
    :cond_15
    :goto_15
    return-void

    .line 253
    :cond_16
    iget-object v0, p0, Lo/p;->g:Lo/g;

    if-ne p1, v0, :cond_20

    .line 254
    iget-object v0, p0, Lo/p;->g:Lo/g;

    invoke-direct {p0, v0}, Lo/p;->c(Lo/g;)V

    goto :goto_15

    .line 256
    :cond_20
    iget-object v0, p0, Lo/p;->e:Lo/D;

    invoke-virtual {v0}, Lo/D;->a()Lo/q;

    move-result-object v0

    invoke-virtual {v0}, Lo/q;->f()[Lo/x;

    move-result-object v1

    .line 258
    if-eqz v1, :cond_15

    .line 259
    const/4 v0, 0x0

    :goto_2d
    array-length v2, v1

    if-ge v0, v2, :cond_15

    .line 260
    aget-object v2, v1, v0

    invoke-virtual {v2}, Lo/x;->C()Lo/g;

    move-result-object v2

    if-ne v2, p1, :cond_42

    .line 266
    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lo/x;->a(Lo/g;)V

    .line 267
    invoke-direct {p0, p1, v0}, Lo/p;->a(Lo/g;I)V

    goto :goto_15

    .line 259
    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d
.end method

.method declared-synchronized a(Lo/j;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 491
    monitor-enter p0

    :try_start_1
    new-instance v0, Lk/u;

    invoke-direct {v0, p1}, Lk/u;-><init>(Lo/j;)V

    invoke-static {v0}, LA/f;->b(LA/j;)V

    .line 492
    iget-object v0, p0, Lo/p;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/o;

    .line 493
    invoke-interface {v0, p1, p2}, Lo/o;->a(Lo/j;I)V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_1f

    goto :goto_f

    .line 491
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 495
    :cond_22
    monitor-exit p0

    return-void
.end method

.method declared-synchronized a(Lo/o;)V
    .registers 3
    .parameter

    .prologue
    .line 464
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lo/p;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 465
    iget-object v0, p0, Lo/p;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 467
    :cond_e
    monitor-exit p0

    return-void

    .line 464
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lo/x;I)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const-wide/16 v3, -0x1

    const/4 v2, 0x1

    .line 560
    invoke-direct {p0}, Lo/p;->o()V

    .line 564
    iget-boolean v0, p0, Lo/p;->a:Z

    if-eqz v0, :cond_19

    .line 565
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/p;->a:Z

    .line 566
    if-nez p2, :cond_1a

    .line 567
    iput-wide v3, p0, Lo/p;->b:J

    .line 568
    invoke-virtual {p0, p1, v2}, Lo/p;->a(Lo/x;Z)V

    .line 569
    const-string v0, "j"

    invoke-static {v0, p2}, Lcom/google/android/maps/driveabout/app/dh;->a(Ljava/lang/String;I)V

    .line 583
    :cond_19
    :goto_19
    return-void

    .line 572
    :cond_1a
    iget-wide v0, p0, Lo/p;->b:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_29

    .line 574
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lo/p;->a(ILo/g;)V

    .line 576
    const-string v0, "j"

    invoke-static {v0, p2}, Lcom/google/android/maps/driveabout/app/dh;->a(Ljava/lang/String;I)V

    .line 578
    :cond_29
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lo/p;->b:J

    goto :goto_19
.end method

.method public a(Lo/x;Z)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 630
    invoke-direct {p0}, Lo/p;->o()V

    .line 632
    if-eqz p2, :cond_11

    .line 633
    new-array v1, v4, [Lo/x;

    aput-object p1, v1, v0

    .line 634
    iget-object v2, p0, Lo/p;->e:Lo/D;

    invoke-virtual {v2, v1, v0, v0}, Lo/D;->a([Lo/x;IZ)V

    .line 657
    :cond_10
    :goto_10
    return-void

    .line 636
    :cond_11
    const/4 v1, -0x1

    .line 637
    iget-object v2, p0, Lo/p;->e:Lo/D;

    invoke-virtual {v2}, Lo/D;->a()Lo/q;

    move-result-object v2

    invoke-virtual {v2}, Lo/q;->f()[Lo/x;

    move-result-object v2

    .line 638
    if-eqz v2, :cond_10

    .line 643
    :goto_1e
    array-length v3, v2

    if-ge v0, v3, :cond_46

    .line 644
    aget-object v3, v2, v0

    if-ne v3, p1, :cond_43

    .line 649
    :goto_25
    if-ltz v0, :cond_10

    .line 650
    invoke-virtual {p1}, Lo/x;->y()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-virtual {p1}, Lo/x;->C()Lo/g;

    move-result-object v1

    if-nez v1, :cond_3d

    .line 651
    iget-object v1, p0, Lo/p;->d:Lo/E;

    const/4 v3, 0x3

    invoke-virtual {v1, p1, v3}, Lo/E;->a(Lo/x;I)Lo/g;

    move-result-object v1

    invoke-virtual {p1, v1}, Lo/x;->a(Lo/g;)V

    .line 654
    :cond_3d
    iget-object v1, p0, Lo/p;->e:Lo/D;

    invoke-virtual {v1, v2, v0, v4}, Lo/D;->a([Lo/x;IZ)V

    goto :goto_10

    .line 643
    :cond_43
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_46
    move v0, v1

    goto :goto_25
.end method

.method public a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 660
    iput-boolean p1, p0, Lo/p;->k:Z

    .line 661
    return-void
.end method

.method public a([Lo/P;I[Lo/b;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 170
    invoke-direct {p0}, Lo/p;->o()V

    .line 171
    iget-object v0, p0, Lo/p;->d:Lo/E;

    invoke-virtual {v0, p1, p2, p3}, Lo/E;->a([Lo/P;I[Lo/b;)Lo/g;

    move-result-object v0

    iput-object v0, p0, Lo/p;->i:Lo/g;

    .line 173
    return-void
.end method

.method declared-synchronized b()V
    .registers 4

    .prologue
    .line 484
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lo/p;->e:Lo/D;

    invoke-virtual {v0}, Lo/D;->a()Lo/q;

    move-result-object v1

    .line 485
    iget-object v0, p0, Lo/p;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/o;

    .line 486
    invoke-interface {v0, v1}, Lo/o;->f(Lo/q;)V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1d

    goto :goto_d

    .line 484
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 488
    :cond_20
    monitor-exit p0

    return-void
.end method

.method declared-synchronized b(Lo/j;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 499
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lo/p;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/o;

    .line 500
    invoke-interface {v0, p1, p2}, Lo/o;->b(Lo/j;I)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_17

    goto :goto_7

    .line 499
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0

    .line 502
    :cond_1a
    monitor-exit p0

    return-void
.end method

.method declared-synchronized b(Lo/o;)V
    .registers 3
    .parameter

    .prologue
    .line 471
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lo/p;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 472
    monitor-exit p0

    return-void

    .line 471
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized c()V
    .registers 4

    .prologue
    .line 509
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lo/p;->e:Lo/D;

    invoke-virtual {v0}, Lo/D;->a()Lo/q;

    move-result-object v1

    .line 510
    invoke-virtual {v1}, Lo/q;->h()Lo/I;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 511
    iget-object v0, p0, Lo/p;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/o;

    .line 512
    invoke-interface {v0, v1}, Lo/o;->b(Lo/q;)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_23

    goto :goto_13

    .line 509
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0

    .line 515
    :cond_26
    monitor-exit p0

    return-void
.end method

.method declared-synchronized d()V
    .registers 4

    .prologue
    .line 519
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lo/p;->e:Lo/D;

    invoke-virtual {v0}, Lo/D;->a()Lo/q;

    move-result-object v1

    .line 520
    iget-object v0, p0, Lo/p;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/o;

    .line 521
    invoke-interface {v0, v1}, Lo/o;->c(Lo/q;)V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1d

    goto :goto_d

    .line 519
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 523
    :cond_20
    monitor-exit p0

    return-void
.end method

.method declared-synchronized e()V
    .registers 4

    .prologue
    .line 526
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lo/p;->e:Lo/D;

    invoke-virtual {v0}, Lo/D;->a()Lo/q;

    move-result-object v1

    .line 527
    iget-object v0, p0, Lo/p;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/o;

    .line 528
    invoke-interface {v0, v1}, Lo/o;->e(Lo/q;)V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1d

    goto :goto_d

    .line 526
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 530
    :cond_20
    monitor-exit p0

    return-void
.end method

.method declared-synchronized f()V
    .registers 4

    .prologue
    .line 533
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lo/p;->e:Lo/D;

    invoke-virtual {v0}, Lo/D;->a()Lo/q;

    move-result-object v1

    .line 534
    iget-object v0, p0, Lo/p;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/o;

    .line 535
    invoke-interface {v0, v1}, Lo/o;->a(Lo/q;)V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1d

    goto :goto_d

    .line 533
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 537
    :cond_20
    monitor-exit p0

    return-void
.end method

.method public g()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 586
    invoke-direct {p0}, Lo/p;->o()V

    .line 588
    iput-boolean v1, p0, Lo/p;->n:Z

    .line 593
    iget-boolean v0, p0, Lo/p;->a:Z

    if-nez v0, :cond_e

    .line 596
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lo/p;->a(ILo/g;)V

    .line 598
    :cond_e
    return-void
.end method

.method h()Z
    .registers 2

    .prologue
    .line 664
    iget-boolean v0, p0, Lo/p;->k:Z

    return v0
.end method

.method public i()V
    .registers 7

    .prologue
    .line 671
    iget-object v0, p0, Lo/p;->e:Lo/D;

    invoke-virtual {v0}, Lo/D;->a()Lo/q;

    move-result-object v0

    invoke-virtual {v0}, Lo/q;->f()[Lo/x;

    move-result-object v1

    .line 672
    array-length v2, v1

    const/4 v0, 0x0

    :goto_c
    if-ge v0, v2, :cond_29

    aget-object v3, v1, v0

    .line 673
    invoke-virtual {v3}, Lo/x;->y()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-virtual {v3}, Lo/x;->C()Lo/g;

    move-result-object v4

    if-nez v4, :cond_26

    .line 674
    iget-object v4, p0, Lo/p;->d:Lo/E;

    const/4 v5, 0x3

    invoke-virtual {v4, v3, v5}, Lo/E;->a(Lo/x;I)Lo/g;

    move-result-object v4

    invoke-virtual {v3, v4}, Lo/x;->a(Lo/g;)V

    .line 672
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 678
    :cond_29
    return-void
.end method

.method public j()V
    .registers 2

    .prologue
    .line 703
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lo/p;->a(I)V

    .line 704
    return-void
.end method

.method public k()V
    .registers 2

    .prologue
    .line 711
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lo/p;->a(I)V

    .line 712
    return-void
.end method

.method public l()V
    .registers 2

    .prologue
    .line 743
    iget-object v0, p0, Lo/p;->e:Lo/D;

    invoke-virtual {v0}, Lo/D;->d()V

    .line 744
    return-void
.end method

.method public m()V
    .registers 2

    .prologue
    .line 750
    iget-object v0, p0, Lo/p;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 751
    iget-object v0, p0, Lo/p;->d:Lo/E;

    invoke-virtual {v0}, Lo/E;->a()V

    .line 752
    return-void
.end method

.class public Lcom/google/android/maps/driveabout/app/ds;
.super Lt/c;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/cg;
.implements Lo/o;


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/app/dv;

.field private b:Landroid/os/Handler;

.field private c:Landroid/os/Looper;

.field private final d:Lcom/google/android/maps/driveabout/app/dq;

.field private e:Z

.field private f:Lo/x;

.field private g:Lo/I;

.field private h:I

.field private i:Z

.field private final j:Lr/W;

.field private k:Z

.field private l:I

.field private m:I

.field private n:I


# direct methods
.method public constructor <init>(Lr/W;Lcom/google/android/maps/driveabout/app/dq;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 117
    const-string v0, "TilePrefetcher"

    invoke-direct {p0, v0}, Lt/c;-><init>(Ljava/lang/String;)V

    .line 65
    new-instance v0, Lcom/google/android/maps/driveabout/app/dv;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/maps/driveabout/app/dv;-><init>(Lcom/google/android/maps/driveabout/app/ds;Lcom/google/android/maps/driveabout/app/dt;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/ds;->a:Lcom/google/android/maps/driveabout/app/dv;

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/ds;->i:Z

    .line 118
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/ds;->j:Lr/W;

    .line 119
    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/ds;->d:Lcom/google/android/maps/driveabout/app/dq;

    .line 120
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/ds;->start()V

    .line 123
    :try_start_17
    monitor-enter p0
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_18} :catch_23

    .line 124
    :goto_18
    :try_start_18
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ds;->b:Landroid/os/Handler;

    if-nez v0, :cond_2f

    .line 125
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_18

    .line 127
    :catchall_20
    move-exception v0

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_18 .. :try_end_22} :catchall_20

    :try_start_22
    throw v0
    :try_end_23
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_23} :catch_23

    .line 128
    :catch_23
    move-exception v0

    .line 133
    :goto_24
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ds;->j:Lr/W;

    new-instance v1, Lcom/google/android/maps/driveabout/app/dt;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/dt;-><init>(Lcom/google/android/maps/driveabout/app/ds;)V

    invoke-interface {v0, v1}, Lr/W;->a(Lr/aI;)V

    .line 144
    return-void

    .line 127
    :cond_2f
    :try_start_2f
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_20

    goto :goto_24
.end method

.method private a(I)V
    .registers 4
    .parameter

    .prologue
    .line 152
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/maps/driveabout/app/ds;->a(IILjava/lang/Object;)V

    .line 153
    return-void
.end method

.method private a(IILjava/lang/Object;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ds;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 174
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/ds;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 175
    return-void
.end method

.method private a(ILjava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 162
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/maps/driveabout/app/ds;->a(IILjava/lang/Object;)V

    .line 163
    return-void
.end method

.method private a(J)V
    .registers 5
    .parameter

    .prologue
    .line 442
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/ds;->e:Z

    if-nez v0, :cond_5

    .line 457
    :cond_4
    :goto_4
    return-void

    .line 444
    :cond_5
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/ds;->i:Z

    if-nez v0, :cond_4

    .line 446
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/ds;->k:Z

    if-nez v0, :cond_4

    .line 448
    iget v0, p0, Lcom/google/android/maps/driveabout/app/ds;->m:I

    if-gtz v0, :cond_4

    .line 450
    const-wide/16 v0, 0x4

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1b

    .line 451
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/ds;->k()V

    goto :goto_4

    .line 453
    :cond_1b
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ds;->b:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 454
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/ds;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 455
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/ds;->k:Z

    goto :goto_4
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/ds;)V
    .registers 1
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/ds;->e()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/ds;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/ds;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/ds;IILjava/lang/Object;)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/app/ds;->a(IILjava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/ds;Lo/I;I)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/app/ds;->a(Lo/I;I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/ds;Lo/x;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/ds;->a(Lo/x;)V

    return-void
.end method

.method private a(Lo/I;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 388
    if-eqz p1, :cond_20

    if-ltz p2, :cond_20

    .line 389
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/ds;->i:Z

    .line 390
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/ds;->g:Lo/I;

    .line 391
    iput p2, p0, Lcom/google/android/maps/driveabout/app/ds;->h:I

    .line 392
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ds;->d:Lcom/google/android/maps/driveabout/app/dq;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/ds;->g:Lo/I;

    iget v2, p0, Lcom/google/android/maps/driveabout/app/ds;->h:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/dq;->a(Lo/I;I)V

    .line 393
    invoke-static {}, Lt/m;->a()Lt/k;

    move-result-object v0

    invoke-virtual {v0}, Lt/k;->w()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/ds;->a(J)V

    .line 396
    :cond_20
    return-void
.end method

.method private a(Lo/x;)V
    .registers 4
    .parameter

    .prologue
    .line 380
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/ds;->i:Z

    .line 381
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/ds;->f:Lo/x;

    .line 382
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ds;->d:Lcom/google/android/maps/driveabout/app/dq;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/ds;->f:Lo/x;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/dq;->a(Lo/x;)V

    .line 383
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/ds;->g()V

    .line 384
    const-wide/16 v0, 0x4e20

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/ds;->a(J)V

    .line 385
    return-void
.end method

.method private b(I)V
    .registers 4
    .parameter

    .prologue
    .line 409
    iget v0, p0, Lcom/google/android/maps/driveabout/app/ds;->m:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/app/ds;->m:I

    .line 410
    if-nez p1, :cond_e

    .line 411
    iget v0, p0, Lcom/google/android/maps/driveabout/app/ds;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/app/ds;->n:I

    .line 419
    :cond_e
    invoke-static {}, Lt/m;->a()Lt/k;

    move-result-object v0

    .line 420
    iget v1, p0, Lcom/google/android/maps/driveabout/app/ds;->n:I

    if-nez v1, :cond_1f

    invoke-virtual {v0}, Lt/k;->v()I

    move-result v0

    int-to-long v0, v0

    :goto_1b
    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/ds;->a(J)V

    .line 423
    return-void

    .line 420
    :cond_1f
    invoke-virtual {v0}, Lt/k;->w()I

    move-result v0

    int-to-long v0, v0

    goto :goto_1b
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/app/ds;)V
    .registers 1
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/ds;->f()V

    return-void
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/app/ds;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/ds;->b(I)V

    return-void
.end method

.method static synthetic c(Lcom/google/android/maps/driveabout/app/ds;)V
    .registers 1
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/ds;->h()V

    return-void
.end method

.method static synthetic d(Lcom/google/android/maps/driveabout/app/ds;)V
    .registers 1
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/ds;->i()V

    return-void
.end method

.method private e()V
    .registers 3

    .prologue
    .line 347
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/ds;->e:Z

    .line 348
    const-wide/16 v0, 0x4e20

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/ds;->a(J)V

    .line 349
    return-void
.end method

.method static synthetic e(Lcom/google/android/maps/driveabout/app/ds;)V
    .registers 1
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/ds;->j()V

    return-void
.end method

.method private f()V
    .registers 2

    .prologue
    .line 352
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/ds;->e:Z

    .line 353
    return-void
.end method

.method private g()V
    .registers 6

    .prologue
    .line 356
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ds;->d:Lcom/google/android/maps/driveabout/app/dq;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/dq;->a()Ln/am;

    move-result-object v0

    .line 357
    if-eqz v0, :cond_18

    .line 361
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/ds;->j:Lr/W;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/ds;->a:Lcom/google/android/maps/driveabout/app/dv;

    sget-object v3, Lr/e;->d:Lr/e;

    const/4 v4, 0x0

    invoke-interface {v1, v0, v2, v3, v4}, Lr/W;->a(Ln/am;Lr/aF;Lr/e;Z)Lr/aa;

    .line 363
    iget v0, p0, Lcom/google/android/maps/driveabout/app/ds;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/app/ds;->m:I

    .line 365
    :cond_18
    return-void
.end method

.method private h()V
    .registers 4

    .prologue
    .line 368
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ds;->f:Lo/x;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ds;->g:Lo/I;

    if-eqz v0, :cond_2c

    iget v0, p0, Lcom/google/android/maps/driveabout/app/ds;->h:I

    if-ltz v0, :cond_2c

    .line 369
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/ds;->i:Z

    .line 370
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ds;->d:Lcom/google/android/maps/driveabout/app/dq;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/dq;->b()V

    .line 371
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ds;->d:Lcom/google/android/maps/driveabout/app/dq;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/ds;->f:Lo/x;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/dq;->a(Lo/x;)V

    .line 372
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ds;->d:Lcom/google/android/maps/driveabout/app/dq;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/ds;->g:Lo/I;

    iget v2, p0, Lcom/google/android/maps/driveabout/app/ds;->h:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/dq;->a(Lo/I;I)V

    .line 373
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/ds;->g()V

    .line 375
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/ds;->a(J)V

    .line 377
    :cond_2c
    return-void
.end method

.method private i()V
    .registers 2

    .prologue
    .line 399
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/ds;->k:Z

    .line 400
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/ds;->k()V

    .line 401
    return-void
.end method

.method private j()V
    .registers 2

    .prologue
    .line 431
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/ds;->i:Z

    .line 432
    return-void
.end method

.method private k()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x190

    .line 463
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/ds;->e:Z

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/ds;->i:Z

    if-nez v0, :cond_1b

    iget v0, p0, Lcom/google/android/maps/driveabout/app/ds;->m:I

    if-nez v0, :cond_1b

    .line 465
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ds;->j:Lr/W;

    invoke-interface {v0}, Lr/W;->k()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1c

    .line 466
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/ds;->l()V

    .line 475
    :cond_1b
    :goto_1b
    return-void

    .line 472
    :cond_1c
    invoke-direct {p0, v2, v3}, Lcom/google/android/maps/driveabout/app/ds;->a(J)V

    goto :goto_1b
.end method

.method private l()V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 479
    iput v1, p0, Lcom/google/android/maps/driveabout/app/ds;->n:I

    .line 480
    invoke-static {}, Lt/m;->a()Lt/k;

    move-result-object v0

    invoke-virtual {v0}, Lt/k;->u()I

    move-result v2

    move v0, v1

    .line 482
    :goto_c
    if-ge v0, v2, :cond_19

    .line 483
    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/ds;->d:Lcom/google/android/maps/driveabout/app/dq;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/app/dq;->a()Ln/am;

    move-result-object v3

    .line 484
    if-nez v3, :cond_1a

    .line 485
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/ds;->i:Z

    .line 492
    :cond_19
    return-void

    .line 488
    :cond_1a
    iget-object v4, p0, Lcom/google/android/maps/driveabout/app/ds;->j:Lr/W;

    iget-object v5, p0, Lcom/google/android/maps/driveabout/app/ds;->a:Lcom/google/android/maps/driveabout/app/dv;

    sget-object v6, Lr/e;->d:Lr/e;

    invoke-interface {v4, v3, v5, v6, v1}, Lr/W;->a(Ln/am;Lr/aF;Lr/e;Z)Lr/aa;

    .line 490
    iget v3, p0, Lcom/google/android/maps/driveabout/app/ds;->m:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/android/maps/driveabout/app/ds;->m:I

    .line 482
    add-int/lit8 v0, v0, 0x1

    goto :goto_c
.end method


# virtual methods
.method public a(ILo/g;Lo/q;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 224
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/ds;->a(I)V

    .line 225
    return-void
.end method

.method public a(Lo/j;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 230
    return-void
.end method

.method public a(Lo/q;)V
    .registers 3
    .parameter

    .prologue
    .line 211
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/ds;->a(I)V

    .line 212
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 182
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/ds;->a(I)V

    .line 183
    return-void
.end method

.method public b(Lo/j;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 235
    return-void
.end method

.method public b(Lo/q;)V
    .registers 5
    .parameter

    .prologue
    .line 240
    invoke-virtual {p1}, Lo/q;->b()I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/ds;->l:I

    .line 241
    const/4 v0, 0x5

    invoke-virtual {p1}, Lo/q;->e()I

    move-result v1

    invoke-virtual {p1}, Lo/q;->h()Lo/I;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/maps/driveabout/app/ds;->a(IILjava/lang/Object;)V

    .line 243
    return-void
.end method

.method public b_()V
    .registers 2

    .prologue
    .line 188
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/ds;->a(I)V

    .line 189
    return-void
.end method

.method public c(Lo/q;)V
    .registers 5
    .parameter

    .prologue
    .line 248
    invoke-virtual {p1}, Lo/q;->h()Lo/I;

    move-result-object v0

    if-nez v0, :cond_7

    .line 258
    :cond_6
    :goto_6
    return-void

    .line 251
    :cond_7
    iget v0, p0, Lcom/google/android/maps/driveabout/app/ds;->l:I

    invoke-virtual {p1}, Lo/q;->b()I

    move-result v1

    sub-int/2addr v0, v1

    .line 253
    const/16 v1, 0x7530

    if-lt v0, v1, :cond_6

    .line 254
    invoke-virtual {p1}, Lo/q;->b()I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/ds;->l:I

    .line 255
    const/4 v0, 0x5

    invoke-virtual {p1}, Lo/q;->e()I

    move-result v1

    invoke-virtual {p1}, Lo/q;->h()Lo/I;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/maps/driveabout/app/ds;->a(IILjava/lang/Object;)V

    goto :goto_6
.end method

.method public d()V
    .registers 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ds;->c:Landroid/os/Looper;

    if-eqz v0, :cond_9

    .line 195
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ds;->c:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 197
    :cond_9
    return-void
.end method

.method public d(Lo/q;)V
    .registers 4
    .parameter

    .prologue
    .line 217
    const/4 v0, 0x4

    invoke-virtual {p1}, Lo/q;->g()Lo/x;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/ds;->a(ILjava/lang/Object;)V

    .line 218
    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/app/ds;->b(Lo/q;)V

    .line 219
    return-void
.end method

.method public e(Lo/q;)V
    .registers 3
    .parameter

    .prologue
    .line 263
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/ds;->a(I)V

    .line 264
    return-void
.end method

.method public f(Lo/q;)V
    .registers 2
    .parameter

    .prologue
    .line 269
    return-void
.end method

.method public n_()V
    .registers 5

    .prologue
    .line 301
    const/16 v0, 0xa

    :try_start_2
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_5} :catch_1e

    .line 307
    :goto_5
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 308
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/ds;->c:Landroid/os/Looper;

    .line 309
    new-instance v0, Lcom/google/android/maps/driveabout/app/du;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/du;-><init>(Lcom/google/android/maps/driveabout/app/ds;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/ds;->b:Landroid/os/Handler;

    .line 340
    monitor-enter p0

    .line 341
    :try_start_16
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 342
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_38

    .line 343
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 344
    return-void

    .line 302
    :catch_1e
    move-exception v0

    .line 303
    const-string v1, "TilePrefetcherThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not set thread priority: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lh/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 342
    :catchall_38
    move-exception v0

    :try_start_39
    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v0
.end method

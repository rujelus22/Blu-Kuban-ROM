.class public Lk/G;
.super Lt/c;
.source "SourceFile"


# instance fields
.field private final a:Lm/A;

.field private b:Ljava/util/List;

.field private c:Ljava/util/Iterator;

.field private final d:Ljava/util/List;

.field private e:Lk/b;

.field private f:Lk/H;

.field private g:J

.field private h:J

.field private i:LA/j;

.field private volatile j:F

.field private volatile k:Z

.field private volatile l:Z

.field private m:Z


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 77
    const-string v0, "EventLogPlayerThread"

    invoke-direct {p0, v0}, Lt/c;-><init>(Ljava/lang/String;)V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lk/G;->d:Ljava/util/List;

    .line 44
    iput-wide v2, p0, Lk/G;->g:J

    .line 48
    iput-wide v2, p0, Lk/G;->h:J

    .line 55
    const/high16 v0, 0x3f80

    iput v0, p0, Lk/G;->j:F

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lk/G;->k:Z

    .line 62
    iput-boolean v1, p0, Lk/G;->l:Z

    .line 64
    iput-boolean v1, p0, Lk/G;->m:Z

    .line 78
    new-instance v0, Lm/A;

    invoke-direct {v0}, Lm/A;-><init>()V

    iput-object v0, p0, Lk/G;->a:Lm/A;

    .line 79
    invoke-virtual {p0}, Lk/G;->start()V

    .line 80
    return-void
.end method

.method private a(LA/j;)Z
    .registers 3
    .parameter

    .prologue
    .line 244
    iget-object v0, p0, Lk/G;->a:Lm/A;

    invoke-virtual {v0, p1}, Lm/A;->a(LA/j;)Z

    move-result v0

    if-nez v0, :cond_2e

    iget-object v0, p0, Lk/G;->a:Lm/A;

    invoke-virtual {v0, p1}, Lm/A;->b(LA/j;)Z

    move-result v0

    if-nez v0, :cond_2e

    invoke-direct {p0, p1}, Lk/G;->b(LA/j;)Z

    move-result v0

    if-nez v0, :cond_2e

    invoke-direct {p0, p1}, Lk/G;->d(LA/j;)Z

    move-result v0

    if-nez v0, :cond_2e

    invoke-direct {p0, p1}, Lk/G;->e(LA/j;)Z

    move-result v0

    if-nez v0, :cond_2e

    invoke-direct {p0, p1}, Lk/G;->f(LA/j;)Z

    move-result v0

    if-nez v0, :cond_2e

    invoke-direct {p0, p1}, Lk/G;->g(LA/j;)Z

    move-result v0

    if-eqz v0, :cond_30

    :cond_2e
    const/4 v0, 0x1

    :goto_2f
    return v0

    :cond_30
    const/4 v0, 0x0

    goto :goto_2f
.end method

.method private b(LA/j;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 258
    .line 259
    instance-of v2, p1, Lk/v;

    if-eqz v2, :cond_10

    move v0, v1

    .line 268
    :goto_7
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v2

    invoke-virtual {v2, v0}, Lac/h;->b(Z)V

    move v0, v1

    .line 270
    :cond_f
    return v0

    .line 262
    :cond_10
    instance-of v2, p1, Lk/w;

    if-eqz v2, :cond_f

    goto :goto_7
.end method

.method private c(LA/j;)Z
    .registers 3
    .parameter

    .prologue
    .line 278
    instance-of v0, p1, Lk/C;

    if-nez v0, :cond_10

    instance-of v0, p1, Lk/E;

    if-nez v0, :cond_10

    instance-of v0, p1, Lk/F;

    if-nez v0, :cond_10

    instance-of v0, p1, Lk/n;

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private declared-synchronized d()V
    .registers 3

    .prologue
    .line 146
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lk/G;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lk/G;->c:Ljava/util/Iterator;

    .line 147
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lk/G;->h:J

    iput-wide v0, p0, Lk/G;->g:J

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lk/G;->i:LA/j;

    .line 149
    invoke-direct {p0}, Lk/G;->e()LA/j;

    .line 150
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 151
    monitor-exit p0

    return-void

    .line 146
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private d(LA/j;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 290
    instance-of v0, p1, Lk/C;

    if-eqz v0, :cond_1f

    .line 291
    check-cast p1, Lk/C;

    .line 292
    iget-object v0, p0, Lk/G;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/P;

    .line 293
    invoke-interface {v0, p1}, Lk/P;->a(Lk/C;)V

    goto :goto_d

    :cond_1d
    move v0, v1

    .line 316
    :goto_1e
    return v0

    .line 296
    :cond_1f
    instance-of v0, p1, Lk/E;

    if-eqz v0, :cond_3d

    .line 297
    check-cast p1, Lk/E;

    .line 298
    iget-object v0, p0, Lk/G;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/P;

    .line 299
    invoke-interface {v0, p1}, Lk/P;->a(Lk/E;)V

    goto :goto_2b

    :cond_3b
    move v0, v1

    .line 301
    goto :goto_1e

    .line 302
    :cond_3d
    instance-of v0, p1, Lk/F;

    if-eqz v0, :cond_5b

    .line 303
    check-cast p1, Lk/F;

    .line 304
    iget-object v0, p0, Lk/G;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_49
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/P;

    .line 305
    invoke-interface {v0, p1}, Lk/P;->a(Lk/F;)V

    goto :goto_49

    :cond_59
    move v0, v1

    .line 307
    goto :goto_1e

    .line 308
    :cond_5b
    instance-of v0, p1, Lk/n;

    if-eqz v0, :cond_79

    .line 309
    check-cast p1, Lk/n;

    .line 311
    iget-object v0, p0, Lk/G;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_67
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_77

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/P;

    .line 312
    invoke-interface {v0, p1}, Lk/P;->a(Lk/n;)V

    goto :goto_67

    :cond_77
    move v0, v1

    .line 314
    goto :goto_1e

    .line 316
    :cond_79
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method private declared-synchronized e()LA/j;
    .registers 8

    .prologue
    const/4 v0, 0x0

    const/high16 v6, 0x3f00

    const-wide/16 v2, 0x0

    .line 367
    monitor-enter p0

    .line 368
    :try_start_6
    iget-object v1, p0, Lk/G;->c:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 369
    iget-object v0, p0, Lk/G;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LA/j;

    .line 372
    :cond_16
    if-eqz v0, :cond_98

    .line 373
    iput-object v0, p0, Lk/G;->i:LA/j;

    .line 376
    iget-object v1, p0, Lk/G;->b:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_3f

    move-wide v0, v2

    .line 392
    :goto_24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, v0

    iput-wide v4, p0, Lk/G;->g:J

    .line 393
    iget-object v4, p0, Lk/G;->i:LA/j;

    invoke-virtual {v4}, LA/j;->e()Z

    move-result v4

    if-eqz v4, :cond_81

    .line 394
    iget-object v0, p0, Lk/G;->i:LA/j;

    invoke-virtual {v0}, LA/j;->g()J

    move-result-wide v0

    iput-wide v0, p0, Lk/G;->h:J

    .line 403
    :cond_3b
    :goto_3b
    iget-object v0, p0, Lk/G;->i:LA/j;
    :try_end_3d
    .catchall {:try_start_6 .. :try_end_3d} :catchall_95

    monitor-exit p0

    return-object v0

    .line 378
    :cond_3f
    :try_start_3f
    iget-object v0, p0, Lk/G;->i:LA/j;

    invoke-virtual {v0}, LA/j;->e()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 379
    iget-object v0, p0, Lk/G;->i:LA/j;

    invoke-virtual {v0}, LA/j;->g()J

    move-result-wide v0

    iget-wide v4, p0, Lk/G;->h:J

    sub-long/2addr v0, v4

    .line 380
    cmp-long v4, v0, v2

    if-gez v4, :cond_55

    move-wide v0, v2

    .line 381
    :cond_55
    long-to-float v0, v0

    iget v1, p0, Lk/G;->j:F

    div-float/2addr v0, v1

    add-float/2addr v0, v6

    float-to-long v0, v0

    goto :goto_24

    .line 382
    :cond_5c
    iget-object v0, p0, Lk/G;->i:LA/j;

    invoke-virtual {v0}, LA/j;->h()Z

    move-result v0

    if-eqz v0, :cond_76

    .line 383
    iget-object v0, p0, Lk/G;->i:LA/j;

    invoke-virtual {v0}, LA/j;->i()J

    move-result-wide v0

    .line 384
    cmp-long v4, v0, v2

    if-gez v4, :cond_6f

    move-wide v0, v2

    .line 385
    :cond_6f
    long-to-float v0, v0

    iget v1, p0, Lk/G;->j:F

    div-float/2addr v0, v1

    add-float/2addr v0, v6

    float-to-long v0, v0

    goto :goto_24

    .line 386
    :cond_76
    iget-object v0, p0, Lk/G;->i:LA/j;

    invoke-direct {p0, v0}, Lk/G;->c(LA/j;)Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 390
    const-wide/16 v0, 0x64

    goto :goto_24

    .line 395
    :cond_81
    iget-object v4, p0, Lk/G;->i:LA/j;

    invoke-virtual {v4}, LA/j;->h()Z

    move-result v4

    if-eqz v4, :cond_3b

    iget-wide v4, p0, Lk/G;->h:J

    cmp-long v2, v4, v2

    if-ltz v2, :cond_3b

    .line 396
    iget-wide v2, p0, Lk/G;->h:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lk/G;->h:J
    :try_end_94
    .catchall {:try_start_3f .. :try_end_94} :catchall_95

    goto :goto_3b

    .line 367
    :catchall_95
    move-exception v0

    monitor-exit p0

    throw v0

    .line 399
    :cond_98
    const/4 v0, 0x0

    :try_start_99
    iput-object v0, p0, Lk/G;->i:LA/j;

    .line 400
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lk/G;->g:J
    :try_end_9f
    .catchall {:try_start_99 .. :try_end_9f} :catchall_95

    goto :goto_3b

    :cond_a0
    move-wide v0, v2

    goto :goto_24
.end method

.method private e(LA/j;)Z
    .registers 3
    .parameter

    .prologue
    .line 324
    instance-of v0, p1, Lk/m;

    if-eqz v0, :cond_11

    .line 325
    iget-object v0, p0, Lk/G;->e:Lk/b;

    if-eqz v0, :cond_f

    .line 326
    iget-object v0, p0, Lk/G;->e:Lk/b;

    check-cast p1, Lk/m;

    invoke-virtual {v0, p1}, Lk/b;->a(Lk/m;)Z

    .line 328
    :cond_f
    const/4 v0, 0x1

    .line 330
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private f(LA/j;)Z
    .registers 4
    .parameter

    .prologue
    .line 338
    instance-of v0, p1, Lk/y;

    if-eqz v0, :cond_10

    .line 340
    :try_start_4
    check-cast p1, Lk/y;

    invoke-virtual {p1}, Lk/y;->a()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_e} :catch_12

    .line 342
    :goto_e
    const/4 v0, 0x1

    .line 344
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f

    .line 341
    :catch_12
    move-exception v0

    goto :goto_e
.end method

.method private g(LA/j;)Z
    .registers 6
    .parameter

    .prologue
    .line 352
    instance-of v0, p1, Lk/A;

    if-eqz v0, :cond_27

    .line 353
    check-cast p1, Lk/A;

    .line 354
    invoke-static {}, Lcom/google/android/maps/driveabout/app/ca;->a()Lcom/google/android/maps/driveabout/app/ca;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/ca;->f()Lcom/google/android/maps/driveabout/app/NavigationActivity;

    move-result-object v0

    .line 356
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {p1}, Lk/A;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 357
    const-class v2, Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 358
    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 359
    const/4 v0, 0x1

    .line 361
    :goto_26
    return v0

    :cond_27
    const/4 v0, 0x0

    goto :goto_26
.end method


# virtual methods
.method public a(LA/f;)V
    .registers 5
    .parameter

    .prologue
    .line 122
    invoke-virtual {p1}, LA/f;->a()Ljava/util/List;

    move-result-object v0

    .line 126
    instance-of v1, p1, Lk/O;

    if-eqz v1, :cond_17

    .line 127
    check-cast p1, Lk/O;

    .line 128
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p1}, Lk/O;->f()I

    move-result v2

    if-ge v1, v2, :cond_17

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 135
    :cond_17
    invoke-virtual {p0, v0}, Lk/G;->a(Ljava/util/List;)V

    .line 136
    return-void
.end method

.method public declared-synchronized a(Ljava/util/List;)V
    .registers 3
    .parameter

    .prologue
    .line 141
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lk/G;->b:Ljava/util/List;

    .line 142
    invoke-direct {p0}, Lk/G;->d()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 143
    monitor-exit p0

    return-void

    .line 141
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lk/H;)V
    .registers 3
    .parameter

    .prologue
    .line 107
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lk/G;->f:Lk/H;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 108
    monitor-exit p0

    return-void

    .line 107
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lk/P;)V
    .registers 3
    .parameter

    .prologue
    .line 94
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lk/G;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 95
    iget-object v0, p0, Lk/G;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 97
    :cond_e
    monitor-exit p0

    return-void

    .line 94
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lk/b;)V
    .registers 3
    .parameter

    .prologue
    .line 116
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lk/G;->e:Lk/b;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 117
    monitor-exit p0

    return-void

    .line 116
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 183
    iput-boolean p1, p0, Lk/G;->k:Z

    .line 184
    return-void
.end method

.method public b()Lm/A;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lk/G;->a:Lm/A;

    return-object v0
.end method

.method public declared-synchronized c()V
    .registers 2

    .prologue
    .line 199
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lk/G;->m:Z

    .line 200
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 201
    monitor-exit p0

    return-void

    .line 199
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public n_()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    .line 413
    :cond_2
    :goto_2
    :try_start_2
    iget-boolean v0, p0, Lk/G;->m:Z

    if-nez v0, :cond_31

    .line 415
    monitor-enter p0
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_7} :catch_30

    .line 417
    :cond_7
    :goto_7
    :try_start_7
    iget-boolean v0, p0, Lk/G;->m:Z

    if-nez v0, :cond_4d

    iget-boolean v0, p0, Lk/G;->l:Z

    if-nez v0, :cond_1f

    iget-wide v0, p0, Lk/G;->g:J

    cmp-long v0, v0, v4

    if-ltz v0, :cond_1f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lk/G;->g:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_4d

    .line 420
    :cond_1f
    iget-boolean v0, p0, Lk/G;->l:Z

    if-nez v0, :cond_29

    iget-wide v0, p0, Lk/G;->g:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_3e

    .line 421
    :cond_29
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_7

    .line 432
    :catchall_2d
    move-exception v0

    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_7 .. :try_end_2f} :catchall_2d

    :try_start_2f
    throw v0
    :try_end_30
    .catch Ljava/lang/InterruptedException; {:try_start_2f .. :try_end_30} :catch_30

    .line 450
    :catch_30
    move-exception v0

    .line 453
    :cond_31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lk/G;->m:Z

    .line 455
    iget-object v0, p0, Lk/G;->f:Lk/H;

    if-eqz v0, :cond_3d

    .line 456
    iget-object v0, p0, Lk/G;->f:Lk/H;

    invoke-interface {v0}, Lk/H;->a()V

    .line 458
    :cond_3d
    return-void

    .line 423
    :cond_3e
    :try_start_3e
    iget-wide v0, p0, Lk/G;->g:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 425
    cmp-long v2, v0, v4

    if-lez v2, :cond_7

    .line 427
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    goto :goto_7

    .line 431
    :cond_4d
    iget-object v0, p0, Lk/G;->i:LA/j;

    .line 432
    monitor-exit p0
    :try_end_50
    .catchall {:try_start_3e .. :try_end_50} :catchall_2d

    .line 435
    if-eqz v0, :cond_55

    .line 436
    :try_start_52
    invoke-direct {p0, v0}, Lk/G;->a(LA/j;)Z

    .line 440
    :cond_55
    invoke-direct {p0}, Lk/G;->e()LA/j;

    move-result-object v0

    .line 441
    if-nez v0, :cond_2

    .line 443
    iget-boolean v0, p0, Lk/G;->k:Z

    if-eqz v0, :cond_31

    .line 444
    invoke-direct {p0}, Lk/G;->d()V
    :try_end_62
    .catch Ljava/lang/InterruptedException; {:try_start_52 .. :try_end_62} :catch_30

    goto :goto_2
.end method

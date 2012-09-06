.class public Lr/Q;
.super Lt/c;
.source "SourceFile"

# interfaces
.implements Lac/q;


# static fields
.field private static a:Lr/Q;


# instance fields
.field private final b:Lcom/google/googlenav/common/a;

.field private final c:Lac/h;

.field private final d:Lr/L;

.field private final e:Ljava/io/File;

.field private f:Z

.field private g:Landroid/os/Handler;

.field private final h:Ljava/util/Map;

.field private i:Z


# direct methods
.method protected constructor <init>(Lac/h;Ljava/io/File;Ljava/util/Locale;Lcom/google/googlenav/common/a;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 138
    const-string v0, "ibs"

    invoke-direct {p0, v0}, Lt/c;-><init>(Ljava/lang/String;)V

    .line 140
    iput-object p1, p0, Lr/Q;->c:Lac/h;

    .line 141
    iput-object p4, p0, Lr/Q;->b:Lcom/google/googlenav/common/a;

    .line 142
    new-instance v0, Lr/L;

    iget-object v1, p0, Lr/Q;->b:Lcom/google/googlenav/common/a;

    invoke-direct {v0, p3, v1}, Lr/L;-><init>(Ljava/util/Locale;Lcom/google/googlenav/common/a;)V

    iput-object v0, p0, Lr/Q;->d:Lr/L;

    .line 143
    iput-object p2, p0, Lr/Q;->e:Ljava/io/File;

    .line 144
    invoke-static {}, Lcom/google/common/collect/Maps;->b()Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Lr/Q;->h:Ljava/util/Map;

    .line 145
    return-void
.end method

.method public static a(Lac/h;Ljava/io/File;Ljava/util/Locale;Lcom/google/googlenav/common/a;)Lr/Q;
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 165
    sget-object v0, Lr/Q;->a:Lr/Q;

    if-nez v0, :cond_b

    .line 166
    new-instance v0, Lr/Q;

    invoke-direct {v0, p0, p1, p2, p3}, Lr/Q;-><init>(Lac/h;Ljava/io/File;Ljava/util/Locale;Lcom/google/googlenav/common/a;)V

    sput-object v0, Lr/Q;->a:Lr/Q;

    .line 168
    :cond_b
    sget-object v0, Lr/Q;->a:Lr/Q;

    return-object v0
.end method

.method private a(Lr/P;)V
    .registers 5
    .parameter

    .prologue
    .line 420
    invoke-direct {p0}, Lr/Q;->k()V

    .line 421
    iget-object v0, p0, Lr/Q;->h:Ljava/util/Map;

    invoke-virtual {p1}, Lr/P;->b()Ln/p;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_f

    .line 427
    :cond_f
    const/4 v0, 0x0

    .line 428
    invoke-virtual {p1}, Lr/P;->p_()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 429
    iget-object v1, p0, Lr/Q;->d:Lr/L;

    invoke-virtual {p1}, Lr/P;->b()Ln/p;

    move-result-object v2

    invoke-virtual {v1, v2}, Lr/L;->c(Ln/p;)V

    .line 437
    :cond_1f
    :goto_1f
    invoke-virtual {p1, v0}, Lr/P;->a(Ln/w;)V

    .line 438
    return-void

    .line 431
    :cond_23
    invoke-virtual {p1}, Lr/P;->f()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 432
    if-eqz v1, :cond_1f

    .line 433
    iget-object v0, p0, Lr/Q;->d:Lr/L;

    invoke-virtual {p1}, Lr/P;->b()Ln/p;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lr/L;->a(Ln/p;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ln/w;

    move-result-object v0

    goto :goto_1f
.end method

.method static synthetic a(Lr/Q;)V
    .registers 1
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Lr/Q;->i()V

    return-void
.end method

.method static synthetic a(Lr/Q;Lr/P;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lr/Q;->a(Lr/P;)V

    return-void
.end method

.method static synthetic a(Lr/Q;Lr/S;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lr/Q;->a(Lr/S;)V

    return-void
.end method

.method private a(Lr/S;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 343
    invoke-direct {p0}, Lr/Q;->k()V

    .line 345
    iget-object v1, p1, Lr/S;->a:Ln/p;

    .line 346
    iget-object v2, p1, Lr/S;->b:Lr/O;

    .line 349
    iget-object v0, p0, Lr/Q;->d:Lr/L;

    invoke-virtual {v0, v1}, Lr/L;->a(Ln/p;)Ln/w;

    move-result-object v0

    .line 350
    if-eqz v0, :cond_2d

    .line 352
    if-eqz v2, :cond_1f

    .line 353
    iget-object v3, p0, Lr/Q;->d:Lr/L;

    invoke-virtual {v3, v0}, Lr/L;->a(Ln/w;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 354
    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v1, v3, v4}, Lr/O;->a(Ln/p;ILn/w;)V

    .line 363
    :cond_1f
    :goto_1f
    iget-object v3, p0, Lr/Q;->b:Lcom/google/googlenav/common/a;

    invoke-virtual {v0, v3}, Ln/w;->a(Lcom/google/googlenav/common/a;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 391
    :cond_27
    :goto_27
    return-void

    .line 357
    :cond_28
    const/4 v3, 0x0

    invoke-interface {v2, v1, v3, v0}, Lr/O;->a(Ln/p;ILn/w;)V

    goto :goto_1f

    .line 375
    :cond_2d
    iget-object v0, p0, Lr/Q;->h:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr/P;

    .line 377
    if-nez v0, :cond_41

    .line 378
    new-instance v0, Lr/P;

    invoke-direct {v0, v1}, Lr/P;-><init>(Ln/p;)V

    .line 379
    iget-object v3, p0, Lr/Q;->h:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    :cond_41
    if-eqz v2, :cond_46

    .line 383
    invoke-virtual {v0, v2}, Lr/P;->a(Lr/O;)V

    .line 386
    :cond_46
    invoke-virtual {v0}, Lr/P;->d()Z

    move-result v0

    if-nez v0, :cond_27

    iget-boolean v0, p0, Lr/Q;->i:Z

    if-nez v0, :cond_27

    .line 388
    iget-object v0, p0, Lr/Q;->g:Landroid/os/Handler;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 389
    iput-boolean v5, p0, Lr/Q;->i:Z

    goto :goto_27
.end method

.method public static b()Lr/Q;
    .registers 1

    .prologue
    .line 175
    sget-object v0, Lr/Q;->a:Lr/Q;

    return-object v0
.end method

.method private b(Lr/P;)V
    .registers 4
    .parameter

    .prologue
    .line 446
    invoke-direct {p0}, Lr/Q;->k()V

    .line 447
    iget-object v0, p0, Lr/Q;->h:Ljava/util/Map;

    invoke-virtual {p1}, Lr/P;->b()Ln/p;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_f

    .line 451
    :cond_f
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lr/P;->a(Ln/w;)V

    .line 452
    return-void
.end method

.method static synthetic b(Lr/Q;Lr/P;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lr/Q;->b(Lr/P;)V

    return-void
.end method

.method public static c()V
    .registers 1

    .prologue
    .line 182
    sget-object v0, Lr/Q;->a:Lr/Q;

    if-eqz v0, :cond_c

    .line 183
    sget-object v0, Lr/Q;->a:Lr/Q;

    invoke-virtual {v0}, Lr/Q;->e()V

    .line 184
    const/4 v0, 0x0

    sput-object v0, Lr/Q;->a:Lr/Q;

    .line 186
    :cond_c
    return-void
.end method

.method private i()V
    .registers 4

    .prologue
    .line 397
    invoke-direct {p0}, Lr/Q;->k()V

    .line 398
    const/4 v0, 0x0

    iput-boolean v0, p0, Lr/Q;->i:Z

    .line 401
    iget-object v0, p0, Lr/Q;->c:Lac/h;

    invoke-virtual {v0}, Lac/h;->g()V

    .line 403
    :try_start_b
    iget-object v0, p0, Lr/Q;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr/P;

    .line 404
    invoke-virtual {v0}, Lr/P;->d()Z

    move-result v2

    if-nez v2, :cond_15

    .line 405
    iget-object v2, p0, Lr/Q;->c:Lac/h;

    invoke-virtual {v2, v0}, Lac/h;->c(Lac/g;)V

    .line 406
    invoke-virtual {v0}, Lr/P;->c()V
    :try_end_2f
    .catchall {:try_start_b .. :try_end_2f} :catchall_30

    goto :goto_15

    .line 410
    :catchall_30
    move-exception v0

    iget-object v1, p0, Lr/Q;->c:Lac/h;

    invoke-virtual {v1}, Lac/h;->h()V

    throw v0

    :cond_37
    iget-object v0, p0, Lr/Q;->c:Lac/h;

    invoke-virtual {v0}, Lac/h;->h()V

    .line 412
    return-void
.end method

.method private j()V
    .registers 2

    .prologue
    .line 486
    :try_start_0
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_1} :catch_c

    .line 487
    :goto_1
    :try_start_1
    iget-boolean v0, p0, Lr/Q;->f:Z

    if-nez v0, :cond_15

    .line 488
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 490
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    :try_start_b
    throw v0
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_c} :catch_c

    .line 491
    :catch_c
    move-exception v0

    .line 492
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 494
    :goto_14
    return-void

    .line 490
    :cond_15
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_9

    goto :goto_14
.end method

.method private k()V
    .registers 3

    .prologue
    .line 561
    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_14

    .line 562
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Operation must be called on IndoorBuildingStore thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 564
    :cond_14
    return-void
.end method


# virtual methods
.method public a(Ln/p;)Ln/w;
    .registers 4
    .parameter

    .prologue
    .line 304
    iget-object v0, p0, Lr/Q;->d:Lr/L;

    invoke-virtual {v0, p1}, Lr/L;->b(Ln/p;)Ln/w;

    move-result-object v0

    .line 306
    iget-object v1, p0, Lr/Q;->d:Lr/L;

    invoke-virtual {v1, v0}, Lr/L;->a(Ln/w;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 307
    const/4 v0, 0x0

    .line 310
    :cond_f
    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 471
    return-void
.end method

.method public a(IZLjava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 466
    return-void
.end method

.method public a(Lac/g;)V
    .registers 5
    .parameter

    .prologue
    .line 457
    invoke-interface {p1}, Lac/g;->a()I

    move-result v0

    const/16 v1, 0x76

    if-ne v0, v1, :cond_14

    .line 458
    iget-object v0, p0, Lr/Q;->g:Landroid/os/Handler;

    iget-object v1, p0, Lr/Q;->g:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 460
    :cond_14
    return-void
.end method

.method public a(Ln/p;Lr/O;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 291
    iget-object v0, p0, Lr/Q;->g:Landroid/os/Handler;

    iget-object v1, p0, Lr/Q;->g:Landroid/os/Handler;

    const/4 v2, 0x0

    new-instance v3, Lr/S;

    invoke-direct {v3, p1, p2}, Lr/S;-><init>(Ln/p;Lr/O;)V

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 293
    return-void
.end method

.method public b(Lac/g;)V
    .registers 5
    .parameter

    .prologue
    .line 476
    invoke-interface {p1}, Lac/g;->a()I

    move-result v0

    const/16 v1, 0x76

    if-ne v0, v1, :cond_14

    .line 477
    iget-object v0, p0, Lr/Q;->g:Landroid/os/Handler;

    iget-object v1, p0, Lr/Q;->g:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 479
    :cond_14
    return-void
.end method

.method public b(Ln/p;)Z
    .registers 4
    .parameter

    .prologue
    .line 321
    iget-object v0, p0, Lr/Q;->d:Lr/L;

    invoke-virtual {v0, p1}, Lr/L;->b(Ln/p;)Ln/w;

    move-result-object v0

    .line 322
    iget-object v1, p0, Lr/Q;->d:Lr/L;

    invoke-virtual {v1, v0}, Lr/L;->a(Ln/w;)Z

    move-result v0

    return v0
.end method

.method public c(Ln/p;)Ln/x;
    .registers 3
    .parameter

    .prologue
    .line 329
    invoke-virtual {p0, p1}, Lr/Q;->a(Ln/p;)Ln/w;

    move-result-object v0

    .line 330
    if-eqz v0, :cond_b

    .line 331
    invoke-virtual {v0, p1}, Ln/w;->a(Ln/p;)Ln/x;

    move-result-object v0

    .line 333
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public d()V
    .registers 2

    .prologue
    .line 193
    invoke-virtual {p0}, Lr/Q;->start()V

    .line 196
    :try_start_3
    monitor-enter p0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_4} :catch_f

    .line 197
    :goto_4
    :try_start_4
    iget-object v0, p0, Lr/Q;->g:Landroid/os/Handler;

    if-nez v0, :cond_1d

    .line 198
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_4

    .line 200
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_c

    :try_start_e
    throw v0
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_f} :catch_f

    .line 201
    :catch_f
    move-exception v0

    .line 202
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 205
    :goto_17
    iget-object v0, p0, Lr/Q;->c:Lac/h;

    invoke-virtual {v0, p0}, Lac/h;->a(Lac/q;)V

    .line 206
    return-void

    .line 200
    :cond_1d
    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_c

    goto :goto_17
.end method

.method public e()V
    .registers 2

    .prologue
    .line 213
    iget-object v0, p0, Lr/Q;->c:Lac/h;

    invoke-virtual {v0, p0}, Lac/h;->b(Lac/q;)V

    .line 214
    iget-object v0, p0, Lr/Q;->g:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 216
    :try_start_e
    invoke-virtual {p0}, Lr/Q;->join()V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_11} :catch_1f

    .line 221
    :goto_11
    iget-object v0, p0, Lr/Q;->d:Lr/L;

    invoke-virtual {v0}, Lr/L;->c()V

    .line 223
    iget-object v0, p0, Lr/Q;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1e

    .line 226
    :cond_1e
    return-void

    .line 217
    :catch_1f
    move-exception v0

    .line 218
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_11
.end method

.method public f()V
    .registers 2

    .prologue
    .line 500
    invoke-direct {p0}, Lr/Q;->j()V

    .line 501
    iget-object v0, p0, Lr/Q;->d:Lr/L;

    invoke-virtual {v0}, Lr/L;->a()V

    .line 502
    return-void
.end method

.method public g()V
    .registers 2

    .prologue
    .line 509
    invoke-direct {p0}, Lr/Q;->j()V

    .line 510
    iget-object v0, p0, Lr/Q;->d:Lr/L;

    invoke-virtual {v0}, Lr/L;->b()V

    .line 511
    return-void
.end method

.method public h()J
    .registers 3

    .prologue
    .line 517
    invoke-direct {p0}, Lr/Q;->j()V

    .line 518
    iget-object v0, p0, Lr/Q;->d:Lr/L;

    invoke-virtual {v0}, Lr/L;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public n_()V
    .registers 5

    .prologue
    .line 231
    :try_start_0
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/dD;->e()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_7} :catch_2f

    .line 236
    :goto_7
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 238
    new-instance v0, Lr/R;

    invoke-direct {v0, p0}, Lr/R;-><init>(Lr/Q;)V

    iput-object v0, p0, Lr/Q;->g:Landroid/os/Handler;

    .line 262
    monitor-enter p0

    .line 263
    :try_start_12
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 264
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_4b

    .line 266
    invoke-static {}, Lh/a;->b()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 267
    iget-object v0, p0, Lr/Q;->d:Lr/L;

    iget-object v1, p0, Lr/Q;->e:Ljava/io/File;

    invoke-virtual {v0, v1}, Lr/L;->a(Ljava/io/File;)V

    .line 271
    :cond_23
    monitor-enter p0

    .line 272
    const/4 v0, 0x1

    :try_start_25
    iput-boolean v0, p0, Lr/Q;->f:Z

    .line 273
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 274
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_4e

    .line 276
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 277
    return-void

    .line 232
    :catch_2f
    move-exception v0

    .line 233
    invoke-virtual {p0}, Lr/Q;->getName()Ljava/lang/String;

    move-result-object v1

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

    goto :goto_7

    .line 264
    :catchall_4b
    move-exception v0

    :try_start_4c
    monitor-exit p0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw v0

    .line 274
    :catchall_4e
    move-exception v0

    :try_start_4f
    monitor-exit p0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw v0
.end method

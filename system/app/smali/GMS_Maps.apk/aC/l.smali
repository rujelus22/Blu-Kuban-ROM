.class public Lac/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lac/h;

.field private volatile b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lac/h;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 2318
    iput-object p1, p0, Lac/l;->a:Lac/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2319
    iput-object p2, p0, Lac/l;->b:Ljava/lang/String;

    .line 2320
    return-void
.end method

.method synthetic constructor <init>(Lac/h;Ljava/lang/String;Lac/i;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2314
    invoke-direct {p0, p1, p2}, Lac/l;-><init>(Lac/h;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lac/l;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 2314
    iput-object p1, p0, Lac/l;->b:Ljava/lang/String;

    return-object p1
.end method

.method private declared-synchronized a()V
    .registers 4

    .prologue
    .line 2328
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lac/l;->a:Lac/h;

    invoke-virtual {v0}, Lac/h;->n()Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_2c

    move-result v0

    if-nez v0, :cond_b

    .line 2346
    :cond_9
    :goto_9
    monitor-exit p0

    return-void

    .line 2337
    :cond_b
    :try_start_b
    iget-object v0, p0, Lac/l;->a:Lac/h;

    invoke-static {v0}, Lac/h;->i(Lac/h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lac/o;

    .line 2338
    const/4 v2, 0x1

    .line 2339
    invoke-static {v0, v2}, Lac/o;->b(Lac/o;Z)Lac/m;

    move-result-object v0

    .line 2341
    if-eqz v0, :cond_15

    .line 2342
    invoke-virtual {v0}, Lac/m;->a()V
    :try_end_2b
    .catchall {:try_start_b .. :try_end_2b} :catchall_2c

    goto :goto_9

    .line 2328
    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lac/l;)V
    .registers 1
    .parameter

    .prologue
    .line 2314
    invoke-direct {p0}, Lac/l;->a()V

    return-void
.end method

.method static synthetic a(Lac/l;Ljava/lang/Exception;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 2314
    invoke-direct {p0, p1}, Lac/l;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .registers 4
    .parameter

    .prologue
    .line 2406
    const-string v0, "REQUEST"

    invoke-static {v0, p1}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2410
    iget-object v0, p0, Lac/l;->a:Lac/h;

    invoke-virtual {v0}, Lac/h;->u()V

    .line 2413
    iget-object v0, p0, Lac/l;->a:Lac/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lac/h;->a(I)V

    .line 2414
    return-void
.end method

.method static synthetic b(Lac/l;)J
    .registers 3
    .parameter

    .prologue
    .line 2314
    invoke-direct {p0}, Lac/l;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method private b()V
    .registers 2

    .prologue
    .line 2357
    invoke-direct {p0}, Lac/l;->c()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2358
    invoke-direct {p0}, Lac/l;->a()V

    .line 2360
    :cond_9
    return-void
.end method

.method static synthetic c(Lac/l;)V
    .registers 1
    .parameter

    .prologue
    .line 2314
    invoke-direct {p0}, Lac/l;->b()V

    return-void
.end method

.method private c()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 2368
    iget-object v0, p0, Lac/l;->a:Lac/h;

    invoke-virtual {v0}, Lac/h;->f()Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    .line 2376
    :goto_a
    return v0

    .line 2371
    :cond_b
    iget-object v0, p0, Lac/l;->a:Lac/h;

    invoke-static {v0}, Lac/h;->i(Lac/h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lac/o;

    .line 2372
    invoke-static {v0}, Lac/o;->c(Lac/o;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2373
    const/4 v0, 0x1

    goto :goto_a

    :cond_29
    move v0, v1

    .line 2376
    goto :goto_a
.end method

.method private declared-synchronized d()J
    .registers 7

    .prologue
    .line 2386
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lac/l;->a:Lac/h;

    invoke-static {v0}, Lac/h;->j(Lac/h;)I

    move-result v0

    packed-switch v0, :pswitch_data_32

    .line 2396
    iget-object v0, p0, Lac/l;->a:Lac/h;

    invoke-static {v0}, Lac/h;->k(Lac/h;)J
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_2e

    move-result-wide v0

    :goto_10
    monitor-exit p0

    return-wide v0

    .line 2393
    :pswitch_12
    :try_start_12
    iget-object v0, p0, Lac/l;->a:Lac/h;

    invoke-static {v0}, Lac/h;->k(Lac/h;)J

    move-result-wide v0

    const-wide/16 v2, 0x320

    add-long/2addr v0, v2

    iget-object v2, p0, Lac/l;->a:Lac/h;

    invoke-static {v2}, Lac/h;->l(Lac/h;)Ljava/util/Random;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    iget-object v4, p0, Lac/l;->a:Lac/h;

    invoke-static {v4}, Lac/h;->k(Lac/h;)J

    move-result-wide v4

    rem-long/2addr v2, v4
    :try_end_2c
    .catchall {:try_start_12 .. :try_end_2c} :catchall_2e

    add-long/2addr v0, v2

    goto :goto_10

    .line 2386
    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0

    nop

    :pswitch_data_32
    .packed-switch 0x4
        :pswitch_12
    .end packed-switch
.end method

.method static synthetic d(Lac/l;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 2314
    iget-object v0, p0, Lac/l;->b:Ljava/lang/String;

    return-object v0
.end method

.method private e()V
    .registers 1

    .prologue
    .line 2422
    invoke-direct {p0}, Lac/l;->b()V

    .line 2423
    return-void
.end method

.method static synthetic e(Lac/l;)V
    .registers 1
    .parameter

    .prologue
    .line 2314
    invoke-direct {p0}, Lac/l;->e()V

    return-void
.end method

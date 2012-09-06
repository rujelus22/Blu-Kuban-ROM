.class public final Lcom/google/ads/z;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/ads/a/q;

.field private b:Lcom/google/ads/ae;

.field private c:Ljava/lang/Object;

.field private d:Ljava/lang/Thread;

.field private e:Ljava/lang/Object;

.field private f:Z

.field private g:Ljava/lang/Object;


# direct methods
.method protected constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/ads/z;->b:Lcom/google/ads/ae;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/ads/z;->c:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/ads/z;->d:Ljava/lang/Thread;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/ads/z;->e:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/z;->f:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/ads/z;->g:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/ads/z;->a:Lcom/google/ads/a/q;

    return-void
.end method

.method public constructor <init>(Lcom/google/ads/a/q;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/ads/z;->b:Lcom/google/ads/ae;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/ads/z;->c:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/ads/z;->d:Ljava/lang/Thread;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/ads/z;->e:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/z;->f:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/ads/z;->g:Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/ads/util/b;->a(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/ads/z;->a:Lcom/google/ads/a/q;

    return-void
.end method

.method static synthetic a(Lcom/google/ads/z;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/ads/z;->e:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/google/ads/z;Lcom/google/ads/w;Lcom/google/ads/d;)V
    .registers 15

    iget-object v1, p0, Lcom/google/ads/z;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v2, p0, Lcom/google/ads/z;->d:Ljava/lang/Thread;

    invoke-static {v0, v2}, Lcom/google/ads/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_8e

    invoke-virtual {p1}, Lcom/google/ads/w;->f()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/ads/w;->a()Z

    move-result v1

    if-eqz v1, :cond_91

    invoke-virtual {p1}, Lcom/google/ads/w;->b()I

    move-result v1

    int-to-long v7, v1

    :goto_1c
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_20
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_aa

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/ads/i;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Looking to fetch ads from network: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/ads/i;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/ads/i;->c()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v2}, Lcom/google/ads/i;->d()Ljava/util/HashMap;

    move-result-object v11

    new-instance v0, Lcom/google/ads/ad;

    invoke-virtual {v2}, Lcom/google/ads/i;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/google/ads/i;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/ads/w;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/ads/w;->g()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/ads/w;->h()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/ads/w;->i()Ljava/util/List;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/google/ads/ad;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_6c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/ads/z;->a:Lcom/google/ads/a/q;

    invoke-virtual {v1}, Lcom/google/ads/a/q;->f()Lcom/google/ads/am;

    move-result-object v1

    iget-object v1, v1, Lcom/google/ads/am;->c:Lcom/google/ads/util/ad;

    invoke-virtual {v1}, Lcom/google/ads/util/ad;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    if-nez v3, :cond_94

    const-string v0, "Activity is null while mediating.  Terminating mediation thread."

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    :cond_8d
    :goto_8d
    return-void

    :catchall_8e
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_91
    const-wide/16 v7, 0x2710

    goto :goto_1c

    :cond_94
    move-object v1, p0

    move-object v4, p2

    move-object v5, v0

    move-object v6, v11

    invoke-direct/range {v1 .. v8}, Lcom/google/ads/z;->a(Ljava/lang/String;Landroid/app/Activity;Lcom/google/ads/d;Lcom/google/ads/ad;Ljava/util/HashMap;J)Z

    move-result v1

    if-nez v1, :cond_8d

    invoke-direct {p0}, Lcom/google/ads/z;->b()Z

    move-result v1

    if-eqz v1, :cond_6c

    const-string v0, "GWController.destroy() called. Terminating mediation thread."

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    goto :goto_8d

    :cond_aa
    iget-object v0, p0, Lcom/google/ads/z;->a:Lcom/google/ads/a/q;

    new-instance v1, Lcom/google/ads/ab;

    invoke-direct {v1, p0, p1}, Lcom/google/ads/ab;-><init>(Lcom/google/ads/z;Lcom/google/ads/w;)V

    invoke-virtual {v0, v1}, Lcom/google/ads/a/q;->a(Ljava/lang/Runnable;)V

    goto :goto_8d
.end method

.method private a()Z
    .registers 3

    iget-object v1, p0, Lcom/google/ads/z;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/ads/z;->d:Ljava/lang/Thread;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_8
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_c

    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_8

    :catchall_c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/google/ads/z;Lcom/google/ads/ae;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/ads/z;->b(Lcom/google/ads/ae;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;Landroid/app/Activity;Lcom/google/ads/d;Lcom/google/ads/ad;Ljava/util/HashMap;J)Z
    .registers 15

    new-instance v0, Lcom/google/ads/ae;

    iget-object v1, p0, Lcom/google/ads/z;->a:Lcom/google/ads/a/q;

    invoke-virtual {v1}, Lcom/google/ads/a/q;->f()Lcom/google/ads/am;

    move-result-object v1

    iget-object v1, v1, Lcom/google/ads/am;->i:Lcom/google/ads/util/ab;

    invoke-virtual {v1}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/a/w;

    move-object v1, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/ads/ae;-><init>(Lcom/google/ads/z;Lcom/google/ads/a/w;Lcom/google/ads/ad;Ljava/lang/String;Lcom/google/ads/d;Ljava/util/HashMap;)V

    monitor-enter v0

    :try_start_19
    invoke-virtual {v0, p2}, Lcom/google/ads/ae;->a(Landroid/app/Activity;)V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_7d

    :goto_1c
    :try_start_1c
    invoke-virtual {v0}, Lcom/google/ads/ae;->b()Z

    move-result v1

    if-nez v1, :cond_4a

    const-wide/16 v1, 0x0

    cmp-long v1, p6, v1

    if-lez v1, :cond_4a

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, p6, p7}, Ljava/lang/Object;->wait(J)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_32
    .catchall {:try_start_1c .. :try_end_32} :catchall_7d
    .catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_32} :catch_37

    move-result-wide v3

    sub-long v1, v3, v1

    sub-long/2addr p6, v1

    goto :goto_1c

    :catch_37
    move-exception v1

    :try_start_38
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Interrupted while waiting for ad network to load ad using adapter class: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    :cond_4a
    invoke-virtual {v0}, Lcom/google/ads/ae;->b()Z

    move-result v1

    if-eqz v1, :cond_76

    invoke-virtual {v0}, Lcom/google/ads/ae;->c()Z

    move-result v1

    if-eqz v1, :cond_76

    iget-object v1, p0, Lcom/google/ads/z;->a:Lcom/google/ads/a/q;

    invoke-virtual {v1}, Lcom/google/ads/a/q;->f()Lcom/google/ads/am;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/am;->b()Z

    move-result v1

    if-eqz v1, :cond_71

    const/4 v1, 0x0

    :goto_63
    iget-object v2, p0, Lcom/google/ads/z;->a:Lcom/google/ads/a/q;

    new-instance v3, Lcom/google/ads/ac;

    invoke-direct {v3, p0, v0, v1, p4}, Lcom/google/ads/ac;-><init>(Lcom/google/ads/z;Lcom/google/ads/ae;Landroid/view/View;Lcom/google/ads/ad;)V

    invoke-virtual {v2, v3}, Lcom/google/ads/a/q;->a(Ljava/lang/Runnable;)V

    const/4 v1, 0x1

    monitor-exit v0

    move v0, v1

    :goto_70
    return v0

    :cond_71
    invoke-virtual {v0}, Lcom/google/ads/ae;->d()Landroid/view/View;

    move-result-object v1

    goto :goto_63

    :cond_76
    invoke-virtual {v0}, Lcom/google/ads/ae;->a()V

    const/4 v1, 0x0

    monitor-exit v0
    :try_end_7b
    .catchall {:try_start_38 .. :try_end_7b} :catchall_7d

    move v0, v1

    goto :goto_70

    :catchall_7d
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic b(Lcom/google/ads/z;)Ljava/lang/Thread;
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/z;->d:Ljava/lang/Thread;

    return-object v0
.end method

.method private b()Z
    .registers 3

    iget-object v1, p0, Lcom/google/ads/z;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/ads/z;->f:Z

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_7

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b(Lcom/google/ads/ae;)Z
    .registers 4

    iget-object v1, p0, Lcom/google/ads/z;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0}, Lcom/google/ads/z;->b()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Lcom/google/ads/ae;->a()V

    const/4 v0, 0x1

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_12

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_e

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic c(Lcom/google/ads/z;)Lcom/google/ads/a/q;
    .registers 2

    iget-object v0, p0, Lcom/google/ads/z;->a:Lcom/google/ads/a/q;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/ads/ae;)V
    .registers 4

    iget-object v1, p0, Lcom/google/ads/z;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/ads/z;->b:Lcom/google/ads/ae;

    if-eq v0, p1, :cond_12

    iget-object v0, p0, Lcom/google/ads/z;->b:Lcom/google/ads/ae;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/ads/z;->b:Lcom/google/ads/ae;

    invoke-virtual {v0}, Lcom/google/ads/ae;->a()V

    :cond_10
    iput-object p1, p0, Lcom/google/ads/z;->b:Lcom/google/ads/ae;

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/google/ads/w;Lcom/google/ads/d;)V
    .registers 8

    iget-object v1, p0, Lcom/google/ads/z;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0}, Lcom/google/ads/z;->a()Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "Mediation thread is not done executing previous mediation  request. Ignoring new mediation request"

    invoke-static {v0}, Lcom/google/ads/util/d;->c(Ljava/lang/String;)V

    monitor-exit v1

    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Lcom/google/ads/z;->a:Lcom/google/ads/a/q;

    invoke-virtual {p1}, Lcom/google/ads/w;->j()Lcom/google/ads/a/w;

    move-result-object v2

    if-eqz v2, :cond_31

    invoke-virtual {v0}, Lcom/google/ads/a/q;->f()Lcom/google/ads/am;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/ads/am;->b()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-virtual {p1}, Lcom/google/ads/w;->j()Lcom/google/ads/a/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/a/w;->a()Z

    move-result v0

    if-nez v0, :cond_31

    const-string v0, "InterstitialAd received a mediation response corresponding to a non-interstitial ad. Make sure you specify \'interstitial\' as the ad-type in the mediation UI."

    invoke-static {v0}, Lcom/google/ads/util/d;->e(Ljava/lang/String;)V

    :cond_31
    :goto_31
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/google/ads/aa;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/ads/aa;-><init>(Lcom/google/ads/z;Lcom/google/ads/w;Lcom/google/ads/d;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/google/ads/z;->d:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/google/ads/z;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    monitor-exit v1
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_44

    goto :goto_f

    :catchall_44
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_47
    :try_start_47
    invoke-virtual {v0}, Lcom/google/ads/a/q;->f()Lcom/google/ads/am;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/am;->i:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/a/w;

    invoke-virtual {v0}, Lcom/google/ads/a/w;->b()Lcom/google/ads/g;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/ads/w;->j()Lcom/google/ads/a/w;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/ads/a/w;->a()Z

    move-result v2

    if-eqz v2, :cond_7a

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AdView received a mediation response corresponding to an interstitial ad. Make sure you specify the banner ad size corresponding to the AdSize you used in your AdView  ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") in the ad-type field in the mediation UI."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->e(Ljava/lang/String;)V

    goto :goto_31

    :cond_7a
    invoke-virtual {p1}, Lcom/google/ads/w;->j()Lcom/google/ads/a/w;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/ads/a/w;->b()Lcom/google/ads/g;

    move-result-object v2

    if-eq v2, v0, :cond_31

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Mediation server returned ad size: \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', while the AdView was created with ad size: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'. Using the ad-size passed to the AdView on creation."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->e(Ljava/lang/String;)V
    :try_end_a6
    .catchall {:try_start_47 .. :try_end_a6} :catchall_44

    goto :goto_31
.end method

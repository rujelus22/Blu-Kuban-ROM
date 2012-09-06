.class public Lcom/google/ads/u;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/ads/internal/m;

.field private b:Lcom/google/ads/aa;

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

    iput-object v1, p0, Lcom/google/ads/u;->b:Lcom/google/ads/aa;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/ads/u;->c:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/ads/u;->d:Ljava/lang/Thread;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/ads/u;->e:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/u;->f:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/ads/u;->g:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/ads/u;->a:Lcom/google/ads/internal/m;

    return-void
.end method

.method public constructor <init>(Lcom/google/ads/internal/m;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/ads/u;->b:Lcom/google/ads/aa;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/ads/u;->c:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/ads/u;->d:Ljava/lang/Thread;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/ads/u;->e:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/u;->f:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/ads/u;->g:Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/ads/util/a;->a(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/ads/u;->a:Lcom/google/ads/internal/m;

    return-void
.end method

.method static synthetic a(Lcom/google/ads/u;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/ads/u;->e:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/google/ads/u;Ljava/lang/Thread;)Ljava/lang/Thread;
    .registers 2

    iput-object p1, p0, Lcom/google/ads/u;->d:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic a(Lcom/google/ads/u;Lcom/google/ads/s;Lcom/google/ads/AdRequest;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/ads/u;->b(Lcom/google/ads/s;Lcom/google/ads/AdRequest;)V

    return-void
.end method

.method public static a(Lcom/google/ads/s;Lcom/google/ads/internal/m;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/ads/s;->j()Lcom/google/ads/internal/s;

    move-result-object v0

    if-nez v0, :cond_a

    move v0, v1

    :goto_9
    return v0

    :cond_a
    invoke-virtual {p1}, Lcom/google/ads/internal/m;->f()Lcom/google/ads/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/ah;->b()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {p0}, Lcom/google/ads/s;->j()Lcom/google/ads/internal/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/internal/s;->a()Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "InterstitialAd received a mediation response corresponding to a non-interstitial ad. Make sure you specify \'interstitial\' as the ad-type in the mediation UI."

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V

    move v0, v2

    goto :goto_9

    :cond_25
    move v0, v1

    goto :goto_9

    :cond_27
    invoke-virtual {p1}, Lcom/google/ads/internal/m;->f()Lcom/google/ads/ah;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/ah;->i:Lcom/google/ads/util/z;

    invoke-virtual {v0}, Lcom/google/ads/util/z;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/s;

    invoke-virtual {v0}, Lcom/google/ads/internal/s;->b()Lcom/google/ads/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/ads/s;->j()Lcom/google/ads/internal/s;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/ads/internal/s;->a()Z

    move-result v3

    if-eqz v3, :cond_5f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AdView received a mediation response corresponding to an interstitial ad. Make sure you specify the banner ad size corresponding to the AdSize you used in your AdView  ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") in the ad-type field in the mediation UI."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V

    move v0, v2

    goto :goto_9

    :cond_5f
    invoke-virtual {p0}, Lcom/google/ads/s;->j()Lcom/google/ads/internal/s;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/ads/internal/s;->b()Lcom/google/ads/d;

    move-result-object v3

    if-eq v3, v0, :cond_92

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mediation server returned ad size: \'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\', while the AdView was created with ad size: \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'. Using the ad-size passed to the AdView on creation."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V

    move v0, v2

    goto/16 :goto_9

    :cond_92
    move v0, v1

    goto/16 :goto_9
.end method

.method static synthetic a(Lcom/google/ads/u;Lcom/google/ads/aa;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/ads/u;->b(Lcom/google/ads/aa;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;Landroid/app/Activity;Lcom/google/ads/AdRequest;Lcom/google/ads/y;Ljava/util/HashMap;J)Z
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            "Lcom/google/ads/AdRequest;",
            "Lcom/google/ads/y;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)Z"
        }
    .end annotation

    new-instance v0, Lcom/google/ads/aa;

    iget-object v1, p0, Lcom/google/ads/u;->a:Lcom/google/ads/internal/m;

    invoke-virtual {v1}, Lcom/google/ads/internal/m;->f()Lcom/google/ads/ah;

    move-result-object v1

    iget-object v1, v1, Lcom/google/ads/ah;->i:Lcom/google/ads/util/z;

    invoke-virtual {v1}, Lcom/google/ads/util/z;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/internal/s;

    move-object v1, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/ads/aa;-><init>(Lcom/google/ads/u;Lcom/google/ads/internal/s;Lcom/google/ads/y;Ljava/lang/String;Lcom/google/ads/AdRequest;Ljava/util/HashMap;)V

    monitor-enter v0

    :try_start_19
    invoke-virtual {v0, p2}, Lcom/google/ads/aa;->a(Landroid/app/Activity;)V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_81

    :goto_1c
    :try_start_1c
    invoke-virtual {v0}, Lcom/google/ads/aa;->b()Z

    move-result v1

    if-nez v1, :cond_4e

    const-wide/16 v1, 0x0

    cmp-long v1, p6, v1

    if-lez v1, :cond_4e

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, p6, p7}, Ljava/lang/Object;->wait(J)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_32
    .catchall {:try_start_1c .. :try_end_32} :catchall_81
    .catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_32} :catch_37

    move-result-wide v3

    sub-long v1, v3, v1

    sub-long/2addr p6, v1

    goto :goto_1c

    :catch_37
    move-exception v1

    :try_start_38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interrupted while waiting for ad network to load ad using adapter class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    :cond_4e
    invoke-virtual {v0}, Lcom/google/ads/aa;->b()Z

    move-result v1

    if-eqz v1, :cond_7a

    invoke-virtual {v0}, Lcom/google/ads/aa;->c()Z

    move-result v1

    if-eqz v1, :cond_7a

    iget-object v1, p0, Lcom/google/ads/u;->a:Lcom/google/ads/internal/m;

    invoke-virtual {v1}, Lcom/google/ads/internal/m;->f()Lcom/google/ads/ah;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/ah;->b()Z

    move-result v1

    if-eqz v1, :cond_75

    const/4 v1, 0x0

    :goto_67
    iget-object v2, p0, Lcom/google/ads/u;->a:Lcom/google/ads/internal/m;

    new-instance v3, Lcom/google/ads/x;

    invoke-direct {v3, p0, v0, v1, p4}, Lcom/google/ads/x;-><init>(Lcom/google/ads/u;Lcom/google/ads/aa;Landroid/view/View;Lcom/google/ads/y;)V

    invoke-virtual {v2, v3}, Lcom/google/ads/internal/m;->a(Ljava/lang/Runnable;)V

    const/4 v1, 0x1

    monitor-exit v0

    move v0, v1

    :goto_74
    return v0

    :cond_75
    invoke-virtual {v0}, Lcom/google/ads/aa;->d()Landroid/view/View;

    move-result-object v1

    goto :goto_67

    :cond_7a
    invoke-virtual {v0}, Lcom/google/ads/aa;->a()V

    const/4 v1, 0x0

    monitor-exit v0

    move v0, v1

    goto :goto_74

    :catchall_81
    move-exception v1

    monitor-exit v0
    :try_end_83
    .catchall {:try_start_38 .. :try_end_83} :catchall_81

    throw v1
.end method

.method static synthetic b(Lcom/google/ads/u;)Lcom/google/ads/internal/m;
    .registers 2

    iget-object v0, p0, Lcom/google/ads/u;->a:Lcom/google/ads/internal/m;

    return-object v0
.end method

.method private b(Lcom/google/ads/s;Lcom/google/ads/AdRequest;)V
    .registers 15

    iget-object v1, p0, Lcom/google/ads/u;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v2, p0, Lcom/google/ads/u;->d:Ljava/lang/Thread;

    invoke-static {v0, v2}, Lcom/google/ads/util/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_92

    invoke-virtual {p1}, Lcom/google/ads/s;->f()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/ads/s;->a()Z

    move-result v1

    if-eqz v1, :cond_95

    invoke-virtual {p1}, Lcom/google/ads/s;->b()I

    move-result v1

    int-to-long v7, v1

    :goto_1c
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_20
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ae

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/ads/f;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Looking to fetch ads from network: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/google/ads/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/ads/f;->c()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v2}, Lcom/google/ads/f;->d()Ljava/util/HashMap;

    move-result-object v11

    new-instance v0, Lcom/google/ads/y;

    invoke-virtual {v2}, Lcom/google/ads/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/google/ads/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/ads/s;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/ads/s;->g()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/ads/s;->h()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/ads/s;->i()Ljava/util/List;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/google/ads/y;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_70
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/ads/u;->a:Lcom/google/ads/internal/m;

    invoke-virtual {v1}, Lcom/google/ads/internal/m;->f()Lcom/google/ads/ah;

    move-result-object v1

    iget-object v1, v1, Lcom/google/ads/ah;->c:Lcom/google/ads/util/ab;

    invoke-virtual {v1}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    if-nez v3, :cond_98

    const-string v0, "Activity is null while mediating.  Terminating mediation thread."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    :cond_91
    :goto_91
    return-void

    :catchall_92
    move-exception v0

    :try_start_93
    monitor-exit v1
    :try_end_94
    .catchall {:try_start_93 .. :try_end_94} :catchall_92

    throw v0

    :cond_95
    const-wide/16 v7, 0x2710

    goto :goto_1c

    :cond_98
    move-object v1, p0

    move-object v4, p2

    move-object v5, v0

    move-object v6, v11

    invoke-direct/range {v1 .. v8}, Lcom/google/ads/u;->a(Ljava/lang/String;Landroid/app/Activity;Lcom/google/ads/AdRequest;Lcom/google/ads/y;Ljava/util/HashMap;J)Z

    move-result v1

    if-nez v1, :cond_91

    invoke-direct {p0}, Lcom/google/ads/u;->b()Z

    move-result v1

    if-eqz v1, :cond_70

    const-string v0, "GWController.destroy() called. Terminating mediation thread."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    goto :goto_91

    :cond_ae
    iget-object v0, p0, Lcom/google/ads/u;->a:Lcom/google/ads/internal/m;

    new-instance v1, Lcom/google/ads/w;

    invoke-direct {v1, p0, p1}, Lcom/google/ads/w;-><init>(Lcom/google/ads/u;Lcom/google/ads/s;)V

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/m;->a(Ljava/lang/Runnable;)V

    goto :goto_91
.end method

.method private b()Z
    .registers 3

    iget-object v1, p0, Lcom/google/ads/u;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/ads/u;->f:Z

    monitor-exit v1

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method private b(Lcom/google/ads/aa;)Z
    .registers 4

    iget-object v1, p0, Lcom/google/ads/u;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0}, Lcom/google/ads/u;->b()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Lcom/google/ads/aa;->a()V

    const/4 v0, 0x1

    monitor-exit v1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_e

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method


# virtual methods
.method public a(Lcom/google/ads/aa;)V
    .registers 4

    iget-object v1, p0, Lcom/google/ads/u;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/ads/u;->b:Lcom/google/ads/aa;

    if-eq v0, p1, :cond_12

    iget-object v0, p0, Lcom/google/ads/u;->b:Lcom/google/ads/aa;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/ads/u;->b:Lcom/google/ads/aa;

    invoke-virtual {v0}, Lcom/google/ads/aa;->a()V

    :cond_10
    iput-object p1, p0, Lcom/google/ads/u;->b:Lcom/google/ads/aa;

    :cond_12
    monitor-exit v1

    return-void

    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public a(Lcom/google/ads/s;Lcom/google/ads/AdRequest;)V
    .registers 6

    iget-object v1, p0, Lcom/google/ads/u;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Lcom/google/ads/u;->a()Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "Mediation thread is not done executing previous mediation  request. Ignoring new mediation request"

    invoke-static {v0}, Lcom/google/ads/util/b;->c(Ljava/lang/String;)V

    monitor-exit v1

    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Lcom/google/ads/u;->a:Lcom/google/ads/internal/m;

    invoke-static {p1, v0}, Lcom/google/ads/u;->a(Lcom/google/ads/s;Lcom/google/ads/internal/m;)Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/google/ads/v;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/ads/v;-><init>(Lcom/google/ads/u;Lcom/google/ads/s;Lcom/google/ads/AdRequest;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/google/ads/u;->d:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/google/ads/u;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    monitor-exit v1

    goto :goto_f

    :catchall_28
    move-exception v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method public a()Z
    .registers 3

    iget-object v1, p0, Lcom/google/ads/u;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/ads/u;->d:Ljava/lang/Thread;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_8
    monitor-exit v1

    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_8

    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v0
.end method

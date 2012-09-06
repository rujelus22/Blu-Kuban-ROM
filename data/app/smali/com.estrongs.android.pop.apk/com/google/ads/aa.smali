.class public Lcom/google/ads/aa;
.super Ljava/lang/Object;


# instance fields
.field final a:Lcom/google/ads/internal/s;

.field private final b:Lcom/google/ads/y;

.field private c:Z

.field private d:Z

.field private final e:Lcom/google/ads/u;

.field private f:Lcom/google/ads/mediation/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/mediation/b",
            "<**>;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Z

.field private i:Landroid/view/View;

.field private final j:Landroid/os/Handler;

.field private final k:Ljava/lang/String;

.field private final l:Lcom/google/ads/AdRequest;

.field private final m:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/ads/u;Lcom/google/ads/internal/s;Lcom/google/ads/y;Ljava/lang/String;Lcom/google/ads/AdRequest;Ljava/util/HashMap;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/u;",
            "Lcom/google/ads/internal/s;",
            "Lcom/google/ads/y;",
            "Ljava/lang/String;",
            "Lcom/google/ads/AdRequest;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/ads/util/a;->a(Z)V

    iput-object p1, p0, Lcom/google/ads/aa;->e:Lcom/google/ads/u;

    iput-object p2, p0, Lcom/google/ads/aa;->a:Lcom/google/ads/internal/s;

    iput-object p3, p0, Lcom/google/ads/aa;->b:Lcom/google/ads/y;

    iput-object p4, p0, Lcom/google/ads/aa;->k:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/ads/aa;->l:Lcom/google/ads/AdRequest;

    iput-object p6, p0, Lcom/google/ads/aa;->m:Ljava/util/HashMap;

    iput-boolean v1, p0, Lcom/google/ads/aa;->c:Z

    iput-boolean v1, p0, Lcom/google/ads/aa;->d:Z

    iput-object v2, p0, Lcom/google/ads/aa;->f:Lcom/google/ads/mediation/b;

    iput-boolean v1, p0, Lcom/google/ads/aa;->g:Z

    iput-boolean v1, p0, Lcom/google/ads/aa;->h:Z

    iput-object v2, p0, Lcom/google/ads/aa;->i:Landroid/view/View;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/ads/aa;->j:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/google/ads/aa;)Lcom/google/ads/mediation/b;
    .registers 2

    iget-object v0, p0, Lcom/google/ads/aa;->f:Lcom/google/ads/mediation/b;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/ads/aa;->g:Z

    const-string v1, "destroy() called but startLoadAdTask has not been called."

    invoke-static {v0, v1}, Lcom/google/ads/util/a;->a(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/aa;->j:Landroid/os/Handler;

    new-instance v1, Lcom/google/ads/ab;

    invoke-direct {v1, p0}, Lcom/google/ads/ab;-><init>(Lcom/google/ads/aa;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    monitor-exit p0

    return-void

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Landroid/app/Activity;)V
    .registers 9

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/ads/aa;->g:Z

    const-string v1, "startLoadAdTask has already been called."

    invoke-static {v0, v1}, Lcom/google/ads/util/a;->b(ZLjava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/aa;->g:Z

    iget-object v6, p0, Lcom/google/ads/aa;->j:Landroid/os/Handler;

    new-instance v0, Lcom/google/ads/i;

    iget-object v3, p0, Lcom/google/ads/aa;->k:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/ads/aa;->l:Lcom/google/ads/AdRequest;

    iget-object v5, p0, Lcom/google/ads/aa;->m:Ljava/util/HashMap;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/i;-><init>(Lcom/google/ads/aa;Landroid/app/Activity;Ljava/lang/String;Lcom/google/ads/AdRequest;Ljava/util/HashMap;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    monitor-exit p0

    return-void

    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Lcom/google/ads/mediation/b;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/b",
            "<**>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/ads/aa;->f:Lcom/google/ads/mediation/b;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Z)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/google/ads/aa;->d:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/aa;->c:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/ads/aa;->c:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()Z
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/ads/aa;->b()Z

    move-result v0

    const-string v1, "isLoadAdTaskSuccessful() called when isLoadAdTaskDone() is false."

    invoke-static {v0, v1}, Lcom/google/ads/util/a;->a(ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/ads/aa;->d:Z
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return v0

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()Landroid/view/View;
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/ads/aa;->b()Z

    move-result v0

    const-string v1, "getAdView() called when isLoadAdTaskDone() is false."

    invoke-static {v0, v1}, Lcom/google/ads/util/a;->a(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/aa;->i:Landroid/view/View;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-object v0

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/ads/aa;->f:Lcom/google/ads/mediation/b;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/ads/aa;->f:Lcom/google/ads/mediation/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_14

    move-result-object v0

    :goto_f
    monitor-exit p0

    return-object v0

    :cond_11
    :try_start_11
    const-string v0, "\"adapter was not created.\""
    :try_end_13
    .catchall {:try_start_11 .. :try_end_13} :catchall_14

    goto :goto_f

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized f()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/google/ads/aa;->h:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized g()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/ads/aa;->h:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.class public Lcom/google/googlenav/prefetch/android/l;
.super Ljava/lang/Object;

# interfaces
.implements LaR/g;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/google/googlenav/prefetch/android/PrefetcherService;

.field private final c:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/prefetch/android/l;->b:Lcom/google/googlenav/prefetch/android/PrefetcherService;

    new-instance v0, Lcom/google/googlenav/prefetch/android/m;

    invoke-direct {v0, p0}, Lcom/google/googlenav/prefetch/android/m;-><init>(Lcom/google/googlenav/prefetch/android/l;)V

    iput-object v0, p0, Lcom/google/googlenav/prefetch/android/l;->c:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/google/googlenav/prefetch/android/l;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/prefetch/android/l;Lcom/google/googlenav/prefetch/android/PrefetcherService;)Lcom/google/googlenav/prefetch/android/PrefetcherService;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/prefetch/android/l;->b:Lcom/google/googlenav/prefetch/android/PrefetcherService;

    return-object p1
.end method


# virtual methods
.method public declared-synchronized a()V
    .registers 5

    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/googlenav/prefetch/android/l;->a:Landroid/content/Context;

    const-class v2, Lcom/google/googlenav/prefetch/android/PrefetcherService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/google/googlenav/prefetch/android/l;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/googlenav/prefetch/android/l;->c:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    monitor-exit p0

    return-void

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(LaJ/B;LaR/f;)V
    .registers 6

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/l;->b:Lcom/google/googlenav/prefetch/android/PrefetcherService;

    if-eqz v0, :cond_16

    invoke-static {p1}, Lcom/google/googlenav/prefetch/android/p;->a(LaJ/B;)Lt/af;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/prefetch/android/l;->b:Lcom/google/googlenav/prefetch/android/PrefetcherService;

    new-instance v2, Lcom/google/googlenav/prefetch/android/w;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/googlenav/prefetch/android/w;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v2, p2}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->a(Lcom/google/googlenav/prefetch/android/w;LaR/f;)V

    :cond_16
    return-void
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/l;->b:Lcom/google/googlenav/prefetch/android/PrefetcherService;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/l;->b:Lcom/google/googlenav/prefetch/android/PrefetcherService;

    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->a()V

    :cond_9
    return-void
.end method

.method public c()LaR/h;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/l;->b:Lcom/google/googlenav/prefetch/android/PrefetcherService;

    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->d()LaR/h;

    move-result-object v0

    return-object v0
.end method

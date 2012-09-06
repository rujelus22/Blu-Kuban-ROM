.class public Lcom/google/googlenav/prefetch/android/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaD/i;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/Class;

.field private volatile c:Lcom/google/googlenav/prefetch/android/BasePrefetcherService;

.field private d:Lcom/google/googlenav/prefetch/android/y;

.field private e:LaD/h;

.field private f:Z

.field private final g:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/googlenav/prefetch/android/BasePrefetcherService;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object v1, p0, Lcom/google/googlenav/prefetch/android/s;->c:Lcom/google/googlenav/prefetch/android/BasePrefetcherService;

    .line 146
    new-instance v0, Lcom/google/googlenav/prefetch/android/t;

    invoke-direct {v0, p0}, Lcom/google/googlenav/prefetch/android/t;-><init>(Lcom/google/googlenav/prefetch/android/s;)V

    iput-object v0, p0, Lcom/google/googlenav/prefetch/android/s;->g:Landroid/content/ServiceConnection;

    .line 61
    iput-object p2, p0, Lcom/google/googlenav/prefetch/android/s;->c:Lcom/google/googlenav/prefetch/android/BasePrefetcherService;

    .line 62
    iput-object p1, p0, Lcom/google/googlenav/prefetch/android/s;->a:Landroid/content/Context;

    .line 63
    iput-object v1, p0, Lcom/google/googlenav/prefetch/android/s;->b:Ljava/lang/Class;

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/prefetch/android/s;->c:Lcom/google/googlenav/prefetch/android/BasePrefetcherService;

    .line 146
    new-instance v0, Lcom/google/googlenav/prefetch/android/t;

    invoke-direct {v0, p0}, Lcom/google/googlenav/prefetch/android/t;-><init>(Lcom/google/googlenav/prefetch/android/s;)V

    iput-object v0, p0, Lcom/google/googlenav/prefetch/android/s;->g:Landroid/content/ServiceConnection;

    .line 48
    iput-object p2, p0, Lcom/google/googlenav/prefetch/android/s;->b:Ljava/lang/Class;

    .line 49
    iput-object p1, p0, Lcom/google/googlenav/prefetch/android/s;->a:Landroid/content/Context;

    .line 50
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/prefetch/android/s;)LaD/h;
    .registers 2
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/s;->e:LaD/h;

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/prefetch/android/s;LaD/h;)LaD/h;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/google/googlenav/prefetch/android/s;->e:LaD/h;

    return-object p1
.end method

.method static synthetic a(Lcom/google/googlenav/prefetch/android/s;Lcom/google/googlenav/prefetch/android/BasePrefetcherService;)Lcom/google/googlenav/prefetch/android/BasePrefetcherService;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/google/googlenav/prefetch/android/s;->c:Lcom/google/googlenav/prefetch/android/BasePrefetcherService;

    return-object p1
.end method

.method static synthetic a(Lcom/google/googlenav/prefetch/android/s;Lcom/google/googlenav/prefetch/android/y;)Lcom/google/googlenav/prefetch/android/y;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/google/googlenav/prefetch/android/s;->d:Lcom/google/googlenav/prefetch/android/y;

    return-object p1
.end method

.method static synthetic b(Lcom/google/googlenav/prefetch/android/s;)Lcom/google/googlenav/prefetch/android/y;
    .registers 2
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/s;->d:Lcom/google/googlenav/prefetch/android/y;

    return-object v0
.end method

.method static synthetic c(Lcom/google/googlenav/prefetch/android/s;)Z
    .registers 2
    .parameter

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/google/googlenav/prefetch/android/s;->f:Z

    return v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .registers 5

    .prologue
    .line 68
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/s;->b:Ljava/lang/Class;

    if-eqz v0, :cond_16

    .line 70
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/googlenav/prefetch/android/s;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/googlenav/prefetch/android/s;->b:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 72
    iget-object v1, p0, Lcom/google/googlenav/prefetch/android/s;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/googlenav/prefetch/android/s;->g:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 74
    :cond_16
    monitor-exit p0

    return-void

    .line 68
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(LaD/c;)V
    .registers 3
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/s;->c:Lcom/google/googlenav/prefetch/android/BasePrefetcherService;

    if-eqz v0, :cond_9

    .line 131
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/s;->c:Lcom/google/googlenav/prefetch/android/BasePrefetcherService;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->a(LaD/c;)V

    .line 133
    :cond_9
    return-void
.end method

.method public declared-synchronized a(Lcom/google/googlenav/prefetch/android/y;LaD/h;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 104
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/googlenav/prefetch/android/s;->f()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 105
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/s;->c:Lcom/google/googlenav/prefetch/android/BasePrefetcherService;

    invoke-virtual {v0, p1, p2}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->a(Lcom/google/googlenav/prefetch/android/y;LaD/h;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_16

    .line 111
    :goto_c
    monitor-exit p0

    return-void

    .line 107
    :cond_e
    :try_start_e
    iput-object p2, p0, Lcom/google/googlenav/prefetch/android/s;->e:LaD/h;

    .line 108
    iput-object p1, p0, Lcom/google/googlenav/prefetch/android/s;->d:Lcom/google/googlenav/prefetch/android/y;

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/prefetch/android/s;->f:Z
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_16

    goto :goto_c

    .line 104
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()V
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/s;->c:Lcom/google/googlenav/prefetch/android/BasePrefetcherService;

    if-eqz v0, :cond_9

    .line 84
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/s;->c:Lcom/google/googlenav/prefetch/android/BasePrefetcherService;

    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->f()V

    .line 86
    :cond_9
    return-void
.end method

.method public declared-synchronized b(Lcom/google/googlenav/prefetch/android/y;LaD/h;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 119
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/googlenav/prefetch/android/s;->f()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 120
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/s;->c:Lcom/google/googlenav/prefetch/android/BasePrefetcherService;

    invoke-virtual {v0, p1, p2}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->b(Lcom/google/googlenav/prefetch/android/y;LaD/h;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_16

    .line 126
    :goto_c
    monitor-exit p0

    return-void

    .line 122
    :cond_e
    :try_start_e
    iput-object p2, p0, Lcom/google/googlenav/prefetch/android/s;->e:LaD/h;

    .line 123
    iput-object p1, p0, Lcom/google/googlenav/prefetch/android/s;->d:Lcom/google/googlenav/prefetch/android/y;

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/prefetch/android/s;->f:Z
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_16

    goto :goto_c

    .line 119
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()LaD/j;
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/s;->c:Lcom/google/googlenav/prefetch/android/BasePrefetcherService;

    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->g()LaD/j;

    move-result-object v0

    return-object v0
.end method

.method public d()Landroid/content/Context;
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/s;->a:Landroid/content/Context;

    return-object v0
.end method

.method public e()V
    .registers 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/s;->c:Lcom/google/googlenav/prefetch/android/BasePrefetcherService;

    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/BasePrefetcherService;->h()V

    .line 177
    return-void
.end method

.method public declared-synchronized f()Z
    .registers 2

    .prologue
    .line 78
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/s;->c:Lcom/google/googlenav/prefetch/android/BasePrefetcherService;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

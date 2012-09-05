.class Lcom/google/android/location/os/real/u;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Li/f;

.field private final c:Lcom/google/android/location/os/real/z;

.field private final d:Lcom/google/android/location/os/real/z;

.field private final e:Lcom/google/android/location/os/real/A;

.field private final f:Lcom/google/android/location/os/real/x;

.field private final g:Lcom/google/android/location/os/real/B;

.field private final h:Ljava/lang/Thread;

.field private final i:Landroid/os/PowerManager$WakeLock;

.field private final j:Li/C;

.field private final k:Ljava/lang/Object;

.field private l:Z

.field private m:Landroid/os/Handler;

.field private n:Lcom/google/android/location/os/real/w;

.field private o:Li/a;

.field private p:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Li/C;Li/f;)V
    .registers 9

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/os/real/u;->k:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/google/android/location/os/real/u;->l:Z

    iput-boolean v1, p0, Lcom/google/android/location/os/real/u;->p:Z

    iput-object p1, p0, Lcom/google/android/location/os/real/u;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/location/os/real/u;->j:Li/C;

    iput-object p3, p0, Lcom/google/android/location/os/real/u;->b:Li/f;

    new-instance v0, Lcom/google/android/location/os/real/z;

    const/16 v1, 0xe

    invoke-direct {v0, p0, v1}, Lcom/google/android/location/os/real/z;-><init>(Lcom/google/android/location/os/real/u;I)V

    iput-object v0, p0, Lcom/google/android/location/os/real/u;->c:Lcom/google/android/location/os/real/z;

    new-instance v0, Lcom/google/android/location/os/real/z;

    const/16 v1, 0x12

    invoke-direct {v0, p0, v1}, Lcom/google/android/location/os/real/z;-><init>(Lcom/google/android/location/os/real/u;I)V

    iput-object v0, p0, Lcom/google/android/location/os/real/u;->d:Lcom/google/android/location/os/real/z;

    new-instance v0, Lcom/google/android/location/os/real/A;

    invoke-direct {v0, p0, v3}, Lcom/google/android/location/os/real/A;-><init>(Lcom/google/android/location/os/real/u;Lcom/google/android/location/os/real/v;)V

    iput-object v0, p0, Lcom/google/android/location/os/real/u;->e:Lcom/google/android/location/os/real/A;

    new-instance v0, Lcom/google/android/location/os/real/B;

    invoke-direct {v0, p0, v3}, Lcom/google/android/location/os/real/B;-><init>(Lcom/google/android/location/os/real/u;Lcom/google/android/location/os/real/v;)V

    iput-object v0, p0, Lcom/google/android/location/os/real/u;->g:Lcom/google/android/location/os/real/B;

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/google/android/location/os/real/u;->g:Lcom/google/android/location/os/real/B;

    const-string v2, "NetworkLocationCallbackRunner"

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/location/os/real/u;->h:Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/location/os/real/x;

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    invoke-direct {v1, v0}, Lcom/google/android/location/os/real/x;-><init>(Landroid/location/LocationManager;)V

    iput-object v1, p0, Lcom/google/android/location/os/real/u;->f:Lcom/google/android/location/os/real/x;

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string v1, "NetworkLocationCallbackRunner"

    invoke-virtual {v0, v4, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/os/real/u;->i:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/google/android/location/os/real/u;->i:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/location/os/real/u;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/location/os/real/u;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/location/os/real/u;Landroid/os/Handler;)Landroid/os/Handler;
    .registers 2

    iput-object p1, p0, Lcom/google/android/location/os/real/u;->m:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/location/os/real/u;Lcom/google/android/location/os/real/w;)Lcom/google/android/location/os/real/w;
    .registers 2

    iput-object p1, p0, Lcom/google/android/location/os/real/u;->n:Lcom/google/android/location/os/real/w;

    return-object p1
.end method

.method private a(I)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/location/os/real/u;->k:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/location/os/real/u;->l:Z

    if-eqz v0, :cond_9

    monitor-exit v1

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/google/android/location/os/real/u;->m:Landroid/os/Handler;

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    monitor-exit v1

    goto :goto_8

    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v0
.end method

.method private a(III)V
    .registers 6

    iget-object v1, p0, Lcom/google/android/location/os/real/u;->k:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/location/os/real/u;->l:Z

    if-eqz v0, :cond_9

    monitor-exit v1

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/google/android/location/os/real/u;->m:Landroid/os/Handler;

    invoke-static {v0, p1, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    monitor-exit v1

    goto :goto_8

    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v0
.end method

.method private a(ILjava/lang/Object;)V
    .registers 5

    iget-object v1, p0, Lcom/google/android/location/os/real/u;->k:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/location/os/real/u;->m:Landroid/os/Handler;

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/google/android/location/os/real/u;->l:Z

    if-eqz v0, :cond_d

    :cond_b
    monitor-exit v1

    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/google/android/location/os/real/u;->m:Landroid/os/Handler;

    invoke-static {v0, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    monitor-exit v1

    goto :goto_c

    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method private a(Landroid/net/ConnectivityManager;Li/a;)V
    .registers 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/google/android/location/os/real/u;->b:Li/f;

    invoke-virtual {v0, v2, v2}, Li/f;->a(ZZ)V

    invoke-interface {p2, v2, v2}, Li/a;->a(ZZ)V

    :cond_10
    :goto_10
    return-void

    :cond_11
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_20

    iget-object v0, p0, Lcom/google/android/location/os/real/u;->b:Li/f;

    invoke-virtual {v0, v2, v3}, Li/f;->a(ZZ)V

    invoke-interface {p2, v2, v3}, Li/a;->a(ZZ)V

    goto :goto_10

    :cond_20
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v3, :cond_10

    iget-object v0, p0, Lcom/google/android/location/os/real/u;->b:Li/f;

    invoke-virtual {v0, v3, v2}, Li/f;->a(ZZ)V

    invoke-interface {p2, v3, v2}, Li/a;->a(ZZ)V

    goto :goto_10
.end method

.method static synthetic a(Lcom/google/android/location/os/real/u;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/location/os/real/u;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/location/os/real/u;III)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/location/os/real/u;->a(III)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/location/os/real/u;ILjava/lang/Object;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/location/os/real/u;->a(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/location/os/real/u;Landroid/net/ConnectivityManager;Li/a;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/location/os/real/u;->a(Landroid/net/ConnectivityManager;Li/a;)V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0}, Lcom/google/android/location/os/real/u;->b(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/google/android/location/os/real/u;)Li/f;
    .registers 2

    iget-object v0, p0, Lcom/google/android/location/os/real/u;->b:Li/f;

    return-object v0
.end method

.method private static b(Landroid/content/Context;)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_f

    :goto_e
    return v0

    :cond_f
    move v0, v1

    goto :goto_e
.end method

.method static synthetic c(Lcom/google/android/location/os/real/u;)Li/a;
    .registers 2

    iget-object v0, p0, Lcom/google/android/location/os/real/u;->o:Li/a;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/location/os/real/u;)Lcom/google/android/location/os/real/A;
    .registers 2

    iget-object v0, p0, Lcom/google/android/location/os/real/u;->e:Lcom/google/android/location/os/real/A;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/location/os/real/u;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/location/os/real/u;->p:Z

    return v0
.end method

.method static synthetic f(Lcom/google/android/location/os/real/u;)Lcom/google/android/location/os/real/z;
    .registers 2

    iget-object v0, p0, Lcom/google/android/location/os/real/u;->d:Lcom/google/android/location/os/real/z;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/location/os/real/u;)Lcom/google/android/location/os/real/z;
    .registers 2

    iget-object v0, p0, Lcom/google/android/location/os/real/u;->c:Lcom/google/android/location/os/real/z;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/location/os/real/u;)Lcom/google/android/location/os/real/x;
    .registers 2

    iget-object v0, p0, Lcom/google/android/location/os/real/u;->f:Lcom/google/android/location/os/real/x;

    return-object v0
.end method

.method static synthetic i(Lcom/google/android/location/os/real/u;)Landroid/os/PowerManager$WakeLock;
    .registers 2

    iget-object v0, p0, Lcom/google/android/location/os/real/u;->i:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic j(Lcom/google/android/location/os/real/u;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/location/os/real/u;->k:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic k(Lcom/google/android/location/os/real/u;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/location/os/real/u;->l:Z

    return v0
.end method

.method static synthetic l(Lcom/google/android/location/os/real/u;)Lcom/google/android/location/os/real/w;
    .registers 2

    iget-object v0, p0, Lcom/google/android/location/os/real/u;->n:Lcom/google/android/location/os/real/w;

    return-object v0
.end method

.method static synthetic m(Lcom/google/android/location/os/real/u;)Li/C;
    .registers 2

    iget-object v0, p0, Lcom/google/android/location/os/real/u;->j:Li/C;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 2

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/os/real/u;->h:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_14

    :goto_5
    iget-object v0, p0, Lcom/google/android/location/os/real/u;->i:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/location/os/real/u;->i:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_5

    :cond_13
    return-void

    :catch_14
    move-exception v0

    goto :goto_0
.end method

.method public a(IZ)V
    .registers 5

    const/4 v1, 0x3

    if-eqz p2, :cond_8

    const/4 v0, 0x1

    :goto_4
    invoke-direct {p0, v1, p1, v0}, Lcom/google/android/location/os/real/u;->a(III)V

    return-void

    :cond_8
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public a(LW/a;)V
    .registers 3

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/google/android/location/os/real/u;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public a(Li/C;)V
    .registers 3

    const/16 v0, 0x1a

    invoke-direct {p0, v0, p1}, Lcom/google/android/location/os/real/u;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public a(Li/a;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/location/os/real/u;->o:Li/a;

    iget-object v0, p0, Lcom/google/android/location/os/real/u;->h:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v1, p0, Lcom/google/android/location/os/real/u;->g:Lcom/google/android/location/os/real/B;

    monitor-enter v1

    :goto_a
    :try_start_a
    iget-object v0, p0, Lcom/google/android/location/os/real/u;->g:Lcom/google/android/location/os/real/B;

    iget-boolean v0, v0, Lcom/google/android/location/os/real/B;->a:Z
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_1a

    if-nez v0, :cond_18

    :try_start_10
    iget-object v0, p0, Lcom/google/android/location/os/real/u;->g:Lcom/google/android/location/os/real/B;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_1a
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_15} :catch_16

    goto :goto_a

    :catch_16
    move-exception v0

    goto :goto_a

    :cond_18
    :try_start_18
    monitor-exit v1

    return-void

    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public a(Z)V
    .registers 7

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/android/location/os/real/u;->k:Ljava/lang/Object;

    monitor-enter v2

    :try_start_5
    iget-boolean v3, p0, Lcom/google/android/location/os/real/u;->l:Z

    if-eqz v3, :cond_b

    monitor-exit v2

    :goto_a
    return-void

    :cond_b
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/android/location/os/real/u;->l:Z

    iget-object v3, p0, Lcom/google/android/location/os/real/u;->n:Lcom/google/android/location/os/real/w;

    if-eqz v3, :cond_19

    iget-object v3, p0, Lcom/google/android/location/os/real/u;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/location/os/real/u;->n:Lcom/google/android/location/os/real/w;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_19
    iget-object v3, p0, Lcom/google/android/location/os/real/u;->m:Landroid/os/Handler;

    const/4 v4, 0x1

    if-eqz p1, :cond_2b

    :goto_1e
    const/4 v1, 0x0

    invoke-static {v3, v4, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    monitor-exit v2

    goto :goto_a

    :catchall_28
    move-exception v0

    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_28

    throw v0

    :cond_2b
    move v0, v1

    goto :goto_1e
.end method

.method public b()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x4

    invoke-direct {p0, v0, v1, v1}, Lcom/google/android/location/os/real/u;->a(III)V

    return-void
.end method

.method public b(LW/a;)V
    .registers 3

    const/16 v0, 0x17

    invoke-direct {p0, v0, p1}, Lcom/google/android/location/os/real/u;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public b(Z)V
    .registers 5

    const/16 v1, 0x16

    if-eqz p1, :cond_a

    const/4 v0, 0x1

    :goto_5
    const/4 v2, -0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/google/android/location/os/real/u;->a(III)V

    return-void

    :cond_a
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public c()Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/google/android/location/os/real/u;->m:Landroid/os/Handler;

    return-object v0
.end method

.method public c(LW/a;)V
    .registers 3

    const/16 v0, 0x19

    invoke-direct {p0, v0, p1}, Lcom/google/android/location/os/real/u;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public c(Z)V
    .registers 9

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/google/android/location/os/real/u;->p:Z

    if-ne v0, p1, :cond_8

    :goto_7
    return-void

    :cond_8
    iput-boolean p1, p0, Lcom/google/android/location/os/real/u;->p:Z

    iget-object v0, p0, Lcom/google/android/location/os/real/u;->a:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    if-eqz p1, :cond_27

    iget-object v1, p0, Lcom/google/android/location/os/real/u;->c:Lcom/google/android/location/os/real/z;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    const-string v1, "gps"

    iget-object v5, p0, Lcom/google/android/location/os/real/u;->d:Lcom/google/android/location/os/real/z;

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    goto :goto_7

    :cond_27
    iget-object v1, p0, Lcom/google/android/location/os/real/u;->d:Lcom/google/android/location/os/real/z;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    const-string v1, "passive"

    iget-object v5, p0, Lcom/google/android/location/os/real/u;->c:Lcom/google/android/location/os/real/z;

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    goto :goto_7
.end method

.method public d(LW/a;)V
    .registers 3

    const/16 v0, 0x14

    invoke-direct {p0, v0, p1}, Lcom/google/android/location/os/real/u;->a(ILjava/lang/Object;)V

    return-void
.end method

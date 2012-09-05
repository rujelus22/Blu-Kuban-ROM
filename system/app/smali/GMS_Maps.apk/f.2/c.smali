.class public Lf/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/location/internal/g;


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Lcom/google/android/location/internal/h;

.field private c:Lf/f;

.field private d:Z

.field private e:I

.field private final f:Lf/f;

.field private final g:Lf/a;

.field private final h:Lcom/google/android/location/internal/b;

.field private final i:Landroid/os/HandlerThread;

.field private final j:Lf/e;

.field private final k:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/location/LocationListener;Landroid/os/Looper;)V
    .registers 11

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lf/c;-><init>(Landroid/content/Context;ILandroid/location/LocationListener;Landroid/os/Looper;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/location/LocationListener;Landroid/os/Looper;I)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lf/c;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf/c;->d:Z

    new-instance v0, Lf/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lf/f;-><init>(Lf/c;Lf/d;)V

    iput-object v0, p0, Lf/c;->f:Lf/f;

    new-instance v0, Lf/d;

    invoke-direct {v0, p0}, Lf/d;-><init>(Lf/c;)V

    iput-object v0, p0, Lf/c;->h:Lcom/google/android/location/internal/b;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NLP Client"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lf/c;->i:Landroid/os/HandlerThread;

    iput p2, p0, Lf/c;->e:I

    iput-object p1, p0, Lf/c;->k:Landroid/content/Context;

    new-instance v0, Lf/a;

    invoke-direct {v0, p3, p4}, Lf/a;-><init>(Landroid/location/LocationListener;Landroid/os/Looper;)V

    iput-object v0, p0, Lf/c;->g:Lf/a;

    iget-object v0, p0, Lf/c;->i:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lf/e;

    iget-object v1, p0, Lf/c;->i:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p5}, Lf/e;-><init>(Lf/c;Landroid/os/Looper;I)V

    iput-object v0, p0, Lf/c;->j:Lf/e;

    iget-object v1, p0, Lf/c;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_45
    invoke-static {p0}, Lcom/google/android/location/internal/NlpPackageUpdateReceiver;->a(Lcom/google/android/location/internal/g;)V

    invoke-direct {p0}, Lf/c;->d()Lcom/google/android/location/internal/h;

    move-result-object v0

    invoke-direct {p0, v0}, Lf/c;->a(Lcom/google/android/location/internal/h;)V

    monitor-exit v1

    return-void

    :catchall_51
    move-exception v0

    monitor-exit v1
    :try_end_53
    .catchall {:try_start_45 .. :try_end_53} :catchall_51

    throw v0
.end method

.method static synthetic a(Lf/c;)Lf/a;
    .registers 2

    iget-object v0, p0, Lf/c;->g:Lf/a;

    return-object v0
.end method

.method private a(Lcom/google/android/location/internal/h;)V
    .registers 6

    iput-object p1, p0, Lf/c;->b:Lcom/google/android/location/internal/h;

    sget-object v0, Lcom/google/android/location/internal/h;->f:Lcom/google/android/location/internal/h;

    if-ne p1, v0, :cond_a

    const/4 v0, 0x0

    iput-object v0, p0, Lf/c;->c:Lf/f;

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lf/c;->f:Lf/f;

    iput-object v0, p0, Lf/c;->c:Lf/f;

    iget-object v0, p0, Lf/c;->k:Landroid/content/Context;

    iget-object v1, p1, Lcom/google/android/location/internal/h;->e:Landroid/content/Intent;

    iget-object v2, p0, Lf/c;->c:Lf/f;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_9
.end method

.method static synthetic a(Lf/c;Lcom/google/android/location/internal/h;)V
    .registers 2

    invoke-direct {p0, p1}, Lf/c;->a(Lcom/google/android/location/internal/h;)V

    return-void
.end method

.method static synthetic b(Lf/c;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lf/c;->a:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Lf/c;)Lf/f;
    .registers 2

    iget-object v0, p0, Lf/c;->c:Lf/f;

    return-object v0
.end method

.method private d()Lcom/google/android/location/internal/h;
    .registers 3

    sget-object v0, Lcom/google/android/location/internal/i;->b:Lcom/google/android/location/internal/i;

    iget-object v1, p0, Lf/c;->k:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/android/location/internal/h;->a(Lcom/google/android/location/internal/i;Landroid/content/Context;)Lcom/google/android/location/internal/h;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/location/internal/h;->a(I)Z

    move-result v1

    if-eqz v1, :cond_10

    :goto_f
    return-object v0

    :cond_10
    sget-object v0, Lcom/google/android/location/internal/h;->f:Lcom/google/android/location/internal/h;

    goto :goto_f
.end method

.method static synthetic d(Lf/c;)Lf/e;
    .registers 2

    iget-object v0, p0, Lf/c;->j:Lf/e;

    return-object v0
.end method

.method static synthetic e(Lf/c;)Z
    .registers 2

    iget-boolean v0, p0, Lf/c;->d:Z

    return v0
.end method

.method static synthetic f(Lf/c;)I
    .registers 2

    iget v0, p0, Lf/c;->e:I

    return v0
.end method

.method static synthetic g(Lf/c;)Lcom/google/android/location/internal/b;
    .registers 2

    iget-object v0, p0, Lf/c;->h:Lcom/google/android/location/internal/b;

    return-object v0
.end method

.method static synthetic h(Lf/c;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lf/c;->k:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic i(Lf/c;)Lcom/google/android/location/internal/h;
    .registers 2

    invoke-direct {p0}, Lf/c;->d()Lcom/google/android/location/internal/h;

    move-result-object v0

    return-object v0
.end method

.method static synthetic j(Lf/c;)Lcom/google/android/location/internal/h;
    .registers 2

    iget-object v0, p0, Lf/c;->b:Lcom/google/android/location/internal/h;

    return-object v0
.end method

.method static synthetic k(Lf/c;)Landroid/os/HandlerThread;
    .registers 2

    iget-object v0, p0, Lf/c;->i:Landroid/os/HandlerThread;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 4

    iget-object v1, p0, Lf/c;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lf/c;->j:Lf/e;

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    monitor-exit v1

    return-void

    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public a(Landroid/location/Location;)[B
    .registers 5

    const/4 v0, 0x0

    const-string v1, "network"

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    :cond_d
    :goto_d
    return-object v0

    :cond_e
    iget-object v2, p0, Lf/c;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_11
    iget-boolean v1, p0, Lf/c;->d:Z

    if-eqz v1, :cond_1a

    monitor-exit v2

    goto :goto_d

    :catchall_17
    move-exception v0

    monitor-exit v2
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_17

    throw v0

    :cond_1a
    :try_start_1a
    iget-object v1, p0, Lf/c;->c:Lf/f;

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lf/c;->c:Lf/f;

    invoke-static {v1}, Lf/f;->a(Lf/f;)Lcom/google/android/location/internal/d;

    move-result-object v1

    :goto_24
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_1a .. :try_end_25} :catchall_17

    if-eqz v1, :cond_d

    :try_start_27
    invoke-interface {v1, p1}, Lcom/google/android/location/internal/d;->a(Landroid/location/Location;)[B
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2a} :catch_2c

    move-result-object v0

    goto :goto_d

    :catch_2c
    move-exception v1

    goto :goto_d

    :cond_2e
    move-object v1, v0

    goto :goto_24
.end method

.method public b()Lcom/google/android/location/internal/h;
    .registers 3

    iget-object v1, p0, Lf/c;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lf/c;->b:Lcom/google/android/location/internal/h;

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public c()V
    .registers 5

    iget-object v1, p0, Lf/c;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lf/c;->d:Z

    if-eqz v0, :cond_9

    monitor-exit v1

    :goto_8
    return-void

    :cond_9
    invoke-static {p0}, Lcom/google/android/location/internal/NlpPackageUpdateReceiver;->b(Lcom/google/android/location/internal/g;)V

    iget-object v0, p0, Lf/c;->c:Lf/f;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lf/c;->j:Lf/e;

    const/4 v2, 0x2

    iget-object v3, p0, Lf/c;->c:Lf/f;

    invoke-static {v0, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_1c
    iget-object v0, p0, Lf/c;->j:Lf/e;

    const/4 v2, 0x4

    invoke-static {v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/c;->d:Z

    monitor-exit v1

    goto :goto_8

    :catchall_2b
    move-exception v0

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v0
.end method

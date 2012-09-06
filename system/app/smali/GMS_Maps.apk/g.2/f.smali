.class Lg/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lg/c;

.field private b:Lcom/google/android/location/internal/INetworkLocationInternal;


# direct methods
.method private constructor <init>(Lg/c;)V
    .registers 2
    .parameter

    .prologue
    .line 364
    iput-object p1, p0, Lg/f;->a:Lg/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lg/c;Lg/d;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 364
    invoke-direct {p0, p1}, Lg/f;-><init>(Lg/c;)V

    return-void
.end method

.method static synthetic a(Lg/f;)Lcom/google/android/location/internal/INetworkLocationInternal;
    .registers 2
    .parameter

    .prologue
    .line 364
    iget-object v0, p0, Lg/f;->b:Lcom/google/android/location/internal/INetworkLocationInternal;

    return-object v0
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 372
    iget-object v0, p0, Lg/f;->a:Lg/c;

    invoke-static {v0}, Lg/c;->b(Lg/c;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 373
    :try_start_7
    iget-object v0, p0, Lg/f;->a:Lg/c;

    invoke-static {v0}, Lg/c;->c(Lg/c;)Lg/f;

    move-result-object v0

    if-eq p0, v0, :cond_1f

    .line 374
    iget-object v0, p0, Lg/f;->a:Lg/c;

    invoke-static {v0}, Lg/c;->d(Lg/c;)Lg/e;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v0, v2, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 375
    monitor-exit v1

    .line 393
    :goto_1e
    return-void

    .line 377
    :cond_1f
    iget-object v0, p0, Lg/f;->a:Lg/c;

    invoke-static {v0}, Lg/c;->e(Lg/c;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 392
    :cond_27
    :goto_27
    monitor-exit v1

    goto :goto_1e

    :catchall_29
    move-exception v0

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_29

    throw v0

    .line 383
    :cond_2c
    :try_start_2c
    iget-object v0, p0, Lg/f;->b:Lcom/google/android/location/internal/INetworkLocationInternal;

    if-eqz v0, :cond_30

    .line 386
    :cond_30
    invoke-static {p2}, Lcom/google/android/location/internal/INetworkLocationInternal$Stub;->a(Landroid/os/IBinder;)Lcom/google/android/location/internal/INetworkLocationInternal;

    move-result-object v0

    iput-object v0, p0, Lg/f;->b:Lcom/google/android/location/internal/INetworkLocationInternal;

    .line 387
    iget-object v0, p0, Lg/f;->a:Lg/c;

    invoke-static {v0}, Lg/c;->d(Lg/c;)Lg/e;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v2, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 388
    iget-object v0, p0, Lg/f;->a:Lg/c;

    invoke-static {v0}, Lg/c;->f(Lg/c;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 389
    iget-object v0, p0, Lg/f;->a:Lg/c;

    invoke-static {v0}, Lg/c;->d(Lg/c;)Lg/e;

    move-result-object v0

    const/4 v2, 0x5

    invoke-static {v0, v2, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_5a
    .catchall {:try_start_2c .. :try_end_5a} :catchall_29

    goto :goto_27
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .parameter

    .prologue
    .line 398
    iget-object v0, p0, Lg/f;->a:Lg/c;

    invoke-static {v0}, Lg/c;->b(Lg/c;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 399
    const/4 v0, 0x0

    :try_start_8
    iput-object v0, p0, Lg/f;->b:Lcom/google/android/location/internal/INetworkLocationInternal;

    .line 400
    monitor-exit v1

    .line 401
    return-void

    .line 400
    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_c

    throw v0
.end method

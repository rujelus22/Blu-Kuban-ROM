.class Lf/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lf/c;

.field private b:Lcom/google/android/location/internal/d;


# direct methods
.method private constructor <init>(Lf/c;)V
    .registers 2

    iput-object p1, p0, Lf/f;->a:Lf/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lf/c;Lf/d;)V
    .registers 3

    invoke-direct {p0, p1}, Lf/f;-><init>(Lf/c;)V

    return-void
.end method

.method static synthetic a(Lf/f;)Lcom/google/android/location/internal/d;
    .registers 2

    iget-object v0, p0, Lf/f;->b:Lcom/google/android/location/internal/d;

    return-object v0
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    iget-object v0, p0, Lf/f;->a:Lf/c;

    invoke-static {v0}, Lf/c;->b(Lf/c;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lf/f;->a:Lf/c;

    invoke-static {v0}, Lf/c;->c(Lf/c;)Lf/f;

    move-result-object v0

    if-eq p0, v0, :cond_1f

    iget-object v0, p0, Lf/f;->a:Lf/c;

    invoke-static {v0}, Lf/c;->d(Lf/c;)Lf/e;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v0, v2, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    monitor-exit v1

    :goto_1e
    return-void

    :cond_1f
    iget-object v0, p0, Lf/f;->a:Lf/c;

    invoke-static {v0}, Lf/c;->e(Lf/c;)Z

    move-result v0

    if-eqz v0, :cond_2c

    :goto_27
    monitor-exit v1

    goto :goto_1e

    :catchall_29
    move-exception v0

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_29

    throw v0

    :cond_2c
    :try_start_2c
    iget-object v0, p0, Lf/f;->b:Lcom/google/android/location/internal/d;

    if-eqz v0, :cond_30

    :cond_30
    invoke-static {p2}, Lcom/google/android/location/internal/e;->a(Landroid/os/IBinder;)Lcom/google/android/location/internal/d;

    move-result-object v0

    iput-object v0, p0, Lf/f;->b:Lcom/google/android/location/internal/d;

    iget-object v0, p0, Lf/f;->a:Lf/c;

    invoke-static {v0}, Lf/c;->d(Lf/c;)Lf/e;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v2, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_44
    .catchall {:try_start_2c .. :try_end_44} :catchall_29

    goto :goto_27
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    iget-object v0, p0, Lf/f;->a:Lf/c;

    invoke-static {v0}, Lf/c;->b(Lf/c;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_8
    iput-object v0, p0, Lf/f;->b:Lcom/google/android/location/internal/d;

    monitor-exit v1

    return-void

    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_c

    throw v0
.end method

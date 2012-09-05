.class Lcom/google/android/maps/driveabout/vector/P;
.super Lz/d;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/vector/O;

.field private b:Z

.field private c:I

.field private d:Z

.field private e:Z

.field private f:J


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/O;)V
    .registers 4

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/P;->a:Lcom/google/android/maps/driveabout/vector/O;

    const-string v0, "RenderDrive"

    invoke-direct {p0, v0}, Lz/d;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/P;->b:Z

    const/16 v0, 0x14

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/P;->c:I

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/P;->d:Z

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/P;->e:Z

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/P;->f:J

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/vector/P;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/P;->e:Z

    return v0
.end method


# virtual methods
.method public a()V
    .registers 5

    :goto_0
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/P;->b:Z

    if-eqz v0, :cond_36

    :cond_4
    const/4 v0, 0x0

    :try_start_5
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/P;->d:Z

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/P;->c:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/P;->sleep(J)V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_d} :catch_37

    :goto_d
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/P;->d:Z

    if-nez v0, :cond_4

    monitor-enter p0

    :try_start_12
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/P;->e:Z

    if-nez v0, :cond_20

    iget-wide v0, p0, Lcom/google/android/maps/driveabout/vector/P;->f:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_31

    :cond_20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/P;->e:Z

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/P;->f:J

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/P;->a:Lcom/google/android/maps/driveabout/vector/O;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/O;->a:Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->e()V

    :cond_31
    monitor-exit p0

    goto :goto_0

    :catchall_33
    move-exception v0

    monitor-exit p0
    :try_end_35
    .catchall {:try_start_12 .. :try_end_35} :catchall_33

    throw v0

    :cond_36
    return-void

    :catch_37
    move-exception v0

    goto :goto_d
.end method

.method public declared-synchronized a(I)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/P;->c:I

    if-eq v0, p1, :cond_11

    const/16 v0, 0xf

    if-le p1, v0, :cond_11

    iput p1, p0, Lcom/google/android/maps/driveabout/vector/P;->c:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/P;->d:Z

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/P;->interrupt()V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    :cond_11
    monitor-exit p0

    return-void

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(J)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iput-wide p1, p0, Lcom/google/android/maps/driveabout/vector/P;->f:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/P;->a:Lcom/google/android/maps/driveabout/vector/O;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/O;->a:Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->e()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-void

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/P;->b:Z

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/P;->interrupt()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/P;->e:Z

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/P;->interrupt()V

    return-void
.end method

.method public declared-synchronized e()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/P;->e:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f()J
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/vector/P;->f:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

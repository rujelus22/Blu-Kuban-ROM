.class public abstract Lat/b;
.super Lat/a;


# instance fields
.field private a:Ljava/util/concurrent/CountDownLatch;

.field private b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lat/a;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 2

    iget-object v0, p0, Lat/b;->a:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_11

    monitor-enter p0

    :try_start_5
    invoke-virtual {p0}, Lat/b;->k()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lat/b;->b:Ljava/lang/Object;

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_12

    iget-object v0, p0, Lat/b;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_11
    return-void

    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method

.method protected abstract k()Ljava/lang/Object;
.end method

.method protected m()I
    .registers 2

    const/16 v0, 0xa

    return v0
.end method

.method public n()Ljava/lang/Object;
    .registers 5

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lat/b;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lat/h;->c(Lat/g;)V

    :try_start_f
    iget-object v0, p0, Lat/b;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Lat/b;->m()I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_1b} :catch_20

    monitor-enter p0

    :try_start_1c
    iget-object v0, p0, Lat/b;->b:Ljava/lang/Object;

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_24

    :goto_1f
    return-object v0

    :catch_20
    move-exception v0

    iget-object v0, p0, Lat/b;->b:Ljava/lang/Object;

    goto :goto_1f

    :catchall_24
    move-exception v0

    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v0
.end method

.class Lcom/google/googlenav/intersectionexplorer/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Ljava/lang/Object;

.field b:Landroid/os/Handler;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/intersectionexplorer/p;->a:Ljava/lang/Object;

    .line 335
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 336
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 337
    iget-object v1, p0, Lcom/google/googlenav/intersectionexplorer/p;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 338
    :goto_15
    :try_start_15
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/p;->b:Landroid/os/Handler;
    :try_end_17
    .catchall {:try_start_15 .. :try_end_17} :catchall_23

    if-nez v0, :cond_21

    .line 340
    :try_start_19
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/p;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_23
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_1e} :catch_1f

    goto :goto_15

    .line 341
    :catch_1f
    move-exception v0

    goto :goto_15

    .line 345
    :cond_21
    :try_start_21
    monitor-exit v1

    .line 346
    return-void

    .line 345
    :catchall_23
    move-exception v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_21 .. :try_end_25} :catchall_23

    throw v0
.end method


# virtual methods
.method a()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/p;->b:Landroid/os/Handler;

    return-object v0
.end method

.method public run()V
    .registers 3

    .prologue
    .line 350
    iget-object v1, p0, Lcom/google/googlenav/intersectionexplorer/p;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 351
    :try_start_3
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 352
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/intersectionexplorer/p;->b:Landroid/os/Handler;

    .line 353
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/p;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 354
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_17

    .line 355
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 356
    return-void

    .line 354
    :catchall_17
    move-exception v0

    :try_start_18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v0
.end method

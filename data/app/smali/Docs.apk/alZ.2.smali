.class LalZ;
.super LalI;
.source "MoreExecutors.java"


# instance fields
.field private a:I

.field private final a:Ljava/util/concurrent/locks/Condition;

.field private final a:Ljava/util/concurrent/locks/Lock;

.field private a:Z


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 228
    invoke-direct {p0}, LalI;-><init>()V

    .line 234
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, LalZ;->a:Ljava/util/concurrent/locks/Lock;

    .line 237
    iget-object v0, p0, LalZ;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, LalZ;->a:Ljava/util/concurrent/locks/Condition;

    .line 246
    iput v1, p0, LalZ;->a:I

    .line 247
    iput-boolean v1, p0, LalZ;->a:Z

    return-void
.end method

.method synthetic constructor <init>(LalY;)V
    .registers 2
    .parameter

    .prologue
    .line 228
    invoke-direct {p0}, LalZ;-><init>()V

    return-void
.end method

.method private a()V
    .registers 3

    .prologue
    .line 324
    iget-object v0, p0, LalZ;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 326
    :try_start_5
    invoke-virtual {p0}, LalZ;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 327
    new-instance v0, Ljava/util/concurrent/RejectedExecutionException;

    const-string v1, "Executor already shutdown"

    invoke-direct {v0, v1}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_13

    .line 331
    :catchall_13
    move-exception v0

    iget-object v1, p0, LalZ;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 329
    :cond_1a
    :try_start_1a
    iget v0, p0, LalZ;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LalZ;->a:I
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_13

    .line 331
    iget-object v0, p0, LalZ;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 333
    return-void
.end method

.method private b()V
    .registers 3

    .prologue
    .line 339
    iget-object v0, p0, LalZ;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 341
    :try_start_5
    iget v0, p0, LalZ;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, LalZ;->a:I

    .line 342
    invoke-virtual {p0}, LalZ;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 343
    iget-object v0, p0, LalZ;->a:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_1c

    .line 346
    :cond_16
    iget-object v0, p0, LalZ;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 348
    return-void

    .line 346
    :catchall_1c
    move-exception v0

    iget-object v1, p0, LalZ;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method


# virtual methods
.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 299
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 300
    iget-object v2, p0, LalZ;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 303
    :goto_9
    :try_start_9
    invoke-virtual {p0}, LalZ;->isTerminated()Z
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_2a

    move-result v2

    if-eqz v2, :cond_16

    .line 304
    const/4 v0, 0x1

    .line 312
    iget-object v1, p0, LalZ;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_15
    return v0

    .line 305
    :cond_16
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_23

    .line 306
    const/4 v0, 0x0

    .line 312
    iget-object v1, p0, LalZ;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_15

    .line 308
    :cond_23
    :try_start_23
    iget-object v2, p0, LalZ;->a:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_2a

    move-result-wide v0

    goto :goto_9

    .line 312
    :catchall_2a
    move-exception v0

    iget-object v1, p0, LalZ;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .registers 3
    .parameter

    .prologue
    .line 251
    invoke-direct {p0}, LalZ;->a()V

    .line 253
    :try_start_3
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_a

    .line 255
    invoke-direct {p0}, LalZ;->b()V

    .line 257
    return-void

    .line 255
    :catchall_a
    move-exception v0

    invoke-direct {p0}, LalZ;->b()V

    throw v0
.end method

.method public isShutdown()Z
    .registers 3

    .prologue
    .line 261
    iget-object v0, p0, LalZ;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 263
    :try_start_5
    iget-boolean v0, p0, LalZ;->a:Z
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_d

    .line 265
    iget-object v1, p0, LalZ;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_d
    move-exception v0

    iget-object v1, p0, LalZ;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public isTerminated()Z
    .registers 3

    .prologue
    .line 288
    iget-object v0, p0, LalZ;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 290
    :try_start_5
    iget-boolean v0, p0, LalZ;->a:Z

    if-eqz v0, :cond_14

    iget v0, p0, LalZ;->a:I
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_16

    if-nez v0, :cond_14

    const/4 v0, 0x1

    .line 292
    :goto_e
    iget-object v1, p0, LalZ;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    .line 290
    :cond_14
    const/4 v0, 0x0

    goto :goto_e

    .line 292
    :catchall_16
    move-exception v0

    iget-object v1, p0, LalZ;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public shutdown()V
    .registers 3

    .prologue
    .line 271
    iget-object v0, p0, LalZ;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 273
    const/4 v0, 0x1

    :try_start_6
    iput-boolean v0, p0, LalZ;->a:Z
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_e

    .line 275
    iget-object v0, p0, LalZ;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 277
    return-void

    .line 275
    :catchall_e
    move-exception v0

    iget-object v1, p0, LalZ;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public shutdownNow()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 282
    invoke-virtual {p0}, LalZ;->shutdown()V

    .line 283
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

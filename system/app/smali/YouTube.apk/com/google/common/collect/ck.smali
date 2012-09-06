.class final Lcom/google/common/collect/ck;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/gs;


# instance fields
.field final a:Lcom/google/common/base/v;

.field volatile b:Lcom/google/common/collect/gs;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "ComputingValueReference.this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/base/v;)V
    .registers 3
    .parameter

    .prologue
    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->unset()Lcom/google/common/collect/gs;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ck;->b:Lcom/google/common/collect/gs;

    .line 292
    iput-object p1, p0, Lcom/google/common/collect/ck;->a:Lcom/google/common/base/v;

    .line 293
    return-void
.end method

.method private b(Lcom/google/common/collect/gs;)V
    .registers 4
    .parameter

    .prologue
    .line 366
    monitor-enter p0

    .line 367
    :try_start_1
    iget-object v0, p0, Lcom/google/common/collect/ck;->b:Lcom/google/common/collect/gs;

    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap;->UNSET:Lcom/google/common/collect/gs;

    if-ne v0, v1, :cond_c

    .line 368
    iput-object p1, p0, Lcom/google/common/collect/ck;->b:Lcom/google/common/collect/gs;

    .line 369
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 371
    :cond_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_e

    return-void

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a()Lcom/google/common/collect/gg;
    .registers 2

    .prologue
    .line 304
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/collect/gg;)Lcom/google/common/collect/gs;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 309
    return-object p0
.end method

.method final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 355
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/ck;->a:Lcom/google/common/base/v;

    invoke-interface {v0, p1}, Lcom/google/common/base/v;->apply(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_f

    move-result-object v0

    .line 361
    new-instance v1, Lcom/google/common/collect/cj;

    invoke-direct {v1, v0}, Lcom/google/common/collect/cj;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/google/common/collect/ck;->b(Lcom/google/common/collect/gs;)V

    .line 362
    return-object v0

    .line 356
    :catch_f
    move-exception v0

    .line 357
    new-instance v1, Lcom/google/common/collect/ci;

    invoke-direct {v1, v0}, Lcom/google/common/collect/ci;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/google/common/collect/ck;->b(Lcom/google/common/collect/gs;)V

    .line 358
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final a(Lcom/google/common/collect/gs;)V
    .registers 2
    .parameter

    .prologue
    .line 347
    invoke-direct {p0, p1}, Lcom/google/common/collect/ck;->b(Lcom/google/common/collect/gs;)V

    .line 350
    return-void
.end method

.method public final b()Z
    .registers 2

    .prologue
    .line 314
    const/4 v0, 0x1

    return v0
.end method

.method public final c()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 322
    iget-object v0, p0, Lcom/google/common/collect/ck;->b:Lcom/google/common/collect/gs;

    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap;->UNSET:Lcom/google/common/collect/gs;

    if-ne v0, v1, :cond_1f

    .line 323
    const/4 v1, 0x0

    .line 325
    :try_start_7
    monitor-enter p0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_29

    .line 326
    :goto_8
    :try_start_8
    iget-object v0, p0, Lcom/google/common/collect/ck;->b:Lcom/google/common/collect/gs;

    sget-object v2, Lcom/google/common/collect/MapMakerInternalMap;->UNSET:Lcom/google/common/collect/gs;
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_26

    if-ne v0, v2, :cond_15

    .line 328
    :try_start_e
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_26
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_11} :catch_12

    goto :goto_8

    .line 330
    :catch_12
    move-exception v0

    const/4 v1, 0x1

    .line 331
    goto :goto_8

    .line 333
    :cond_15
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_26

    .line 335
    if-eqz v1, :cond_1f

    .line 336
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 340
    :cond_1f
    iget-object v0, p0, Lcom/google/common/collect/ck;->b:Lcom/google/common/collect/gs;

    invoke-interface {v0}, Lcom/google/common/collect/gs;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 333
    :catchall_26
    move-exception v0

    :try_start_27
    monitor-exit p0

    throw v0
    :try_end_29
    .catchall {:try_start_27 .. :try_end_29} :catchall_29

    .line 335
    :catchall_29
    move-exception v0

    if-eqz v1, :cond_33

    .line 336
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_33
    throw v0
.end method

.method public final get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 299
    const/4 v0, 0x0

    return-object v0
.end method

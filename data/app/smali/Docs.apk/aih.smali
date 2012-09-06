.class final Laih;
.super Ljava/lang/Object;
.source "ComputingConcurrentHashMap.java"

# interfaces
.implements Lakr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lakr",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final a:LafH;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LafH",
            "<-TK;+TV;>;"
        }
    .end annotation
.end field

.field volatile a:Lakr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lakr",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LafH;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LafH",
            "<-TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    invoke-static {}, Lajx;->a()Lakr;

    move-result-object v0

    iput-object v0, p0, Laih;->a:Lakr;

    .line 292
    iput-object p1, p0, Laih;->a:LafH;

    .line 293
    return-void
.end method


# virtual methods
.method public a()Laka;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Laka",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 304
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/lang/ref/ReferenceQueue;Laka;)Lakr;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;",
            "Laka",
            "<TK;TV;>;)",
            "Lakr",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 309
    return-object p0
.end method

.method public a()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 322
    iget-object v0, p0, Laih;->a:Lakr;

    sget-object v1, Lajx;->a:Lakr;

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
    iget-object v0, p0, Laih;->a:Lakr;

    sget-object v2, Lajx;->a:Lakr;
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

    .line 329
    :catch_12
    move-exception v0

    .line 330
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
    iget-object v0, p0, Laih;->a:Lakr;

    invoke-interface {v0}, Lakr;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 333
    :catchall_26
    move-exception v0

    :try_start_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    :try_start_28
    throw v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_29

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

.method a(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)TV;"
        }
    .end annotation

    .prologue
    .line 355
    :try_start_0
    iget-object v0, p0, Laih;->a:LafH;

    invoke-interface {v0, p1}, LafH;->a(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_f

    move-result-object v0

    .line 361
    new-instance v1, Laie;

    invoke-direct {v1, v0}, Laie;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Laih;->b(Lakr;)V

    .line 362
    return-object v0

    .line 356
    :catch_f
    move-exception v0

    .line 357
    new-instance v1, Laid;

    invoke-direct {v1, v0}, Laid;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Laih;->b(Lakr;)V

    .line 358
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Lakr;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lakr",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 347
    invoke-virtual {p0, p1}, Laih;->b(Lakr;)V

    .line 350
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 314
    const/4 v0, 0x1

    return v0
.end method

.method b(Lakr;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lakr",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 366
    monitor-enter p0

    .line 367
    :try_start_1
    iget-object v0, p0, Laih;->a:Lakr;

    sget-object v1, Lajx;->a:Lakr;

    if-ne v0, v1, :cond_c

    .line 368
    iput-object p1, p0, Laih;->a:Lakr;

    .line 369
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 371
    :cond_c
    monitor-exit p0

    .line 372
    return-void

    .line 371
    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 299
    const/4 v0, 0x0

    return-object v0
.end method

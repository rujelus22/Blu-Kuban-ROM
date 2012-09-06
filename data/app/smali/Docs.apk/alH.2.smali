.class final LalH;
.super Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;
.source "AbstractFuture.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private a:Ljava/lang/Throwable;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/Object;Ljava/lang/Throwable;I)Z
    .registers 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/lang/Throwable;",
            "I)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 351
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, LalH;->compareAndSetState(II)Z

    move-result v0

    .line 352
    if-eqz v0, :cond_10

    .line 355
    iput-object p1, p0, LalH;->a:Ljava/lang/Object;

    .line 356
    iput-object p2, p0, LalH;->a:Ljava/lang/Throwable;

    .line 357
    invoke-virtual {p0, p3}, LalH;->releaseShared(I)Z

    .line 363
    :cond_f
    :goto_f
    return v0

    .line 358
    :cond_10
    invoke-virtual {p0}, LalH;->getState()I

    move-result v1

    if-ne v1, v2, :cond_f

    .line 361
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, LalH;->acquireShared(I)V

    goto :goto_f
.end method

.method private b()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 285
    invoke-virtual {p0}, LalH;->getState()I

    move-result v0

    .line 286
    packed-switch v0, :pswitch_data_38

    .line 298
    :pswitch_7
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error, synchronizer in invalid state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 288
    :pswitch_20
    iget-object v0, p0, LalH;->a:Ljava/lang/Throwable;

    if-eqz v0, :cond_2c

    .line 289
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, LalH;->a:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 291
    :cond_2c
    iget-object v0, p0, LalH;->a:Ljava/lang/Object;

    return-object v0

    .line 295
    :pswitch_2f
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Task was cancelled."

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    nop

    :pswitch_data_38
    .packed-switch 0x2
        :pswitch_20
        :pswitch_7
        :pswitch_2f
    .end packed-switch
.end method


# virtual methods
.method a()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 275
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, LalH;->acquireSharedInterruptibly(I)V

    .line 276
    invoke-direct {p0}, LalH;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method a(J)Ljava/lang/Object;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TV;"
        }
    .end annotation

    .prologue
    .line 258
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, LalH;->tryAcquireSharedNanos(IJ)Z

    move-result v0

    if-nez v0, :cond_f

    .line 259
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    const-string v1, "Timeout waiting for task."

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_f
    invoke-direct {p0}, LalH;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method a()Z
    .registers 2

    .prologue
    .line 307
    invoke-virtual {p0}, LalH;->getState()I

    move-result v0

    and-int/lit8 v0, v0, 0x6

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method a(Ljava/lang/Object;)Z
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 321
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1}, LalH;->a(Ljava/lang/Object;Ljava/lang/Throwable;I)Z

    move-result v0

    return v0
.end method

.method a(Ljava/lang/Throwable;)Z
    .registers 4
    .parameter

    .prologue
    .line 328
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, v0, p1, v1}, LalH;->a(Ljava/lang/Object;Ljava/lang/Throwable;I)Z

    move-result v0

    return v0
.end method

.method b()Z
    .registers 3

    .prologue
    .line 314
    invoke-virtual {p0}, LalH;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method c()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 335
    const/4 v0, 0x4

    invoke-direct {p0, v1, v1, v0}, LalH;->a(Ljava/lang/Object;Ljava/lang/Throwable;I)Z

    move-result v0

    return v0
.end method

.method protected tryAcquireShared(I)I
    .registers 3
    .parameter

    .prologue
    .line 233
    invoke-virtual {p0}, LalH;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 234
    const/4 v0, 0x1

    .line 236
    :goto_7
    return v0

    :cond_8
    const/4 v0, -0x1

    goto :goto_7
.end method

.method protected tryReleaseShared(I)Z
    .registers 3
    .parameter

    .prologue
    .line 245
    invoke-virtual {p0, p1}, LalH;->setState(I)V

    .line 246
    const/4 v0, 0x1

    return v0
.end method

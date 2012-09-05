.class public Lorg/columba/ristretto/concurrency/Semaphore;
.super Ljava/lang/Object;
.source "Semaphore.java"


# instance fields
.field private value:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/columba/ristretto/concurrency/Semaphore;-><init>(I)V

    .line 60
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .parameter "value"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p1, p0, Lorg/columba/ristretto/concurrency/Semaphore;->value:I

    .line 53
    return-void
.end method


# virtual methods
.method public acquire()V
    .registers 2

    .prologue
    .line 86
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/columba/ristretto/concurrency/Semaphore;->acquire(I)V

    .line 87
    return-void
.end method

.method public declared-synchronized acquire(I)V
    .registers 4
    .parameter "n"

    .prologue
    .line 69
    monitor-enter p0

    :goto_1
    :try_start_1
    iget v1, p0, Lorg/columba/ristretto/concurrency/Semaphore;->value:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_e

    if-ge v1, p1, :cond_11

    .line 71
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_e
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9

    goto :goto_1

    .line 72
    :catch_9
    move-exception v0

    .line 73
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_e

    goto :goto_1

    .line 69
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_e
    move-exception v1

    monitor-exit p0

    throw v1

    .line 77
    :cond_11
    :try_start_11
    iget v1, p0, Lorg/columba/ristretto/concurrency/Semaphore;->value:I

    sub-int/2addr v1, p1

    iput v1, p0, Lorg/columba/ristretto/concurrency/Semaphore;->value:I
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_e

    .line 78
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized release(I)V
    .registers 3
    .parameter "n"

    .prologue
    .line 95
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lorg/columba/ristretto/concurrency/Semaphore;->value:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/columba/ristretto/concurrency/Semaphore;->value:I

    .line 97
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 98
    monitor-exit p0

    return-void

    .line 95
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

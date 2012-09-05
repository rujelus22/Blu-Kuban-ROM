.class public Lcom/google/masf/services/AsyncResult;
.super Ljava/lang/Object;


# instance fields
.field private closure:Lcom/google/masf/ServiceCallback;

.field private done:Z

.field private result:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/masf/ServiceCallback;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/masf/services/AsyncResult;->closure:Lcom/google/masf/ServiceCallback;

    return-void
.end method


# virtual methods
.method public declared-synchronized get(J)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/masf/services/AsyncResult;->done:Z

    if-nez v0, :cond_8

    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V

    :cond_8
    iget-object v0, p0, Lcom/google/masf/services/AsyncResult;->result:Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-object v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setResult(Ljava/lang/Object;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/masf/services/AsyncResult;->result:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/masf/services/AsyncResult;->done:Z

    iget-object v0, p0, Lcom/google/masf/services/AsyncResult;->closure:Lcom/google/masf/ServiceCallback;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/masf/services/AsyncResult;->closure:Lcom/google/masf/ServiceCallback;

    invoke-interface {v0, p1}, Lcom/google/masf/ServiceCallback;->onRequestComplete(Ljava/lang/Object;)V

    :cond_f
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    monitor-exit p0

    return-void

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

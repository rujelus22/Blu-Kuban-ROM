.class public Lcom/infraware/common/register/SyncNetworkingStep;
.super Ljava/lang/Object;
.source "SyncNetworkingStep.java"


# instance fields
.field public bEndFromThread:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/infraware/common/register/SyncNetworkingStep;->bEndFromThread:Z

    .line 5
    return-void
.end method


# virtual methods
.method public declared-synchronized waitTurn()V
    .registers 4

    .prologue
    .line 11
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_11
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_4} :catch_6

    .line 17
    :goto_4
    monitor-exit p0

    return-void

    .line 13
    :catch_6
    move-exception v0

    .line 15
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_7
    const-string v1, "< UpdateStep >"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/infraware/common/util/CMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_11

    goto :goto_4

    .line 11
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_11
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized waitTurn(J)V
    .registers 4
    .parameter "timemil"

    .prologue
    .line 23
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_8
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_4} :catch_6

    .line 28
    :goto_4
    monitor-exit p0

    return-void

    .line 25
    :catch_6
    move-exception v0

    goto :goto_4

    .line 23
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized yourTurn(Z)V
    .registers 3
    .parameter "isEndOfThread"

    .prologue
    .line 32
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/infraware/common/register/SyncNetworkingStep;->bEndFromThread:Z

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 34
    monitor-exit p0

    return-void

    .line 32
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

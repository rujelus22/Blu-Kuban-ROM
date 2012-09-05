.class public Lorg/apache/commons/httpclient/util/IdleConnectionTimeoutThread;
.super Ljava/lang/Thread;
.source "IdleConnectionTimeoutThread.java"


# instance fields
.field private connectionManagers:Ljava/util/List;

.field private connectionTimeout:J

.field private shutdown:Z

.field private timeoutInterval:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/util/IdleConnectionTimeoutThread;->connectionManagers:Ljava/util/List;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/util/IdleConnectionTimeoutThread;->shutdown:Z

    .line 51
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lorg/apache/commons/httpclient/util/IdleConnectionTimeoutThread;->timeoutInterval:J

    .line 53
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lorg/apache/commons/httpclient/util/IdleConnectionTimeoutThread;->connectionTimeout:J

    .line 56
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/util/IdleConnectionTimeoutThread;->setDaemon(Z)V

    .line 57
    return-void
.end method


# virtual methods
.method public declared-synchronized addConnectionManager(Lorg/apache/commons/httpclient/HttpConnectionManager;)V
    .registers 4
    .parameter "connectionManager"

    .prologue
    .line 67
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/util/IdleConnectionTimeoutThread;->shutdown:Z

    if-eqz v0, :cond_10

    .line 68
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IdleConnectionTimeoutThread has been shutdown"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    .line 67
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 70
    :cond_10
    :try_start_10
    iget-object v0, p0, Lorg/apache/commons/httpclient/util/IdleConnectionTimeoutThread;->connectionManagers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_d

    .line 71
    monitor-exit p0

    return-void
.end method

.method protected handleCloseIdleConnections(Lorg/apache/commons/httpclient/HttpConnectionManager;)V
    .registers 4
    .parameter "connectionManager"

    .prologue
    .line 92
    iget-wide v0, p0, Lorg/apache/commons/httpclient/util/IdleConnectionTimeoutThread;->connectionTimeout:J

    invoke-interface {p1, v0, v1}, Lorg/apache/commons/httpclient/HttpConnectionManager;->closeIdleConnections(J)V

    .line 93
    return-void
.end method

.method public declared-synchronized removeConnectionManager(Lorg/apache/commons/httpclient/HttpConnectionManager;)V
    .registers 4
    .parameter "connectionManager"

    .prologue
    .line 80
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/util/IdleConnectionTimeoutThread;->shutdown:Z

    if-eqz v0, :cond_10

    .line 81
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IdleConnectionTimeoutThread has been shutdown"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    .line 80
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 83
    :cond_10
    :try_start_10
    iget-object v0, p0, Lorg/apache/commons/httpclient/util/IdleConnectionTimeoutThread;->connectionManagers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_d

    .line 84
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized run()V
    .registers 5

    .prologue
    .line 99
    monitor-enter p0

    :goto_1
    :try_start_1
    iget-boolean v2, p0, Lorg/apache/commons/httpclient/util/IdleConnectionTimeoutThread;->shutdown:Z

    if-nez v2, :cond_26

    .line 100
    iget-object v2, p0, Lorg/apache/commons/httpclient/util/IdleConnectionTimeoutThread;->connectionManagers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 102
    .local v1, iter:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 103
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/httpclient/HttpConnectionManager;

    .line 104
    .local v0, connectionManager:Lorg/apache/commons/httpclient/HttpConnectionManager;
    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/util/IdleConnectionTimeoutThread;->handleCloseIdleConnections(Lorg/apache/commons/httpclient/HttpConnectionManager;)V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1b

    goto :goto_b

    .line 99
    .end local v0           #connectionManager:Lorg/apache/commons/httpclient/HttpConnectionManager;
    .end local v1           #iter:Ljava/util/Iterator;
    :catchall_1b
    move-exception v2

    monitor-exit p0

    throw v2

    .line 108
    .restart local v1       #iter:Ljava/util/Iterator;
    :cond_1e
    :try_start_1e
    iget-wide v2, p0, Lorg/apache/commons/httpclient/util/IdleConnectionTimeoutThread;->timeoutInterval:J

    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_1b
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_23} :catch_24

    goto :goto_1

    .line 109
    :catch_24
    move-exception v2

    goto :goto_1

    .line 113
    .end local v1           #iter:Ljava/util/Iterator;
    :cond_26
    :try_start_26
    iget-object v2, p0, Lorg/apache/commons/httpclient/util/IdleConnectionTimeoutThread;->connectionManagers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V
    :try_end_2b
    .catchall {:try_start_26 .. :try_end_2b} :catchall_1b

    .line 114
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setConnectionTimeout(J)V
    .registers 5
    .parameter "connectionTimeout"

    .prologue
    .line 132
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/util/IdleConnectionTimeoutThread;->shutdown:Z

    if-eqz v0, :cond_10

    .line 133
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IdleConnectionTimeoutThread has been shutdown"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    .line 132
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 135
    :cond_10
    :try_start_10
    iput-wide p1, p0, Lorg/apache/commons/httpclient/util/IdleConnectionTimeoutThread;->connectionTimeout:J
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_d

    .line 136
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setTimeoutInterval(J)V
    .registers 5
    .parameter "timeoutInterval"

    .prologue
    .line 144
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/util/IdleConnectionTimeoutThread;->shutdown:Z

    if-eqz v0, :cond_10

    .line 145
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IdleConnectionTimeoutThread has been shutdown"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    .line 144
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 147
    :cond_10
    :try_start_10
    iput-wide p1, p0, Lorg/apache/commons/httpclient/util/IdleConnectionTimeoutThread;->timeoutInterval:J
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_d

    .line 148
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized shutdown()V
    .registers 2

    .prologue
    .line 120
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lorg/apache/commons/httpclient/util/IdleConnectionTimeoutThread;->shutdown:Z

    .line 121
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 122
    monitor-exit p0

    return-void

    .line 120
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

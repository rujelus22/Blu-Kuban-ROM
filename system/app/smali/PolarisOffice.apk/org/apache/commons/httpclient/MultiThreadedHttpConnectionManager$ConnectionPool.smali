.class Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;
.super Ljava/lang/Object;
.source "MultiThreadedHttpConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionPool"
.end annotation


# instance fields
.field private freeConnections:Ljava/util/LinkedList;

.field private idleConnectionHandler:Lorg/apache/commons/httpclient/util/IdleConnectionHandler;

.field private final mapHosts:Ljava/util/Map;

.field private numConnections:I

.field private final this$0:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;

.field private waitingThreads:Ljava/util/LinkedList;


# direct methods
.method private constructor <init>(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;)V
    .registers 3
    .parameter

    .prologue
    .line 700
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->this$0:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;

    .line 703
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->freeConnections:Ljava/util/LinkedList;

    .line 706
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->waitingThreads:Ljava/util/LinkedList;

    .line 712
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->mapHosts:Ljava/util/Map;

    .line 714
    new-instance v0, Lorg/apache/commons/httpclient/util/IdleConnectionHandler;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/util/IdleConnectionHandler;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->idleConnectionHandler:Lorg/apache/commons/httpclient/util/IdleConnectionHandler;

    .line 717
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->numConnections:I

    return-void
.end method

.method constructor <init>(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 700
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;-><init>(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;)V

    return-void
.end method

.method static access$200(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 700
    iget v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->numConnections:I

    return v0
.end method

.method static access$300(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;)Ljava/util/LinkedList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 700
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->freeConnections:Ljava/util/LinkedList;

    return-object v0
.end method

.method static access$500(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;)Ljava/util/LinkedList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 700
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->waitingThreads:Ljava/util/LinkedList;

    return-object v0
.end method

.method private declared-synchronized deleteConnection(Lorg/apache/commons/httpclient/HttpConnection;)V
    .registers 7
    .parameter "connection"

    .prologue
    .line 886
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->this$0:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;

    invoke-static {v2, p1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$1100(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;Lorg/apache/commons/httpclient/HttpConnection;)Lorg/apache/commons/httpclient/HostConfiguration;

    move-result-object v0

    .line 888
    .local v0, connectionConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$700()Lorg/apache/commons/logging/Log;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 889
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$700()Lorg/apache/commons/logging/Log;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Reclaiming connection, hostConfig="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 892
    :cond_2b
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpConnection;->close()V

    .line 894
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->getHostPool(Lorg/apache/commons/httpclient/HostConfiguration;Z)Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;

    move-result-object v1

    .line 896
    .local v1, hostPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;
    iget-object v2, v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->freeConnections:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 897
    iget v2, v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->numConnections:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->numConnections:I

    .line 898
    iget v2, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->numConnections:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->numConnections:I

    .line 899
    iget v2, v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->numConnections:I

    if-nez v2, :cond_55

    iget-object v2, v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->waitingThreads:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_55

    .line 902
    iget-object v2, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->mapHosts:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 906
    :cond_55
    iget-object v2, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->idleConnectionHandler:Lorg/apache/commons/httpclient/util/IdleConnectionHandler;

    invoke-virtual {v2, p1}, Lorg/apache/commons/httpclient/util/IdleConnectionHandler;->remove(Lorg/apache/commons/httpclient/HttpConnection;)V
    :try_end_5a
    .catchall {:try_start_1 .. :try_end_5a} :catchall_5c

    .line 907
    monitor-exit p0

    return-void

    .line 886
    .end local v0           #connectionConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;
    .end local v1           #hostPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;
    :catchall_5c
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public declared-synchronized closeIdleConnections(J)V
    .registers 4
    .parameter "idleTimeout"

    .prologue
    .line 872
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->idleConnectionHandler:Lorg/apache/commons/httpclient/util/IdleConnectionHandler;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/httpclient/util/IdleConnectionHandler;->closeIdleConnections(J)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 873
    monitor-exit p0

    return-void

    .line 872
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized createConnection(Lorg/apache/commons/httpclient/HostConfiguration;)Lorg/apache/commons/httpclient/HttpConnection;
    .registers 7
    .parameter "hostConfiguration"

    .prologue
    .line 758
    monitor-enter p0

    const/4 v2, 0x1

    :try_start_2
    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->getHostPool(Lorg/apache/commons/httpclient/HostConfiguration;Z)Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;

    move-result-object v1

    .line 759
    .local v1, hostPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$700()Lorg/apache/commons/logging/Log;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 760
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$700()Lorg/apache/commons/logging/Log;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Allocating new connection, hostConfig="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 762
    :cond_2a
    new-instance v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionWithReference;

    invoke-direct {v0, p1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionWithReference;-><init>(Lorg/apache/commons/httpclient/HostConfiguration;)V

    .line 764
    .local v0, connection:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionWithReference;
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionWithReference;->getParams()Lorg/apache/commons/httpclient/params/HttpConnectionParams;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->this$0:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;

    invoke-static {v3}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$800(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;)Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/commons/httpclient/params/HttpConnectionParams;->setDefaults(Lorg/apache/commons/httpclient/params/HttpParams;)V

    .line 765
    iget-object v2, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->this$0:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;

    invoke-virtual {v0, v2}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionWithReference;->setHttpConnectionManager(Lorg/apache/commons/httpclient/HttpConnectionManager;)V

    .line 766
    iget v2, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->numConnections:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->numConnections:I

    .line 767
    iget v2, v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->numConnections:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->numConnections:I

    .line 771
    invoke-static {v0, p1, p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$900(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionWithReference;Lorg/apache/commons/httpclient/HostConfiguration;Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;)V
    :try_end_50
    .catchall {:try_start_2 .. :try_end_50} :catchall_52

    .line 772
    monitor-exit p0

    return-object v0

    .line 758
    .end local v0           #connection:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionWithReference;
    .end local v1           #hostPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;
    :catchall_52
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized deleteClosedConnections()V
    .registers 4

    .prologue
    .line 856
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->freeConnections:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 858
    .local v1, iter:Ljava/util/Iterator;
    :cond_7
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 859
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/httpclient/HttpConnection;

    .line 860
    .local v0, conn:Lorg/apache/commons/httpclient/HttpConnection;
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->isOpen()Z

    move-result v2

    if-nez v2, :cond_7

    .line 861
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 862
    invoke-direct {p0, v0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->deleteConnection(Lorg/apache/commons/httpclient/HttpConnection;)V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_20

    goto :goto_7

    .line 856
    .end local v0           #conn:Lorg/apache/commons/httpclient/HttpConnection;
    .end local v1           #iter:Ljava/util/Iterator;
    :catchall_20
    move-exception v2

    monitor-exit p0

    throw v2

    .line 865
    .restart local v1       #iter:Ljava/util/Iterator;
    :cond_23
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized deleteLeastUsedConnection()V
    .registers 4

    .prologue
    .line 914
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->freeConnections:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/httpclient/HttpConnection;

    .line 916
    .local v0, connection:Lorg/apache/commons/httpclient/HttpConnection;
    if-eqz v0, :cond_10

    .line 917
    invoke-direct {p0, v0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->deleteConnection(Lorg/apache/commons/httpclient/HttpConnection;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_24

    .line 921
    :cond_e
    :goto_e
    monitor-exit p0

    return-void

    .line 918
    :cond_10
    :try_start_10
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$700()Lorg/apache/commons/logging/Log;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 919
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$700()Lorg/apache/commons/logging/Log;

    move-result-object v1

    const-string v2, "Attempted to reclaim an unused connection but there were none."

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_23
    .catchall {:try_start_10 .. :try_end_23} :catchall_24

    goto :goto_e

    .line 914
    .end local v0           #connection:Lorg/apache/commons/httpclient/HttpConnection;
    :catchall_24
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public freeConnection(Lorg/apache/commons/httpclient/HttpConnection;)V
    .registers 8
    .parameter "conn"

    .prologue
    .line 976
    iget-object v3, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->this$0:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;

    invoke-static {v3, p1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$1100(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;Lorg/apache/commons/httpclient/HttpConnection;)Lorg/apache/commons/httpclient/HostConfiguration;

    move-result-object v1

    .line 978
    .local v1, connectionConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$700()Lorg/apache/commons/logging/Log;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 979
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$700()Lorg/apache/commons/logging/Log;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Freeing connection, hostConfig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 982
    :cond_2a
    monitor-enter p0

    .line 984
    :try_start_2b
    iget-object v3, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->this$0:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;

    invoke-static {v3}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$1200(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 987
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpConnection;->close()V

    .line 988
    monitor-exit p0

    .line 1018
    :goto_37
    return-void

    .line 991
    :cond_38
    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->getHostPool(Lorg/apache/commons/httpclient/HostConfiguration;Z)Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;

    move-result-object v2

    .line 994
    .local v2, hostPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;
    iget-object v3, v2, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->freeConnections:Ljava/util/LinkedList;

    invoke-virtual {v3, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 995
    iget v3, v2, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->numConnections:I

    if-nez v3, :cond_63

    .line 997
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$700()Lorg/apache/commons/logging/Log;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Host connection pool not found, hostConfig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    .line 999
    const/4 v3, 0x1

    iput v3, v2, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->numConnections:I

    .line 1002
    :cond_63
    iget-object v3, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->freeConnections:Ljava/util/LinkedList;

    invoke-virtual {v3, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1005
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionWithReference;

    move-object v3, v0

    invoke-static {v3}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$1300(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionWithReference;)V

    .line 1006
    iget v3, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->numConnections:I

    if-nez v3, :cond_90

    .line 1008
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$700()Lorg/apache/commons/logging/Log;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Host connection pool not found, hostConfig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    .line 1010
    const/4 v3, 0x1

    iput v3, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->numConnections:I

    .line 1014
    :cond_90
    iget-object v3, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->idleConnectionHandler:Lorg/apache/commons/httpclient/util/IdleConnectionHandler;

    invoke-virtual {v3, p1}, Lorg/apache/commons/httpclient/util/IdleConnectionHandler;->add(Lorg/apache/commons/httpclient/HttpConnection;)V

    .line 1016
    invoke-virtual {p0, v2}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->notifyWaitingThread(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;)V

    .line 1017
    monitor-exit p0

    goto :goto_37

    .end local v2           #hostPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;
    :catchall_9a
    move-exception v3

    monitor-exit p0
    :try_end_9c
    .catchall {:try_start_2b .. :try_end_9c} :catchall_9a

    throw v3
.end method

.method public declared-synchronized getFreeConnection(Lorg/apache/commons/httpclient/HostConfiguration;)Lorg/apache/commons/httpclient/HttpConnection;
    .registers 8
    .parameter "hostConfiguration"

    .prologue
    .line 828
    monitor-enter p0

    const/4 v1, 0x0

    .line 830
    .local v1, connection:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionWithReference;
    const/4 v3, 0x0

    :try_start_3
    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->getHostPool(Lorg/apache/commons/httpclient/HostConfiguration;Z)Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;

    move-result-object v2

    .line 832
    .local v2, hostPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;
    if-eqz v2, :cond_4e

    iget-object v3, v2, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->freeConnections:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-lez v3, :cond_4e

    .line 833
    iget-object v3, v2, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->freeConnections:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionWithReference;

    move-object v1, v0

    .line 834
    iget-object v3, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->freeConnections:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 837
    invoke-static {v1, p1, p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$900(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionWithReference;Lorg/apache/commons/httpclient/HostConfiguration;Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;)V

    .line 838
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$700()Lorg/apache/commons/logging/Log;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_47

    .line 839
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$700()Lorg/apache/commons/logging/Log;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Getting free connection, hostConfig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 843
    :cond_47
    iget-object v3, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->idleConnectionHandler:Lorg/apache/commons/httpclient/util/IdleConnectionHandler;

    invoke-virtual {v3, v1}, Lorg/apache/commons/httpclient/util/IdleConnectionHandler;->remove(Lorg/apache/commons/httpclient/HttpConnection;)V
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_73

    .line 848
    :cond_4c
    :goto_4c
    monitor-exit p0

    return-object v1

    .line 844
    :cond_4e
    :try_start_4e
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$700()Lorg/apache/commons/logging/Log;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 845
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$700()Lorg/apache/commons/logging/Log;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "There were no free connections to get, hostConfig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_72
    .catchall {:try_start_4e .. :try_end_72} :catchall_73

    goto :goto_4c

    .line 828
    .end local v2           #hostPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;
    :catchall_73
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getHostPool(Lorg/apache/commons/httpclient/HostConfiguration;Z)Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;
    .registers 6
    .parameter "hostConfiguration"
    .parameter "create"

    .prologue
    .line 805
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$700()Lorg/apache/commons/logging/Log;

    move-result-object v1

    const-string v2, "enter HttpConnectionManager.ConnectionPool.getHostPool(HostConfiguration)"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 808
    iget-object v1, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->mapHosts:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;

    .line 810
    .local v0, listConnections:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;
    if-nez v0, :cond_23

    if-eqz p2, :cond_23

    .line 812
    new-instance v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;

    .end local v0           #listConnections:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;-><init>(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$1;)V

    .line 813
    .restart local v0       #listConnections:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;
    iput-object p1, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->hostConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;

    .line 814
    iget-object v1, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->mapHosts:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_25

    .line 817
    :cond_23
    monitor-exit p0

    return-object v0

    .line 805
    .end local v0           #listConnections:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;
    :catchall_25
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized handleLostConnection(Lorg/apache/commons/httpclient/HostConfiguration;)V
    .registers 4
    .parameter "config"

    .prologue
    .line 782
    monitor-enter p0

    const/4 v1, 0x1

    :try_start_2
    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->getHostPool(Lorg/apache/commons/httpclient/HostConfiguration;Z)Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;

    move-result-object v0

    .line 783
    .local v0, hostPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;
    iget v1, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->numConnections:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->numConnections:I

    .line 784
    iget v1, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->numConnections:I

    if-nez v1, :cond_1d

    iget-object v1, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->waitingThreads:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 787
    iget-object v1, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->mapHosts:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    :cond_1d
    iget v1, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->numConnections:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->numConnections:I

    .line 791
    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->notifyWaitingThread(Lorg/apache/commons/httpclient/HostConfiguration;)V
    :try_end_26
    .catchall {:try_start_2 .. :try_end_26} :catchall_28

    .line 792
    monitor-exit p0

    return-void

    .line 782
    .end local v0           #hostPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;
    :catchall_28
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized notifyWaitingThread(Lorg/apache/commons/httpclient/HostConfiguration;)V
    .registers 3
    .parameter "configuration"

    .prologue
    .line 930
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->getHostPool(Lorg/apache/commons/httpclient/HostConfiguration;Z)Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->notifyWaitingThread(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;)V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    .line 931
    monitor-exit p0

    return-void

    .line 930
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized notifyWaitingThread(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;)V
    .registers 7
    .parameter "hostPool"

    .prologue
    .line 945
    monitor-enter p0

    const/4 v1, 0x0

    .line 947
    .local v1, waitingThread:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;
    :try_start_2
    iget-object v2, p1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->waitingThreads:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_4b

    .line 948
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$700()Lorg/apache/commons/logging/Log;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 949
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$700()Lorg/apache/commons/logging/Log;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Notifying thread waiting on host pool, hostConfig="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->hostConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 952
    :cond_30
    iget-object v2, p1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->waitingThreads:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;

    move-object v1, v0

    .line 953
    iget-object v2, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->waitingThreads:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 964
    :cond_3f
    :goto_3f
    if-eqz v1, :cond_49

    .line 965
    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;->interruptedByConnectionPool:Z

    .line 966
    iget-object v2, v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;->thread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_49
    .catchall {:try_start_2 .. :try_end_49} :catchall_78

    .line 968
    :cond_49
    monitor-exit p0

    return-void

    .line 954
    :cond_4b
    :try_start_4b
    iget-object v2, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->waitingThreads:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_7b

    .line 955
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$700()Lorg/apache/commons/logging/Log;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_66

    .line 956
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$700()Lorg/apache/commons/logging/Log;

    move-result-object v2

    const-string v3, "No-one waiting on host pool, notifying next waiting thread."

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 958
    :cond_66
    iget-object v2, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->waitingThreads:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;

    move-object v1, v0

    .line 959
    iget-object v2, v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;->hostConnectionPool:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;

    iget-object v2, v2, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HostConnectionPool;->waitingThreads:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z
    :try_end_77
    .catchall {:try_start_4b .. :try_end_77} :catchall_78

    goto :goto_3f

    .line 945
    :catchall_78
    move-exception v2

    monitor-exit p0

    throw v2

    .line 960
    :cond_7b
    :try_start_7b
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$700()Lorg/apache/commons/logging/Log;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 961
    invoke-static {}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$700()Lorg/apache/commons/logging/Log;

    move-result-object v2

    const-string v3, "Notifying no-one, there are no waiting threads"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_8e
    .catchall {:try_start_7b .. :try_end_8e} :catchall_78

    goto :goto_3f
.end method

.method public declared-synchronized shutdown()V
    .registers 5

    .prologue
    .line 725
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->freeConnections:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 726
    .local v1, iter:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 727
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/httpclient/HttpConnection;

    .line 728
    .local v0, conn:Lorg/apache/commons/httpclient/HttpConnection;
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 729
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->close()V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1a

    goto :goto_7

    .line 725
    .end local v0           #conn:Lorg/apache/commons/httpclient/HttpConnection;
    .end local v1           #iter:Ljava/util/Iterator;
    :catchall_1a
    move-exception v3

    monitor-exit p0

    throw v3

    .line 733
    .restart local v1       #iter:Ljava/util/Iterator;
    :cond_1d
    :try_start_1d
    invoke-static {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->access$600(Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;)V

    .line 736
    iget-object v3, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->waitingThreads:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 737
    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 738
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;

    .line 739
    .local v2, waiter:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 740
    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;->interruptedByConnectionPool:Z

    .line 741
    iget-object v3, v2, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;->thread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    goto :goto_26

    .line 745
    .end local v2           #waiter:Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$WaitingThread;
    :cond_3e
    iget-object v3, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->mapHosts:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 748
    iget-object v3, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$ConnectionPool;->idleConnectionHandler:Lorg/apache/commons/httpclient/util/IdleConnectionHandler;

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/util/IdleConnectionHandler;->removeAll()V
    :try_end_48
    .catchall {:try_start_1d .. :try_end_48} :catchall_1a

    .line 749
    monitor-exit p0

    return-void
.end method

.class final Llibcore/net/http/HttpConnectionPool;
.super Ljava/lang/Object;
.source "HttpConnectionPool.java"


# static fields
.field public static final INSTANCE:Llibcore/net/http/HttpConnectionPool;


# instance fields
.field private final connectionPool:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Llibcore/net/http/HttpConnection$Address;",
            "Ljava/util/List",
            "<",
            "Llibcore/net/http/HttpConnection;",
            ">;>;"
        }
    .end annotation
.end field

.field private final maxConnections:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    new-instance v0, Llibcore/net/http/HttpConnectionPool;

    invoke-direct {v0}, Llibcore/net/http/HttpConnectionPool;-><init>()V

    sput-object v0, Llibcore/net/http/HttpConnectionPool;->INSTANCE:Llibcore/net/http/HttpConnectionPool;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .prologue
    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Llibcore/net/http/HttpConnectionPool;->connectionPool:Ljava/util/HashMap;

    .line 51
    const-string v2, "http.keepAlive"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, keepAlive:Ljava/lang/String;
    if-eqz v0, :cond_1c

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 53
    const/4 v2, 0x0

    iput v2, p0, Llibcore/net/http/HttpConnectionPool;->maxConnections:I

    .line 61
    :goto_1b
    return-void

    .line 57
    :cond_1c
    const-string v2, "http.maxConnections"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, maxConnectionsString:Ljava/lang/String;
    if-eqz v1, :cond_2b

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :goto_28
    iput v2, p0, Llibcore/net/http/HttpConnectionPool;->maxConnections:I

    goto :goto_1b

    :cond_2b
    const/4 v2, 0x5

    goto :goto_28
.end method


# virtual methods
.method public get(Llibcore/net/http/HttpConnection$Address;I)Llibcore/net/http/HttpConnection;
    .registers 8
    .parameter "address"
    .parameter "connectTimeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    iget-object v4, p0, Llibcore/net/http/HttpConnectionPool;->connectionPool:Ljava/util/HashMap;

    monitor-enter v4

    .line 67
    :try_start_3
    iget-object v3, p0, Llibcore/net/http/HttpConnectionPool;->connectionPool:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 68
    .local v1, connections:Ljava/util/List;,"Ljava/util/List<Llibcore/net/http/HttpConnection;>;"
    if-eqz v1, :cond_37

    .line 69
    :cond_d
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_32

    .line 70
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llibcore/net/http/HttpConnection;

    .line 71
    .local v0, connection:Llibcore/net/http/HttpConnection;
    invoke-virtual {v0}, Llibcore/net/http/HttpConnection;->isStale()Z

    move-result v3

    if-nez v3, :cond_d

    .line 73
    invoke-virtual {v0}, Llibcore/net/http/HttpConnection;->getSocket()Ljava/net/Socket;

    move-result-object v2

    .line 74
    .local v2, socket:Ljava/net/Socket;
    invoke-static {}, Ldalvik/system/SocketTagger;->get()Ldalvik/system/SocketTagger;

    move-result-object v3

    invoke-virtual {v3, v2}, Ldalvik/system/SocketTagger;->tag(Ljava/net/Socket;)V

    .line 75
    monitor-exit v4

    .line 86
    .end local v0           #connection:Llibcore/net/http/HttpConnection;
    .end local v2           #socket:Ljava/net/Socket;
    :goto_31
    return-object v0

    .line 78
    :cond_32
    iget-object v3, p0, Llibcore/net/http/HttpConnectionPool;->connectionPool:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :cond_37
    monitor-exit v4
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_3d

    .line 86
    invoke-virtual {p1, p2}, Llibcore/net/http/HttpConnection$Address;->connect(I)Llibcore/net/http/HttpConnection;

    move-result-object v0

    goto :goto_31

    .line 80
    .end local v1           #connections:Ljava/util/List;,"Ljava/util/List<Llibcore/net/http/HttpConnection;>;"
    :catchall_3d
    move-exception v3

    :try_start_3e
    monitor-exit v4
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v3
.end method

.method public recycle(Llibcore/net/http/HttpConnection;)V
    .registers 9
    .parameter "connection"

    .prologue
    .line 90
    invoke-virtual {p1}, Llibcore/net/http/HttpConnection;->getSocket()Ljava/net/Socket;

    move-result-object v3

    .line 92
    .local v3, socket:Ljava/net/Socket;
    :try_start_4
    invoke-static {}, Ldalvik/system/SocketTagger;->get()Ldalvik/system/SocketTagger;

    move-result-object v4

    invoke-virtual {v4, v3}, Ldalvik/system/SocketTagger;->untag(Ljava/net/Socket;)V
    :try_end_b
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_b} :catch_3d

    .line 100
    iget v4, p0, Llibcore/net/http/HttpConnectionPool;->maxConnections:I

    if-lez v4, :cond_59

    invoke-virtual {p1}, Llibcore/net/http/HttpConnection;->isEligibleForRecycling()Z

    move-result v4

    if-eqz v4, :cond_59

    .line 101
    invoke-virtual {p1}, Llibcore/net/http/HttpConnection;->getAddress()Llibcore/net/http/HttpConnection$Address;

    move-result-object v0

    .line 102
    .local v0, address:Llibcore/net/http/HttpConnection$Address;
    iget-object v5, p0, Llibcore/net/http/HttpConnectionPool;->connectionPool:Ljava/util/HashMap;

    monitor-enter v5

    .line 103
    :try_start_1c
    iget-object v4, p0, Llibcore/net/http/HttpConnectionPool;->connectionPool:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 104
    .local v1, connections:Ljava/util/List;,"Ljava/util/List<Llibcore/net/http/HttpConnection;>;"
    if-nez v1, :cond_30

    .line 105
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #connections:Ljava/util/List;,"Ljava/util/List<Llibcore/net/http/HttpConnection;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .restart local v1       #connections:Ljava/util/List;,"Ljava/util/List<Llibcore/net/http/HttpConnection;>;"
    iget-object v4, p0, Llibcore/net/http/HttpConnectionPool;->connectionPool:Ljava/util/HashMap;

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :cond_30
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    iget v6, p0, Llibcore/net/http/HttpConnectionPool;->maxConnections:I

    if-ge v4, v6, :cond_58

    .line 109
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    monitor-exit v5
    :try_end_3c
    .catchall {:try_start_1c .. :try_end_3c} :catchall_5d

    .line 117
    .end local v0           #address:Llibcore/net/http/HttpConnection$Address;
    .end local v1           #connections:Ljava/util/List;,"Ljava/util/List<Llibcore/net/http/HttpConnection;>;"
    :goto_3c
    return-void

    .line 93
    :catch_3d
    move-exception v2

    .line 95
    .local v2, e:Ljava/net/SocketException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to untagSocket(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/System;->logW(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p1}, Llibcore/net/http/HttpConnection;->closeSocketAndStreams()V

    goto :goto_3c

    .line 112
    .end local v2           #e:Ljava/net/SocketException;
    .restart local v0       #address:Llibcore/net/http/HttpConnection$Address;
    .restart local v1       #connections:Ljava/util/List;,"Ljava/util/List<Llibcore/net/http/HttpConnection;>;"
    :cond_58
    :try_start_58
    monitor-exit v5
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_5d

    .line 116
    .end local v0           #address:Llibcore/net/http/HttpConnection$Address;
    .end local v1           #connections:Ljava/util/List;,"Ljava/util/List<Llibcore/net/http/HttpConnection;>;"
    :cond_59
    invoke-virtual {p1}, Llibcore/net/http/HttpConnection;->closeSocketAndStreams()V

    goto :goto_3c

    .line 112
    .restart local v0       #address:Llibcore/net/http/HttpConnection$Address;
    :catchall_5d
    move-exception v4

    :try_start_5e
    monitor-exit v5
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    throw v4
.end method

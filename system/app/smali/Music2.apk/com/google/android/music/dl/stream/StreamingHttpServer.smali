.class public Lcom/google/android/music/dl/stream/StreamingHttpServer;
.super Ljava/lang/Object;
.source "StreamingHttpServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;,
        Lcom/google/android/music/dl/stream/StreamingHttpServer$RequestAcceptorThread;
    }
.end annotation


# static fields
.field protected static final LOCAL_LOGV:Z


# instance fields
.field private mAcceptor:Lcom/google/android/music/dl/stream/StreamingHttpServer$RequestAcceptorThread;

.field private final mDownloadManager:Lcom/google/android/music/dl/DownloadManager;

.field protected mParams:Lorg/apache/http/params/HttpParams;

.field protected mServerSocket:Ljava/net/ServerSocket;

.field private mShutdown:Z

.field private mWorkers:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    const-string v0, "Streamer"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/dl/stream/StreamingHttpServer;->LOCAL_LOGV:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/music/dl/DownloadManager;)V
    .registers 6
    .parameter "downloadManager"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-boolean v3, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer;->mShutdown:Z

    .line 58
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer;->mWorkers:Ljava/util/LinkedList;

    .line 61
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer;->mParams:Lorg/apache/http/params/HttpParams;

    .line 62
    iget-object v0, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer;->mParams:Lorg/apache/http/params/HttpParams;

    const-string v1, "http.connection.stalecheck"

    invoke-interface {v0, v1, v3}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.tcp.nodelay"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.socket.timeout"

    const/16 v2, 0x2710

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.socket.buffer-size"

    const/16 v2, 0x2000

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 67
    invoke-direct {p0, v3}, Lcom/google/android/music/dl/stream/StreamingHttpServer;->bind(I)V

    .line 68
    iput-object p1, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer;->mDownloadManager:Lcom/google/android/music/dl/DownloadManager;

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/dl/stream/StreamingHttpServer;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer;->mShutdown:Z

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/music/dl/stream/StreamingHttpServer;)Ljava/util/LinkedList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer;->mWorkers:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/music/dl/stream/StreamingHttpServer;)Lcom/google/android/music/dl/DownloadManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer;->mDownloadManager:Lcom/google/android/music/dl/DownloadManager;

    return-object v0
.end method

.method private bind(I)V
    .registers 4
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {p0, v0}, Lcom/google/android/music/dl/stream/StreamingHttpServer;->bind(Ljava/net/InetSocketAddress;)V

    .line 73
    return-void
.end method

.method private bind(Ljava/net/InetSocketAddress;)V
    .registers 5
    .parameter "addr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0}, Ljava/net/ServerSocket;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer;->mServerSocket:Ljava/net/ServerSocket;

    .line 77
    iget-object v0, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0, p1}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 78
    sget-boolean v0, Lcom/google/android/music/dl/stream/StreamingHttpServer;->LOCAL_LOGV:Z

    if-eqz v0, :cond_2e

    const-string v0, "Streamer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bound to port: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_2e
    iget-object v0, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer;->mAcceptor:Lcom/google/android/music/dl/stream/StreamingHttpServer$RequestAcceptorThread;

    if-eqz v0, :cond_3a

    .line 81
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Should never bind to a socket twice"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_3a
    new-instance v0, Lcom/google/android/music/dl/stream/StreamingHttpServer$RequestAcceptorThread;

    invoke-direct {v0, p0}, Lcom/google/android/music/dl/stream/StreamingHttpServer$RequestAcceptorThread;-><init>(Lcom/google/android/music/dl/stream/StreamingHttpServer;)V

    iput-object v0, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer;->mAcceptor:Lcom/google/android/music/dl/stream/StreamingHttpServer$RequestAcceptorThread;

    .line 84
    iget-object v0, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer;->mAcceptor:Lcom/google/android/music/dl/stream/StreamingHttpServer$RequestAcceptorThread;

    invoke-virtual {v0}, Lcom/google/android/music/dl/stream/StreamingHttpServer$RequestAcceptorThread;->start()V

    .line 85
    return-void
.end method


# virtual methods
.method public getPort()I
    .registers 3

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer;->mServerSocket:Ljava/net/ServerSocket;

    if-nez v0, :cond_c

    .line 89
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Socket not bound"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_c
    iget-object v0, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public getUri(Lcom/google/android/music/dl/DownloadOrder;)Ljava/lang/String;
    .registers 6
    .parameter "order"

    .prologue
    .line 96
    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->getContentIdentifier()Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v1

    .line 97
    .local v1, songId:Lcom/google/android/music/dl/ContentIdentifier;
    iget-object v2, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer;->mAcceptor:Lcom/google/android/music/dl/stream/StreamingHttpServer$RequestAcceptorThread;

    invoke-virtual {v2, v1}, Lcom/google/android/music/dl/stream/StreamingHttpServer$RequestAcceptorThread;->notifyNewAllowedStream(Lcom/google/android/music/dl/ContentIdentifier;)V

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v2, "http://127.0.0.1:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/music/dl/stream/StreamingHttpServer;->getPort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/music/dl/ContentIdentifier;->toUrlString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public shutdown()V
    .registers 5

    .prologue
    .line 108
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer;->mShutdown:Z

    .line 110
    :try_start_3
    iget-object v2, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_26

    .line 114
    :goto_8
    iget-object v3, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer;->mWorkers:Ljava/util/LinkedList;

    monitor-enter v3

    .line 115
    :try_start_b
    iget-object v2, p0, Lcom/google/android/music/dl/stream/StreamingHttpServer;->mWorkers:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;

    .line 116
    .local v1, wt:Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;
    invoke-virtual {v1}, Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;->shutdown()V

    goto :goto_11

    .line 118
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #wt:Lcom/google/android/music/dl/stream/StreamingHttpServer$WorkerThread;
    :catchall_21
    move-exception v2

    monitor-exit v3
    :try_end_23
    .catchall {:try_start_b .. :try_end_23} :catchall_21

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_24
    :try_start_24
    monitor-exit v3
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_21

    .line 119
    return-void

    .line 111
    .end local v0           #i$:Ljava/util/Iterator;
    :catch_26
    move-exception v2

    goto :goto_8
.end method
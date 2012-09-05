.class public Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;
.super Lcom/vlingo/client/core/http/custom/VHttpConnection;
.source "MultiplexHttpConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection$MultiplexOutputStream;,
        Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection$MultiplexInputStream;
    }
.end annotation


# static fields
.field private static log:Lcom/vlingo/client/core/logging/Logger;


# instance fields
.field private ivActiveRequest:Lcom/vlingo/client/core/http/custom/HttpRequest;

.field private ivActiveResponse:Lcom/vlingo/client/core/http/custom/HttpResponse;

.field private ivIn:Ljava/io/DataInputStream;

.field private ivOut:Ljava/io/DataOutputStream;

.field private ivRequestQueue:Lcom/vlingo/client/core/recognizer/Queue;

.field private ivResponseQueue:Lcom/vlingo/client/core/recognizer/Queue;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const-class v0, Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;

    invoke-static {v0}, Lcom/vlingo/client/core/logging/Logger;->getLogger(Ljava/lang/Class;)Lcom/vlingo/client/core/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;->log:Lcom/vlingo/client/core/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/vlingo/client/core/http/custom/VConnectionFactory;Lcom/vlingo/client/core/http/URL;)V
    .registers 4
    .parameter "factory"
    .parameter "url"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/vlingo/client/core/http/custom/VHttpConnection;-><init>(Lcom/vlingo/client/core/http/custom/VConnectionFactory;Lcom/vlingo/client/core/http/URL;)V

    .line 35
    new-instance v0, Lcom/vlingo/client/core/recognizer/Queue;

    invoke-direct {v0}, Lcom/vlingo/client/core/recognizer/Queue;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;->ivRequestQueue:Lcom/vlingo/client/core/recognizer/Queue;

    .line 36
    new-instance v0, Lcom/vlingo/client/core/recognizer/Queue;

    invoke-direct {v0}, Lcom/vlingo/client/core/recognizer/Queue;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;->ivResponseQueue:Lcom/vlingo/client/core/recognizer/Queue;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;Lcom/vlingo/client/core/http/custom/HttpResponse;)I
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;->read(Lcom/vlingo/client/core/http/custom/HttpResponse;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;Lcom/vlingo/client/core/http/custom/HttpRequest;[BII)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;->write(Lcom/vlingo/client/core/http/custom/HttpRequest;[BII)V

    return-void
.end method

.method static synthetic access$200(Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;Lcom/vlingo/client/core/http/custom/HttpRequest;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;->write(Lcom/vlingo/client/core/http/custom/HttpRequest;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;Lcom/vlingo/client/core/http/custom/HttpRequest;[B)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;->write(Lcom/vlingo/client/core/http/custom/HttpRequest;[B)V

    return-void
.end method

.method private assignReadLock()V
    .registers 4

    .prologue
    .line 118
    iget-object v2, p0, Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;->ivIn:Ljava/io/DataInputStream;

    monitor-enter v2

    .line 119
    :try_start_3
    iget-object v1, p0, Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;->ivResponseQueue:Lcom/vlingo/client/core/recognizer/Queue;

    invoke-virtual {v1}, Lcom/vlingo/client/core/recognizer/Queue;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/core/http/custom/HttpResponse;

    .line 120
    .local v0, nextResponse:Lcom/vlingo/client/core/http/custom/HttpResponse;
    iput-object v0, p0, Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;->ivActiveResponse:Lcom/vlingo/client/core/http/custom/HttpResponse;

    .line 125
    iget-object v1, p0, Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;->ivIn:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 126
    monitor-exit v2

    .line 127
    return-void

    .line 126
    .end local v0           #nextResponse:Lcom/vlingo/client/core/http/custom/HttpResponse;
    :catchall_14
    move-exception v1

    monitor-exit v2
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method private assignWriteLock()V
    .registers 4

    .prologue
    .line 150
    iget-object v2, p0, Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;->ivOut:Ljava/io/DataOutputStream;

    monitor-enter v2

    .line 151
    :try_start_3
    iget-object v1, p0, Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;->ivRequestQueue:Lcom/vlingo/client/core/recognizer/Queue;

    invoke-virtual {v1}, Lcom/vlingo/client/core/recognizer/Queue;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/core/http/custom/HttpRequest;

    .line 152
    .local v0, nextRequest:Lcom/vlingo/client/core/http/custom/HttpRequest;
    iput-object v0, p0, Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;->ivActiveRequest:Lcom/vlingo/client/core/http/custom/HttpRequest;

    .line 157
    iget-object v1, p0, Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;->ivOut:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 158
    monitor-exit v2

    .line 159
    return-void

    .line 158
    .end local v0           #nextRequest:Lcom/vlingo/client/core/http/custom/HttpRequest;
    :catchall_14
    move-exception v1

    monitor-exit v2
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method private getReadLock(Lcom/vlingo/client/core/http/custom/HttpResponse;)V
    .registers 6
    .parameter "response"

    .prologue
    .line 130
    :goto_0
    iget-object v1, p0, Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;->ivActiveResponse:Lcom/vlingo/client/core/http/custom/HttpResponse;

    if-eq v1, p1, :cond_27

    .line 131
    iget-object v2, p0, Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;->ivIn:Ljava/io/DataInputStream;

    monitor-enter v2

    .line 132
    :try_start_7
    iget-object v1, p0, Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;->ivActiveResponse:Lcom/vlingo/client/core/http/custom/HttpResponse;

    if-nez v1, :cond_e

    .line 134
    invoke-direct {p0}, Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;->assignReadLock()V

    .line 137
    :cond_e
    iget-object v1, p0, Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;->ivActiveResponse:Lcom/vlingo/client/core/http/custom/HttpResponse;
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_19

    if-eq v1, p1, :cond_17

    .line 141
    :try_start_12
    iget-object v1, p0, Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;->ivIn:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_19
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_17} :catch_1c

    .line 145
    :cond_17
    :goto_17
    :try_start_17
    monitor-exit v2

    goto :goto_0

    :catchall_19
    move-exception v1

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_17 .. :try_end_1b} :catchall_19

    throw v1

    .line 141
    :catch_1c
    move-exception v0

    .line 142
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_1d
    const-string v1, "VLG_EXCEPTION"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catchall {:try_start_1d .. :try_end_26} :catchall_19

    goto :goto_17

    .line 147
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :cond_27
    return-void
.end method

.method private getWriteLock(Lcom/vlingo/client/core/http/custom/HttpRequest;)V
    .registers 6
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    :goto_0
    iget-object v1, p0, Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;->ivActiveRequest:Lcom/vlingo/client/core/http/custom/HttpRequest;

    if-eq v1, p1, :cond_27

    .line 163
    iget-object v2, p0, Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;->ivOut:Ljava/io/DataOutputStream;

    monitor-enter v2

    .line 164
    :try_start_7
    iget-object v1, p0, Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;->ivActiveRequest:Lcom/vlingo/client/core/http/custom/HttpRequest;

    if-nez v1, :cond_e

    .line 166
    invoke-direct {p0}, Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;->assignWriteLock()V

    .line 169
    :cond_e
    iget-object v1, p0, Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;->ivActiveRequest:Lcom/vlingo/client/core/http/custom/HttpRequest;
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_19

    if-eq v1, p1, :cond_17

    .line 173
    :try_start_12
    iget-object v1, p0, Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;->ivOut:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_19
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_17} :catch_1c

    .line 175
    :cond_17
    :goto_17
    :try_start_17
    monitor-exit v2

    goto :goto_0

    :catchall_19
    move-exception v1

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_17 .. :try_end_1b} :catchall_19

    throw v1

    .line 173
    :catch_1c
    move-exception v0

    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_1d
    const-string v1, "VLG_EXCEPTION"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catchall {:try_start_1d .. :try_end_26} :catchall_19

    goto :goto_17

    .line 177
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :cond_27
    return-void
.end method

.method private read(Lcom/vlingo/client/core/http/custom/HttpResponse;)I
    .registers 3
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;->getReadLock(Lcom/vlingo/client/core/http/custom/HttpResponse;)V

    .line 99
    iget-object v0, p0, Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;->ivIn:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v0

    return v0
.end method

.method private write(Lcom/vlingo/client/core/http/custom/HttpRequest;I)V
    .registers 4
    .parameter "request"
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;->getWriteLock(Lcom/vlingo/client/core/http/custom/HttpRequest;)V

    .line 114
    iget-object v0, p0, Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;->ivOut:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p2}, Ljava/io/DataOutputStream;->write(I)V

    .line 115
    return-void
.end method

.method private write(Lcom/vlingo/client/core/http/custom/HttpRequest;[B)V
    .registers 4
    .parameter "request"
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;->getWriteLock(Lcom/vlingo/client/core/http/custom/HttpRequest;)V

    .line 109
    iget-object v0, p0, Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;->ivOut:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p2}, Ljava/io/DataOutputStream;->write([B)V

    .line 110
    return-void
.end method

.method private write(Lcom/vlingo/client/core/http/custom/HttpRequest;[BII)V
    .registers 6
    .parameter "request"
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;->getWriteLock(Lcom/vlingo/client/core/http/custom/HttpRequest;)V

    .line 104
    iget-object v0, p0, Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;->ivOut:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p2, p3, p4}, Ljava/io/DataOutputStream;->write([BII)V

    .line 105
    return-void
.end method


# virtual methods
.method public getInputStream(Lcom/vlingo/client/core/http/custom/HttpResponse;)Ljava/io/DataInputStream;
    .registers 4
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    monitor-enter p0

    .line 46
    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;->ivIn:Ljava/io/DataInputStream;

    if-nez v0, :cond_d

    .line 47
    iget-object v0, p0, Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;->ivCon:Lcom/vlingo/client/core/http/custom/VStreamConnection;

    invoke-interface {v0}, Lcom/vlingo/client/core/http/custom/VStreamConnection;->getInputStream()Ljava/io/DataInputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;->ivIn:Ljava/io/DataInputStream;

    .line 49
    :cond_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_16

    .line 50
    new-instance v0, Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection$MultiplexInputStream;

    iget-object v1, p0, Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;->ivIn:Ljava/io/DataInputStream;

    invoke-direct {v0, p0, v1, p1}, Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection$MultiplexInputStream;-><init>(Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;Ljava/io/InputStream;Lcom/vlingo/client/core/http/custom/HttpResponse;)V

    return-object v0

    .line 49
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public getOutputStream(Lcom/vlingo/client/core/http/custom/HttpRequest;)Ljava/io/DataOutputStream;
    .registers 4
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    monitor-enter p0

    .line 55
    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;->ivOut:Ljava/io/DataOutputStream;

    if-nez v0, :cond_d

    .line 56
    iget-object v0, p0, Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;->ivCon:Lcom/vlingo/client/core/http/custom/VStreamConnection;

    invoke-interface {v0}, Lcom/vlingo/client/core/http/custom/VStreamConnection;->getOutputStream()Ljava/io/DataOutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;->ivOut:Ljava/io/DataOutputStream;

    .line 58
    :cond_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_16

    .line 59
    new-instance v0, Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection$MultiplexOutputStream;

    iget-object v1, p0, Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;->ivOut:Ljava/io/DataOutputStream;

    invoke-direct {v0, p0, v1, p1}, Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection$MultiplexOutputStream;-><init>(Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;Ljava/io/OutputStream;Lcom/vlingo/client/core/http/custom/HttpRequest;)V

    return-object v0

    .line 58
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method notifyRequestDone(Lcom/vlingo/client/core/http/custom/HttpRequest;)V
    .registers 5
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    iget-object v1, p0, Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;->ivOut:Ljava/io/DataOutputStream;

    monitor-enter v1

    .line 73
    :try_start_3
    iget-object v0, p0, Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;->ivActiveRequest:Lcom/vlingo/client/core/http/custom/HttpRequest;

    if-eq v0, p1, :cond_12

    .line 74
    new-instance v0, Ljava/io/IOException;

    const-string v2, "HTTP requests finished out of order"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0

    .line 80
    :cond_12
    :try_start_12
    invoke-direct {p0}, Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;->assignWriteLock()V

    .line 81
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_f

    .line 82
    return-void
.end method

.method notifyResponseDone(Lcom/vlingo/client/core/http/custom/HttpResponse;)V
    .registers 5
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    iget-object v1, p0, Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;->ivIn:Ljava/io/DataInputStream;

    monitor-enter v1

    .line 86
    :try_start_3
    iget-object v0, p0, Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;->ivActiveResponse:Lcom/vlingo/client/core/http/custom/HttpResponse;

    if-eq v0, p1, :cond_12

    .line 87
    new-instance v0, Ljava/io/IOException;

    const-string v2, "HTTP responses finished out of order"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0

    .line 93
    :cond_12
    :try_start_12
    invoke-direct {p0}, Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;->assignReadLock()V

    .line 94
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_f

    .line 95
    return-void
.end method

.method public declared-synchronized openInteraction(Ljava/lang/String;)Lcom/vlingo/client/core/http/custom/HttpInteraction;
    .registers 5
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/vlingo/client/core/http/custom/HttpInteraction;

    invoke-direct {v0, p0}, Lcom/vlingo/client/core/http/custom/HttpInteraction;-><init>(Lcom/vlingo/client/core/http/custom/VHttpConnection;)V

    .line 65
    .local v0, dhi:Lcom/vlingo/client/core/http/custom/HttpInteraction;
    invoke-virtual {v0}, Lcom/vlingo/client/core/http/custom/HttpInteraction;->getRequest()Lcom/vlingo/client/core/http/custom/HttpRequest;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/vlingo/client/core/http/custom/HttpRequest;->setPath(Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;->ivRequestQueue:Lcom/vlingo/client/core/recognizer/Queue;

    invoke-virtual {v0}, Lcom/vlingo/client/core/http/custom/HttpInteraction;->getRequest()Lcom/vlingo/client/core/http/custom/HttpRequest;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vlingo/client/core/recognizer/Queue;->add(Ljava/lang/Object;)V

    .line 67
    iget-object v1, p0, Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;->ivResponseQueue:Lcom/vlingo/client/core/recognizer/Queue;

    invoke-virtual {v0}, Lcom/vlingo/client/core/http/custom/HttpInteraction;->getResponse()Lcom/vlingo/client/core/http/custom/HttpResponse;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vlingo/client/core/recognizer/Queue;->add(Ljava/lang/Object;)V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    .line 68
    monitor-exit p0

    return-object v0

    .line 64
    .end local v0           #dhi:Lcom/vlingo/client/core/http/custom/HttpInteraction;
    :catchall_21
    move-exception v1

    monitor-exit p0

    throw v1
.end method

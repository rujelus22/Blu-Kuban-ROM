.class public Lcom/vlingo/client/core/http/custom/VHttpConnection;
.super Ljava/lang/Object;
.source "VHttpConnection.java"


# static fields
.field private static log:Lcom/vlingo/client/core/logging/Logger;


# instance fields
.field private ivChunkSize:I

.field protected ivCon:Lcom/vlingo/client/core/http/custom/VStreamConnection;

.field private ivConFactory:Lcom/vlingo/client/core/http/custom/VConnectionFactory;

.field private m_HttpInteraction:Lcom/vlingo/client/core/http/custom/HttpInteraction;

.field private m_URL:Lcom/vlingo/client/core/http/URL;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const-class v0, Lcom/vlingo/client/core/http/custom/VHttpConnection;

    invoke-static {v0}, Lcom/vlingo/client/core/logging/Logger;->getLogger(Ljava/lang/Class;)Lcom/vlingo/client/core/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/vlingo/client/core/http/custom/VHttpConnection;->log:Lcom/vlingo/client/core/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/vlingo/client/core/http/custom/VConnectionFactory;Lcom/vlingo/client/core/http/URL;)V
    .registers 5
    .parameter "conFactory"
    .parameter "url"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/vlingo/client/core/http/custom/VHttpConnection;->ivChunkSize:I

    .line 34
    if-nez p1, :cond_11

    .line 35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Connection factory may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_11
    iput-object p1, p0, Lcom/vlingo/client/core/http/custom/VHttpConnection;->ivConFactory:Lcom/vlingo/client/core/http/custom/VConnectionFactory;

    .line 38
    iput-object p2, p0, Lcom/vlingo/client/core/http/custom/VHttpConnection;->m_URL:Lcom/vlingo/client/core/http/URL;

    .line 39
    return-void
.end method

.method private primeConnection()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    new-instance v0, Lcom/vlingo/client/core/http/custom/HttpInteraction;

    invoke-direct {v0, p0}, Lcom/vlingo/client/core/http/custom/HttpInteraction;-><init>(Lcom/vlingo/client/core/http/custom/VHttpConnection;)V

    .line 99
    .local v0, dhi:Lcom/vlingo/client/core/http/custom/HttpInteraction;
    invoke-virtual {v0}, Lcom/vlingo/client/core/http/custom/HttpInteraction;->getRequest()Lcom/vlingo/client/core/http/custom/HttpRequest;

    move-result-object v2

    .line 100
    .local v2, request:Lcom/vlingo/client/core/http/custom/HttpRequest;
    const-string v4, "/voicepad/sr"

    invoke-virtual {v2, v4}, Lcom/vlingo/client/core/http/custom/HttpRequest;->setPath(Ljava/lang/String;)V

    .line 101
    const-string v4, "HEAD"

    invoke-virtual {v2, v4}, Lcom/vlingo/client/core/http/custom/HttpRequest;->setMethod(Ljava/lang/String;)V

    .line 102
    const-string v4, "Connection"

    const-string v5, "keep-alive"

    invoke-virtual {v2, v4, v5}, Lcom/vlingo/client/core/http/custom/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {v2}, Lcom/vlingo/client/core/http/custom/HttpRequest;->finish()V

    .line 106
    invoke-virtual {v0}, Lcom/vlingo/client/core/http/custom/HttpInteraction;->getResponse()Lcom/vlingo/client/core/http/custom/HttpResponse;

    move-result-object v3

    .line 107
    .local v3, response:Lcom/vlingo/client/core/http/custom/HttpResponse;
    invoke-virtual {v3}, Lcom/vlingo/client/core/http/custom/HttpResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 108
    .local v1, in:Ljava/io/InputStream;
    :cond_25
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_25

    .line 109
    return-void
.end method


# virtual methods
.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    iget-object v1, p0, Lcom/vlingo/client/core/http/custom/VHttpConnection;->ivCon:Lcom/vlingo/client/core/http/custom/VStreamConnection;

    if-eqz v1, :cond_9

    :try_start_4
    iget-object v1, p0, Lcom/vlingo/client/core/http/custom/VHttpConnection;->ivCon:Lcom/vlingo/client/core/http/custom/VStreamConnection;

    invoke-interface {v1}, Lcom/vlingo/client/core/http/custom/VStreamConnection;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_a

    .line 141
    :cond_9
    :goto_9
    return-void

    .line 138
    :catch_a
    move-exception v0

    .line 139
    .local v0, t:Ljava/lang/Exception;
    const-string v1, "VLG_EXCEPTION"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public getChunkSize()I
    .registers 2

    .prologue
    .line 79
    iget v0, p0, Lcom/vlingo/client/core/http/custom/VHttpConnection;->ivChunkSize:I

    return v0
.end method

.method public getConnectionDetails()Lcom/vlingo/client/core/net/ConnectionResult;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/vlingo/client/core/http/custom/VHttpConnection;->ivCon:Lcom/vlingo/client/core/http/custom/VStreamConnection;

    invoke-interface {v0}, Lcom/vlingo/client/core/http/custom/VStreamConnection;->getConnectionDetails()Lcom/vlingo/client/core/net/ConnectionResult;

    move-result-object v0

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/vlingo/client/core/http/custom/VHttpConnection;->m_URL:Lcom/vlingo/client/core/http/URL;

    iget-object v0, v0, Lcom/vlingo/client/core/http/URL;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpInteraction()Lcom/vlingo/client/core/http/custom/HttpInteraction;
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/vlingo/client/core/http/custom/VHttpConnection;->m_HttpInteraction:Lcom/vlingo/client/core/http/custom/HttpInteraction;

    return-object v0
.end method

.method public getInputStream(Lcom/vlingo/client/core/http/custom/HttpResponse;)Ljava/io/DataInputStream;
    .registers 3
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/vlingo/client/core/http/custom/VHttpConnection;->ivCon:Lcom/vlingo/client/core/http/custom/VStreamConnection;

    invoke-interface {v0}, Lcom/vlingo/client/core/http/custom/VStreamConnection;->getInputStream()Ljava/io/DataInputStream;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream(Lcom/vlingo/client/core/http/custom/HttpRequest;)Ljava/io/DataOutputStream;
    .registers 3
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/vlingo/client/core/http/custom/VHttpConnection;->ivCon:Lcom/vlingo/client/core/http/custom/VStreamConnection;

    invoke-interface {v0}, Lcom/vlingo/client/core/http/custom/VStreamConnection;->getOutputStream()Ljava/io/DataOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getPort()I
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/vlingo/client/core/http/custom/VHttpConnection;->m_URL:Lcom/vlingo/client/core/http/URL;

    iget v0, v0, Lcom/vlingo/client/core/http/URL;->port:I

    return v0
.end method

.method public getVStreamConnection()Lcom/vlingo/client/core/http/custom/VStreamConnection;
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/vlingo/client/core/http/custom/VHttpConnection;->ivCon:Lcom/vlingo/client/core/http/custom/VStreamConnection;

    return-object v0
.end method

.method public isOpen()Z
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/vlingo/client/core/http/custom/VHttpConnection;->ivCon:Lcom/vlingo/client/core/http/custom/VStreamConnection;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/vlingo/client/core/http/custom/VHttpConnection;->ivCon:Lcom/vlingo/client/core/http/custom/VStreamConnection;

    invoke-interface {v0}, Lcom/vlingo/client/core/http/custom/VStreamConnection;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method notifyRequestDone(Lcom/vlingo/client/core/http/custom/HttpRequest;)V
    .registers 2
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    return-void
.end method

.method notifyResponseDone(Lcom/vlingo/client/core/http/custom/HttpResponse;)V
    .registers 2
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    return-void
.end method

.method public open()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/vlingo/client/core/http/custom/VHttpConnection;->ivConFactory:Lcom/vlingo/client/core/http/custom/VConnectionFactory;

    iget-object v1, p0, Lcom/vlingo/client/core/http/custom/VHttpConnection;->m_URL:Lcom/vlingo/client/core/http/URL;

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/http/custom/VConnectionFactory;->newConnection(Lcom/vlingo/client/core/http/URL;)Lcom/vlingo/client/core/http/custom/VStreamConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/core/http/custom/VHttpConnection;->ivCon:Lcom/vlingo/client/core/http/custom/VStreamConnection;

    .line 48
    iget-object v0, p0, Lcom/vlingo/client/core/http/custom/VHttpConnection;->ivCon:Lcom/vlingo/client/core/http/custom/VStreamConnection;

    if-nez v0, :cond_16

    .line 49
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Connection factory returned null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_16
    invoke-virtual {p0}, Lcom/vlingo/client/core/http/custom/VHttpConnection;->getConnectionDetails()Lcom/vlingo/client/core/net/ConnectionResult;

    move-result-object v0

    iget v0, v0, Lcom/vlingo/client/core/net/ConnectionResult;->connectionType:I

    if-eqz v0, :cond_21

    .line 53
    invoke-direct {p0}, Lcom/vlingo/client/core/http/custom/VHttpConnection;->primeConnection()V

    .line 56
    :cond_21
    return-void
.end method

.method public openInteraction(Ljava/lang/String;)Lcom/vlingo/client/core/http/custom/HttpInteraction;
    .registers 5
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/vlingo/client/core/http/custom/VHttpConnection;->m_HttpInteraction:Lcom/vlingo/client/core/http/custom/HttpInteraction;

    if-eqz v0, :cond_c

    .line 119
    new-instance v0, Ljava/io/IOException;

    const-string v1, "New HTTP interaction attempted on non-keep-alive connection"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_c
    new-instance v0, Lcom/vlingo/client/core/http/custom/HttpInteraction;

    invoke-direct {v0, p0}, Lcom/vlingo/client/core/http/custom/HttpInteraction;-><init>(Lcom/vlingo/client/core/http/custom/VHttpConnection;)V

    iput-object v0, p0, Lcom/vlingo/client/core/http/custom/VHttpConnection;->m_HttpInteraction:Lcom/vlingo/client/core/http/custom/HttpInteraction;

    .line 122
    iget-object v0, p0, Lcom/vlingo/client/core/http/custom/VHttpConnection;->m_HttpInteraction:Lcom/vlingo/client/core/http/custom/HttpInteraction;

    invoke-virtual {v0}, Lcom/vlingo/client/core/http/custom/HttpInteraction;->getRequest()Lcom/vlingo/client/core/http/custom/HttpRequest;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vlingo/client/core/http/custom/HttpRequest;->setPath(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/vlingo/client/core/http/custom/VHttpConnection;->m_HttpInteraction:Lcom/vlingo/client/core/http/custom/HttpInteraction;

    invoke-virtual {v0}, Lcom/vlingo/client/core/http/custom/HttpInteraction;->getRequest()Lcom/vlingo/client/core/http/custom/HttpRequest;

    move-result-object v0

    const-string v1, "Transfer-Encoding"

    const-string v2, "chunked"

    invoke-virtual {v0, v1, v2}, Lcom/vlingo/client/core/http/custom/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/vlingo/client/core/http/custom/VHttpConnection;->m_HttpInteraction:Lcom/vlingo/client/core/http/custom/HttpInteraction;

    return-object v0
.end method

.method public setChunkSize(I)V
    .registers 2
    .parameter "val"

    .prologue
    .line 74
    iput p1, p0, Lcom/vlingo/client/core/http/custom/VHttpConnection;->ivChunkSize:I

    .line 75
    return-void
.end method

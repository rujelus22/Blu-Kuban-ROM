.class public Lcom/vlingo/client/core/http/custom/HttpRequest;
.super Ljava/lang/Object;
.source "HttpRequest.java"


# static fields
.field private static final HTTP_PORT:I = 0x50

.field private static log:Lcom/vlingo/client/core/logging/Logger;


# instance fields
.field private ivClientDout:Ljava/io/DataOutputStream;

.field private ivClientOut:Ljava/io/OutputStream;

.field private ivFinished:Z

.field private ivHeaders:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ivHeadersSent:Z

.field private ivInteraction:Lcom/vlingo/client/core/http/custom/HttpInteraction;

.field private ivMethod:Ljava/lang/String;

.field private ivPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const-class v0, Lcom/vlingo/client/core/http/custom/HttpRequest;

    invoke-static {v0}, Lcom/vlingo/client/core/logging/Logger;->getLogger(Ljava/lang/Class;)Lcom/vlingo/client/core/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/vlingo/client/core/http/custom/HttpRequest;->log:Lcom/vlingo/client/core/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/vlingo/client/core/http/custom/HttpInteraction;)V
    .registers 8
    .parameter "interaction"

    .prologue
    const/4 v2, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-boolean v2, p0, Lcom/vlingo/client/core/http/custom/HttpRequest;->ivFinished:Z

    .line 28
    iput-boolean v2, p0, Lcom/vlingo/client/core/http/custom/HttpRequest;->ivHeadersSent:Z

    .line 30
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, p0, Lcom/vlingo/client/core/http/custom/HttpRequest;->ivHeaders:Ljava/util/Hashtable;

    .line 32
    const-string v2, "POST"

    iput-object v2, p0, Lcom/vlingo/client/core/http/custom/HttpRequest;->ivMethod:Ljava/lang/String;

    .line 42
    if-nez p1, :cond_1d

    .line 43
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "interaction may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 45
    :cond_1d
    iput-object p1, p0, Lcom/vlingo/client/core/http/custom/HttpRequest;->ivInteraction:Lcom/vlingo/client/core/http/custom/HttpInteraction;

    .line 47
    invoke-virtual {p1}, Lcom/vlingo/client/core/http/custom/HttpInteraction;->getHTTPConnection()Lcom/vlingo/client/core/http/custom/VHttpConnection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vlingo/client/core/http/custom/VHttpConnection;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, host:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/vlingo/client/core/http/custom/HttpInteraction;->getHTTPConnection()Lcom/vlingo/client/core/http/custom/VHttpConnection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vlingo/client/core/http/custom/VHttpConnection;->getPort()I

    move-result v1

    .line 49
    .local v1, port:I
    const/16 v2, 0x50

    if-ne v1, v2, :cond_44

    .line 50
    iget-object v2, p0, Lcom/vlingo/client/core/http/custom/HttpRequest;->ivHeaders:Ljava/util/Hashtable;

    const-string v3, "Host"

    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :goto_3a
    iget-object v2, p0, Lcom/vlingo/client/core/http/custom/HttpRequest;->ivHeaders:Ljava/util/Hashtable;

    const-string v3, "User-Agent"

    const-string v4, "Vlingo HttpClient 2.0"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    return-void

    .line 52
    :cond_44
    iget-object v2, p0, Lcom/vlingo/client/core/http/custom/HttpRequest;->ivHeaders:Ljava/util/Hashtable;

    const-string v3, "Host"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3a
.end method

.method private checkFinished()V
    .registers 3

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/vlingo/client/core/http/custom/HttpRequest;->ivFinished:Z

    if-eqz v0, :cond_c

    .line 85
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "HttpRequest is closed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_c
    return-void
.end method

.method private checkHeaderSent()V
    .registers 3

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/vlingo/client/core/http/custom/HttpRequest;->ivHeadersSent:Z

    if-eqz v0, :cond_c

    .line 91
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Headers already sent, too late to specify this information"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_c
    return-void
.end method

.method private ensureHeadersSent()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    iget-boolean v1, p0, Lcom/vlingo/client/core/http/custom/HttpRequest;->ivHeadersSent:Z

    if-nez v1, :cond_1d

    .line 99
    iget-object v1, p0, Lcom/vlingo/client/core/http/custom/HttpRequest;->ivInteraction:Lcom/vlingo/client/core/http/custom/HttpInteraction;

    invoke-virtual {v1}, Lcom/vlingo/client/core/http/custom/HttpInteraction;->getHTTPConnection()Lcom/vlingo/client/core/http/custom/VHttpConnection;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/vlingo/client/core/http/custom/VHttpConnection;->getOutputStream(Lcom/vlingo/client/core/http/custom/HttpRequest;)Ljava/io/DataOutputStream;

    move-result-object v0

    .line 101
    .local v0, dout:Ljava/io/DataOutputStream;
    iget-object v1, p0, Lcom/vlingo/client/core/http/custom/HttpRequest;->ivPath:Ljava/lang/String;

    if-nez v1, :cond_1a

    .line 102
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Path is null"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 129
    :cond_1a
    invoke-direct {p0, v0}, Lcom/vlingo/client/core/http/custom/HttpRequest;->initOutputStream(Ljava/io/DataOutputStream;)V

    .line 131
    .end local v0           #dout:Ljava/io/DataOutputStream;
    :cond_1d
    return-void
.end method

.method private initOutputStream(Ljava/io/DataOutputStream;)V
    .registers 5
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    iget-object v1, p0, Lcom/vlingo/client/core/http/custom/HttpRequest;->ivHeaders:Ljava/util/Hashtable;

    const-string v2, "Transfer-Encoding"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 139
    .local v0, transferCoding:Ljava/lang/String;
    if-eqz v0, :cond_25

    const-string v1, "chunked"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 141
    new-instance v1, Lcom/vlingo/client/core/http/custom/ChunkedOutputStream;

    invoke-direct {v1, p1}, Lcom/vlingo/client/core/http/custom/ChunkedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/vlingo/client/core/http/custom/HttpRequest;->ivClientOut:Ljava/io/OutputStream;

    .line 142
    new-instance v1, Ljava/io/DataOutputStream;

    iget-object v2, p0, Lcom/vlingo/client/core/http/custom/HttpRequest;->ivClientOut:Ljava/io/OutputStream;

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/vlingo/client/core/http/custom/HttpRequest;->ivClientDout:Ljava/io/DataOutputStream;

    .line 149
    :goto_24
    return-void

    .line 146
    :cond_25
    iput-object p1, p0, Lcom/vlingo/client/core/http/custom/HttpRequest;->ivClientOut:Ljava/io/OutputStream;

    .line 147
    iput-object p1, p0, Lcom/vlingo/client/core/http/custom/HttpRequest;->ivClientDout:Ljava/io/DataOutputStream;

    goto :goto_24
.end method


# virtual methods
.method public finish()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/vlingo/client/core/http/custom/HttpRequest;->checkFinished()V

    .line 171
    invoke-direct {p0}, Lcom/vlingo/client/core/http/custom/HttpRequest;->ensureHeadersSent()V

    .line 173
    iget-object v0, p0, Lcom/vlingo/client/core/http/custom/HttpRequest;->ivClientOut:Ljava/io/OutputStream;

    instance-of v0, v0, Lcom/vlingo/client/core/http/custom/ChunkedOutputStream;

    if-eqz v0, :cond_13

    .line 175
    iget-object v0, p0, Lcom/vlingo/client/core/http/custom/HttpRequest;->ivClientOut:Ljava/io/OutputStream;

    check-cast v0, Lcom/vlingo/client/core/http/custom/ChunkedOutputStream;

    invoke-virtual {v0}, Lcom/vlingo/client/core/http/custom/ChunkedOutputStream;->writeLastChunk()V

    .line 178
    :cond_13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vlingo/client/core/http/custom/HttpRequest;->ivFinished:Z

    .line 180
    iget-object v0, p0, Lcom/vlingo/client/core/http/custom/HttpRequest;->ivInteraction:Lcom/vlingo/client/core/http/custom/HttpInteraction;

    invoke-virtual {v0}, Lcom/vlingo/client/core/http/custom/HttpInteraction;->getHTTPConnection()Lcom/vlingo/client/core/http/custom/VHttpConnection;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vlingo/client/core/http/custom/VHttpConnection;->notifyRequestDone(Lcom/vlingo/client/core/http/custom/HttpRequest;)V

    .line 181
    return-void
.end method

.method public getMethod()Ljava/lang/String;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/vlingo/client/core/http/custom/HttpRequest;->ivMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/DataOutputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/vlingo/client/core/http/custom/HttpRequest;->ensureHeadersSent()V

    .line 161
    iget-object v0, p0, Lcom/vlingo/client/core/http/custom/HttpRequest;->ivClientDout:Ljava/io/DataOutputStream;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/vlingo/client/core/http/custom/HttpRequest;->ivPath:Ljava/lang/String;

    return-object v0
.end method

.method public isFinished()Z
    .registers 2

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/vlingo/client/core/http/custom/HttpRequest;->ivFinished:Z

    return v0
.end method

.method public sendHeaders()Ljava/util/Hashtable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Lcom/vlingo/client/core/http/custom/HttpRequest;->ivHeaders:Ljava/util/Hashtable;

    return-object v0
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "name"
    .parameter "value"

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/vlingo/client/core/http/custom/HttpRequest;->checkHeaderSent()V

    .line 154
    iget-object v0, p0, Lcom/vlingo/client/core/http/custom/HttpRequest;->ivHeaders:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .registers 2
    .parameter "val"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/vlingo/client/core/http/custom/HttpRequest;->checkHeaderSent()V

    .line 70
    iput-object p1, p0, Lcom/vlingo/client/core/http/custom/HttpRequest;->ivMethod:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .registers 2
    .parameter "path"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/vlingo/client/core/http/custom/HttpRequest;->checkHeaderSent()V

    .line 59
    iput-object p1, p0, Lcom/vlingo/client/core/http/custom/HttpRequest;->ivPath:Ljava/lang/String;

    .line 60
    return-void
.end method

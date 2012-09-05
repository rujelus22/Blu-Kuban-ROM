.class public Lcom/vlingo/client/core/http/custom/HttpResponse;
.super Ljava/lang/Object;
.source "HttpResponse.java"


# instance fields
.field private ivClientDin:Ljava/io/InputStream;

.field private ivCode:Ljava/lang/String;

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

.field private ivInteraction:Lcom/vlingo/client/core/http/custom/HttpInteraction;

.field private ivMessage:Ljava/lang/String;

.field private ivProtocol:Ljava/lang/String;

.field private ivReadHeaders:Z

.field private log:Lcom/vlingo/client/core/logging/Logger;


# direct methods
.method public constructor <init>(Lcom/vlingo/client/core/http/custom/HttpInteraction;)V
    .registers 3
    .parameter "interaction"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-class v0, Lcom/vlingo/client/core/http/custom/HttpResponse;

    invoke-static {v0}, Lcom/vlingo/client/core/logging/Logger;->getLogger(Ljava/lang/Class;)Lcom/vlingo/client/core/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/core/http/custom/HttpResponse;->log:Lcom/vlingo/client/core/logging/Logger;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vlingo/client/core/http/custom/HttpResponse;->ivReadHeaders:Z

    .line 29
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/core/http/custom/HttpResponse;->ivHeaders:Ljava/util/Hashtable;

    .line 39
    iput-object p1, p0, Lcom/vlingo/client/core/http/custom/HttpResponse;->ivInteraction:Lcom/vlingo/client/core/http/custom/HttpInteraction;

    .line 40
    return-void
.end method

.method private ensureHeaders()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    iget-boolean v1, p0, Lcom/vlingo/client/core/http/custom/HttpResponse;->ivReadHeaders:Z

    if-nez v1, :cond_11

    .line 84
    iget-object v1, p0, Lcom/vlingo/client/core/http/custom/HttpResponse;->ivInteraction:Lcom/vlingo/client/core/http/custom/HttpInteraction;

    invoke-virtual {v1}, Lcom/vlingo/client/core/http/custom/HttpInteraction;->getHTTPConnection()Lcom/vlingo/client/core/http/custom/VHttpConnection;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/vlingo/client/core/http/custom/VHttpConnection;->getInputStream(Lcom/vlingo/client/core/http/custom/HttpResponse;)Ljava/io/DataInputStream;

    move-result-object v0

    .line 116
    .local v0, din:Ljava/io/DataInputStream;
    invoke-direct {p0, v0}, Lcom/vlingo/client/core/http/custom/HttpResponse;->setupInputStream(Ljava/io/InputStream;)V

    .line 118
    .end local v0           #din:Ljava/io/DataInputStream;
    :cond_11
    return-void
.end method

.method private setupInputStream(Ljava/io/InputStream;)V
    .registers 7
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    iget-object v3, p0, Lcom/vlingo/client/core/http/custom/HttpResponse;->ivHeaders:Ljava/util/Hashtable;

    const-string v4, "Transfer-Encoding"

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 140
    .local v2, transferEncoding:Ljava/lang/String;
    if-nez v2, :cond_27

    .line 142
    iget-object v3, p0, Lcom/vlingo/client/core/http/custom/HttpResponse;->ivHeaders:Ljava/util/Hashtable;

    const-string v4, "Content-Length"

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 143
    .local v0, contentLength:Ljava/lang/String;
    if-eqz v0, :cond_24

    .line 145
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 146
    .local v1, length:I
    new-instance v3, Lcom/vlingo/client/core/http/custom/LimitInputStream;

    invoke-direct {v3, p1, v1}, Lcom/vlingo/client/core/http/custom/LimitInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v3, p0, Lcom/vlingo/client/core/http/custom/HttpResponse;->ivClientDin:Ljava/io/InputStream;

    .line 157
    .end local v0           #contentLength:Ljava/lang/String;
    .end local v1           #length:I
    :goto_23
    return-void

    .line 149
    .restart local v0       #contentLength:Ljava/lang/String;
    :cond_24
    iput-object p1, p0, Lcom/vlingo/client/core/http/custom/HttpResponse;->ivClientDin:Ljava/io/InputStream;

    goto :goto_23

    .line 155
    .end local v0           #contentLength:Ljava/lang/String;
    :cond_27
    new-instance v3, Lcom/vlingo/client/core/http/custom/ChunkedInputStream;

    invoke-direct {v3, p1}, Lcom/vlingo/client/core/http/custom/ChunkedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v3, p0, Lcom/vlingo/client/core/http/custom/HttpResponse;->ivClientDin:Ljava/io/InputStream;

    goto :goto_23
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
    .line 169
    iget-object v0, p0, Lcom/vlingo/client/core/http/custom/HttpResponse;->ivInteraction:Lcom/vlingo/client/core/http/custom/HttpInteraction;

    invoke-virtual {v0}, Lcom/vlingo/client/core/http/custom/HttpInteraction;->getHTTPConnection()Lcom/vlingo/client/core/http/custom/VHttpConnection;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vlingo/client/core/http/custom/VHttpConnection;->notifyResponseDone(Lcom/vlingo/client/core/http/custom/HttpResponse;)V

    .line 170
    return-void
.end method

.method public getCode()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/vlingo/client/core/http/custom/HttpResponse;->ensureHeaders()V

    .line 46
    iget-object v0, p0, Lcom/vlingo/client/core/http/custom/HttpResponse;->ivCode:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderNames()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/vlingo/client/core/http/custom/HttpResponse;->ensureHeaders()V

    .line 67
    iget-object v0, p0, Lcom/vlingo/client/core/http/custom/HttpResponse;->ivHeaders:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/vlingo/client/core/http/custom/HttpResponse;->ensureHeaders()V

    .line 74
    iget-object v0, p0, Lcom/vlingo/client/core/http/custom/HttpResponse;->ivHeaders:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/vlingo/client/core/http/custom/HttpResponse;->ensureHeaders()V

    .line 162
    iget-object v0, p0, Lcom/vlingo/client/core/http/custom/HttpResponse;->ivClientDin:Ljava/io/InputStream;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/vlingo/client/core/http/custom/HttpResponse;->ensureHeaders()V

    .line 53
    iget-object v0, p0, Lcom/vlingo/client/core/http/custom/HttpResponse;->ivMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/vlingo/client/core/http/custom/HttpResponse;->ensureHeaders()V

    .line 60
    iget-object v0, p0, Lcom/vlingo/client/core/http/custom/HttpResponse;->ivProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public readHeaders()Ljava/util/Hashtable;
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
    .line 174
    iget-object v0, p0, Lcom/vlingo/client/core/http/custom/HttpResponse;->ivHeaders:Ljava/util/Hashtable;

    return-object v0
.end method

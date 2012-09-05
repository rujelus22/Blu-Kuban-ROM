.class public Lcom/vlingo/client/core/recognizer/sr3/ChunkingHttpConnection;
.super Lcom/vlingo/client/core/recognizer/sr3/HttpConnectionAdapter;
.source "ChunkingHttpConnection.java"


# static fields
.field private static log:Lcom/vlingo/client/core/logging/Logger;


# instance fields
.field private ivCon:Lcom/vlingo/client/core/http/custom/VHttpConnection;

.field private ivDin:Ljava/io/InputStream;

.field private ivDout:Ljava/io/DataOutputStream;

.field private ivInteraction:Lcom/vlingo/client/core/http/custom/HttpInteraction;

.field private ivMPOut:Lcom/vlingo/client/core/http/custom/MPOutputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const-class v0, Lcom/vlingo/client/core/recognizer/sr3/ChunkingHttpConnection;

    invoke-static {v0}, Lcom/vlingo/client/core/logging/Logger;->getLogger(Ljava/lang/Class;)Lcom/vlingo/client/core/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/vlingo/client/core/recognizer/sr3/ChunkingHttpConnection;->log:Lcom/vlingo/client/core/logging/Logger;

    return-void
.end method

.method constructor <init>(Lcom/vlingo/client/core/http/custom/VHttpConnection;Lcom/vlingo/client/core/http/custom/HttpInteraction;I)V
    .registers 4
    .parameter "con"
    .parameter "interaction"
    .parameter "requestID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p3}, Lcom/vlingo/client/core/recognizer/sr3/HttpConnectionAdapter;-><init>(I)V

    .line 48
    iput-object p1, p0, Lcom/vlingo/client/core/recognizer/sr3/ChunkingHttpConnection;->ivCon:Lcom/vlingo/client/core/http/custom/VHttpConnection;

    .line 49
    iput-object p2, p0, Lcom/vlingo/client/core/recognizer/sr3/ChunkingHttpConnection;->ivInteraction:Lcom/vlingo/client/core/http/custom/HttpInteraction;

    .line 50
    return-void
.end method

.method private static initConnection(Lcom/vlingo/client/core/http/custom/VHttpConnection;Ljava/lang/String;Ljava/lang/String;Lcom/vlingo/client/core/recognizer/ClientMeta;Lcom/vlingo/client/core/recognizer/SoftwareMeta;Ljava/util/Hashtable;I)Lcom/vlingo/client/core/recognizer/sr3/ChunkingHttpConnection;
    .registers 15
    .parameter "connection"
    .parameter "method"
    .parameter "path"
    .parameter "client"
    .parameter "software"
    .parameter
    .parameter "clientRequestId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vlingo/client/core/http/custom/VHttpConnection;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/vlingo/client/core/recognizer/ClientMeta;",
            "Lcom/vlingo/client/core/recognizer/SoftwareMeta;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)",
            "Lcom/vlingo/client/core/recognizer/sr3/ChunkingHttpConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    .local p5, cookies:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p2}, Lcom/vlingo/client/core/http/custom/VHttpConnection;->openInteraction(Ljava/lang/String;)Lcom/vlingo/client/core/http/custom/HttpInteraction;

    move-result-object v3

    .line 81
    .local v3, it:Lcom/vlingo/client/core/http/custom/HttpInteraction;
    invoke-virtual {v3}, Lcom/vlingo/client/core/http/custom/HttpInteraction;->getRequest()Lcom/vlingo/client/core/http/custom/HttpRequest;

    move-result-object v5

    .line 82
    .local v5, request:Lcom/vlingo/client/core/http/custom/HttpRequest;
    invoke-virtual {v5, p1}, Lcom/vlingo/client/core/http/custom/HttpRequest;->setMethod(Ljava/lang/String;)V

    .line 84
    const-string v6, "pref.internal.asr_keepalive"

    invoke-static {v6}, Lcom/vlingo/client/core/settings/CoreSettingsProvider;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1a

    .line 85
    const-string v6, "Connection"

    const-string v7, "Close"

    invoke-virtual {v5, v6, v7}, Lcom/vlingo/client/core/http/custom/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_1a
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 90
    .local v2, headers:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v2, p3, p4}, Lcom/vlingo/client/core/vlservice/VLServiceUtil;->addStandardVlingoHttpHeaders(Ljava/util/Hashtable;Lcom/vlingo/client/core/recognizer/ClientMeta;Lcom/vlingo/client/core/recognizer/SoftwareMeta;)V

    .line 91
    invoke-virtual {p0}, Lcom/vlingo/client/core/http/custom/VHttpConnection;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/vlingo/client/core/http/custom/HttpRequest;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {p5, v6, v7}, Lcom/vlingo/client/core/vlservice/VLServiceUtil;->addVLServiceCookies(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object p5

    .line 93
    invoke-virtual {v2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 94
    .local v1, hEnum:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    :goto_32
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_48

    .line 95
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 96
    .local v4, name:Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v4, v6}, Lcom/vlingo/client/core/http/custom/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32

    .line 99
    .end local v4           #name:Ljava/lang/String;
    :cond_48
    invoke-static {p5}, Lcom/vlingo/client/core/http/HttpUtil;->getCookies(Ljava/util/Hashtable;)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, cookieStr:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_57

    .line 101
    const-string v6, "Cookie"

    invoke-virtual {v5, v6, v0}, Lcom/vlingo/client/core/http/custom/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_57
    new-instance v6, Lcom/vlingo/client/core/recognizer/sr3/ChunkingHttpConnection;

    invoke-direct {v6, p0, v3, p6}, Lcom/vlingo/client/core/recognizer/sr3/ChunkingHttpConnection;-><init>(Lcom/vlingo/client/core/http/custom/VHttpConnection;Lcom/vlingo/client/core/http/custom/HttpInteraction;I)V

    return-object v6
.end method

.method public static newConnection(Lcom/vlingo/client/core/http/custom/VHttpConnection;Ljava/lang/String;Ljava/lang/String;Lcom/vlingo/client/core/recognizer/ClientMeta;Lcom/vlingo/client/core/recognizer/SoftwareMeta;Ljava/util/Hashtable;I)Lcom/vlingo/client/core/recognizer/sr3/ChunkingHttpConnection;
    .registers 8
    .parameter "connection"
    .parameter "method"
    .parameter "path"
    .parameter "client"
    .parameter "software"
    .parameter
    .parameter "clientRequestId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vlingo/client/core/http/custom/VHttpConnection;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/vlingo/client/core/recognizer/ClientMeta;",
            "Lcom/vlingo/client/core/recognizer/SoftwareMeta;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)",
            "Lcom/vlingo/client/core/recognizer/sr3/ChunkingHttpConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    .local p5, cookies:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static/range {p0 .. p6}, Lcom/vlingo/client/core/recognizer/sr3/ChunkingHttpConnection;->initConnection(Lcom/vlingo/client/core/http/custom/VHttpConnection;Ljava/lang/String;Ljava/lang/String;Lcom/vlingo/client/core/recognizer/ClientMeta;Lcom/vlingo/client/core/recognizer/SoftwareMeta;Ljava/util/Hashtable;I)Lcom/vlingo/client/core/recognizer/sr3/ChunkingHttpConnection;

    move-result-object v0

    return-object v0
.end method

.method public static newConnection(Lcom/vlingo/client/core/net/ConnectionProvider;Ljava/lang/String;Lcom/vlingo/client/core/http/URL;Lcom/vlingo/client/core/recognizer/ClientMeta;Lcom/vlingo/client/core/recognizer/SoftwareMeta;Ljava/util/Hashtable;I)Lcom/vlingo/client/core/recognizer/sr3/ChunkingHttpConnection;
    .registers 14
    .parameter "connectionProvider"
    .parameter "method"
    .parameter "url"
    .parameter "client"
    .parameter "software"
    .parameter
    .parameter "clientRequestId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vlingo/client/core/net/ConnectionProvider;",
            "Ljava/lang/String;",
            "Lcom/vlingo/client/core/http/URL;",
            "Lcom/vlingo/client/core/recognizer/ClientMeta;",
            "Lcom/vlingo/client/core/recognizer/SoftwareMeta;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)",
            "Lcom/vlingo/client/core/recognizer/sr3/ChunkingHttpConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    .local p5, cookies:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/vlingo/client/core/http/custom/VHttpConnection;

    invoke-static {p0}, Lcom/vlingo/client/core/http/custom/VConnectionFactory;->newInstance(Lcom/vlingo/client/core/net/ConnectionProvider;)Lcom/vlingo/client/core/http/custom/VConnectionFactory;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/vlingo/client/core/http/custom/VHttpConnection;-><init>(Lcom/vlingo/client/core/http/custom/VConnectionFactory;Lcom/vlingo/client/core/http/URL;)V

    .line 68
    .local v0, hc:Lcom/vlingo/client/core/http/custom/VHttpConnection;
    invoke-virtual {v0}, Lcom/vlingo/client/core/http/custom/VHttpConnection;->open()V

    .line 69
    iget-object v2, p2, Lcom/vlingo/client/core/http/URL;->path:Ljava/lang/String;

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Lcom/vlingo/client/core/recognizer/sr3/ChunkingHttpConnection;->initConnection(Lcom/vlingo/client/core/http/custom/VHttpConnection;Ljava/lang/String;Ljava/lang/String;Lcom/vlingo/client/core/recognizer/ClientMeta;Lcom/vlingo/client/core/recognizer/SoftwareMeta;Ljava/util/Hashtable;I)Lcom/vlingo/client/core/recognizer/sr3/ChunkingHttpConnection;

    move-result-object v1

    return-object v1
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
    .line 158
    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/sr3/ChunkingHttpConnection;->ivDin:Ljava/io/InputStream;

    if-eqz v1, :cond_9

    .line 160
    :try_start_4
    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/sr3/ChunkingHttpConnection;->ivDin:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_25

    .line 165
    :cond_9
    :goto_9
    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/sr3/ChunkingHttpConnection;->ivMPOut:Lcom/vlingo/client/core/http/custom/MPOutputStream;

    if-eqz v1, :cond_12

    .line 167
    :try_start_d
    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/sr3/ChunkingHttpConnection;->ivMPOut:Lcom/vlingo/client/core/http/custom/MPOutputStream;

    invoke-virtual {v1}, Lcom/vlingo/client/core/http/custom/MPOutputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_12} :catch_30

    .line 172
    :cond_12
    :goto_12
    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/sr3/ChunkingHttpConnection;->ivDout:Ljava/io/DataOutputStream;

    if-eqz v1, :cond_1b

    .line 174
    :try_start_16
    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/sr3/ChunkingHttpConnection;->ivDout:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1b} :catch_3b

    .line 179
    :cond_1b
    :goto_1b
    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/sr3/ChunkingHttpConnection;->ivCon:Lcom/vlingo/client/core/http/custom/VHttpConnection;

    if-eqz v1, :cond_24

    .line 181
    :try_start_1f
    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/sr3/ChunkingHttpConnection;->ivCon:Lcom/vlingo/client/core/http/custom/VHttpConnection;

    invoke-virtual {v1}, Lcom/vlingo/client/core/http/custom/VHttpConnection;->close()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_24} :catch_46

    .line 186
    :cond_24
    :goto_24
    return-void

    .line 161
    :catch_25
    move-exception v0

    .line 162
    .local v0, t:Ljava/lang/Exception;
    const-string v1, "VLG_EXCEPTION"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 168
    .end local v0           #t:Ljava/lang/Exception;
    :catch_30
    move-exception v0

    .line 169
    .restart local v0       #t:Ljava/lang/Exception;
    const-string v1, "VLG_EXCEPTION"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 175
    .end local v0           #t:Ljava/lang/Exception;
    :catch_3b
    move-exception v0

    .line 176
    .restart local v0       #t:Ljava/lang/Exception;
    const-string v1, "VLG_EXCEPTION"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 182
    .end local v0           #t:Ljava/lang/Exception;
    :catch_46
    move-exception v0

    .line 183
    .restart local v0       #t:Ljava/lang/Exception;
    const-string v1, "VLG_EXCEPTION"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24
.end method

.method public finishRequest()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/sr3/ChunkingHttpConnection;->ivInteraction:Lcom/vlingo/client/core/http/custom/HttpInteraction;

    invoke-virtual {v0}, Lcom/vlingo/client/core/http/custom/HttpInteraction;->getRequest()Lcom/vlingo/client/core/http/custom/HttpRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/core/http/custom/HttpRequest;->finish()V

    .line 190
    return-void
.end method

.method public finishResponse()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/sr3/ChunkingHttpConnection;->ivInteraction:Lcom/vlingo/client/core/http/custom/HttpInteraction;

    invoke-virtual {v0}, Lcom/vlingo/client/core/http/custom/HttpInteraction;->getResponse()Lcom/vlingo/client/core/http/custom/HttpResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/core/http/custom/HttpResponse;->finish()V

    .line 195
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/sr3/ChunkingHttpConnection;->ivCon:Lcom/vlingo/client/core/http/custom/VHttpConnection;

    instance-of v0, v0, Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;

    if-nez v0, :cond_12

    .line 196
    invoke-virtual {p0}, Lcom/vlingo/client/core/recognizer/sr3/ChunkingHttpConnection;->close()V

    .line 198
    :cond_12
    return-void
.end method

.method public getConnection()Lcom/vlingo/client/core/http/custom/VHttpConnection;
    .registers 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/sr3/ChunkingHttpConnection;->ivCon:Lcom/vlingo/client/core/http/custom/VHttpConnection;

    return-object v0
.end method

.method public getIn()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/sr3/ChunkingHttpConnection;->ivDin:Ljava/io/InputStream;

    if-nez v0, :cond_10

    .line 149
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/sr3/ChunkingHttpConnection;->ivInteraction:Lcom/vlingo/client/core/http/custom/HttpInteraction;

    invoke-virtual {v0}, Lcom/vlingo/client/core/http/custom/HttpInteraction;->getResponse()Lcom/vlingo/client/core/http/custom/HttpResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/core/http/custom/HttpResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/core/recognizer/sr3/ChunkingHttpConnection;->ivDin:Ljava/io/InputStream;

    .line 151
    :cond_10
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/sr3/ChunkingHttpConnection;->ivDin:Ljava/io/InputStream;

    return-object v0
.end method

.method public getOut()Lcom/vlingo/client/core/http/custom/MPOutputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/sr3/ChunkingHttpConnection;->ivMPOut:Lcom/vlingo/client/core/http/custom/MPOutputStream;

    if-nez v0, :cond_1b

    .line 138
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/sr3/ChunkingHttpConnection;->ivInteraction:Lcom/vlingo/client/core/http/custom/HttpInteraction;

    invoke-virtual {v0}, Lcom/vlingo/client/core/http/custom/HttpInteraction;->getRequest()Lcom/vlingo/client/core/http/custom/HttpRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/core/http/custom/HttpRequest;->getOutputStream()Ljava/io/DataOutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/core/recognizer/sr3/ChunkingHttpConnection;->ivDout:Ljava/io/DataOutputStream;

    .line 139
    new-instance v0, Lcom/vlingo/client/core/http/custom/MPOutputStream;

    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/sr3/ChunkingHttpConnection;->ivDout:Ljava/io/DataOutputStream;

    sget-object v2, Lcom/vlingo/client/core/recognizer/sr3/ChunkingHttpConnection;->ivBoundary:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/vlingo/client/core/http/custom/MPOutputStream;-><init>(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vlingo/client/core/recognizer/sr3/ChunkingHttpConnection;->ivMPOut:Lcom/vlingo/client/core/http/custom/MPOutputStream;

    .line 141
    :cond_1b
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/sr3/ChunkingHttpConnection;->ivMPOut:Lcom/vlingo/client/core/http/custom/MPOutputStream;

    return-object v0
.end method

.method public getResponseHeaderField(I)Ljava/lang/String;
    .registers 4
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lcom/vlingo/client/core/recognizer/sr3/ChunkingHttpConnection;->getResponseHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, key:Ljava/lang/String;
    if-nez v0, :cond_8

    .line 111
    const/4 v1, 0x0

    .line 112
    :goto_7
    return-object v1

    :cond_8
    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/sr3/ChunkingHttpConnection;->ivInteraction:Lcom/vlingo/client/core/http/custom/HttpInteraction;

    invoke-virtual {v1}, Lcom/vlingo/client/core/http/custom/HttpInteraction;->getResponse()Lcom/vlingo/client/core/http/custom/HttpResponse;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/vlingo/client/core/http/custom/HttpResponse;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_7
.end method

.method public getResponseHeaderFieldKey(I)Ljava/lang/String;
    .registers 6
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    iget-object v3, p0, Lcom/vlingo/client/core/recognizer/sr3/ChunkingHttpConnection;->ivInteraction:Lcom/vlingo/client/core/http/custom/HttpInteraction;

    invoke-virtual {v3}, Lcom/vlingo/client/core/http/custom/HttpInteraction;->getResponse()Lcom/vlingo/client/core/http/custom/HttpResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vlingo/client/core/http/custom/HttpResponse;->getHeaderNames()Ljava/util/Enumeration;

    move-result-object v1

    .line 118
    .local v1, hEnum:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 119
    .local v0, field:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_c
    if-gt v2, p1, :cond_15

    .line 120
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_16

    .line 121
    const/4 v0, 0x0

    .line 125
    .end local v0           #field:Ljava/lang/String;
    :cond_15
    return-object v0

    .line 123
    .restart local v0       #field:Ljava/lang/String;
    :cond_16
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #field:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 119
    .restart local v0       #field:Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_c
.end method

.method public setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/sr3/ChunkingHttpConnection;->ivInteraction:Lcom/vlingo/client/core/http/custom/HttpInteraction;

    invoke-virtual {v0}, Lcom/vlingo/client/core/http/custom/HttpInteraction;->getRequest()Lcom/vlingo/client/core/http/custom/HttpRequest;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/vlingo/client/core/http/custom/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return-void
.end method

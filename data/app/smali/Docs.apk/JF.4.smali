.class public LJF;
.super Ljava/lang/Object;
.source "GoogleHttpClient.java"

# interfaces
.implements Lorg/apache/http/client/HttpClient;


# instance fields
.field private final a:LJl;

.field private final a:Landroid/content/ContentResolver;

.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    if-eqz p3, :cond_43

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; gzip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    :cond_43
    invoke-static {v0, p1}, LJl;->a(Ljava/lang/String;Landroid/content/Context;)LJl;

    move-result-object v1

    iput-object v1, p0, LJF;->a:LJl;

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, LJF;->a:Landroid/content/ContentResolver;

    .line 97
    iput-object p2, p0, LJF;->a:Ljava/lang/String;

    .line 98
    iput-object v0, p0, LJF;->b:Ljava/lang/String;

    .line 99
    return-void
.end method

.method private static a(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/impl/client/RequestWrapper;
    .registers 3
    .parameter

    .prologue
    .line 165
    :try_start_0
    instance-of v0, p0, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v0, :cond_f

    .line 166
    new-instance v0, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;

    check-cast p0, Lorg/apache/http/HttpEntityEnclosingRequest;

    invoke-direct {v0, p0}, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;-><init>(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    .line 172
    :goto_b
    invoke-virtual {v0}, Lorg/apache/http/impl/client/RequestWrapper;->resetHeaders()V

    .line 174
    return-object v0

    .line 168
    :cond_f
    new-instance v0, Lorg/apache/http/impl/client/RequestWrapper;

    invoke-direct {v0, p0}, Lorg/apache/http/impl/client/RequestWrapper;-><init>(Lorg/apache/http/HttpRequest;)V
    :try_end_14
    .catch Lorg/apache/http/ProtocolException; {:try_start_0 .. :try_end_14} :catch_15

    goto :goto_b

    .line 175
    :catch_15
    move-exception v0

    .line 176
    new-instance v1, Lorg/apache/http/client/ClientProtocolException;

    invoke-direct {v1, v0}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public a(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 112
    .line 113
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 115
    iget-object v0, p0, LJF;->a:LJl;

    invoke-virtual {v0, p1, p2}, LJl;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 116
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    .line 117
    return-object v0
.end method

.method public a(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 256
    iget-object v0, p0, LJF;->a:LJl;

    invoke-virtual {v0, p1, p2}, LJl;->a(Ljava/lang/String;I)V

    .line 257
    return-void
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 239
    iget-object v0, p0, LJF;->a:LJl;

    invoke-virtual {v0, p1, p2, p3}, LJl;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 246
    iget-object v0, p0, LJF;->a:LJl;

    invoke-virtual {v0, p1, p2, p3, p4}, LJl;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 227
    iget-object v0, p0, LJF;->a:LJl;

    invoke-virtual {v0, p1, p2}, LJl;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 233
    iget-object v0, p0, LJF;->a:LJl;

    invoke-virtual {v0, p1, p2, p3}, LJl;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 215
    iget-object v0, p0, LJF;->a:LJl;

    invoke-virtual {v0, p1, p2}, LJl;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 221
    iget-object v0, p0, LJF;->a:LJl;

    invoke-virtual {v0, p1, p2, p3}, LJl;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .registers 3
    .parameter

    .prologue
    .line 210
    const/4 v0, 0x0

    check-cast v0, Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {p0, p1, v0}, LJF;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 129
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    iget-object v1, p0, LJF;->a:Landroid/content/ContentResolver;

    invoke-static {v1}, Lacv;->a(Landroid/content/ContentResolver;)Lacv;

    move-result-object v1

    .line 132
    invoke-virtual {v1, v0}, Lacv;->a(Ljava/lang/String;)Lacw;

    move-result-object v1

    .line 133
    invoke-virtual {v1, v0}, Lacw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 135
    if-nez v2, :cond_42

    .line 136
    const-string v2, "GoogleHttpClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Blocked by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lacw;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    new-instance v0, LJG;

    invoke-direct {v0, v1}, LJG;-><init>(Lacw;)V

    throw v0

    .line 138
    :cond_42
    if-ne v2, v0, :cond_49

    .line 139
    invoke-virtual {p0, p1, p2}, LJF;->a(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 154
    :goto_48
    return-object v0

    .line 143
    :cond_49
    :try_start_49
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_4e
    .catch Ljava/net/URISyntaxException; {:try_start_49 .. :try_end_4e} :catch_5a

    .line 149
    invoke-static {p1}, LJF;->a(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/impl/client/RequestWrapper;

    move-result-object v1

    .line 150
    invoke-virtual {v1, v0}, Lorg/apache/http/impl/client/RequestWrapper;->setURI(Ljava/net/URI;)V

    .line 154
    invoke-virtual {p0, v1, p2}, LJF;->a(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    goto :goto_48

    .line 144
    :catch_5a
    move-exception v0

    .line 145
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad URL from rule: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, v1, Lacw;->a:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
    .registers 2

    .prologue
    .line 205
    iget-object v0, p0, LJF;->a:LJl;

    invoke-virtual {v0}, LJl;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    return-object v0
.end method

.method public getParams()Lorg/apache/http/params/HttpParams;
    .registers 2

    .prologue
    .line 200
    iget-object v0, p0, LJF;->a:LJl;

    invoke-virtual {v0}, LJl;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    return-object v0
.end method

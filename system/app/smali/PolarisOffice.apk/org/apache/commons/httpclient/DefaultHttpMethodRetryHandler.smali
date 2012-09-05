.class public Lorg/apache/commons/httpclient/DefaultHttpMethodRetryHandler;
.super Ljava/lang/Object;
.source "DefaultHttpMethodRetryHandler.java"

# interfaces
.implements Lorg/apache/commons/httpclient/HttpMethodRetryHandler;


# static fields
.field private static SSL_HANDSHAKE_EXCEPTION:Ljava/lang/Class;


# instance fields
.field private requestSentRetryEnabled:Z

.field private retryCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 47
    const/4 v0, 0x0

    sput-object v0, Lorg/apache/commons/httpclient/DefaultHttpMethodRetryHandler;->SSL_HANDSHAKE_EXCEPTION:Ljava/lang/Class;

    .line 51
    :try_start_3
    const-string v0, "javax.net.ssl.SSLHandshakeException"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/DefaultHttpMethodRetryHandler;->SSL_HANDSHAKE_EXCEPTION:Ljava/lang/Class;
    :try_end_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_b} :catch_c

    .line 54
    :goto_b
    return-void

    .line 52
    :catch_c
    move-exception v0

    goto :goto_b
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 77
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/httpclient/DefaultHttpMethodRetryHandler;-><init>(IZ)V

    .line 78
    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 3
    .parameter "retryCount"
    .parameter "requestSentRetryEnabled"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput p1, p0, Lorg/apache/commons/httpclient/DefaultHttpMethodRetryHandler;->retryCount:I

    .line 69
    iput-boolean p2, p0, Lorg/apache/commons/httpclient/DefaultHttpMethodRetryHandler;->requestSentRetryEnabled:Z

    .line 70
    return-void
.end method


# virtual methods
.method public getRetryCount()I
    .registers 2

    .prologue
    .line 146
    iget v0, p0, Lorg/apache/commons/httpclient/DefaultHttpMethodRetryHandler;->retryCount:I

    return v0
.end method

.method public isRequestSentRetryEnabled()Z
    .registers 2

    .prologue
    .line 139
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/DefaultHttpMethodRetryHandler;->requestSentRetryEnabled:Z

    return v0
.end method

.method public retryMethod(Lorg/apache/commons/httpclient/HttpMethod;Ljava/io/IOException;I)Z
    .registers 7
    .parameter "method"
    .parameter "exception"
    .parameter "executionCount"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 89
    if-nez p1, :cond_c

    .line 90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP method may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_c
    if-nez p2, :cond_16

    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Exception parameter may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_16
    instance-of v0, p1, Lorg/apache/commons/httpclient/HttpMethodBase;

    if-eqz v0, :cond_25

    move-object v0, p1

    .line 97
    check-cast v0, Lorg/apache/commons/httpclient/HttpMethodBase;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpMethodBase;->isAborted()Z

    move-result v0

    if-eqz v0, :cond_25

    move v0, v1

    .line 131
    :goto_24
    return v0

    .line 101
    :cond_25
    iget v0, p0, Lorg/apache/commons/httpclient/DefaultHttpMethodRetryHandler;->retryCount:I

    if-le p3, v0, :cond_2b

    move v0, v1

    .line 103
    goto :goto_24

    .line 105
    :cond_2b
    instance-of v0, p2, Lorg/apache/commons/httpclient/NoHttpResponseException;

    if-eqz v0, :cond_31

    move v0, v2

    .line 107
    goto :goto_24

    .line 109
    :cond_31
    instance-of v0, p2, Ljava/io/InterruptedIOException;

    if-eqz v0, :cond_37

    move v0, v1

    .line 111
    goto :goto_24

    .line 113
    :cond_37
    instance-of v0, p2, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_3d

    move v0, v1

    .line 115
    goto :goto_24

    .line 117
    :cond_3d
    instance-of v0, p2, Ljava/net/NoRouteToHostException;

    if-eqz v0, :cond_43

    move v0, v1

    .line 119
    goto :goto_24

    .line 121
    :cond_43
    sget-object v0, Lorg/apache/commons/httpclient/DefaultHttpMethodRetryHandler;->SSL_HANDSHAKE_EXCEPTION:Ljava/lang/Class;

    if-eqz v0, :cond_51

    sget-object v0, Lorg/apache/commons/httpclient/DefaultHttpMethodRetryHandler;->SSL_HANDSHAKE_EXCEPTION:Ljava/lang/Class;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    move v0, v1

    .line 123
    goto :goto_24

    .line 125
    :cond_51
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->isRequestSent()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-boolean v0, p0, Lorg/apache/commons/httpclient/DefaultHttpMethodRetryHandler;->requestSentRetryEnabled:Z

    if-eqz v0, :cond_5d

    :cond_5b
    move v0, v2

    .line 128
    goto :goto_24

    :cond_5d
    move v0, v1

    .line 131
    goto :goto_24
.end method

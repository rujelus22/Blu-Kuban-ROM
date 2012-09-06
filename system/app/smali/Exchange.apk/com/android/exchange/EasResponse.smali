.class public Lcom/android/exchange/EasResponse;
.super Ljava/lang/Object;
.source "EasResponse.java"


# instance fields
.field private mClientCertRequested:Z

.field private mClosed:Z

.field private final mEntity:Lorg/apache/http/HttpEntity;

.field private mInputStream:Ljava/io/InputStream;

.field private final mLength:I

.field final mResponse:Lorg/apache/http/HttpResponse;


# direct methods
.method private constructor <init>(Lorg/apache/http/HttpResponse;)V
    .registers 4
    .parameter "response"

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-boolean v1, p0, Lcom/android/exchange/EasResponse;->mClientCertRequested:Z

    .line 53
    iput-object p1, p0, Lcom/android/exchange/EasResponse;->mResponse:Lorg/apache/http/HttpResponse;

    .line 54
    if-nez p1, :cond_1b

    const/4 v0, 0x0

    :goto_b
    iput-object v0, p0, Lcom/android/exchange/EasResponse;->mEntity:Lorg/apache/http/HttpEntity;

    .line 55
    iget-object v0, p0, Lcom/android/exchange/EasResponse;->mEntity:Lorg/apache/http/HttpEntity;

    if-eqz v0, :cond_22

    .line 56
    iget-object v0, p0, Lcom/android/exchange/EasResponse;->mEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/exchange/EasResponse;->mLength:I

    .line 60
    :goto_1a
    return-void

    .line 54
    :cond_1b
    iget-object v0, p0, Lcom/android/exchange/EasResponse;->mResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    goto :goto_b

    .line 58
    :cond_22
    iput v1, p0, Lcom/android/exchange/EasResponse;->mLength:I

    goto :goto_1a
.end method

.method public static fromHttpRequest(Lcom/android/emailcommon/utility/EmailClientConnectionManager;Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lcom/android/exchange/EasResponse;
    .registers 9
    .parameter "connManager"
    .parameter "client"
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 67
    .local v0, reqTime:J
    invoke-interface {p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 68
    .local v2, response:Lorg/apache/http/HttpResponse;
    new-instance v3, Lcom/android/exchange/EasResponse;

    invoke-direct {v3, v2}, Lcom/android/exchange/EasResponse;-><init>(Lorg/apache/http/HttpResponse;)V

    .line 69
    .local v3, result:Lcom/android/exchange/EasResponse;
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    invoke-static {v4}, Lcom/android/exchange/EasResponse;->isAuthError(I)Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/utility/EmailClientConnectionManager;->hasDetectedUnsatisfiedCertReq(J)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 71
    iput-boolean v5, v3, Lcom/android/exchange/EasResponse;->mClientCertRequested:Z

    .line 72
    iput-boolean v5, v3, Lcom/android/exchange/EasResponse;->mClosed:Z

    .line 75
    :cond_26
    return-object v3
.end method

.method public static isAuthError(I)Z
    .registers 2
    .parameter "code"

    .prologue
    .line 84
    const/16 v0, 0x191

    if-eq p0, v0, :cond_8

    const/16 v0, 0x193

    if-ne p0, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isProvisionError(I)Z
    .registers 2
    .parameter "code"

    .prologue
    .line 93
    const/16 v0, 0x1c1

    if-eq p0, v0, :cond_8

    const/16 v0, 0x193

    if-ne p0, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method public close()V
    .registers 2

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/android/exchange/EasResponse;->mClosed:Z

    if-nez v0, :cond_1b

    .line 150
    iget-object v0, p0, Lcom/android/exchange/EasResponse;->mEntity:Lorg/apache/http/HttpEntity;

    if-eqz v0, :cond_d

    .line 152
    :try_start_8
    iget-object v0, p0, Lcom/android/exchange/EasResponse;->mEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_d} :catch_1e

    .line 157
    :cond_d
    :goto_d
    iget-object v0, p0, Lcom/android/exchange/EasResponse;->mInputStream:Ljava/io/InputStream;

    instance-of v0, v0, Ljava/util/zip/GZIPInputStream;

    if-eqz v0, :cond_18

    .line 159
    :try_start_13
    iget-object v0, p0, Lcom/android/exchange/EasResponse;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_18} :catch_1c

    .line 164
    :cond_18
    :goto_18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exchange/EasResponse;->mClosed:Z

    .line 166
    :cond_1b
    return-void

    .line 160
    :catch_1c
    move-exception v0

    goto :goto_18

    .line 153
    :catch_1e
    move-exception v0

    goto :goto_d
.end method

.method public getHeader(Ljava/lang/String;)Lorg/apache/http/Header;
    .registers 3
    .parameter "name"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/exchange/EasResponse;->mResponse:Lorg/apache/http/HttpResponse;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/android/exchange/EasResponse;->mResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v0, p1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    goto :goto_5
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 7

    .prologue
    .line 102
    iget-object v4, p0, Lcom/android/exchange/EasResponse;->mInputStream:Ljava/io/InputStream;

    if-nez v4, :cond_8

    iget-boolean v4, p0, Lcom/android/exchange/EasResponse;->mClosed:Z

    if-eqz v4, :cond_10

    .line 103
    :cond_8
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Can\'t reuse stream or get closed stream"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 104
    :cond_10
    iget-object v4, p0, Lcom/android/exchange/EasResponse;->mEntity:Lorg/apache/http/HttpEntity;

    if-nez v4, :cond_1c

    .line 105
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Can\'t get input stream without entity"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 107
    :cond_1c
    const/4 v2, 0x0

    .line 110
    .local v2, is:Ljava/io/InputStream;
    :try_start_1d
    iget-object v4, p0, Lcom/android/exchange/EasResponse;->mEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    .line 111
    iget-object v4, p0, Lcom/android/exchange/EasResponse;->mResponse:Lorg/apache/http/HttpResponse;

    const-string v5, "Content-Encoding"

    invoke-interface {v4, v5}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 112
    .local v0, ceHeader:Lorg/apache/http/Header;
    if-eqz v0, :cond_43

    .line 113
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, encoding:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "gzip"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 116
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v3, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_42
    .catch Ljava/lang/IllegalStateException; {:try_start_1d .. :try_end_42} :catch_48
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_42} :catch_46

    .end local v2           #is:Ljava/io/InputStream;
    .local v3, is:Ljava/io/InputStream;
    move-object v2, v3

    .line 122
    .end local v0           #ceHeader:Lorg/apache/http/Header;
    .end local v1           #encoding:Ljava/lang/String;
    .end local v3           #is:Ljava/io/InputStream;
    .restart local v2       #is:Ljava/io/InputStream;
    :cond_43
    :goto_43
    iput-object v2, p0, Lcom/android/exchange/EasResponse;->mInputStream:Ljava/io/InputStream;

    .line 123
    return-object v2

    .line 120
    :catch_46
    move-exception v4

    goto :goto_43

    .line 119
    :catch_48
    move-exception v4

    goto :goto_43
.end method

.method public getLength()I
    .registers 2

    .prologue
    .line 145
    iget v0, p0, Lcom/android/exchange/EasResponse;->mLength:I

    return v0
.end method

.method public getStatus()I
    .registers 2

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/android/exchange/EasResponse;->mClientCertRequested:Z

    if-eqz v0, :cond_7

    const/16 v0, 0x191

    :goto_6
    return v0

    :cond_7
    iget-object v0, p0, Lcom/android/exchange/EasResponse;->mResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    goto :goto_6
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 127
    iget v0, p0, Lcom/android/exchange/EasResponse;->mLength:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isMissingCertificate()Z
    .registers 2

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/android/exchange/EasResponse;->mClientCertRequested:Z

    return v0
.end method

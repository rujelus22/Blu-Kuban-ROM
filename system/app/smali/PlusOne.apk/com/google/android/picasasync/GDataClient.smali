.class final Lcom/google/android/picasasync/GDataClient;
.super Ljava/lang/Object;
.source "GDataClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/picasasync/GDataClient$Operation;
    }
.end annotation


# static fields
.field private static final HTTP_PARAMS:Lorg/apache/http/params/HttpParams;


# instance fields
.field private mAuthToken:Ljava/lang/String;

.field private final mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 46
    invoke-static {}, Lcom/google/android/picasasync/HttpUtils;->createDefaultHttpClientParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    sput-object v0, Lcom/google/android/picasasync/GDataClient;->HTTP_PARAMS:Lorg/apache/http/params/HttpParams;

    .line 52
    sget-object v0, Lcom/google/android/picasasync/GDataClient;->HTTP_PARAMS:Lorg/apache/http/params/HttpParams;

    const-string v1, "GData/1.0; gzip"

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method constructor <init>()V
    .registers 4

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-static {}, Lcom/google/android/picasasync/HttpUtils;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    sget-object v2, Lcom/google/android/picasasync/GDataClient;->HTTP_PARAMS:Lorg/apache/http/params/HttpParams;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v0, p0, Lcom/google/android/picasasync/GDataClient;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 66
    return-void
.end method

.method private callMethod(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/google/android/picasasync/GDataClient$Operation;)V
    .registers 16
    .parameter "request"
    .parameter "operation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    const-string v10, "GData-Version"

    const-string v11, "2"

    invoke-interface {p1, v10, v11}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v10, "Accept-Encoding"

    const-string v11, "gzip"

    invoke-interface {p1, v10, v11}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/google/android/picasasync/GDataClient;->mAuthToken:Ljava/lang/String;

    .line 126
    .local v0, authToken:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2e

    .line 127
    const-string v10, "Authorization"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "GoogleLogin auth="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {p1, v10, v11}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_2e
    iget-object v3, p2, Lcom/google/android/picasasync/GDataClient$Operation;->inOutEtag:Ljava/lang/String;

    .line 132
    .local v3, etag:Ljava/lang/String;
    if-eqz v3, :cond_37

    .line 133
    const-string v10, "If-None-Match"

    invoke-interface {p1, v10, v3}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :cond_37
    const/4 v6, 0x0

    .line 139
    .local v6, httpResponse:Lorg/apache/http/HttpResponse;
    :try_start_38
    iget-object v10, p0, Lcom/google/android/picasasync/GDataClient;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v10, p1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3d} :catch_8e

    move-result-object v6

    .line 144
    const/4 v10, 0x0

    iput-object v10, p2, Lcom/google/android/picasasync/GDataClient$Operation;->outBody:Ljava/io/InputStream;

    .line 147
    :try_start_41
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    .line 148
    .local v7, status:I
    const/4 v8, 0x0

    .line 149
    .local v8, stream:Ljava/io/InputStream;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 150
    .local v2, entity:Lorg/apache/http/HttpEntity;
    if-eqz v2, :cond_6e

    .line 152
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v8

    .line 153
    if-eqz v8, :cond_6e

    .line 154
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v5

    .line 155
    .local v5, header:Lorg/apache/http/Header;
    if-eqz v5, :cond_6e

    .line 156
    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v10

    const-string v11, "gzip"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6e

    .line 157
    new-instance v9, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v9, v8}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v8           #stream:Ljava/io/InputStream;
    .local v9, stream:Ljava/io/InputStream;
    move-object v8, v9

    .line 163
    .end local v5           #header:Lorg/apache/http/Header;
    .end local v9           #stream:Ljava/io/InputStream;
    .restart local v8       #stream:Ljava/io/InputStream;
    :cond_6e
    const-string v10, "ETag"

    invoke-interface {v6, v10}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v4

    .line 164
    .local v4, etagHeader:Lorg/apache/http/Header;
    iput v7, p2, Lcom/google/android/picasasync/GDataClient$Operation;->outStatus:I

    .line 165
    if-eqz v4, :cond_ac

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v10

    :goto_7c
    iput-object v10, p2, Lcom/google/android/picasasync/GDataClient$Operation;->inOutEtag:Ljava/lang/String;

    .line 166
    iput-object v8, p2, Lcom/google/android/picasasync/GDataClient$Operation;->outBody:Ljava/io/InputStream;
    :try_end_80
    .catchall {:try_start_41 .. :try_end_80} :catchall_ae

    .line 170
    iget-object v10, p2, Lcom/google/android/picasasync/GDataClient$Operation;->outBody:Ljava/io/InputStream;

    if-nez v10, :cond_8d

    .line 171
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 172
    if-eqz v2, :cond_8d

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 175
    :cond_8d
    return-void

    .line 140
    .end local v2           #entity:Lorg/apache/http/HttpEntity;
    .end local v4           #etagHeader:Lorg/apache/http/Header;
    .end local v7           #status:I
    .end local v8           #stream:Ljava/io/InputStream;
    :catch_8e
    move-exception v1

    .line 141
    .local v1, e:Ljava/io/IOException;
    const-string v10, "GDataClient"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Request failed: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    throw v1

    .line 165
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #entity:Lorg/apache/http/HttpEntity;
    .restart local v4       #etagHeader:Lorg/apache/http/Header;
    .restart local v7       #status:I
    .restart local v8       #stream:Ljava/io/InputStream;
    :cond_ac
    const/4 v10, 0x0

    goto :goto_7c

    .line 170
    .end local v2           #entity:Lorg/apache/http/HttpEntity;
    .end local v4           #etagHeader:Lorg/apache/http/Header;
    .end local v7           #status:I
    .end local v8           #stream:Ljava/io/InputStream;
    :catchall_ae
    move-exception v10

    iget-object v11, p2, Lcom/google/android/picasasync/GDataClient$Operation;->outBody:Ljava/io/InputStream;

    if-nez v11, :cond_bc

    .line 171
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 172
    .restart local v2       #entity:Lorg/apache/http/HttpEntity;
    if-eqz v2, :cond_bc

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 173
    .end local v2           #entity:Lorg/apache/http/HttpEntity;
    :cond_bc
    throw v10
.end method

.method private static replaceHttpWithHttps(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "input"

    .prologue
    .line 60
    const-string v0, "http:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "http:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 63
    .end local p0
    :cond_25
    return-object p0
.end method


# virtual methods
.method public get(Ljava/lang/String;Lcom/google/android/picasasync/GDataClient$Operation;)V
    .registers 5
    .parameter "feedUrl"
    .parameter "operation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-static {p1}, Lcom/google/android/picasasync/GDataClient;->replaceHttpWithHttps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/google/android/picasasync/GDataClient;->callMethod(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/google/android/picasasync/GDataClient$Operation;)V

    .line 78
    return-void
.end method

.method public setAuthToken(Ljava/lang/String;)V
    .registers 2
    .parameter "authToken"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/google/android/picasasync/GDataClient;->mAuthToken:Ljava/lang/String;

    .line 74
    return-void
.end method

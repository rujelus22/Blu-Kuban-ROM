.class final Lcom/google/android/picasasync/GDataClient;
.super Ljava/lang/Object;
.source "GDataClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/picasasync/GDataClient$Operation;
    }
.end annotation


# instance fields
.field private mAuthToken:Ljava/lang/String;

.field private mHttpClient:Lorg/apache/http/client/HttpClient;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v0, "GData/1.0; gzip"

    invoke-static {v0}, Lcom/google/android/picasastore/HttpUtils;->createHttpClient(Ljava/lang/String;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/picasasync/GDataClient;->mHttpClient:Lorg/apache/http/client/HttpClient;

    .line 63
    return-void
.end method

.method private callMethod(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/google/android/picasasync/GDataClient$Operation;)V
    .registers 20
    .parameter "request"
    .parameter "operation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    const-string v14, "GData-Version"

    const-string v15, "2"

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v15}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v14, "Accept-Encoding"

    const-string v15, "gzip"

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v15}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/picasasync/GDataClient;->mAuthToken:Ljava/lang/String;

    .line 123
    .local v1, authToken:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_36

    .line 124
    const-string v14, "Authorization"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "GoogleLogin auth="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v15}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :cond_36
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/google/android/picasasync/GDataClient$Operation;->inOutEtag:Ljava/lang/String;

    .line 129
    .local v5, etag:Ljava/lang/String;
    if-eqz v5, :cond_43

    .line 130
    const-string v14, "If-None-Match"

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v5}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :cond_43
    const/4 v8, 0x0

    .line 136
    .local v8, httpResponse:Lorg/apache/http/HttpResponse;
    :try_start_44
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 137
    .local v9, startTime:J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/picasasync/GDataClient;->mHttpClient:Lorg/apache/http/client/HttpClient;

    move-object/from16 v0, p1

    invoke-interface {v14, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 138
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    sub-long/2addr v14, v9

    invoke-static {v14, v15}, Lcom/google/android/picasastore/MetricsUtils;->incrementNetworkOpDuration(J)V
    :try_end_5a
    .catchall {:try_start_44 .. :try_end_5a} :catchall_100
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_5a} :catch_b9

    .line 153
    const-wide/16 v14, 0x1

    invoke-static {v14, v15}, Lcom/google/android/picasastore/MetricsUtils;->incrementNetworkOpCount(J)V

    .line 155
    :goto_5f
    const/4 v14, 0x0

    move-object/from16 v0, p2

    iput-object v14, v0, Lcom/google/android/picasasync/GDataClient$Operation;->outBody:Ljava/io/InputStream;

    .line 158
    :try_start_64
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v11

    .line 159
    .local v11, status:I
    const/4 v12, 0x0

    .line 160
    .local v12, stream:Ljava/io/InputStream;
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 161
    .local v4, entity:Lorg/apache/http/HttpEntity;
    if-eqz v4, :cond_91

    .line 163
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v12

    .line 164
    if-eqz v12, :cond_91

    .line 165
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v7

    .line 166
    .local v7, header:Lorg/apache/http/Header;
    if-eqz v7, :cond_91

    .line 167
    invoke-interface {v7}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v14

    const-string v15, "gzip"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_91

    .line 168
    new-instance v13, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v13, v12}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v12           #stream:Ljava/io/InputStream;
    .local v13, stream:Ljava/io/InputStream;
    move-object v12, v13

    .line 174
    .end local v7           #header:Lorg/apache/http/Header;
    .end local v13           #stream:Ljava/io/InputStream;
    .restart local v12       #stream:Ljava/io/InputStream;
    :cond_91
    const-string v14, "ETag"

    invoke-interface {v8, v14}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v6

    .line 175
    .local v6, etagHeader:Lorg/apache/http/Header;
    move-object/from16 v0, p2

    iput v11, v0, Lcom/google/android/picasasync/GDataClient$Operation;->outStatus:I

    .line 176
    if-eqz v6, :cond_107

    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v14

    :goto_a1
    move-object/from16 v0, p2

    iput-object v14, v0, Lcom/google/android/picasasync/GDataClient$Operation;->inOutEtag:Ljava/lang/String;

    .line 177
    move-object/from16 v0, p2

    iput-object v12, v0, Lcom/google/android/picasasync/GDataClient$Operation;->outBody:Ljava/io/InputStream;
    :try_end_a9
    .catchall {:try_start_64 .. :try_end_a9} :catchall_109

    .line 181
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/google/android/picasasync/GDataClient$Operation;->outBody:Ljava/io/InputStream;

    if-nez v14, :cond_b8

    .line 182
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 183
    if-eqz v4, :cond_b8

    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 186
    :cond_b8
    return-void

    .line 139
    .end local v4           #entity:Lorg/apache/http/HttpEntity;
    .end local v6           #etagHeader:Lorg/apache/http/Header;
    .end local v9           #startTime:J
    .end local v11           #status:I
    .end local v12           #stream:Ljava/io/InputStream;
    :catch_b9
    move-exception v2

    .line 140
    .local v2, e:Ljava/io/IOException;
    :try_start_ba
    const-string v14, "GDataClient"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Request failed, retry again: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface/range {p1 .. p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_da
    .catchall {:try_start_ba .. :try_end_da} :catchall_100

    .line 145
    :try_start_da
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 146
    .restart local v9       #startTime:J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/picasasync/GDataClient;->mHttpClient:Lorg/apache/http/client/HttpClient;

    move-object/from16 v0, p1

    invoke-interface {v14, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 147
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    sub-long/2addr v14, v9

    invoke-static {v14, v15}, Lcom/google/android/picasastore/MetricsUtils;->incrementNetworkOpDuration(J)V
    :try_end_f0
    .catchall {:try_start_da .. :try_end_f0} :catchall_100
    .catch Ljava/io/IOException; {:try_start_da .. :try_end_f0} :catch_f7

    .line 153
    const-wide/16 v14, 0x1

    invoke-static {v14, v15}, Lcom/google/android/picasastore/MetricsUtils;->incrementNetworkOpCount(J)V

    goto/16 :goto_5f

    .line 148
    .end local v9           #startTime:J
    :catch_f7
    move-exception v3

    .line 149
    .local v3, e2:Ljava/io/IOException;
    :try_start_f8
    const-string v14, "GDataClient"

    const-string v15, "retry failed again"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    throw v3
    :try_end_100
    .catchall {:try_start_f8 .. :try_end_100} :catchall_100

    .line 153
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #e2:Ljava/io/IOException;
    :catchall_100
    move-exception v14

    const-wide/16 v15, 0x1

    invoke-static/range {v15 .. v16}, Lcom/google/android/picasastore/MetricsUtils;->incrementNetworkOpCount(J)V

    throw v14

    .line 176
    .restart local v4       #entity:Lorg/apache/http/HttpEntity;
    .restart local v6       #etagHeader:Lorg/apache/http/Header;
    .restart local v9       #startTime:J
    .restart local v11       #status:I
    .restart local v12       #stream:Ljava/io/InputStream;
    :cond_107
    const/4 v14, 0x0

    goto :goto_a1

    .line 181
    .end local v4           #entity:Lorg/apache/http/HttpEntity;
    .end local v6           #etagHeader:Lorg/apache/http/Header;
    .end local v11           #status:I
    .end local v12           #stream:Ljava/io/InputStream;
    :catchall_109
    move-exception v14

    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/google/android/picasasync/GDataClient$Operation;->outBody:Ljava/io/InputStream;

    if-nez v15, :cond_119

    .line 182
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 183
    .restart local v4       #entity:Lorg/apache/http/HttpEntity;
    if-eqz v4, :cond_119

    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 184
    .end local v4           #entity:Lorg/apache/http/HttpEntity;
    :cond_119
    throw v14
.end method

.method private static replaceHttpWithHttps(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "input"

    .prologue
    .line 57
    const-string v0, "http:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 58
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

    .line 60
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
    .line 74
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-static {p1}, Lcom/google/android/picasasync/GDataClient;->replaceHttpWithHttps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/google/android/picasasync/GDataClient;->callMethod(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/google/android/picasasync/GDataClient$Operation;)V

    .line 75
    return-void
.end method

.method public setAuthToken(Ljava/lang/String;)V
    .registers 2
    .parameter "authToken"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/android/picasasync/GDataClient;->mAuthToken:Ljava/lang/String;

    .line 71
    return-void
.end method

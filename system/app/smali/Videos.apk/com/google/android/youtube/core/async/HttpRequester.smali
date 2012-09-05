.class public final Lcom/google/android/youtube/core/async/HttpRequester;
.super Lcom/google/android/youtube/core/async/ConvertingRequester;
.source "HttpRequester.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/youtube/core/async/ConvertingRequester",
        "<TR;TE;",
        "Lorg/apache/http/client/methods/HttpUriRequest;",
        "Lorg/apache/http/HttpResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final httpClient:Lorg/apache/http/client/HttpClient;

.field private final respondNull:Z


# direct methods
.method public constructor <init>(Lorg/apache/http/client/HttpClient;Lcom/google/android/youtube/core/converter/RequestConverter;)V
    .registers 4
    .parameter "httpClient"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/HttpClient;",
            "Lcom/google/android/youtube/core/converter/RequestConverter",
            "<TR;",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, this:Lcom/google/android/youtube/core/async/HttpRequester;,"Lcom/google/android/youtube/core/async/HttpRequester<TR;TE;>;"
    .local p2, requestConverter:Lcom/google/android/youtube/core/converter/RequestConverter;,"Lcom/google/android/youtube/core/converter/RequestConverter<TR;Lorg/apache/http/client/methods/HttpUriRequest;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/youtube/core/async/ConvertingRequester;-><init>(Lcom/google/android/youtube/core/converter/RequestConverter;Lcom/google/android/youtube/core/converter/ResponseConverter;)V

    .line 48
    const-string v0, "httpClient may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/client/HttpClient;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/HttpRequester;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/async/HttpRequester;->respondNull:Z

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/client/HttpClient;Lcom/google/android/youtube/core/converter/RequestConverter;Lcom/google/android/youtube/core/converter/ResponseConverter;)V
    .registers 5
    .parameter "httpClient"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/HttpClient;",
            "Lcom/google/android/youtube/core/converter/RequestConverter",
            "<TR;",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            ">;",
            "Lcom/google/android/youtube/core/converter/ResponseConverter",
            "<",
            "Lorg/apache/http/HttpResponse;",
            "TE;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, this:Lcom/google/android/youtube/core/async/HttpRequester;,"Lcom/google/android/youtube/core/async/HttpRequester<TR;TE;>;"
    .local p2, requestConverter:Lcom/google/android/youtube/core/converter/RequestConverter;,"Lcom/google/android/youtube/core/converter/RequestConverter<TR;Lorg/apache/http/client/methods/HttpUriRequest;>;"
    .local p3, responseConverter:Lcom/google/android/youtube/core/converter/ResponseConverter;,"Lcom/google/android/youtube/core/converter/ResponseConverter<Lorg/apache/http/HttpResponse;TE;>;"
    invoke-direct {p0, p2, p3}, Lcom/google/android/youtube/core/async/ConvertingRequester;-><init>(Lcom/google/android/youtube/core/converter/RequestConverter;Lcom/google/android/youtube/core/converter/ResponseConverter;)V

    .line 41
    const-string v0, "httpClient may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/client/HttpClient;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/HttpRequester;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/async/HttpRequester;->respondNull:Z

    .line 43
    return-void
.end method

.method private consumeContentResponse(Lorg/apache/http/HttpResponse;)V
    .registers 3
    .parameter "httpResponse"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    .local p0, this:Lcom/google/android/youtube/core/async/HttpRequester;,"Lcom/google/android/youtube/core/async/HttpRequester<TR;TE;>;"
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 95
    .local v0, httpEntity:Lorg/apache/http/HttpEntity;
    if-eqz v0, :cond_9

    .line 96
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 98
    :cond_9
    return-void
.end method

.method private is2xxStatusCode(I)Z
    .registers 3
    .parameter "code"

    .prologue
    .line 101
    .local p0, this:Lcom/google/android/youtube/core/async/HttpRequester;,"Lcom/google/android/youtube/core/async/HttpRequester<TR;TE;>;"
    const/16 v0, 0xc8

    if-lt p1, v0, :cond_a

    const/16 v0, 0x12c

    if-ge p1, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method protected bridge synthetic doRequest(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    .local p0, this:Lcom/google/android/youtube/core/async/HttpRequester;,"Lcom/google/android/youtube/core/async/HttpRequester<TR;TE;>;"
    check-cast p1, Lorg/apache/http/client/methods/HttpUriRequest;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/async/HttpRequester;->doRequest(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/google/android/youtube/core/async/Callback;)V

    return-void
.end method

.method protected doRequest(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/google/android/youtube/core/async/Callback;)V
    .registers 9
    .parameter "httpRequest"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/HttpResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, this:Lcom/google/android/youtube/core/async/HttpRequester;,"Lcom/google/android/youtube/core/async/HttpRequester<TR;TE;>;"
    .local p2, callback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/HttpResponse;>;"
    const-string v4, "request can\'t be null"

    invoke-static {p1, v4}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const/4 v2, 0x0

    .line 62
    .local v2, httpResponse:Lorg/apache/http/HttpResponse;
    :try_start_6
    iget-object v4, p0, Lcom/google/android/youtube/core/async/HttpRequester;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v4, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 63
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 64
    .local v0, code:I
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, reason:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/async/HttpRequester;->is2xxStatusCode(I)Z

    move-result v4

    if-nez v4, :cond_7d

    .line 66
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Http error: request=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 67
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Http error: status=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] msg=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;)V

    .line 68
    new-instance v4, Lorg/apache/http/client/HttpResponseException;

    invoke-direct {v4, v0, v3}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, p1, v4}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    :try_end_70
    .catchall {:try_start_6 .. :try_end_70} :catchall_99
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_70} :catch_94
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_70} :catch_a0

    .line 79
    if-eqz v2, :cond_75

    .line 81
    :try_start_72
    invoke-direct {p0, v2}, Lcom/google/android/youtube/core/async/HttpRequester;->consumeContentResponse(Lorg/apache/http/HttpResponse;)V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_75} :catch_76

    .line 87
    .end local v0           #code:I
    .end local v3           #reason:Ljava/lang/String;
    :cond_75
    :goto_75
    return-void

    .line 82
    .restart local v0       #code:I
    .restart local v3       #reason:Ljava/lang/String;
    :catch_76
    move-exception v1

    .line 83
    .local v1, e:Ljava/io/IOException;
    const-string v4, "Error consuming content response"

    invoke-static {v4, v1}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_75

    .line 71
    .end local v1           #e:Ljava/io/IOException;
    :cond_7d
    :try_start_7d
    iget-boolean v4, p0, Lcom/google/android/youtube/core/async/HttpRequester;->respondNull:Z

    if-eqz v4, :cond_92

    const/4 v4, 0x0

    :goto_82
    invoke-interface {p2, p1, v4}, Lcom/google/android/youtube/core/async/Callback;->onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_85
    .catchall {:try_start_7d .. :try_end_85} :catchall_99
    .catch Ljava/lang/RuntimeException; {:try_start_7d .. :try_end_85} :catch_94
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_85} :catch_a0

    .line 79
    if-eqz v2, :cond_75

    .line 81
    :try_start_87
    invoke-direct {p0, v2}, Lcom/google/android/youtube/core/async/HttpRequester;->consumeContentResponse(Lorg/apache/http/HttpResponse;)V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8a} :catch_8b

    goto :goto_75

    .line 82
    :catch_8b
    move-exception v1

    .line 83
    .restart local v1       #e:Ljava/io/IOException;
    const-string v4, "Error consuming content response"

    invoke-static {v4, v1}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_75

    .end local v1           #e:Ljava/io/IOException;
    :cond_92
    move-object v4, v2

    .line 71
    goto :goto_82

    .line 72
    .end local v0           #code:I
    .end local v3           #reason:Ljava/lang/String;
    :catch_94
    move-exception v1

    .line 73
    .local v1, e:Ljava/lang/RuntimeException;
    :try_start_95
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 74
    throw v1
    :try_end_99
    .catchall {:try_start_95 .. :try_end_99} :catchall_99

    .line 79
    .end local v1           #e:Ljava/lang/RuntimeException;
    :catchall_99
    move-exception v4

    if-eqz v2, :cond_9f

    .line 81
    :try_start_9c
    invoke-direct {p0, v2}, Lcom/google/android/youtube/core/async/HttpRequester;->consumeContentResponse(Lorg/apache/http/HttpResponse;)V
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_9f} :catch_b1

    .line 84
    :cond_9f
    :goto_9f
    throw v4

    .line 75
    :catch_a0
    move-exception v1

    .line 77
    .local v1, e:Ljava/lang/Exception;
    :try_start_a1
    invoke-interface {p2, p1, v1}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    :try_end_a4
    .catchall {:try_start_a1 .. :try_end_a4} :catchall_99

    .line 79
    if-eqz v2, :cond_75

    .line 81
    :try_start_a6
    invoke-direct {p0, v2}, Lcom/google/android/youtube/core/async/HttpRequester;->consumeContentResponse(Lorg/apache/http/HttpResponse;)V
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_a9} :catch_aa

    goto :goto_75

    .line 82
    :catch_aa
    move-exception v1

    .line 83
    .local v1, e:Ljava/io/IOException;
    const-string v4, "Error consuming content response"

    invoke-static {v4, v1}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_75

    .line 82
    .end local v1           #e:Ljava/io/IOException;
    :catch_b1
    move-exception v1

    .line 83
    .restart local v1       #e:Ljava/io/IOException;
    const-string v5, "Error consuming content response"

    invoke-static {v5, v1}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9f
.end method

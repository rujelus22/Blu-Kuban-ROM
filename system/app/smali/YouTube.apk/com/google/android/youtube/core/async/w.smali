.class public final Lcom/google/android/youtube/core/async/w;
.super Lcom/google/android/youtube/core/async/j;
.source "SourceFile"


# instance fields
.field private final a:Lorg/apache/http/client/HttpClient;


# direct methods
.method public constructor <init>(Lorg/apache/http/client/HttpClient;Lcom/google/android/youtube/core/converter/a;Lcom/google/android/youtube/core/converter/http/ao;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p2, p3}, Lcom/google/android/youtube/core/async/j;-><init>(Lcom/google/android/youtube/core/converter/a;Lcom/google/android/youtube/core/converter/b;)V

    .line 40
    const-string v0, "httpClient may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/client/HttpClient;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/w;->a:Lorg/apache/http/client/HttpClient;

    .line 41
    return-void
.end method

.method private static a(Lorg/apache/http/HttpResponse;)V
    .registers 2
    .parameter

    .prologue
    .line 93
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_9

    .line 95
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 97
    :cond_9
    return-void
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/youtube/core/async/g;Ljava/lang/Exception;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    check-cast p2, Lorg/apache/http/client/methods/HttpUriRequest;

    instance-of v0, p4, Lorg/apache/http/client/HttpResponseException;

    if-eqz v0, :cond_56

    move-object v0, p4

    check-cast v0, Lorg/apache/http/client/HttpResponseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Http error: request=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Http error: status=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] msg=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;)V

    :cond_56
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/youtube/core/async/j;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/youtube/core/async/g;Ljava/lang/Exception;)V

    return-void
.end method

.method protected final synthetic b(Ljava/lang/Object;Lcom/google/android/youtube/core/async/g;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 31
    check-cast p1, Lorg/apache/http/client/methods/HttpUriRequest;

    const-string v0, "request can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    :try_start_8
    iget-object v0, p0, Lcom/google/android/youtube/core/async/w;->a:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-interface {p2, p1, v1}, Lcom/google/android/youtube/core/async/g;->a(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_34
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_11} :catch_1e
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_11} :catch_2f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_11} :catch_3b

    if-eqz v1, :cond_16

    :try_start_13
    invoke-static {v1}, Lcom/google/android/youtube/core/async/w;->a(Lorg/apache/http/HttpResponse;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_17

    :cond_16
    :goto_16
    return-void

    :catch_17
    move-exception v0

    const-string v1, "Error consuming content response"

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_16

    :catch_1e
    move-exception v0

    :try_start_1f
    invoke-interface {p2, p1, v0}, Lcom/google/android/youtube/core/async/g;->a(Ljava/lang/Object;Ljava/lang/Exception;)V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_34

    if-eqz v1, :cond_16

    :try_start_24
    invoke-static {v1}, Lcom/google/android/youtube/core/async/w;->a(Lorg/apache/http/HttpResponse;)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_28

    goto :goto_16

    :catch_28
    move-exception v0

    const-string v1, "Error consuming content response"

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_16

    :catch_2f
    move-exception v0

    :try_start_30
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    throw v0
    :try_end_34
    .catchall {:try_start_30 .. :try_end_34} :catchall_34

    :catchall_34
    move-exception v0

    if-eqz v1, :cond_3a

    :try_start_37
    invoke-static {v1}, Lcom/google/android/youtube/core/async/w;->a(Lorg/apache/http/HttpResponse;)V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_4c

    :cond_3a
    :goto_3a
    throw v0

    :catch_3b
    move-exception v0

    :try_start_3c
    invoke-interface {p2, p1, v0}, Lcom/google/android/youtube/core/async/g;->a(Ljava/lang/Object;Ljava/lang/Exception;)V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_34

    if-eqz v1, :cond_16

    :try_start_41
    invoke-static {v1}, Lcom/google/android/youtube/core/async/w;->a(Lorg/apache/http/HttpResponse;)V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_45

    goto :goto_16

    :catch_45
    move-exception v0

    const-string v1, "Error consuming content response"

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_16

    :catch_4c
    move-exception v1

    const-string v2, "Error consuming content response"

    invoke-static {v2, v1}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3a
.end method

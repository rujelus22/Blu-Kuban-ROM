.class public final Lcom/google/android/youtube/core/async/ag;
.super Lcom/google/android/youtube/core/async/o;
.source "SourceFile"


# instance fields
.field private final a:Lorg/apache/http/client/HttpClient;

.field private b:Z


# direct methods
.method public constructor <init>(Lorg/apache/http/client/HttpClient;Lcom/google/android/youtube/core/converter/a;Lcom/google/android/youtube/core/converter/http/bc;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0, p2, p3}, Lcom/google/android/youtube/core/async/o;-><init>(Lcom/google/android/youtube/core/converter/a;Lcom/google/android/youtube/core/converter/b;)V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/async/ag;->b:Z

    .line 51
    const-string v0, "httpClient may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/client/HttpClient;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/ag;->a:Lorg/apache/http/client/HttpClient;

    .line 52
    return-void
.end method

.method private static a(Lorg/apache/http/HttpResponse;)V
    .registers 2
    .parameter

    .prologue
    .line 131
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_9

    .line 133
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 135
    :cond_9
    return-void
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/youtube/core/async/l;Ljava/lang/Exception;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    check-cast p2, Lorg/apache/http/client/methods/HttpUriRequest;

    instance-of v0, p4, Lorg/apache/http/client/HttpResponseException;

    if-eqz v0, :cond_4e

    move-object v0, p4

    check-cast v0, Lorg/apache/http/client/HttpResponseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Http error: request=["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    const-string v2, "Http error: status=["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    :cond_4e
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/youtube/core/async/o;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/youtube/core/async/l;Ljava/lang/Exception;)V

    return-void
.end method

.method protected final synthetic b(Ljava/lang/Object;Lcom/google/android/youtube/core/async/l;)V
    .registers 11
    .parameter
    .parameter

    .prologue
    .line 32
    check-cast p1, Lorg/apache/http/client/methods/HttpUriRequest;

    const-string v0, "request can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/google/android/youtube/core/async/ag;->b:Z

    if-eqz v0, :cond_66

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "curl"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_1b
    if-ge v0, v3, :cond_4f

    aget-object v4, v2, v0

    const-string v5, " -H \'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\'"

    const-string v7, "\\\'"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\'"

    const-string v6, "\\\'"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_4f
    const-string v0, " \'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    :cond_66
    const/4 v1, 0x0

    :try_start_67
    iget-object v0, p0, Lcom/google/android/youtube/core/async/ag;->a:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-interface {p2, p1, v1}, Lcom/google/android/youtube/core/async/l;->a(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_70
    .catchall {:try_start_67 .. :try_end_70} :catchall_93
    .catch Ljava/lang/IllegalStateException; {:try_start_67 .. :try_end_70} :catch_7d
    .catch Ljava/lang/RuntimeException; {:try_start_67 .. :try_end_70} :catch_8e
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_70} :catch_9a

    if-eqz v1, :cond_75

    :try_start_72
    invoke-static {v1}, Lcom/google/android/youtube/core/async/ag;->a(Lorg/apache/http/HttpResponse;)V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_75} :catch_76

    :cond_75
    :goto_75
    return-void

    :catch_76
    move-exception v0

    const-string v1, "Error consuming content response"

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_75

    :catch_7d
    move-exception v0

    :try_start_7e
    invoke-interface {p2, p1, v0}, Lcom/google/android/youtube/core/async/l;->a(Ljava/lang/Object;Ljava/lang/Exception;)V
    :try_end_81
    .catchall {:try_start_7e .. :try_end_81} :catchall_93

    if-eqz v1, :cond_75

    :try_start_83
    invoke-static {v1}, Lcom/google/android/youtube/core/async/ag;->a(Lorg/apache/http/HttpResponse;)V
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_86} :catch_87

    goto :goto_75

    :catch_87
    move-exception v0

    const-string v1, "Error consuming content response"

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_75

    :catch_8e
    move-exception v0

    :try_start_8f
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    throw v0
    :try_end_93
    .catchall {:try_start_8f .. :try_end_93} :catchall_93

    :catchall_93
    move-exception v0

    if-eqz v1, :cond_99

    :try_start_96
    invoke-static {v1}, Lcom/google/android/youtube/core/async/ag;->a(Lorg/apache/http/HttpResponse;)V
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_99} :catch_ab

    :cond_99
    :goto_99
    throw v0

    :catch_9a
    move-exception v0

    :try_start_9b
    invoke-interface {p2, p1, v0}, Lcom/google/android/youtube/core/async/l;->a(Ljava/lang/Object;Ljava/lang/Exception;)V
    :try_end_9e
    .catchall {:try_start_9b .. :try_end_9e} :catchall_93

    if-eqz v1, :cond_75

    :try_start_a0
    invoke-static {v1}, Lcom/google/android/youtube/core/async/ag;->a(Lorg/apache/http/HttpResponse;)V
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_a3} :catch_a4

    goto :goto_75

    :catch_a4
    move-exception v0

    const-string v1, "Error consuming content response"

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_75

    :catch_ab
    move-exception v1

    const-string v2, "Error consuming content response"

    invoke-static {v2, v1}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_99
.end method

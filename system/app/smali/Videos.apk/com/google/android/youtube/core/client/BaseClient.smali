.class public abstract Lcom/google/android/youtube/core/client/BaseClient;
.super Ljava/lang/Object;
.source "BaseClient.java"


# instance fields
.field protected final cachePath:Ljava/lang/String;

.field protected final clock:Lcom/google/android/youtube/core/utils/Clock;

.field protected final executor:Ljava/util/concurrent/Executor;

.field protected final httpClient:Lorg/apache/http/client/HttpClient;

.field protected final uriRequestGetConverter:Lcom/google/android/youtube/core/converter/http/UriRequestConverter;

.field protected final xmlParser:Lcom/google/android/youtube/core/converter/XmlParser;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lorg/apache/http/client/HttpClient;)V
    .registers 6
    .parameter "executor"
    .parameter "httpClient"

    .prologue
    const/4 v2, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const-string v0, "executor can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/google/android/youtube/core/client/BaseClient;->executor:Ljava/util/concurrent/Executor;

    .line 95
    const-string v0, "httpClient can\'t be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/client/HttpClient;

    iput-object v0, p0, Lcom/google/android/youtube/core/client/BaseClient;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 96
    new-instance v0, Lcom/google/android/youtube/core/converter/http/UriRequestConverter;

    sget-object v1, Lcom/google/android/youtube/core/converter/http/HttpMethod;->GET:Lcom/google/android/youtube/core/converter/http/HttpMethod;

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/converter/http/UriRequestConverter;-><init>(Lcom/google/android/youtube/core/converter/http/HttpMethod;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/client/BaseClient;->uriRequestGetConverter:Lcom/google/android/youtube/core/converter/http/UriRequestConverter;

    .line 97
    iput-object v2, p0, Lcom/google/android/youtube/core/client/BaseClient;->xmlParser:Lcom/google/android/youtube/core/converter/XmlParser;

    .line 98
    iput-object v2, p0, Lcom/google/android/youtube/core/client/BaseClient;->cachePath:Ljava/lang/String;

    .line 99
    iput-object v2, p0, Lcom/google/android/youtube/core/client/BaseClient;->clock:Lcom/google/android/youtube/core/utils/Clock;

    .line 100
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lorg/apache/http/client/HttpClient;Lcom/google/android/youtube/core/converter/XmlParser;Ljava/lang/String;Lcom/google/android/youtube/core/utils/Clock;)V
    .registers 8
    .parameter "executor"
    .parameter "httpClient"
    .parameter "xmlParser"
    .parameter "cachePath"
    .parameter "clock"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const-string v0, "executor can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/google/android/youtube/core/client/BaseClient;->executor:Ljava/util/concurrent/Executor;

    .line 68
    const-string v0, "httpClient can\'t be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/client/HttpClient;

    iput-object v0, p0, Lcom/google/android/youtube/core/client/BaseClient;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 69
    const-string v0, "xmlParser can\'t be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/converter/XmlParser;

    iput-object v0, p0, Lcom/google/android/youtube/core/client/BaseClient;->xmlParser:Lcom/google/android/youtube/core/converter/XmlParser;

    .line 70
    const-string v0, "cachePath can\'t be null"

    invoke-static {p4, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/client/BaseClient;->cachePath:Ljava/lang/String;

    .line 71
    const-string v0, "clock can\'t be null"

    invoke-static {p5, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/utils/Clock;

    iput-object v0, p0, Lcom/google/android/youtube/core/client/BaseClient;->clock:Lcom/google/android/youtube/core/utils/Clock;

    .line 72
    new-instance v0, Lcom/google/android/youtube/core/converter/http/UriRequestConverter;

    sget-object v1, Lcom/google/android/youtube/core/converter/http/HttpMethod;->GET:Lcom/google/android/youtube/core/converter/http/HttpMethod;

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/converter/http/UriRequestConverter;-><init>(Lcom/google/android/youtube/core/converter/http/HttpMethod;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/client/BaseClient;->uriRequestGetConverter:Lcom/google/android/youtube/core/converter/http/UriRequestConverter;

    .line 73
    return-void
.end method


# virtual methods
.method protected newAsyncRequester(Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/AsyncRequester;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/youtube/core/async/Requester",
            "<TR;TE;>;)",
            "Lcom/google/android/youtube/core/async/AsyncRequester",
            "<TR;TE;>;"
        }
    .end annotation

    .prologue
    .line 127
    .local p1, target:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<TR;TE;>;"
    iget-object v0, p0, Lcom/google/android/youtube/core/client/BaseClient;->executor:Ljava/util/concurrent/Executor;

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/async/AsyncRequester;->create(Ljava/util/concurrent/Executor;Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/AsyncRequester;

    move-result-object v0

    return-object v0
.end method

.method protected newHttpRequester(Lcom/google/android/youtube/core/converter/RequestConverter;)Lcom/google/android/youtube/core/async/HttpRequester;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/youtube/core/converter/RequestConverter",
            "<TR;",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            ">;)",
            "Lcom/google/android/youtube/core/async/HttpRequester",
            "<TR;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    .local p1, requestConverter:Lcom/google/android/youtube/core/converter/RequestConverter;,"Lcom/google/android/youtube/core/converter/RequestConverter<TR;Lorg/apache/http/client/methods/HttpUriRequest;>;"
    new-instance v0, Lcom/google/android/youtube/core/async/HttpRequester;

    iget-object v1, p0, Lcom/google/android/youtube/core/client/BaseClient;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-direct {v0, v1, p1}, Lcom/google/android/youtube/core/async/HttpRequester;-><init>(Lorg/apache/http/client/HttpClient;Lcom/google/android/youtube/core/converter/RequestConverter;)V

    return-object v0
.end method

.method protected newHttpRequester(Lcom/google/android/youtube/core/converter/RequestConverter;Lcom/google/android/youtube/core/converter/ResponseConverter;)Lcom/google/android/youtube/core/async/HttpRequester;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/youtube/core/converter/RequestConverter",
            "<TR;",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            ">;",
            "Lcom/google/android/youtube/core/converter/ResponseConverter",
            "<",
            "Lorg/apache/http/HttpResponse;",
            "TE;>;)",
            "Lcom/google/android/youtube/core/async/HttpRequester",
            "<TR;TE;>;"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, requestConverter:Lcom/google/android/youtube/core/converter/RequestConverter;,"Lcom/google/android/youtube/core/converter/RequestConverter<TR;Lorg/apache/http/client/methods/HttpUriRequest;>;"
    .local p2, responseConverter:Lcom/google/android/youtube/core/converter/ResponseConverter;,"Lcom/google/android/youtube/core/converter/ResponseConverter<Lorg/apache/http/HttpResponse;TE;>;"
    new-instance v0, Lcom/google/android/youtube/core/async/HttpRequester;

    iget-object v1, p0, Lcom/google/android/youtube/core/client/BaseClient;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-direct {v0, v1, p1, p2}, Lcom/google/android/youtube/core/async/HttpRequester;-><init>(Lorg/apache/http/client/HttpClient;Lcom/google/android/youtube/core/converter/RequestConverter;Lcom/google/android/youtube/core/converter/ResponseConverter;)V

    return-object v0
.end method

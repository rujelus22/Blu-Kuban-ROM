.class public Lcom/google/api/client/http/json/JsonHttpRequest;
.super Lcom/google/api/client/util/GenericData;
.source "JsonHttpRequest.java"


# instance fields
.field private final client:Lcom/google/api/client/http/json/JsonHttpClient;

.field private final content:Ljava/lang/Object;

.field private final method:Lcom/google/api/client/http/HttpMethod;

.field private final uriTemplate:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/api/client/http/json/JsonHttpClient;Lcom/google/api/client/http/HttpMethod;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .parameter "client"
    .parameter "method"
    .parameter "uriTemplate"
    .parameter "content"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/google/api/client/util/GenericData;-><init>()V

    .line 47
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/json/JsonHttpClient;

    iput-object v0, p0, Lcom/google/api/client/http/json/JsonHttpRequest;->client:Lcom/google/api/client/http/json/JsonHttpClient;

    .line 48
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/HttpMethod;

    iput-object v0, p0, Lcom/google/api/client/http/json/JsonHttpRequest;->method:Lcom/google/api/client/http/HttpMethod;

    .line 49
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/client/http/json/JsonHttpRequest;->uriTemplate:Ljava/lang/String;

    .line 50
    iput-object p4, p0, Lcom/google/api/client/http/json/JsonHttpRequest;->content:Ljava/lang/Object;

    .line 51
    return-void
.end method


# virtual methods
.method public final executeUnparsed()Lcom/google/api/client/http/HttpResponse;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/api/client/http/json/JsonHttpRequest;->client:Lcom/google/api/client/http/json/JsonHttpClient;

    iget-object v1, p0, Lcom/google/api/client/http/json/JsonHttpRequest;->method:Lcom/google/api/client/http/HttpMethod;

    iget-object v2, p0, Lcom/google/api/client/http/json/JsonHttpRequest;->uriTemplate:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/api/client/http/json/JsonHttpRequest;->content:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/google/api/client/http/json/JsonHttpClient;->execute(Lcom/google/api/client/http/HttpMethod;Ljava/lang/String;Ljava/lang/Object;Lcom/google/api/client/http/json/JsonHttpRequest;)Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public final getClient()Lcom/google/api/client/http/json/JsonHttpClient;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/api/client/http/json/JsonHttpRequest;->client:Lcom/google/api/client/http/json/JsonHttpClient;

    return-object v0
.end method

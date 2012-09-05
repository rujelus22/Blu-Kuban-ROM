.class public final Lcom/google/api/client/http/HttpRequestFactory;
.super Ljava/lang/Object;
.source "HttpRequestFactory.java"


# instance fields
.field public final initializer:Lcom/google/api/client/http/HttpRequestInitializer;

.field public final transport:Lcom/google/api/client/http/HttpTransport;


# direct methods
.method constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/http/HttpRequestInitializer;)V
    .registers 3
    .parameter "transport"
    .parameter "initializer"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/google/api/client/http/HttpRequestFactory;->transport:Lcom/google/api/client/http/HttpTransport;

    .line 61
    iput-object p2, p0, Lcom/google/api/client/http/HttpRequestFactory;->initializer:Lcom/google/api/client/http/HttpRequestInitializer;

    .line 62
    return-void
.end method


# virtual methods
.method public buildPostRequest(Lcom/google/api/client/http/GenericUrl;Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;
    .registers 4
    .parameter "url"
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    sget-object v0, Lcom/google/api/client/http/HttpMethod;->POST:Lcom/google/api/client/http/HttpMethod;

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/api/client/http/HttpRequestFactory;->buildRequest(Lcom/google/api/client/http/HttpMethod;Lcom/google/api/client/http/GenericUrl;Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildRequest(Lcom/google/api/client/http/HttpMethod;Lcom/google/api/client/http/GenericUrl;Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;
    .registers 6
    .parameter "method"
    .parameter "url"
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    iget-object v1, p0, Lcom/google/api/client/http/HttpRequestFactory;->transport:Lcom/google/api/client/http/HttpTransport;

    invoke-virtual {v1}, Lcom/google/api/client/http/HttpTransport;->buildRequest()Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    .line 77
    .local v0, request:Lcom/google/api/client/http/HttpRequest;
    iget-object v1, p0, Lcom/google/api/client/http/HttpRequestFactory;->initializer:Lcom/google/api/client/http/HttpRequestInitializer;

    if-eqz v1, :cond_f

    .line 78
    iget-object v1, p0, Lcom/google/api/client/http/HttpRequestFactory;->initializer:Lcom/google/api/client/http/HttpRequestInitializer;

    invoke-interface {v1, v0}, Lcom/google/api/client/http/HttpRequestInitializer;->initialize(Lcom/google/api/client/http/HttpRequest;)V

    .line 80
    :cond_f
    iput-object p1, v0, Lcom/google/api/client/http/HttpRequest;->method:Lcom/google/api/client/http/HttpMethod;

    .line 81
    iput-object p2, v0, Lcom/google/api/client/http/HttpRequest;->url:Lcom/google/api/client/http/GenericUrl;

    .line 82
    iput-object p3, v0, Lcom/google/api/client/http/HttpRequest;->content:Lcom/google/api/client/http/HttpContent;

    .line 83
    return-object v0
.end method

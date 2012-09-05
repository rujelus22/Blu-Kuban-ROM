.class public final Lcom/google/api/services/pos/Pos$Builder;
.super Lcom/google/api/client/googleapis/services/GoogleClient$Builder;
.source "Pos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/pos/Pos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# direct methods
.method constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;)V
    .registers 5
    .parameter "transport"
    .parameter "jsonFactory"

    .prologue
    .line 1385
    new-instance v0, Lcom/google/api/client/http/GenericUrl;

    const-string v1, "https://www.googleapis.com/pos/v1/"

    invoke-direct {v0, v1}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/api/client/googleapis/services/GoogleClient$Builder;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/GenericUrl;)V

    .line 1386
    return-void
.end method


# virtual methods
.method public build()Lcom/google/api/services/pos/Pos;
    .registers 8

    .prologue
    .line 1391
    new-instance v0, Lcom/google/api/services/pos/Pos;

    invoke-virtual {p0}, Lcom/google/api/services/pos/Pos$Builder;->getTransport()Lcom/google/api/client/http/HttpTransport;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/api/services/pos/Pos$Builder;->getJsonHttpRequestInitializer()Lcom/google/api/client/http/json/JsonHttpRequestInitializer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/api/services/pos/Pos$Builder;->getHttpRequestInitializer()Lcom/google/api/client/http/HttpRequestInitializer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/api/services/pos/Pos$Builder;->getJsonFactory()Lcom/google/api/client/json/JsonFactory;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/api/services/pos/Pos$Builder;->getBaseUrl()Lcom/google/api/client/http/GenericUrl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/api/client/http/GenericUrl;->build()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/api/services/pos/Pos$Builder;->getApplicationName()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/google/api/services/pos/Pos;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/http/json/JsonHttpRequestInitializer;Lcom/google/api/client/http/HttpRequestInitializer;Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic setApplicationName(Ljava/lang/String;)Lcom/google/api/client/http/json/JsonHttpClient$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 1376
    invoke-virtual {p0, p1}, Lcom/google/api/services/pos/Pos$Builder;->setApplicationName(Ljava/lang/String;)Lcom/google/api/services/pos/Pos$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setApplicationName(Ljava/lang/String;)Lcom/google/api/services/pos/Pos$Builder;
    .registers 2
    .parameter "applicationName"

    .prologue
    .line 1421
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/GoogleClient$Builder;->setApplicationName(Ljava/lang/String;)Lcom/google/api/client/http/json/JsonHttpClient$Builder;

    .line 1422
    return-object p0
.end method

.method public bridge synthetic setHttpRequestInitializer(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/http/json/JsonHttpClient$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 1376
    invoke-virtual {p0, p1}, Lcom/google/api/services/pos/Pos$Builder;->setHttpRequestInitializer(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/services/pos/Pos$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setHttpRequestInitializer(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/services/pos/Pos$Builder;
    .registers 2
    .parameter "httpRequestInitializer"

    .prologue
    .line 1415
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/GoogleClient$Builder;->setHttpRequestInitializer(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/http/json/JsonHttpClient$Builder;

    .line 1416
    return-object p0
.end method

.method public bridge synthetic setJsonHttpRequestInitializer(Lcom/google/api/client/http/json/JsonHttpRequestInitializer;)Lcom/google/api/client/http/json/JsonHttpClient$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 1376
    invoke-virtual {p0, p1}, Lcom/google/api/services/pos/Pos$Builder;->setJsonHttpRequestInitializer(Lcom/google/api/client/http/json/JsonHttpRequestInitializer;)Lcom/google/api/services/pos/Pos$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setJsonHttpRequestInitializer(Lcom/google/api/client/http/json/JsonHttpRequestInitializer;)Lcom/google/api/services/pos/Pos$Builder;
    .registers 2
    .parameter "jsonHttpRequestInitializer"

    .prologue
    .line 1409
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/GoogleClient$Builder;->setJsonHttpRequestInitializer(Lcom/google/api/client/http/json/JsonHttpRequestInitializer;)Lcom/google/api/client/http/json/JsonHttpClient$Builder;

    .line 1410
    return-object p0
.end method

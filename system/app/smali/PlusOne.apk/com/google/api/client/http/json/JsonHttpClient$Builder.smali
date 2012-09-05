.class public Lcom/google/api/client/http/json/JsonHttpClient$Builder;
.super Ljava/lang/Object;
.source "JsonHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/http/json/JsonHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private applicationName:Ljava/lang/String;

.field private final baseUrl:Lcom/google/api/client/http/GenericUrl;

.field private httpRequestInitializer:Lcom/google/api/client/http/HttpRequestInitializer;

.field private final jsonFactory:Lcom/google/api/client/json/JsonFactory;

.field private jsonHttpRequestInitializer:Lcom/google/api/client/http/json/JsonHttpRequestInitializer;

.field private final transport:Lcom/google/api/client/http/HttpTransport;


# direct methods
.method protected constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/GenericUrl;)V
    .registers 4
    .parameter "transport"
    .parameter "jsonFactory"
    .parameter "baseUrl"

    .prologue
    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    iput-object p1, p0, Lcom/google/api/client/http/json/JsonHttpClient$Builder;->transport:Lcom/google/api/client/http/HttpTransport;

    .line 317
    iput-object p2, p0, Lcom/google/api/client/http/json/JsonHttpClient$Builder;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    .line 318
    iput-object p3, p0, Lcom/google/api/client/http/json/JsonHttpClient$Builder;->baseUrl:Lcom/google/api/client/http/GenericUrl;

    .line 319
    return-void
.end method


# virtual methods
.method public final getApplicationName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 383
    iget-object v0, p0, Lcom/google/api/client/http/json/JsonHttpClient$Builder;->applicationName:Ljava/lang/String;

    return-object v0
.end method

.method public final getBaseUrl()Lcom/google/api/client/http/GenericUrl;
    .registers 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/google/api/client/http/json/JsonHttpClient$Builder;->baseUrl:Lcom/google/api/client/http/GenericUrl;

    return-object v0
.end method

.method public final getHttpRequestInitializer()Lcom/google/api/client/http/HttpRequestInitializer;
    .registers 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/google/api/client/http/json/JsonHttpClient$Builder;->httpRequestInitializer:Lcom/google/api/client/http/HttpRequestInitializer;

    return-object v0
.end method

.method public final getJsonFactory()Lcom/google/api/client/json/JsonFactory;
    .registers 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/google/api/client/http/json/JsonHttpClient$Builder;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    return-object v0
.end method

.method public getJsonHttpRequestInitializer()Lcom/google/api/client/http/json/JsonHttpRequestInitializer;
    .registers 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/google/api/client/http/json/JsonHttpClient$Builder;->jsonHttpRequestInitializer:Lcom/google/api/client/http/json/JsonHttpRequestInitializer;

    return-object v0
.end method

.method public final getTransport()Lcom/google/api/client/http/HttpTransport;
    .registers 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/google/api/client/http/json/JsonHttpClient$Builder;->transport:Lcom/google/api/client/http/HttpTransport;

    return-object v0
.end method

.method public setApplicationName(Ljava/lang/String;)Lcom/google/api/client/http/json/JsonHttpClient$Builder;
    .registers 2
    .parameter "applicationName"

    .prologue
    .line 374
    iput-object p1, p0, Lcom/google/api/client/http/json/JsonHttpClient$Builder;->applicationName:Ljava/lang/String;

    .line 375
    return-object p0
.end method

.method public setHttpRequestInitializer(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/http/json/JsonHttpClient$Builder;
    .registers 2
    .parameter "httpRequestInitializer"

    .prologue
    .line 360
    iput-object p1, p0, Lcom/google/api/client/http/json/JsonHttpClient$Builder;->httpRequestInitializer:Lcom/google/api/client/http/HttpRequestInitializer;

    .line 361
    return-object p0
.end method

.method public setJsonHttpRequestInitializer(Lcom/google/api/client/http/json/JsonHttpRequestInitializer;)Lcom/google/api/client/http/json/JsonHttpClient$Builder;
    .registers 2
    .parameter "jsonHttpRequestInitializer"

    .prologue
    .line 349
    iput-object p1, p0, Lcom/google/api/client/http/json/JsonHttpClient$Builder;->jsonHttpRequestInitializer:Lcom/google/api/client/http/json/JsonHttpRequestInitializer;

    .line 350
    return-object p0
.end method

.class public Lcom/google/api/services/pos/Pos;
.super Lcom/google/api/client/googleapis/services/GoogleClient;
.source "Pos.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/pos/Pos$1;,
        Lcom/google/api/services/pos/Pos$Builder;,
        Lcom/google/api/services/pos/Pos$Plusones;
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/http/json/JsonHttpRequestInitializer;Lcom/google/api/client/http/HttpRequestInitializer;Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "transport"
    .parameter "jsonHttpRequestInitializer"
    .parameter "httpRequestInitializer"
    .parameter "jsonFactory"
    .parameter "baseUrl"
    .parameter "applicationName"

    .prologue
    .line 114
    invoke-direct/range {p0 .. p6}, Lcom/google/api/client/googleapis/services/GoogleClient;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/http/json/JsonHttpRequestInitializer;Lcom/google/api/client/http/HttpRequestInitializer;Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method static synthetic access$1100(Lcom/google/api/services/pos/Pos;Lcom/google/api/client/http/json/JsonHttpRequest;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/google/api/services/pos/Pos;->initialize(Lcom/google/api/client/http/json/JsonHttpRequest;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/api/services/pos/Pos;Lcom/google/api/client/http/json/JsonHttpRequest;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/google/api/services/pos/Pos;->initialize(Lcom/google/api/client/http/json/JsonHttpRequest;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/api/services/pos/Pos;Lcom/google/api/client/http/json/JsonHttpRequest;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/google/api/services/pos/Pos;->initialize(Lcom/google/api/client/http/json/JsonHttpRequest;)V

    return-void
.end method

.method public static builder(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/services/pos/Pos$Builder;
    .registers 3
    .parameter "transport"
    .parameter "jsonFactory"

    .prologue
    .line 129
    new-instance v0, Lcom/google/api/services/pos/Pos$Builder;

    invoke-direct {v0, p0, p1}, Lcom/google/api/services/pos/Pos$Builder;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;)V

    return-object v0
.end method


# virtual methods
.method public plusones()Lcom/google/api/services/pos/Pos$Plusones;
    .registers 2

    .prologue
    .line 142
    new-instance v0, Lcom/google/api/services/pos/Pos$Plusones;

    invoke-direct {v0, p0}, Lcom/google/api/services/pos/Pos$Plusones;-><init>(Lcom/google/api/services/pos/Pos;)V

    return-object v0
.end method

.class public Lcom/google/api/client/http/json/JsonHttpParser;
.super Ljava/lang/Object;
.source "JsonHttpParser.java"

# interfaces
.implements Lcom/google/api/client/http/HttpParser;


# instance fields
.field private final contentType:Ljava/lang/String;

.field private final jsonFactory:Lcom/google/api/client/json/JsonFactory;


# direct methods
.method public constructor <init>(Lcom/google/api/client/json/JsonFactory;)V
    .registers 3
    .parameter "jsonFactory"

    .prologue
    .line 69
    const-string v0, "application/json"

    invoke-direct {p0, p1, v0}, Lcom/google/api/client/http/json/JsonHttpParser;-><init>(Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method protected constructor <init>(Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;)V
    .registers 4
    .parameter "jsonFactory"
    .parameter "contentType"

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/json/JsonFactory;

    iput-object v0, p0, Lcom/google/api/client/http/json/JsonHttpParser;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    .line 79
    iput-object p2, p0, Lcom/google/api/client/http/json/JsonHttpParser;->contentType:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public static parserForResponse(Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/HttpResponse;)Lcom/google/api/client/json/JsonParser;
    .registers 5
    .parameter "jsonFactory"
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 117
    .local v0, content:Ljava/io/InputStream;
    :try_start_4
    invoke-virtual {p0, v0}, Lcom/google/api/client/json/JsonFactory;->createJsonParser(Ljava/io/InputStream;)Lcom/google/api/client/json/JsonParser;

    move-result-object v1

    .line 118
    .local v1, parser:Lcom/google/api/client/json/JsonParser;
    invoke-virtual {v1}, Lcom/google/api/client/json/JsonParser;->nextToken()Lcom/google/api/client/json/JsonToken;
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_12

    .line 119
    const/4 v0, 0x0

    .line 122
    if-eqz v0, :cond_11

    .line 123
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_11
    return-object v1

    .line 122
    .end local v1           #parser:Lcom/google/api/client/json/JsonParser;
    :catchall_12
    move-exception v2

    if-eqz v0, :cond_18

    .line 123
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_18
    throw v2
.end method


# virtual methods
.method public final getContentType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/api/client/http/json/JsonHttpParser;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public parse(Lcom/google/api/client/http/HttpResponse;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .parameter "response"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/api/client/http/HttpResponse;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    .local p2, dataClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/google/api/client/http/json/JsonHttpParser;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    invoke-static {v0, p1}, Lcom/google/api/client/http/json/JsonHttpParser;->parserForResponse(Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/HttpResponse;)Lcom/google/api/client/json/JsonParser;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/google/api/client/json/JsonParser;->parseAndClose(Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

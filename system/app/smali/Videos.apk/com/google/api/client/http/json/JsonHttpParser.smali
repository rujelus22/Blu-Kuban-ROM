.class public Lcom/google/api/client/http/json/JsonHttpParser;
.super Ljava/lang/Object;
.source "JsonHttpParser.java"

# interfaces
.implements Lcom/google/api/client/http/HttpParser;


# instance fields
.field public contentType:Ljava/lang/String;

.field public jsonFactory:Lcom/google/api/client/json/JsonFactory;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, "application/json"

    iput-object v0, p0, Lcom/google/api/client/http/json/JsonHttpParser;->contentType:Ljava/lang/String;

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
    .line 82
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 84
    .local v0, content:Ljava/io/InputStream;
    :try_start_4
    invoke-virtual {p0, v0}, Lcom/google/api/client/json/JsonFactory;->createJsonParser(Ljava/io/InputStream;)Lcom/google/api/client/json/JsonParser;

    move-result-object v1

    .line 85
    .local v1, parser:Lcom/google/api/client/json/JsonParser;
    invoke-virtual {v1}, Lcom/google/api/client/json/JsonParser;->nextToken()Lcom/google/api/client/json/JsonToken;
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_12

    .line 86
    const/4 v0, 0x0

    .line 89
    if-eqz v0, :cond_11

    .line 90
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_11
    return-object v1

    .line 89
    .end local v1           #parser:Lcom/google/api/client/json/JsonParser;
    :catchall_12
    move-exception v2

    if-eqz v0, :cond_18

    .line 90
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_18
    throw v2
.end method


# virtual methods
.method public final getContentType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 58
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
    .line 62
    .local p2, dataClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/google/api/client/http/json/JsonHttpParser;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    invoke-static {v0, p1}, Lcom/google/api/client/http/json/JsonHttpParser;->parserForResponse(Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/HttpResponse;)Lcom/google/api/client/json/JsonParser;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/google/api/client/json/JsonParser;->parseAndClose(Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

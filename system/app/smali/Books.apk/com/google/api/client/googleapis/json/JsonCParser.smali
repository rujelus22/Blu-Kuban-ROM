.class public final Lcom/google/api/client/googleapis/json/JsonCParser;
.super Lcom/google/api/client/http/json/JsonHttpParser;
.source "JsonCParser.java"


# direct methods
.method public constructor <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/google/api/client/http/json/JsonHttpParser;-><init>()V

    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/google/api/client/json/JsonFactory;)V
    .registers 2
    .parameter "jsonFactory"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/google/api/client/http/json/JsonHttpParser;-><init>(Lcom/google/api/client/json/JsonFactory;)V

    .line 66
    return-void
.end method

.method public static parserForResponse(Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/HttpResponse;)Lcom/google/api/client/json/JsonParser;
    .registers 8
    .parameter "jsonFactory"
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, contentType:Ljava/lang/String;
    if-eqz v0, :cond_e

    const-string v3, "application/json"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2d

    .line 93
    :cond_e
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wrong content type: expected <application/json> but got <"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 97
    :cond_2d
    const/4 v1, 0x1

    .line 98
    .local v1, failed:Z
    invoke-static {p0, p1}, Lcom/google/api/client/http/json/JsonHttpParser;->parserForResponse(Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/HttpResponse;)Lcom/google/api/client/json/JsonParser;

    move-result-object v2

    .line 100
    .local v2, parser:Lcom/google/api/client/json/JsonParser;
    :try_start_32
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->isSuccessStatusCode()Z

    move-result v3

    if-eqz v3, :cond_54

    const-string v3, "data"

    :goto_3a
    invoke-virtual {v2, v3}, Lcom/google/api/client/json/JsonParser;->skipToKey(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v2}, Lcom/google/api/client/json/JsonParser;->getCurrentToken()Lcom/google/api/client/json/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/google/api/client/json/JsonToken;->END_OBJECT:Lcom/google/api/client/json/JsonToken;

    if-ne v3, v4, :cond_57

    .line 102
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "data key not found"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_4d
    .catchall {:try_start_32 .. :try_end_4d} :catchall_4d

    .line 107
    :catchall_4d
    move-exception v3

    if-eqz v1, :cond_53

    .line 108
    invoke-virtual {v2}, Lcom/google/api/client/json/JsonParser;->close()V

    :cond_53
    throw v3

    .line 100
    :cond_54
    :try_start_54
    const-string v3, "error"
    :try_end_56
    .catchall {:try_start_54 .. :try_end_56} :catchall_4d

    goto :goto_3a

    .line 104
    :cond_57
    const/4 v1, 0x0

    .line 107
    if-eqz v1, :cond_5d

    .line 108
    invoke-virtual {v2}, Lcom/google/api/client/json/JsonParser;->close()V

    :cond_5d
    return-object v2
.end method


# virtual methods
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
    .line 70
    .local p2, dataClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/json/JsonCParser;->getJsonFactory()Lcom/google/api/client/json/JsonFactory;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/api/client/googleapis/json/JsonCParser;->parserForResponse(Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/HttpResponse;)Lcom/google/api/client/json/JsonParser;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/google/api/client/json/JsonParser;->parseAndClose(Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

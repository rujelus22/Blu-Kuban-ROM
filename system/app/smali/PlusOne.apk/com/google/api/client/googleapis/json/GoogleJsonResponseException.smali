.class public Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;
.super Lcom/google/api/client/http/HttpResponseException;
.source "GoogleJsonResponseException.java"


# static fields
.field static final serialVersionUID:J = 0x1L


# instance fields
.field private final details:Lcom/google/api/client/googleapis/json/GoogleJsonError;

.field private final jsonFactory:Lcom/google/api/client/json/JsonFactory;


# direct methods
.method private constructor <init>(Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/HttpResponse;Lcom/google/api/client/googleapis/json/GoogleJsonError;Ljava/lang/String;)V
    .registers 5
    .parameter "jsonFactory"
    .parameter "response"
    .parameter "details"
    .parameter "message"

    .prologue
    .line 60
    invoke-direct {p0, p2, p4}, Lcom/google/api/client/http/HttpResponseException;-><init>(Lcom/google/api/client/http/HttpResponse;Ljava/lang/String;)V

    .line 61
    iput-object p1, p0, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    .line 62
    iput-object p3, p0, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;->details:Lcom/google/api/client/googleapis/json/GoogleJsonError;

    .line 63
    return-void
.end method

.method public static from(Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/HttpResponse;)Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->isSuccessStatusCode()Z

    move-result v2

    if-nez v2, :cond_b2

    if-eqz v0, :cond_b2

    const-string v2, "application/json"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 102
    :try_start_18
    invoke-static {p0, p1}, Lcom/google/api/client/http/json/JsonHttpParser;->parserForResponse(Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/HttpResponse;)Lcom/google/api/client/json/JsonParser;
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_95
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_79

    move-result-object v2

    .line 103
    :try_start_1c
    invoke-virtual {v2}, Lcom/google/api/client/json/JsonParser;->getCurrentToken()Lcom/google/api/client/json/JsonToken;

    move-result-object v0

    .line 105
    if-nez v0, :cond_26

    .line 106
    invoke-virtual {v2}, Lcom/google/api/client/json/JsonParser;->nextToken()Lcom/google/api/client/json/JsonToken;

    move-result-object v0

    .line 109
    :cond_26
    if-eqz v0, :cond_b0

    .line 111
    const-string v0, "error"

    invoke-virtual {v2, v0}, Lcom/google/api/client/json/JsonParser;->skipToKey(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v2}, Lcom/google/api/client/json/JsonParser;->getCurrentToken()Lcom/google/api/client/json/JsonToken;

    move-result-object v0

    sget-object v3, Lcom/google/api/client/json/JsonToken;->END_OBJECT:Lcom/google/api/client/json/JsonToken;

    if-eq v0, v3, :cond_b0

    .line 113
    const-class v0, Lcom/google/api/client/googleapis/json/GoogleJsonError;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/google/api/client/json/JsonParser;->parseAndClose(Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/json/GoogleJsonError;
    :try_end_3e
    .catchall {:try_start_1c .. :try_end_3e} :catchall_ac
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_3e} :catch_ae

    .line 121
    :goto_3e
    if-nez v2, :cond_6e

    .line 122
    :try_start_40
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_47} :catch_74

    .line 133
    :cond_47
    :goto_47
    invoke-static {p1}, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;->computeMessage(Lcom/google/api/client/http/HttpResponse;)Ljava/lang/String;

    move-result-object v1

    .line 134
    if-eqz v0, :cond_68

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/api/client/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/api/client/googleapis/json/GoogleJsonError;->toPrettyString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 138
    :cond_68
    new-instance v2, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;-><init>(Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/HttpResponse;Lcom/google/api/client/googleapis/json/GoogleJsonError;Ljava/lang/String;)V

    return-object v2

    .line 123
    :cond_6e
    if-nez v0, :cond_47

    .line 124
    :try_start_70
    invoke-virtual {v2}, Lcom/google/api/client/json/JsonParser;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_74

    goto :goto_47

    .line 126
    :catch_74
    move-exception v1

    .line 128
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_47

    .line 116
    :catch_79
    move-exception v0

    move-object v2, v1

    .line 118
    :goto_7b
    :try_start_7b
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7e
    .catchall {:try_start_7b .. :try_end_7e} :catchall_ac

    .line 121
    if-nez v2, :cond_89

    .line 122
    :try_start_80
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_87
    :goto_87
    move-object v0, v1

    .line 129
    goto :goto_47

    .line 123
    :cond_89
    if-nez v1, :cond_87

    .line 124
    invoke-virtual {v2}, Lcom/google/api/client/json/JsonParser;->close()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_8e} :catch_8f

    goto :goto_87

    .line 126
    :catch_8f
    move-exception v0

    .line 128
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 130
    goto :goto_47

    .line 120
    :catchall_95
    move-exception v0

    move-object v2, v1

    .line 121
    :goto_97
    if-nez v2, :cond_a1

    .line 122
    :try_start_99
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a0
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_a0} :catch_a7

    .line 129
    :cond_a0
    :goto_a0
    throw v0

    .line 123
    :cond_a1
    if-nez v1, :cond_a0

    .line 124
    :try_start_a3
    invoke-virtual {v2}, Lcom/google/api/client/json/JsonParser;->close()V
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_a6} :catch_a7

    goto :goto_a0

    .line 126
    :catch_a7
    move-exception v1

    .line 128
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a0

    .line 120
    :catchall_ac
    move-exception v0

    goto :goto_97

    .line 116
    :catch_ae
    move-exception v0

    goto :goto_7b

    :cond_b0
    move-object v0, v1

    goto :goto_3e

    :cond_b2
    move-object v0, v1

    goto :goto_47
.end method

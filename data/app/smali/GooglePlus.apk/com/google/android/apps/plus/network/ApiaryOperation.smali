.class public abstract Lcom/google/android/apps/plus/network/ApiaryOperation;
.super Lcom/google/android/apps/plus/network/HttpOperation;
.source "ApiaryOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Request:",
        "Lcom/google/android/apps/plus/json/GenericJson;",
        "Response:",
        "Lcom/google/android/apps/plus/json/GenericJson;",
        ">",
        "Lcom/google/android/apps/plus/network/HttpOperation;"
    }
.end annotation


# instance fields
.field protected final mRequestJson:Lcom/google/android/apps/plus/json/EsJson;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/plus/json/EsJson",
            "<TRequest;>;"
        }
    .end annotation
.end field

.field protected final mResponseJson:Lcom/google/android/apps/plus/json/EsJson;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/plus/json/EsJson",
            "<TResponse;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/json/EsJson;Lcom/google/android/apps/plus/json/EsJson;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V
    .registers 23
    .parameter "context"
    .parameter "account"
    .parameter "url"
    .parameter "backendOverrideUrl"
    .parameter "scope"
    .parameter
    .parameter
    .parameter "intent"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/plus/json/EsJson",
            "<TRequest;>;",
            "Lcom/google/android/apps/plus/json/EsJson",
            "<TResponse;>;",
            "Landroid/content/Intent;",
            "Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, this:Lcom/google/android/apps/plus/network/ApiaryOperation;,"Lcom/google/android/apps/plus/network/ApiaryOperation<TRequest;TResponse;>;"
    .local p6, requestParser:Lcom/google/android/apps/plus/json/EsJson;,"Lcom/google/android/apps/plus/json/EsJson<TRequest;>;"
    .local p7, responseParser:Lcom/google/android/apps/plus/json/EsJson;,"Lcom/google/android/apps/plus/json/EsJson<TResponse;>;"
    new-instance v12, Lcom/google/android/apps/plus/network/ApiaryHttpRequestConfiguration;

    move-object/from16 v0, p5

    move-object/from16 v1, p4

    invoke-direct {v12, p1, p2, v0, v1}, Lcom/google/android/apps/plus/network/ApiaryHttpRequestConfiguration;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-direct/range {v2 .. v12}, Lcom/google/android/apps/plus/network/ApiaryOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/json/EsJson;Lcom/google/android/apps/plus/json/EsJson;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;Lcom/google/android/apps/plus/network/HttpRequestConfiguration;)V

    .line 95
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/json/EsJson;Lcom/google/android/apps/plus/json/EsJson;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;Lcom/google/android/apps/plus/network/HttpRequestConfiguration;)V
    .registers 23
    .parameter "context"
    .parameter "account"
    .parameter "url"
    .parameter "backendOverrideUrl"
    .parameter "scope"
    .parameter
    .parameter
    .parameter "intent"
    .parameter "listener"
    .parameter "requestConfiguration"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/plus/json/EsJson",
            "<TRequest;>;",
            "Lcom/google/android/apps/plus/json/EsJson",
            "<TResponse;>;",
            "Landroid/content/Intent;",
            "Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;",
            "Lcom/google/android/apps/plus/network/HttpRequestConfiguration;",
            ")V"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, this:Lcom/google/android/apps/plus/network/ApiaryOperation;,"Lcom/google/android/apps/plus/network/ApiaryOperation<TRequest;TResponse;>;"
    .local p6, requestParser:Lcom/google/android/apps/plus/json/EsJson;,"Lcom/google/android/apps/plus/json/EsJson<TRequest;>;"
    .local p7, responseParser:Lcom/google/android/apps/plus/json/EsJson;,"Lcom/google/android/apps/plus/json/EsJson<TResponse;>;"
    const-string v11, "POST"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v11}, Lcom/google/android/apps/plus/network/ApiaryOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/json/EsJson;Lcom/google/android/apps/plus/json/EsJson;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;Lcom/google/android/apps/plus/network/HttpRequestConfiguration;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/json/EsJson;Lcom/google/android/apps/plus/json/EsJson;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;Lcom/google/android/apps/plus/network/HttpRequestConfiguration;Ljava/lang/String;)V
    .registers 22
    .parameter "context"
    .parameter "account"
    .parameter "url"
    .parameter "backendOverrideUrl"
    .parameter "scope"
    .parameter
    .parameter
    .parameter "intent"
    .parameter "listener"
    .parameter "requestConfiguration"
    .parameter "method"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/plus/json/EsJson",
            "<TRequest;>;",
            "Lcom/google/android/apps/plus/json/EsJson",
            "<TResponse;>;",
            "Landroid/content/Intent;",
            "Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;",
            "Lcom/google/android/apps/plus/network/HttpRequestConfiguration;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, this:Lcom/google/android/apps/plus/network/ApiaryOperation;,"Lcom/google/android/apps/plus/network/ApiaryOperation<TRequest;TResponse;>;"
    .local p6, requestJson:Lcom/google/android/apps/plus/json/EsJson;,"Lcom/google/android/apps/plus/json/EsJson<TRequest;>;"
    .local p7, responseJson:Lcom/google/android/apps/plus/json/EsJson;,"Lcom/google/android/apps/plus/json/EsJson<TResponse;>;"
    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p11

    move-object v4, p3

    move-object/from16 v5, p10

    move-object v6, p2

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v1 .. v9}, Lcom/google/android/apps/plus/network/HttpOperation;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/network/HttpRequestConfiguration;Lcom/google/android/apps/plus/content/EsAccount;Ljava/io/OutputStream;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 50
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryOperation;->mRequestJson:Lcom/google/android/apps/plus/json/EsJson;

    .line 51
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryOperation;->mResponseJson:Lcom/google/android/apps/plus/json/EsJson;

    .line 52
    return-void
.end method


# virtual methods
.method protected createHttpEntity(Lcom/google/android/apps/plus/json/GenericJson;)Lcom/google/android/apps/plus/network/JsonHttpEntity;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRequest;)",
            "Lcom/google/android/apps/plus/network/JsonHttpEntity",
            "<TRequest;>;"
        }
    .end annotation

    .prologue
    .line 132
    .local p0, this:Lcom/google/android/apps/plus/network/ApiaryOperation;,"Lcom/google/android/apps/plus/network/ApiaryOperation<TRequest;TResponse;>;"
    .local p1, request:Lcom/google/android/apps/plus/json/GenericJson;,"TRequest;"
    new-instance v0, Lcom/google/android/apps/plus/network/JsonHttpEntity;

    iget-object v1, p0, Lcom/google/android/apps/plus/network/ApiaryOperation;->mRequestJson:Lcom/google/android/apps/plus/json/EsJson;

    invoke-direct {v0, v1, p1}, Lcom/google/android/apps/plus/network/JsonHttpEntity;-><init>(Lcom/google/android/apps/plus/json/EsJson;Lcom/google/android/apps/plus/json/GenericJson;)V

    return-object v0
.end method

.method protected createPostData()Lorg/apache/http/HttpEntity;
    .registers 5

    .prologue
    .line 112
    .local p0, this:Lcom/google/android/apps/plus/network/ApiaryOperation;,"Lcom/google/android/apps/plus/network/ApiaryOperation<TRequest;TResponse;>;"
    iget-object v1, p0, Lcom/google/android/apps/plus/network/ApiaryOperation;->mRequestJson:Lcom/google/android/apps/plus/json/EsJson;

    if-nez v1, :cond_a

    .line 113
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/network/ApiaryOperation;->createHttpEntity(Lcom/google/android/apps/plus/json/GenericJson;)Lcom/google/android/apps/plus/network/JsonHttpEntity;

    move-result-object v1

    .line 124
    :goto_9
    return-object v1

    .line 115
    :cond_a
    iget-object v1, p0, Lcom/google/android/apps/plus/network/ApiaryOperation;->mRequestJson:Lcom/google/android/apps/plus/json/EsJson;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/json/EsJson;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/json/GenericJson;

    .line 116
    .local v0, request:Lcom/google/android/apps/plus/json/GenericJson;,"TRequest;"
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/network/ApiaryOperation;->populateRequest(Lcom/google/android/apps/plus/json/GenericJson;)V

    .line 118
    const-string v1, "HttpTransaction"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 119
    const-string v1, "HttpTransaction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Apiary request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/network/ApiaryOperation;->mRequestJson:Lcom/google/android/apps/plus/json/EsJson;

    invoke-virtual {v3, v0}, Lcom/google/android/apps/plus/json/EsJson;->toPrettyString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_4e
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/network/ApiaryOperation;->createHttpEntity(Lcom/google/android/apps/plus/json/GenericJson;)Lcom/google/android/apps/plus/network/JsonHttpEntity;

    move-result-object v1

    goto :goto_9
.end method

.method protected abstract handleResponse(Lcom/google/android/apps/plus/json/GenericJson;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResponse;)V"
        }
    .end annotation
.end method

.method protected onHttpHandleContentFromStream(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 7
    .parameter "inputStream"
    .parameter "contentType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    .local p0, this:Lcom/google/android/apps/plus/network/ApiaryOperation;,"Lcom/google/android/apps/plus/network/ApiaryOperation<TRequest;TResponse;>;"
    invoke-virtual {p0}, Lcom/google/android/apps/plus/network/ApiaryOperation;->onStartResultProcessing()V

    .line 144
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/network/ApiaryOperation;->parseJson(Ljava/io/InputStream;)Lcom/google/android/apps/plus/json/GenericJson;

    move-result-object v0

    .line 146
    .local v0, response:Lcom/google/android/apps/plus/json/GenericJson;,"TResponse;"
    const-string v1, "HttpTransaction"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 147
    iget-object v1, p0, Lcom/google/android/apps/plus/network/ApiaryOperation;->mResponseJson:Lcom/google/android/apps/plus/json/EsJson;

    if-eqz v1, :cond_50

    .line 148
    const-string v2, "HttpTransaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Apiary response: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/google/android/apps/plus/network/ApiaryOperation;->mResponseJson:Lcom/google/android/apps/plus/json/EsJson;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/json/EsJson;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/json/GenericJson;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/apps/plus/network/ApiaryOperation;->mResponseJson:Lcom/google/android/apps/plus/json/EsJson;

    invoke-virtual {v3, v0}, Lcom/google/android/apps/plus/json/EsJson;->toPrettyString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_4c
    :goto_4c
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/network/ApiaryOperation;->handleResponse(Lcom/google/android/apps/plus/json/GenericJson;)V

    .line 157
    return-void

    .line 152
    :cond_50
    const-string v1, "HttpTransaction"

    const-string v2, "Apiary response ignored"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c
.end method

.method protected parseJson(Ljava/io/InputStream;)Lcom/google/android/apps/plus/json/GenericJson;
    .registers 3
    .parameter "inputStream"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    .local p0, this:Lcom/google/android/apps/plus/network/ApiaryOperation;,"Lcom/google/android/apps/plus/network/ApiaryOperation<TRequest;TResponse;>;"
    iget-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryOperation;->mResponseJson:Lcom/google/android/apps/plus/json/EsJson;

    if-eqz v0, :cond_d

    .line 164
    iget-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryOperation;->mResponseJson:Lcom/google/android/apps/plus/json/EsJson;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/json/EsJson;->fromInputStream(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/json/GenericJson;

    .line 166
    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method protected abstract populateRequest(Lcom/google/android/apps/plus/json/GenericJson;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRequest;)V"
        }
    .end annotation
.end method

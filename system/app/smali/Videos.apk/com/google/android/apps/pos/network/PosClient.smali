.class public Lcom/google/android/apps/pos/network/PosClient;
.super Lcom/google/android/apps/pos/network/PosBaseClient;
.source "PosClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/pos/network/PosClient$1;,
        Lcom/google/android/apps/pos/network/PosClient$PosRequest;,
        Lcom/google/android/apps/pos/network/PosClient$BatchInsertRequest;,
        Lcom/google/android/apps/pos/network/PosClient$BatchDeleteRequest;,
        Lcom/google/android/apps/pos/network/PosClient$BatchGetRequest;,
        Lcom/google/android/apps/pos/network/PosClient$GetSignUpStateRequest;,
        Lcom/google/android/apps/pos/network/PosClient$PosRequestJson;,
        Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson;,
        Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson;,
        Lcom/google/android/apps/pos/network/PosClient$GetRequestJson;,
        Lcom/google/android/apps/pos/network/PosClient$GetSignUpStateRequestJson;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;)V
    .registers 9
    .parameter "httpTransport"
    .parameter "jsonFactory"

    .prologue
    .line 33
    const-string v1, "https://www.googleapis.com"

    const-string v2, "/rpc"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/pos/network/PosBaseClient;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/http/HttpRequestInitializer;Lcom/google/api/client/json/JsonFactory;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/http/HttpRequestInitializer;Lcom/google/api/client/json/JsonFactory;)V
    .registers 6
    .parameter "baseServer"
    .parameter "basePath"
    .parameter "transport"
    .parameter "requestInitializer"
    .parameter "jsonFactory"

    .prologue
    .line 45
    invoke-direct/range {p0 .. p5}, Lcom/google/android/apps/pos/network/PosBaseClient;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/http/HttpRequestInitializer;Lcom/google/api/client/json/JsonFactory;)V

    .line 46
    return-void
.end method

.method static synthetic access$2500(Lcom/google/android/apps/pos/network/PosClient;[Lcom/google/android/apps/pos/network/PosClient$PosRequestJson;)Lcom/google/android/apps/pos/network/BatchResponseItemJson;
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/google/android/apps/pos/network/PosClient;->executeAndParseSingleResponseItem([Lcom/google/android/apps/pos/network/PosClient$PosRequestJson;)Lcom/google/android/apps/pos/network/BatchResponseItemJson;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/google/android/apps/pos/network/PosClient;[Lcom/google/android/apps/pos/network/PosClient$PosRequestJson;)Ljava/util/List;
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/google/android/apps/pos/network/PosClient;->executeAndParse([Lcom/google/android/apps/pos/network/PosClient$PosRequestJson;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private createParserForResponse(Lcom/google/api/client/http/HttpResponse;)Lcom/google/api/client/json/JsonParser;
    .registers 5
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1122
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 1124
    .local v0, content:Ljava/io/InputStream;
    :try_start_4
    iget-object v2, p0, Lcom/google/android/apps/pos/network/PosClient;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    invoke-virtual {v2, v0}, Lcom/google/api/client/json/JsonFactory;->createJsonParser(Ljava/io/InputStream;)Lcom/google/api/client/json/JsonParser;

    move-result-object v1

    .line 1125
    .local v1, parser:Lcom/google/api/client/json/JsonParser;
    invoke-virtual {v1}, Lcom/google/api/client/json/JsonParser;->nextToken()Lcom/google/api/client/json/JsonToken;
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_14

    .line 1126
    const/4 v0, 0x0

    .line 1129
    if-eqz v0, :cond_13

    .line 1130
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_13
    return-object v1

    .line 1129
    .end local v1           #parser:Lcom/google/api/client/json/JsonParser;
    :catchall_14
    move-exception v2

    if-eqz v0, :cond_1a

    .line 1130
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_1a
    throw v2
.end method

.method private executeAndParse([Lcom/google/android/apps/pos/network/PosClient$PosRequestJson;)Ljava/util/List;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/android/apps/pos/network/PosClient$PosRequestJson;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/pos/network/BatchResponseItemJson;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1104
    iget-object v0, p0, Lcom/google/android/apps/pos/network/PosClient;->globalSource:Ljava/lang/String;

    if-nez v0, :cond_13

    const-string v0, "native:android_app"

    .line 1105
    :goto_7
    array-length v2, p1

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v2, :cond_16

    aget-object v3, p1, v1

    .line 1106
    invoke-virtual {v3, v0}, Lcom/google/android/apps/pos/network/PosClient$PosRequestJson;->setSource(Ljava/lang/String;)Lcom/google/android/apps/pos/network/PosClient$PosRequestJson;

    .line 1105
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1104
    :cond_13
    iget-object v0, p0, Lcom/google/android/apps/pos/network/PosClient;->globalSource:Ljava/lang/String;

    goto :goto_7

    .line 1110
    :cond_16
    sget-object v0, Lcom/google/api/client/http/HttpMethod;->POST:Lcom/google/api/client/http/HttpMethod;

    const-string v1, ""

    invoke-virtual {p0, v0, v1, v4}, Lcom/google/android/apps/pos/network/PosClient;->buildHttpRequest(Lcom/google/api/client/http/HttpMethod;Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    .line 1111
    invoke-virtual {p0, p1}, Lcom/google/android/apps/pos/network/PosClient;->createSerializer(Ljava/lang/Object;)Lcom/google/api/client/http/json/JsonHttpContent;

    move-result-object v1

    iput-object v1, v0, Lcom/google/api/client/http/HttpRequest;->content:Lcom/google/api/client/http/HttpContent;

    .line 1112
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/api/client/http/HttpRequest;->enableGZipContent:Z

    .line 1115
    invoke-virtual {v0}, Lcom/google/api/client/http/HttpRequest;->execute()Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    .line 1116
    invoke-direct {p0, v0}, Lcom/google/android/apps/pos/network/PosClient;->createParserForResponse(Lcom/google/api/client/http/HttpResponse;)Lcom/google/api/client/json/JsonParser;

    move-result-object v0

    .line 1117
    const-class v1, Ljava/util/ArrayList;

    const-class v2, Lcom/google/android/apps/pos/network/BatchResponseItemJson;

    invoke-virtual {v0, v1, v2, v4}, Lcom/google/api/client/json/JsonParser;->parseArrayAndClose(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private executeAndParseSingleResponseItem([Lcom/google/android/apps/pos/network/PosClient$PosRequestJson;)Lcom/google/android/apps/pos/network/BatchResponseItemJson;
    .registers 5
    .parameter "posRequestsJson"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1094
    invoke-direct {p0, p1}, Lcom/google/android/apps/pos/network/PosClient;->executeAndParse([Lcom/google/android/apps/pos/network/PosClient$PosRequestJson;)Ljava/util/List;

    move-result-object v0

    .line 1095
    .local v0, batchResponseItemList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/pos/network/BatchResponseItemJson;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_13

    .line 1096
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Expected single BatchResponseItem result"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1098
    :cond_13
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/pos/network/BatchResponseItemJson;

    return-object v1
.end method


# virtual methods
.method public createBatchDeleteRequest([Ljava/lang/String;)Lcom/google/android/apps/pos/network/PosClient$BatchDeleteRequest;
    .registers 6
    .parameter "ids"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/apps/pos/network/PosClient$BatchDeleteRequest",
            "<",
            "Lcom/google/android/apps/pos/model/Plusones;",
            ">;"
        }
    .end annotation

    .prologue
    .line 848
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    array-length v2, p1

    new-array v0, v2, [Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson;

    .line 850
    .local v0, deleteRequests:[Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    array-length v2, p1

    if-ge v1, v2, :cond_16

    .line 851
    new-instance v2, Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson;

    aget-object v3, p1, v1

    invoke-direct {v2, v3}, Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 850
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 853
    :cond_16
    new-instance v2, Lcom/google/android/apps/pos/network/PosClient$BatchDeleteRequest;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lcom/google/android/apps/pos/network/PosClient$BatchDeleteRequest;-><init>(Lcom/google/android/apps/pos/network/PosClient;[Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson;Lcom/google/android/apps/pos/network/PosClient$1;)V

    return-object v2
.end method

.method public createBatchGetRequest([Ljava/lang/String;)Lcom/google/android/apps/pos/network/PosClient$BatchGetRequest;
    .registers 6
    .parameter "ids"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/apps/pos/network/PosClient$BatchGetRequest",
            "<",
            "Lcom/google/android/apps/pos/model/Plusones;",
            ">;"
        }
    .end annotation

    .prologue
    .line 731
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    array-length v2, p1

    new-array v0, v2, [Lcom/google/android/apps/pos/network/PosClient$GetRequestJson;

    .line 733
    .local v0, getRequests:[Lcom/google/android/apps/pos/network/PosClient$GetRequestJson;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    array-length v2, p1

    if-ge v1, v2, :cond_16

    .line 734
    new-instance v2, Lcom/google/android/apps/pos/network/PosClient$GetRequestJson;

    aget-object v3, p1, v1

    invoke-direct {v2, v3}, Lcom/google/android/apps/pos/network/PosClient$GetRequestJson;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 733
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 736
    :cond_16
    new-instance v2, Lcom/google/android/apps/pos/network/PosClient$BatchGetRequest;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lcom/google/android/apps/pos/network/PosClient$BatchGetRequest;-><init>(Lcom/google/android/apps/pos/network/PosClient;[Lcom/google/android/apps/pos/network/PosClient$GetRequestJson;Lcom/google/android/apps/pos/network/PosClient$1;)V

    return-object v2
.end method

.method public createBatchInsertRequest([Ljava/lang/String;)Lcom/google/android/apps/pos/network/PosClient$BatchInsertRequest;
    .registers 6
    .parameter "ids"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/apps/pos/network/PosClient$BatchInsertRequest",
            "<",
            "Lcom/google/android/apps/pos/model/Plusones;",
            ">;"
        }
    .end annotation

    .prologue
    .line 999
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    array-length v2, p1

    new-array v1, v2, [Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson;

    .line 1001
    .local v1, insertRequests:[Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    array-length v2, p1

    if-ge v0, v2, :cond_16

    .line 1002
    new-instance v2, Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson;

    aget-object v3, p1, v0

    invoke-direct {v2, v3}, Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v0

    .line 1001
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1004
    :cond_16
    new-instance v2, Lcom/google/android/apps/pos/network/PosClient$BatchInsertRequest;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v1, v3}, Lcom/google/android/apps/pos/network/PosClient$BatchInsertRequest;-><init>(Lcom/google/android/apps/pos/network/PosClient;[Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson;Lcom/google/android/apps/pos/network/PosClient$1;)V

    return-object v2
.end method

.method public createGetSignUpStateRequest()Lcom/google/android/apps/pos/network/PosClient$GetSignUpStateRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/pos/network/PosClient$GetSignUpStateRequest",
            "<",
            "Lcom/google/android/apps/pos/model/SignUpState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 584
    new-instance v0, Lcom/google/android/apps/pos/network/PosClient$GetSignUpStateRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/pos/network/PosClient$GetSignUpStateRequest;-><init>(Lcom/google/android/apps/pos/network/PosClient;Lcom/google/android/apps/pos/network/PosClient$1;)V

    return-object v0
.end method

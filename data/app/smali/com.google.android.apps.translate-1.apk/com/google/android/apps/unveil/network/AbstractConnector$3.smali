.class Lcom/google/android/apps/unveil/network/AbstractConnector$3;
.super Lcom/google/android/apps/unveil/env/HoneycombAsyncTask;
.source "AbstractConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/unveil/network/AbstractConnector;->createProtobufRequestTask(Lcom/google/protobuf/GeneratedMessageLite;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;)Lcom/google/android/apps/unveil/env/HoneycombAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/unveil/env/HoneycombAsyncTask",
        "<",
        "Lcom/google/android/apps/unveil/network/UnveilResponse",
        "<TProtoResponseType;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/unveil/network/AbstractConnector;

.field final synthetic val$request:Lcom/google/protobuf/GeneratedMessageLite;

.field final synthetic val$requestUrl:Ljava/lang/String;

.field final synthetic val$responseClass:Ljava/lang/Class;

.field final synthetic val$responseHandler:Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;

.field final synthetic val$tracingCookie:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/apps/unveil/network/AbstractConnector;Ljava/lang/Class;Ljava/lang/String;Lcom/google/protobuf/GeneratedMessageLite;Ljava/lang/String;Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 254
    iput-object p1, p0, Lcom/google/android/apps/unveil/network/AbstractConnector$3;->this$0:Lcom/google/android/apps/unveil/network/AbstractConnector;

    iput-object p2, p0, Lcom/google/android/apps/unveil/network/AbstractConnector$3;->val$responseClass:Ljava/lang/Class;

    iput-object p3, p0, Lcom/google/android/apps/unveil/network/AbstractConnector$3;->val$requestUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/apps/unveil/network/AbstractConnector$3;->val$request:Lcom/google/protobuf/GeneratedMessageLite;

    iput-object p5, p0, Lcom/google/android/apps/unveil/network/AbstractConnector$3;->val$tracingCookie:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/apps/unveil/network/AbstractConnector$3;->val$responseHandler:Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;

    invoke-direct {p0}, Lcom/google/android/apps/unveil/env/HoneycombAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected doInBackground()Lcom/google/android/apps/unveil/network/UnveilResponse;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/unveil/network/UnveilResponse",
            "<TProtoResponseType;>;"
        }
    .end annotation

    .prologue
    .line 258
    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/unveil/network/AbstractConnector$3;->val$responseClass:Ljava/lang/Class;

    #calls: Lcom/google/android/apps/unveil/network/AbstractConnector;->getTagForClass(Ljava/lang/Class;)Lcom/google/android/apps/unveil/network/utils/Stats$Tags;
    invoke-static {v1}, Lcom/google/android/apps/unveil/network/AbstractConnector;->access$100(Ljava/lang/Class;)Lcom/google/android/apps/unveil/network/utils/Stats$Tags;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/unveil/network/utils/Stats;->setThreadTag(Lcom/google/android/apps/unveil/network/utils/Stats$Tags;)V

    .line 259
    iget-object v1, p0, Lcom/google/android/apps/unveil/network/AbstractConnector$3;->this$0:Lcom/google/android/apps/unveil/network/AbstractConnector;

    iget-object v2, p0, Lcom/google/android/apps/unveil/network/AbstractConnector$3;->val$responseClass:Ljava/lang/Class;

    iget-object v3, p0, Lcom/google/android/apps/unveil/network/AbstractConnector$3;->this$0:Lcom/google/android/apps/unveil/network/AbstractConnector;

    iget-object v4, p0, Lcom/google/android/apps/unveil/network/AbstractConnector$3;->val$requestUrl:Ljava/lang/String;

    new-instance v5, Lorg/apache/http/entity/ByteArrayEntity;

    iget-object v6, p0, Lcom/google/android/apps/unveil/network/AbstractConnector$3;->val$request:Lcom/google/protobuf/GeneratedMessageLite;

    invoke-virtual {v6}, Lcom/google/protobuf/GeneratedMessageLite;->toByteArray()[B

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    iget-object v6, p0, Lcom/google/android/apps/unveil/network/AbstractConnector$3;->val$tracingCookie:Ljava/lang/String;

    #calls: Lcom/google/android/apps/unveil/network/AbstractConnector;->prepareRequest(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;
    invoke-static {v3, v4, v5, v6}, Lcom/google/android/apps/unveil/network/AbstractConnector;->access$200(Lcom/google/android/apps/unveil/network/AbstractConnector;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/network/AbstractConnector;->blockingRequest(Ljava/lang/Class;Lorg/apache/http/client/methods/HttpPost;)Lcom/google/android/apps/unveil/network/UnveilResponse;
    :try_end_25
    .catch Lcom/google/android/apps/unveil/network/AbstractConnector$ConnectorException; {:try_start_0 .. :try_end_25} :catch_27

    move-result-object v1

    .line 262
    :goto_26
    return-object v1

    .line 261
    :catch_27
    move-exception v0

    .line 262
    .local v0, e:Lcom/google/android/apps/unveil/network/AbstractConnector$ConnectorException;
    invoke-static {v0}, Lcom/google/android/apps/unveil/network/UnveilResponse;->get(Lcom/google/android/apps/unveil/network/AbstractConnector$ConnectorException;)Lcom/google/android/apps/unveil/network/UnveilResponse;

    move-result-object v1

    goto :goto_26
.end method

.method protected bridge synthetic doInBackground()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/network/AbstractConnector$3;->doInBackground()Lcom/google/android/apps/unveil/network/UnveilResponse;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/google/android/apps/unveil/network/UnveilResponse;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/unveil/network/UnveilResponse",
            "<TProtoResponseType;>;)V"
        }
    .end annotation

    .prologue
    .line 268
    .local p1, result:Lcom/google/android/apps/unveil/network/UnveilResponse;,"Lcom/google/android/apps/unveil/network/UnveilResponse<TProtoResponseType;>;"
    invoke-virtual {p1}, Lcom/google/android/apps/unveil/network/UnveilResponse;->getException()Lcom/google/android/apps/unveil/network/AbstractConnector$ConnectorException;

    move-result-object v0

    if-nez v0, :cond_c

    .line 269
    iget-object v0, p0, Lcom/google/android/apps/unveil/network/AbstractConnector$3;->val$responseHandler:Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;->onResponse(Lcom/google/android/apps/unveil/network/UnveilResponse;)V

    .line 273
    :goto_b
    return-void

    .line 271
    :cond_c
    iget-object v0, p0, Lcom/google/android/apps/unveil/network/AbstractConnector$3;->this$0:Lcom/google/android/apps/unveil/network/AbstractConnector;

    iget-object v1, p0, Lcom/google/android/apps/unveil/network/AbstractConnector$3;->val$responseHandler:Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;

    invoke-virtual {p1}, Lcom/google/android/apps/unveil/network/UnveilResponse;->getException()Lcom/google/android/apps/unveil/network/AbstractConnector$ConnectorException;

    move-result-object v2

    #calls: Lcom/google/android/apps/unveil/network/AbstractConnector;->handleConnectorException(Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;Lcom/google/android/apps/unveil/network/AbstractConnector$ConnectorException;)V
    invoke-static {v0, v1, v2}, Lcom/google/android/apps/unveil/network/AbstractConnector;->access$300(Lcom/google/android/apps/unveil/network/AbstractConnector;Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;Lcom/google/android/apps/unveil/network/AbstractConnector$ConnectorException;)V

    goto :goto_b
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 254
    check-cast p1, Lcom/google/android/apps/unveil/network/UnveilResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/unveil/network/AbstractConnector$3;->onPostExecute(Lcom/google/android/apps/unveil/network/UnveilResponse;)V

    return-void
.end method

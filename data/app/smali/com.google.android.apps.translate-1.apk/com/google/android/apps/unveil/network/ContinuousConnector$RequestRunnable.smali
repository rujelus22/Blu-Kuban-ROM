.class abstract Lcom/google/android/apps/unveil/network/ContinuousConnector$RequestRunnable;
.super Ljava/lang/Object;
.source "ContinuousConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/network/ContinuousConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "RequestRunnable"
.end annotation


# instance fields
.field protected request:Lorg/apache/http/client/methods/HttpPost;

.field final synthetic this$0:Lcom/google/android/apps/unveil/network/ContinuousConnector;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/unveil/network/ContinuousConnector;)V
    .registers 2
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/google/android/apps/unveil/network/ContinuousConnector$RequestRunnable;->this$0:Lcom/google/android/apps/unveil/network/ContinuousConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/unveil/network/ContinuousConnector;Lcom/google/android/apps/unveil/network/ContinuousConnector$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 222
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/network/ContinuousConnector$RequestRunnable;-><init>(Lcom/google/android/apps/unveil/network/ContinuousConnector;)V

    return-void
.end method


# virtual methods
.method protected doRequest([BLcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;)V
    .registers 10
    .parameter "bytes"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler",
            "<",
            "Lcom/google/goggles/GogglesProtos$GogglesResponse;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/unveil/network/RequestFailedException;
        }
    .end annotation

    .prologue
    .line 234
    .local p2, responseHandler:Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;,"Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler<Lcom/google/goggles/GogglesProtos$GogglesResponse;>;"
    :try_start_0
    iget-object v3, p0, Lcom/google/android/apps/unveil/network/ContinuousConnector$RequestRunnable;->this$0:Lcom/google/android/apps/unveil/network/ContinuousConnector;

    #getter for: Lcom/google/android/apps/unveil/network/ContinuousConnector;->httpRequestFactory:Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;
    invoke-static {v3}, Lcom/google/android/apps/unveil/network/ContinuousConnector;->access$100(Lcom/google/android/apps/unveil/network/ContinuousConnector;)Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/unveil/network/ContinuousConnector$RequestRunnable;->this$0:Lcom/google/android/apps/unveil/network/ContinuousConnector;

    #getter for: Lcom/google/android/apps/unveil/network/ContinuousConnector;->requestUrl:Ljava/lang/String;
    invoke-static {v4}, Lcom/google/android/apps/unveil/network/ContinuousConnector;->access$000(Lcom/google/android/apps/unveil/network/ContinuousConnector;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v5, p1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    sget-object v6, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$ContentType;->PROTOBUF:Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$ContentType;

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;->newPostRequest(Ljava/lang/String;Lorg/apache/http/HttpEntity;Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$ContentType;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/unveil/network/ContinuousConnector$RequestRunnable;->request:Lorg/apache/http/client/methods/HttpPost;

    .line 236
    iget-object v3, p0, Lcom/google/android/apps/unveil/network/ContinuousConnector$RequestRunnable;->this$0:Lcom/google/android/apps/unveil/network/ContinuousConnector;

    #getter for: Lcom/google/android/apps/unveil/network/ContinuousConnector;->network:Lcom/google/android/apps/unveil/network/ContinuousConnector$Network;
    invoke-static {v3}, Lcom/google/android/apps/unveil/network/ContinuousConnector;->access$300(Lcom/google/android/apps/unveil/network/ContinuousConnector;)Lcom/google/android/apps/unveil/network/ContinuousConnector$Network;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/unveil/network/ContinuousConnector$RequestRunnable;->this$0:Lcom/google/android/apps/unveil/network/ContinuousConnector;

    #getter for: Lcom/google/android/apps/unveil/network/ContinuousConnector;->host:Lorg/apache/http/HttpHost;
    invoke-static {v4}, Lcom/google/android/apps/unveil/network/ContinuousConnector;->access$200(Lcom/google/android/apps/unveil/network/ContinuousConnector;)Lorg/apache/http/HttpHost;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/unveil/network/ContinuousConnector$RequestRunnable;->request:Lorg/apache/http/client/methods/HttpPost;

    invoke-interface {v3, v4, v5}, Lcom/google/android/apps/unveil/network/ContinuousConnector$Network;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 237
    .local v1, originalResponse:Lorg/apache/http/HttpResponse;
    iget-object v3, p0, Lcom/google/android/apps/unveil/network/ContinuousConnector$RequestRunnable;->this$0:Lcom/google/android/apps/unveil/network/ContinuousConnector;

    #getter for: Lcom/google/android/apps/unveil/network/ContinuousConnector;->contentTransferrer:Lcom/google/android/apps/unveil/network/utils/ResponseContentTransferrer;
    invoke-static {v3}, Lcom/google/android/apps/unveil/network/ContinuousConnector;->access$400(Lcom/google/android/apps/unveil/network/ContinuousConnector;)Lcom/google/android/apps/unveil/network/utils/ResponseContentTransferrer;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/apps/unveil/network/utils/ResponseContentTransferrer;->consumeAndRelease(Lorg/apache/http/HttpResponse;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 240
    .local v2, unconnectedResponse:Lorg/apache/http/HttpResponse;
    iget-object v3, p0, Lcom/google/android/apps/unveil/network/ContinuousConnector$RequestRunnable;->this$0:Lcom/google/android/apps/unveil/network/ContinuousConnector;

    #getter for: Lcom/google/android/apps/unveil/network/ContinuousConnector;->threadPool:Ljava/util/concurrent/Executor;
    invoke-static {v3}, Lcom/google/android/apps/unveil/network/ContinuousConnector;->access$500(Lcom/google/android/apps/unveil/network/ContinuousConnector;)Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Lcom/google/android/apps/unveil/network/HttpProtoResponseHandler;

    const-class v5, Lcom/google/goggles/GogglesProtos$GogglesResponse;

    invoke-direct {v4, v5}, Lcom/google/android/apps/unveil/network/HttpProtoResponseHandler;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v4, v2, p2}, Lcom/google/android/apps/unveil/network/HttpProtoResponseHandler;->asRunnable(Lorg/apache/http/HttpResponse;Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_49
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_49} :catch_4a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_49} :catch_51

    .line 248
    return-void

    .line 243
    .end local v1           #originalResponse:Lorg/apache/http/HttpResponse;
    .end local v2           #unconnectedResponse:Lorg/apache/http/HttpResponse;
    :catch_4a
    move-exception v0

    .line 244
    .local v0, e:Lorg/apache/http/client/ClientProtocolException;
    new-instance v3, Lcom/google/android/apps/unveil/network/RequestFailedException;

    invoke-direct {v3, v0}, Lcom/google/android/apps/unveil/network/RequestFailedException;-><init>(Ljava/lang/Exception;)V

    throw v3

    .line 245
    .end local v0           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_51
    move-exception v0

    .line 246
    .local v0, e:Ljava/io/IOException;
    new-instance v3, Lcom/google/android/apps/unveil/network/RequestFailedException;

    invoke-direct {v3, v0}, Lcom/google/android/apps/unveil/network/RequestFailedException;-><init>(Ljava/lang/Exception;)V

    throw v3
.end method

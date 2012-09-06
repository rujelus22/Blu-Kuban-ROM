.class Lcom/google/android/apps/unveil/network/HttpProtoResponseHandler$1;
.super Ljava/lang/Object;
.source "HttpProtoResponseHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/unveil/network/HttpProtoResponseHandler;->asRunnable(Lorg/apache/http/HttpResponse;Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/unveil/network/HttpProtoResponseHandler;

.field final synthetic val$r:Lorg/apache/http/HttpResponse;

.field final synthetic val$responseHandler:Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;


# direct methods
.method constructor <init>(Lcom/google/android/apps/unveil/network/HttpProtoResponseHandler;Lorg/apache/http/HttpResponse;Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 174
    .local p0, this:Lcom/google/android/apps/unveil/network/HttpProtoResponseHandler$1;,"Lcom/google/android/apps/unveil/network/HttpProtoResponseHandler.1;"
    iput-object p1, p0, Lcom/google/android/apps/unveil/network/HttpProtoResponseHandler$1;->this$0:Lcom/google/android/apps/unveil/network/HttpProtoResponseHandler;

    iput-object p2, p0, Lcom/google/android/apps/unveil/network/HttpProtoResponseHandler$1;->val$r:Lorg/apache/http/HttpResponse;

    iput-object p3, p0, Lcom/google/android/apps/unveil/network/HttpProtoResponseHandler$1;->val$responseHandler:Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 178
    .local p0, this:Lcom/google/android/apps/unveil/network/HttpProtoResponseHandler$1;,"Lcom/google/android/apps/unveil/network/HttpProtoResponseHandler.1;"
    :try_start_0
    iget-object v2, p0, Lcom/google/android/apps/unveil/network/HttpProtoResponseHandler$1;->this$0:Lcom/google/android/apps/unveil/network/HttpProtoResponseHandler;

    iget-object v3, p0, Lcom/google/android/apps/unveil/network/HttpProtoResponseHandler$1;->val$r:Lorg/apache/http/HttpResponse;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/unveil/network/HttpProtoResponseHandler;->handleResponse(Lorg/apache/http/HttpResponse;)Lcom/google/android/apps/unveil/network/UnveilResponse;

    move-result-object v1

    .line 179
    .local v1, processedResponse:Lcom/google/android/apps/unveil/network/UnveilResponse;,"Lcom/google/android/apps/unveil/network/UnveilResponse<TResponseType;>;"
    iget-object v2, p0, Lcom/google/android/apps/unveil/network/HttpProtoResponseHandler$1;->val$responseHandler:Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;

    invoke-virtual {v2, v1}, Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;->onResponse(Lcom/google/android/apps/unveil/network/UnveilResponse;)V
    :try_end_d
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_0 .. :try_end_d} :catch_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_37

    .line 186
    .end local v1           #processedResponse:Lcom/google/android/apps/unveil/network/UnveilResponse;,"Lcom/google/android/apps/unveil/network/UnveilResponse<TResponseType;>;"
    :goto_d
    return-void

    .line 180
    :catch_e
    move-exception v0

    .line 181
    .local v0, e:Lorg/apache/http/client/HttpResponseException;
    invoke-static {}, Lcom/google/android/apps/unveil/network/HttpProtoResponseHandler;->access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v2

    const-string v3, "Server error: %d, %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Lorg/apache/http/client/HttpResponseException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/unveil/env/UnveilLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    iget-object v2, p0, Lcom/google/android/apps/unveil/network/HttpProtoResponseHandler$1;->val$responseHandler:Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;

    invoke-virtual {v0}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;->onServerErrorCode(I)V

    goto :goto_d

    .line 183
    .end local v0           #e:Lorg/apache/http/client/HttpResponseException;
    :catch_37
    move-exception v0

    .line 184
    .local v0, e:Ljava/io/IOException;
    iget-object v2, p0, Lcom/google/android/apps/unveil/network/HttpProtoResponseHandler$1;->val$responseHandler:Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;

    invoke-virtual {v2}, Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;->onNetworkError()V

    goto :goto_d
.end method

.class Lcom/google/android/apps/unveil/network/AbstractConnector$4;
.super Lcom/google/android/apps/unveil/env/HoneycombAsyncTask;
.source "AbstractConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/unveil/network/AbstractConnector;->createFetchRequestTask(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/google/android/apps/unveil/network/fetch/FetchResponse$Handler;)Lcom/google/android/apps/unveil/env/HoneycombAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/unveil/env/HoneycombAsyncTask",
        "<",
        "Lcom/google/android/apps/unveil/network/fetch/FetchResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/unveil/network/AbstractConnector;

.field final synthetic val$request:Lorg/apache/http/client/methods/HttpUriRequest;

.field final synthetic val$responseHandler:Lcom/google/android/apps/unveil/network/fetch/FetchResponse$Handler;


# direct methods
.method constructor <init>(Lcom/google/android/apps/unveil/network/AbstractConnector;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/google/android/apps/unveil/network/fetch/FetchResponse$Handler;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 312
    iput-object p1, p0, Lcom/google/android/apps/unveil/network/AbstractConnector$4;->this$0:Lcom/google/android/apps/unveil/network/AbstractConnector;

    iput-object p2, p0, Lcom/google/android/apps/unveil/network/AbstractConnector$4;->val$request:Lorg/apache/http/client/methods/HttpUriRequest;

    iput-object p3, p0, Lcom/google/android/apps/unveil/network/AbstractConnector$4;->val$responseHandler:Lcom/google/android/apps/unveil/network/fetch/FetchResponse$Handler;

    invoke-direct {p0}, Lcom/google/android/apps/unveil/env/HoneycombAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected doInBackground()Lcom/google/android/apps/unveil/network/fetch/FetchResponse;
    .registers 4

    .prologue
    .line 316
    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/unveil/network/AbstractConnector$4;->this$0:Lcom/google/android/apps/unveil/network/AbstractConnector;

    iget-object v2, p0, Lcom/google/android/apps/unveil/network/AbstractConnector$4;->val$request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/unveil/network/AbstractConnector;->blockingRequest(Lorg/apache/http/client/methods/HttpUriRequest;)Lcom/google/android/apps/unveil/network/fetch/FetchResponse;
    :try_end_7
    .catch Lcom/google/android/apps/unveil/network/AbstractConnector$ConnectorException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    .line 318
    :goto_8
    return-object v1

    .line 317
    :catch_9
    move-exception v0

    .line 318
    .local v0, e:Lcom/google/android/apps/unveil/network/AbstractConnector$ConnectorException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method protected bridge synthetic doInBackground()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/network/AbstractConnector$4;->doInBackground()Lcom/google/android/apps/unveil/network/fetch/FetchResponse;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/google/android/apps/unveil/network/fetch/FetchResponse;)V
    .registers 3
    .parameter "fetchResponse"

    .prologue
    .line 324
    iget-object v0, p0, Lcom/google/android/apps/unveil/network/AbstractConnector$4;->val$responseHandler:Lcom/google/android/apps/unveil/network/fetch/FetchResponse$Handler;

    invoke-interface {v0, p1}, Lcom/google/android/apps/unveil/network/fetch/FetchResponse$Handler;->onResponseReceived(Lcom/google/android/apps/unveil/network/fetch/FetchResponse;)V

    .line 325
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 312
    check-cast p1, Lcom/google/android/apps/unveil/network/fetch/FetchResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/unveil/network/AbstractConnector$4;->onPostExecute(Lcom/google/android/apps/unveil/network/fetch/FetchResponse;)V

    return-void
.end method

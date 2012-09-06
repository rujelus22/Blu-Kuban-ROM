.class Lcom/google/android/apps/unveil/env/ThumbnailProvider$1;
.super Ljava/lang/Object;
.source "ThumbnailProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/unveil/env/ThumbnailProvider;->makeFetchRunnable(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/unveil/env/ThumbnailProvider;

.field final synthetic val$keyUrl:Ljava/lang/String;

.field final synthetic val$urlWithSize:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/apps/unveil/env/ThumbnailProvider;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 421
    iput-object p1, p0, Lcom/google/android/apps/unveil/env/ThumbnailProvider$1;->this$0:Lcom/google/android/apps/unveil/env/ThumbnailProvider;

    iput-object p2, p0, Lcom/google/android/apps/unveil/env/ThumbnailProvider$1;->val$urlWithSize:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/apps/unveil/env/ThumbnailProvider$1;->val$keyUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 426
    iget-object v4, p0, Lcom/google/android/apps/unveil/env/ThumbnailProvider$1;->this$0:Lcom/google/android/apps/unveil/env/ThumbnailProvider;

    iget-object v5, p0, Lcom/google/android/apps/unveil/env/ThumbnailProvider$1;->val$urlWithSize:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/apps/unveil/env/ThumbnailProvider;->isGoogleUrl(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 427
    iget-object v4, p0, Lcom/google/android/apps/unveil/env/ThumbnailProvider$1;->this$0:Lcom/google/android/apps/unveil/env/ThumbnailProvider;

    #getter for: Lcom/google/android/apps/unveil/env/ThumbnailProvider;->authenticatedRequests:Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;
    invoke-static {v4}, Lcom/google/android/apps/unveil/env/ThumbnailProvider;->access$300(Lcom/google/android/apps/unveil/env/ThumbnailProvider;)Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/unveil/env/ThumbnailProvider$1;->val$urlWithSize:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;->newGetRequest(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v1

    .line 437
    .local v1, request:Lorg/apache/http/client/methods/HttpGet;
    :goto_17
    new-instance v3, Lcom/google/android/apps/unveil/env/ThumbnailProvider$FetchResponseHandler;

    iget-object v4, p0, Lcom/google/android/apps/unveil/env/ThumbnailProvider$1;->this$0:Lcom/google/android/apps/unveil/env/ThumbnailProvider;

    iget-object v5, p0, Lcom/google/android/apps/unveil/env/ThumbnailProvider$1;->val$keyUrl:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/apps/unveil/env/ThumbnailProvider$FetchResponseHandler;-><init>(Lcom/google/android/apps/unveil/env/ThumbnailProvider;Ljava/lang/String;Lcom/google/android/apps/unveil/env/ThumbnailProvider$1;)V

    .line 439
    .local v3, responseHandler:Lcom/google/android/apps/unveil/env/ThumbnailProvider$FetchResponseHandler;
    sget-object v4, Lcom/google/android/apps/unveil/network/utils/Stats$Tags;->THUMBNAIL_FETCH:Lcom/google/android/apps/unveil/network/utils/Stats$Tags;

    invoke-static {v4}, Lcom/google/android/apps/unveil/network/utils/Stats;->setThreadTag(Lcom/google/android/apps/unveil/network/utils/Stats$Tags;)V

    .line 441
    :try_start_25
    iget-object v4, p0, Lcom/google/android/apps/unveil/env/ThumbnailProvider$1;->this$0:Lcom/google/android/apps/unveil/env/ThumbnailProvider;

    #getter for: Lcom/google/android/apps/unveil/env/ThumbnailProvider;->connector:Lcom/google/android/apps/unveil/network/AbstractConnector;
    invoke-static {v4}, Lcom/google/android/apps/unveil/env/ThumbnailProvider;->access$600(Lcom/google/android/apps/unveil/env/ThumbnailProvider;)Lcom/google/android/apps/unveil/network/AbstractConnector;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/apps/unveil/network/AbstractConnector;->blockingRequest(Lorg/apache/http/client/methods/HttpUriRequest;)Lcom/google/android/apps/unveil/network/fetch/FetchResponse;

    move-result-object v2

    .line 442
    .local v2, response:Lcom/google/android/apps/unveil/network/fetch/FetchResponse;
    invoke-virtual {v3, v2}, Lcom/google/android/apps/unveil/env/ThumbnailProvider$FetchResponseHandler;->onResponseReceived(Lcom/google/android/apps/unveil/network/fetch/FetchResponse;)V
    :try_end_32
    .catch Lcom/google/android/apps/unveil/network/AbstractConnector$ConnectorException; {:try_start_25 .. :try_end_32} :catch_47

    .line 446
    .end local v2           #response:Lcom/google/android/apps/unveil/network/fetch/FetchResponse;
    :goto_32
    return-void

    .line 429
    .end local v1           #request:Lorg/apache/http/client/methods/HttpGet;
    .end local v3           #responseHandler:Lcom/google/android/apps/unveil/env/ThumbnailProvider$FetchResponseHandler;
    :cond_33
    iget-object v4, p0, Lcom/google/android/apps/unveil/env/ThumbnailProvider$1;->this$0:Lcom/google/android/apps/unveil/env/ThumbnailProvider;

    #getter for: Lcom/google/android/apps/unveil/env/ThumbnailProvider;->anonymousRequests:Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;
    invoke-static {v4}, Lcom/google/android/apps/unveil/env/ThumbnailProvider;->access$400(Lcom/google/android/apps/unveil/env/ThumbnailProvider;)Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/unveil/env/ThumbnailProvider$1;->val$urlWithSize:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;->newGetRequest(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v1

    .line 434
    .restart local v1       #request:Lorg/apache/http/client/methods/HttpGet;
    const-string v4, "Connection"

    const-string v5, "close"

    invoke-virtual {v1, v4, v5}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    .line 443
    .restart local v3       #responseHandler:Lcom/google/android/apps/unveil/env/ThumbnailProvider$FetchResponseHandler;
    :catch_47
    move-exception v0

    .line 444
    .local v0, e:Lcom/google/android/apps/unveil/network/AbstractConnector$ConnectorException;
    invoke-virtual {v3, v6}, Lcom/google/android/apps/unveil/env/ThumbnailProvider$FetchResponseHandler;->onResponseReceived(Lcom/google/android/apps/unveil/network/fetch/FetchResponse;)V

    goto :goto_32
.end method

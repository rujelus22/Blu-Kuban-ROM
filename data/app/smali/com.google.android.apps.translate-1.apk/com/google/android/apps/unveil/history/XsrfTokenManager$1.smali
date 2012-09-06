.class Lcom/google/android/apps/unveil/history/XsrfTokenManager$1;
.super Ljava/lang/Object;
.source "XsrfTokenManager.java"

# interfaces
.implements Lcom/google/android/apps/unveil/network/fetch/FetchResponse$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/unveil/history/XsrfTokenManager;->refreshTokenAndExecute(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/google/android/apps/unveil/network/fetch/FetchResponse$Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/unveil/history/XsrfTokenManager;

.field final synthetic val$originalRequest:Lorg/apache/http/client/methods/HttpUriRequest;

.field final synthetic val$originalResponseHandler:Lcom/google/android/apps/unveil/network/fetch/FetchResponse$Handler;


# direct methods
.method constructor <init>(Lcom/google/android/apps/unveil/history/XsrfTokenManager;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/google/android/apps/unveil/network/fetch/FetchResponse$Handler;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/google/android/apps/unveil/history/XsrfTokenManager$1;->this$0:Lcom/google/android/apps/unveil/history/XsrfTokenManager;

    iput-object p2, p0, Lcom/google/android/apps/unveil/history/XsrfTokenManager$1;->val$originalRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    iput-object p3, p0, Lcom/google/android/apps/unveil/history/XsrfTokenManager$1;->val$originalResponseHandler:Lcom/google/android/apps/unveil/network/fetch/FetchResponse$Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponseReceived(Lcom/google/android/apps/unveil/network/fetch/FetchResponse;)V
    .registers 5
    .parameter "fetchResponse"

    .prologue
    .line 92
    invoke-static {p1}, Lcom/google/android/apps/unveil/network/fetch/FetchResponse;->isValid(Lcom/google/android/apps/unveil/network/fetch/FetchResponse;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 93
    iget-object v0, p0, Lcom/google/android/apps/unveil/history/XsrfTokenManager$1;->this$0:Lcom/google/android/apps/unveil/history/XsrfTokenManager;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/unveil/history/XsrfTokenManager;->handleGetResponse(Lcom/google/android/apps/unveil/network/fetch/FetchResponse;)V

    .line 94
    iget-object v0, p0, Lcom/google/android/apps/unveil/history/XsrfTokenManager$1;->this$0:Lcom/google/android/apps/unveil/history/XsrfTokenManager;

    iget-object v1, p0, Lcom/google/android/apps/unveil/history/XsrfTokenManager$1;->val$originalRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    iget-object v2, p0, Lcom/google/android/apps/unveil/history/XsrfTokenManager$1;->val$originalResponseHandler:Lcom/google/android/apps/unveil/network/fetch/FetchResponse$Handler;

    #calls: Lcom/google/android/apps/unveil/history/XsrfTokenManager;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/google/android/apps/unveil/network/fetch/FetchResponse$Handler;)V
    invoke-static {v0, v1, v2}, Lcom/google/android/apps/unveil/history/XsrfTokenManager;->access$000(Lcom/google/android/apps/unveil/history/XsrfTokenManager;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/google/android/apps/unveil/network/fetch/FetchResponse$Handler;)V

    .line 99
    :goto_14
    return-void

    .line 97
    :cond_15
    iget-object v0, p0, Lcom/google/android/apps/unveil/history/XsrfTokenManager$1;->val$originalResponseHandler:Lcom/google/android/apps/unveil/network/fetch/FetchResponse$Handler;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/apps/unveil/network/fetch/FetchResponse$Handler;->onResponseReceived(Lcom/google/android/apps/unveil/network/fetch/FetchResponse;)V

    goto :goto_14
.end method

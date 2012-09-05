.class Lcom/google/android/youtube/core/async/UserAuthorizer$RetryingRequester$1;
.super Ljava/lang/Object;
.source "UserAuthorizer.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/core/async/UserAuthorizer$RetryingRequester;->request(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/async/Callback",
        "<",
        "Lcom/google/android/youtube/core/async/GDataRequest;",
        "TE;>;"
    }
.end annotation


# instance fields
.field private retried:Z

.field final synthetic this$1:Lcom/google/android/youtube/core/async/UserAuthorizer$RetryingRequester;

.field final synthetic val$callback:Lcom/google/android/youtube/core/async/Callback;

.field final synthetic val$originalRequest:Lcom/google/android/youtube/core/async/GDataRequest;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/async/UserAuthorizer$RetryingRequester;Lcom/google/android/youtube/core/async/Callback;Lcom/google/android/youtube/core/async/GDataRequest;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 589
    .local p0, this:Lcom/google/android/youtube/core/async/UserAuthorizer$RetryingRequester$1;,"Lcom/google/android/youtube/core/async/UserAuthorizer$RetryingRequester.1;"
    iput-object p1, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$RetryingRequester$1;->this$1:Lcom/google/android/youtube/core/async/UserAuthorizer$RetryingRequester;

    iput-object p2, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$RetryingRequester$1;->val$callback:Lcom/google/android/youtube/core/async/Callback;

    iput-object p3, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$RetryingRequester$1;->val$originalRequest:Lcom/google/android/youtube/core/async/GDataRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V
    .registers 8
    .parameter "request"
    .parameter "exception"

    .prologue
    .line 598
    .local p0, this:Lcom/google/android/youtube/core/async/UserAuthorizer$RetryingRequester$1;,"Lcom/google/android/youtube/core/async/UserAuthorizer$RetryingRequester.1;"
    const/16 v2, 0x191

    invoke-static {p2, v2}, Lcom/google/android/youtube/core/ErrorHelper;->isHttpException(Ljava/lang/Throwable;I)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 599
    const-string v2, "NoLinkedYouTubeAccount"

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 600
    const-string v2, "wrong account, not YouTube"

    invoke-static {v2}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;)V

    .line 601
    iget-object v2, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$RetryingRequester$1;->this$1:Lcom/google/android/youtube/core/async/UserAuthorizer$RetryingRequester;

    iget-object v2, v2, Lcom/google/android/youtube/core/async/UserAuthorizer$RetryingRequester;->this$0:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v2}, Lcom/google/android/youtube/core/async/UserAuthorizer;->signOut()V

    .line 602
    iget-object v2, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$RetryingRequester$1;->val$callback:Lcom/google/android/youtube/core/async/Callback;

    iget-object v3, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$RetryingRequester$1;->val$originalRequest:Lcom/google/android/youtube/core/async/GDataRequest;

    new-instance v4, Lcom/google/android/youtube/core/async/UserAuthorizer$NoLinkedYouTubeAccountException;

    invoke-direct {v4}, Lcom/google/android/youtube/core/async/UserAuthorizer$NoLinkedYouTubeAccountException;-><init>()V

    invoke-interface {v2, v3, v4}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 620
    :goto_2c
    return-void

    .line 605
    :cond_2d
    const-string v2, "authToken may be expired"

    invoke-static {v2}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 606
    iget-boolean v2, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$RetryingRequester$1;->retried:Z

    if-eqz v2, :cond_4a

    .line 607
    const-string v2, "already retried"

    invoke-static {v2}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 608
    iget-object v2, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$RetryingRequester$1;->this$1:Lcom/google/android/youtube/core/async/UserAuthorizer$RetryingRequester;

    iget-object v2, v2, Lcom/google/android/youtube/core/async/UserAuthorizer$RetryingRequester;->this$0:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v2}, Lcom/google/android/youtube/core/async/UserAuthorizer;->signOut()V

    .line 619
    :cond_42
    iget-object v2, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$RetryingRequester$1;->val$callback:Lcom/google/android/youtube/core/async/Callback;

    iget-object v3, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$RetryingRequester$1;->val$originalRequest:Lcom/google/android/youtube/core/async/GDataRequest;

    invoke-interface {v2, v3, p2}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_2c

    .line 610
    :cond_4a
    const-string v2, "refreshing the auth token and retrying"

    invoke-static {v2}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 611
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$RetryingRequester$1;->retried:Z

    .line 612
    iget-object v2, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$RetryingRequester$1;->this$1:Lcom/google/android/youtube/core/async/UserAuthorizer$RetryingRequester;

    iget-object v2, v2, Lcom/google/android/youtube/core/async/UserAuthorizer$RetryingRequester;->this$0:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v3, p1, Lcom/google/android/youtube/core/async/GDataRequest;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v3, v3, Lcom/google/android/youtube/core/model/UserAuth;->authToken:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/core/async/UserAuthorizer;->refresh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 613
    .local v0, freshAuthToken:Ljava/lang/String;
    new-instance v1, Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v2, p1, Lcom/google/android/youtube/core/async/GDataRequest;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v2, v2, Lcom/google/android/youtube/core/model/UserAuth;->account:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/youtube/core/async/GDataRequest;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v3, v3, Lcom/google/android/youtube/core/model/UserAuth;->authMethod:Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/youtube/core/model/UserAuth;-><init>(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;Ljava/lang/String;)V

    .line 615
    .local v1, freshUserAuth:Lcom/google/android/youtube/core/model/UserAuth;
    iget-object v2, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$RetryingRequester$1;->this$1:Lcom/google/android/youtube/core/async/UserAuthorizer$RetryingRequester;

    #getter for: Lcom/google/android/youtube/core/async/UserAuthorizer$RetryingRequester;->target:Lcom/google/android/youtube/core/async/Requester;
    invoke-static {v2}, Lcom/google/android/youtube/core/async/UserAuthorizer$RetryingRequester;->access$200(Lcom/google/android/youtube/core/async/UserAuthorizer$RetryingRequester;)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v2

    invoke-static {v1, p1}, Lcom/google/android/youtube/core/async/GDataRequest;->create(Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/core/async/GDataRequest;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v3

    invoke-interface {v2, v3, p0}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    goto :goto_2c
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 589
    .local p0, this:Lcom/google/android/youtube/core/async/UserAuthorizer$RetryingRequester$1;,"Lcom/google/android/youtube/core/async/UserAuthorizer$RetryingRequester.1;"
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/async/UserAuthorizer$RetryingRequester$1;->onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Object;)V
    .registers 5
    .parameter "request"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "TE;)V"
        }
    .end annotation

    .prologue
    .line 594
    .local p0, this:Lcom/google/android/youtube/core/async/UserAuthorizer$RetryingRequester$1;,"Lcom/google/android/youtube/core/async/UserAuthorizer$RetryingRequester.1;"
    .local p2, response:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$RetryingRequester$1;->val$callback:Lcom/google/android/youtube/core/async/Callback;

    iget-object v1, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$RetryingRequester$1;->val$originalRequest:Lcom/google/android/youtube/core/async/GDataRequest;

    invoke-interface {v0, v1, p2}, Lcom/google/android/youtube/core/async/Callback;->onResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 595
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 589
    .local p0, this:Lcom/google/android/youtube/core/async/UserAuthorizer$RetryingRequester$1;,"Lcom/google/android/youtube/core/async/UserAuthorizer$RetryingRequester.1;"
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/async/UserAuthorizer$RetryingRequester$1;->onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Object;)V

    return-void
.end method

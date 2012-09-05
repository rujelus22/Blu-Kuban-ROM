.class Lcom/google/android/youtube/videos/DrmManager$RetryingRequester$RetryingCallback;
.super Ljava/lang/Object;
.source "DrmManager.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Callback;
.implements Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/videos/DrmManager$RetryingRequester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RetryingCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/async/Callback",
        "<",
        "Lcom/google/android/youtube/videos/DrmRequest;",
        "Lcom/google/android/youtube/videos/DrmResponse;",
        ">;",
        "Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;"
    }
.end annotation


# instance fields
.field private drmException:Lcom/google/android/youtube/videos/DrmException;

.field private final originalCallback:Lcom/google/android/youtube/core/async/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Lcom/google/android/youtube/videos/DrmRequest;",
            "Lcom/google/android/youtube/videos/DrmResponse;",
            ">;"
        }
    .end annotation
.end field

.field private originalRequest:Lcom/google/android/youtube/videos/DrmRequest;

.field final synthetic this$0:Lcom/google/android/youtube/videos/DrmManager$RetryingRequester;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/videos/DrmManager$RetryingRequester;Lcom/google/android/youtube/core/async/Callback;)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Lcom/google/android/youtube/videos/DrmRequest;",
            "Lcom/google/android/youtube/videos/DrmResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 216
    .local p2, originalCallback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/videos/DrmResponse;>;"
    iput-object p1, p0, Lcom/google/android/youtube/videos/DrmManager$RetryingRequester$RetryingCallback;->this$0:Lcom/google/android/youtube/videos/DrmManager$RetryingRequester;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput-object p2, p0, Lcom/google/android/youtube/videos/DrmManager$RetryingRequester$RetryingCallback;->originalCallback:Lcom/google/android/youtube/core/async/Callback;

    .line 218
    return-void
.end method


# virtual methods
.method public onAuthenticated(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 6
    .parameter "userAuth"

    .prologue
    .line 239
    iget-object v1, p0, Lcom/google/android/youtube/videos/DrmManager$RetryingRequester$RetryingCallback;->originalRequest:Lcom/google/android/youtube/videos/DrmRequest;

    iget-object v1, v1, Lcom/google/android/youtube/videos/DrmRequest;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-virtual {v1, p1}, Lcom/google/android/youtube/core/model/UserAuth;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 240
    iget-object v1, p0, Lcom/google/android/youtube/videos/DrmManager$RetryingRequester$RetryingCallback;->originalRequest:Lcom/google/android/youtube/videos/DrmRequest;

    invoke-virtual {v1, p1}, Lcom/google/android/youtube/videos/DrmRequest;->copyWithAuth(Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/videos/DrmRequest;

    move-result-object v0

    .line 241
    .local v0, retry:Lcom/google/android/youtube/videos/DrmRequest;
    iget-object v1, p0, Lcom/google/android/youtube/videos/DrmManager$RetryingRequester$RetryingCallback;->this$0:Lcom/google/android/youtube/videos/DrmManager$RetryingRequester;

    #getter for: Lcom/google/android/youtube/videos/DrmManager$RetryingRequester;->target:Lcom/google/android/youtube/core/async/Requester;
    invoke-static {v1}, Lcom/google/android/youtube/videos/DrmManager$RetryingRequester;->access$300(Lcom/google/android/youtube/videos/DrmManager$RetryingRequester;)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/videos/DrmManager$RetryingRequester$RetryingCallback;->originalCallback:Lcom/google/android/youtube/core/async/Callback;

    invoke-interface {v1, v0, v2}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    .line 246
    .end local v0           #retry:Lcom/google/android/youtube/videos/DrmRequest;
    :goto_1b
    return-void

    .line 243
    :cond_1c
    const-string v1, "User account has changed, not retrying"

    invoke-static {v1}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;)V

    .line 244
    iget-object v1, p0, Lcom/google/android/youtube/videos/DrmManager$RetryingRequester$RetryingCallback;->originalCallback:Lcom/google/android/youtube/core/async/Callback;

    iget-object v2, p0, Lcom/google/android/youtube/videos/DrmManager$RetryingRequester$RetryingCallback;->originalRequest:Lcom/google/android/youtube/videos/DrmRequest;

    iget-object v3, p0, Lcom/google/android/youtube/videos/DrmManager$RetryingRequester$RetryingCallback;->drmException:Lcom/google/android/youtube/videos/DrmException;

    invoke-interface {v1, v2, v3}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_1b
.end method

.method public onAuthenticationError(Ljava/lang/Exception;)V
    .registers 5
    .parameter "exception"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/android/youtube/videos/DrmManager$RetryingRequester$RetryingCallback;->originalCallback:Lcom/google/android/youtube/core/async/Callback;

    iget-object v1, p0, Lcom/google/android/youtube/videos/DrmManager$RetryingRequester$RetryingCallback;->originalRequest:Lcom/google/android/youtube/videos/DrmRequest;

    iget-object v2, p0, Lcom/google/android/youtube/videos/DrmManager$RetryingRequester$RetryingCallback;->drmException:Lcom/google/android/youtube/videos/DrmException;

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 254
    return-void
.end method

.method public onError(Lcom/google/android/youtube/videos/DrmRequest;Ljava/lang/Exception;)V
    .registers 5
    .parameter "request"
    .parameter "exception"

    .prologue
    .line 225
    instance-of v0, p2, Lcom/google/android/youtube/videos/DrmException;

    if-eqz v0, :cond_2f

    move-object v0, p2

    .line 226
    check-cast v0, Lcom/google/android/youtube/videos/DrmException;

    iput-object v0, p0, Lcom/google/android/youtube/videos/DrmManager$RetryingRequester$RetryingCallback;->drmException:Lcom/google/android/youtube/videos/DrmException;

    .line 227
    iget-object v0, p0, Lcom/google/android/youtube/videos/DrmManager$RetryingRequester$RetryingCallback;->drmException:Lcom/google/android/youtube/videos/DrmException;

    iget-object v0, v0, Lcom/google/android/youtube/videos/DrmException;->drmError:Lcom/google/android/youtube/videos/DrmException$DrmError;

    sget-object v1, Lcom/google/android/youtube/videos/DrmException$DrmError;->AUTHENTICATION_FAILED:Lcom/google/android/youtube/videos/DrmException$DrmError;

    if-ne v0, v1, :cond_2f

    .line 228
    const-string v0, "Authentication failed, retrying"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->i(Ljava/lang/String;)V

    .line 229
    iput-object p1, p0, Lcom/google/android/youtube/videos/DrmManager$RetryingRequester$RetryingCallback;->originalRequest:Lcom/google/android/youtube/videos/DrmRequest;

    .line 230
    iget-object v0, p0, Lcom/google/android/youtube/videos/DrmManager$RetryingRequester$RetryingCallback;->this$0:Lcom/google/android/youtube/videos/DrmManager$RetryingRequester;

    #getter for: Lcom/google/android/youtube/videos/DrmManager$RetryingRequester;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;
    invoke-static {v0}, Lcom/google/android/youtube/videos/DrmManager$RetryingRequester;->access$200(Lcom/google/android/youtube/videos/DrmManager$RetryingRequester;)Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/youtube/videos/DrmRequest;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/UserAuth;->authToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/async/UserAuthorizer;->refresh(Ljava/lang/String;)Ljava/lang/String;

    .line 231
    iget-object v0, p0, Lcom/google/android/youtube/videos/DrmManager$RetryingRequester$RetryingCallback;->this$0:Lcom/google/android/youtube/videos/DrmManager$RetryingRequester;

    #getter for: Lcom/google/android/youtube/videos/DrmManager$RetryingRequester;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;
    invoke-static {v0}, Lcom/google/android/youtube/videos/DrmManager$RetryingRequester;->access$200(Lcom/google/android/youtube/videos/DrmManager$RetryingRequester;)Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->peek(Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;)V

    .line 236
    :goto_2e
    return-void

    .line 235
    :cond_2f
    iget-object v0, p0, Lcom/google/android/youtube/videos/DrmManager$RetryingRequester$RetryingCallback;->originalCallback:Lcom/google/android/youtube/core/async/Callback;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_2e
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 210
    check-cast p1, Lcom/google/android/youtube/videos/DrmRequest;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/DrmManager$RetryingRequester$RetryingCallback;->onError(Lcom/google/android/youtube/videos/DrmRequest;Ljava/lang/Exception;)V

    return-void
.end method

.method public onNotAuthenticated()V
    .registers 4

    .prologue
    .line 249
    iget-object v0, p0, Lcom/google/android/youtube/videos/DrmManager$RetryingRequester$RetryingCallback;->originalCallback:Lcom/google/android/youtube/core/async/Callback;

    iget-object v1, p0, Lcom/google/android/youtube/videos/DrmManager$RetryingRequester$RetryingCallback;->originalRequest:Lcom/google/android/youtube/videos/DrmRequest;

    iget-object v2, p0, Lcom/google/android/youtube/videos/DrmManager$RetryingRequester$RetryingCallback;->drmException:Lcom/google/android/youtube/videos/DrmException;

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 250
    return-void
.end method

.method public onResponse(Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/videos/DrmResponse;)V
    .registers 4
    .parameter "request"
    .parameter "response"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/android/youtube/videos/DrmManager$RetryingRequester$RetryingCallback;->originalCallback:Lcom/google/android/youtube/core/async/Callback;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/Callback;->onResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 222
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 210
    check-cast p1, Lcom/google/android/youtube/videos/DrmRequest;

    .end local p1
    check-cast p2, Lcom/google/android/youtube/videos/DrmResponse;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/DrmManager$RetryingRequester$RetryingCallback;->onResponse(Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/videos/DrmResponse;)V

    return-void
.end method

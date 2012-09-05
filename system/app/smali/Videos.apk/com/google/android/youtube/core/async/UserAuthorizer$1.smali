.class Lcom/google/android/youtube/core/async/UserAuthorizer$1;
.super Lcom/google/android/youtube/core/async/UserAuthorizer$AuthTokenCallback;
.source "UserAuthorizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/core/async/UserAuthorizer;->peek(Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field final synthetic val$callback:Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$1;->this$0:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iput-object p2, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$1;->val$callback:Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/core/async/UserAuthorizer$AuthTokenCallback;-><init>(Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/async/UserAuthorizer$1;)V

    return-void
.end method


# virtual methods
.method public onAuthenticated(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 3
    .parameter "result"

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$1;->val$callback:Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;->onAuthenticated(Lcom/google/android/youtube/core/model/UserAuth;)V

    .line 214
    return-void
.end method

.method public onAuthenticationError(Ljava/lang/Exception;)V
    .registers 3
    .parameter "exception"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$1;->val$callback:Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;->onAuthenticationError(Ljava/lang/Exception;)V

    .line 222
    return-void
.end method

.method public onNotAuthenticated()V
    .registers 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$1;->val$callback:Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;

    invoke-interface {v0}, Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;->onNotAuthenticated()V

    .line 218
    return-void
.end method

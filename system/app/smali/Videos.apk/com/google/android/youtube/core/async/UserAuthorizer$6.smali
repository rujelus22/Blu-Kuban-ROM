.class Lcom/google/android/youtube/core/async/UserAuthorizer$6;
.super Lcom/google/android/youtube/core/async/UserAuthorizer$AuthTokenCallback;
.source "UserAuthorizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/core/async/UserAuthorizer;->fetchAuthToken(Landroid/accounts/Account;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/async/UserAuthorizer;Landroid/app/Activity;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 451
    iput-object p1, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$6;->this$0:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iput-object p2, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$6;->val$activity:Landroid/app/Activity;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/core/async/UserAuthorizer$AuthTokenCallback;-><init>(Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/async/UserAuthorizer$1;)V

    return-void
.end method


# virtual methods
.method public onAuthenticated(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 4
    .parameter "result"

    .prologue
    .line 454
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$6;->this$0:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v1, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$6;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/youtube/core/async/UserAuthorizer;->notifyAuthenticated(Landroid/app/Activity;Lcom/google/android/youtube/core/model/UserAuth;)V

    .line 455
    return-void
.end method

.method public onAuthenticationError(Ljava/lang/Exception;)V
    .registers 3
    .parameter "exception"

    .prologue
    .line 462
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$6;->this$0:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/async/UserAuthorizer;->notifyAuthenticationError(Ljava/lang/Exception;)V

    .line 463
    return-void
.end method

.method public onNotAuthenticated()V
    .registers 2

    .prologue
    .line 458
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$6;->this$0:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->notifyNotAuthenticated()V

    .line 459
    return-void
.end method

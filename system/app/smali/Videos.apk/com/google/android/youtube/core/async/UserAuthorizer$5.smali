.class Lcom/google/android/youtube/core/async/UserAuthorizer$5;
.super Ljava/lang/Object;
.source "UserAuthorizer.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/core/async/UserAuthorizer;->addAccount(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/async/UserAuthorizer;Landroid/app/Activity;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 414
    iput-object p1, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$5;->this$0:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iput-object p2, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$5;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 416
    .local p1, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    iget-object v4, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$5;->val$activity:Landroid/app/Activity;

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Landroid/app/Activity;->removeDialog(I)V

    .line 418
    :try_start_6
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 419
    .local v3, extras:Landroid/os/Bundle;
    const-string v4, "authAccount"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 420
    .local v1, accountName:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$5;->this$0:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v4, v1}, Lcom/google/android/youtube/core/async/UserAuthorizer;->getAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    .line 421
    .local v0, account:Landroid/accounts/Account;
    if-eqz v0, :cond_3a

    .line 422
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "added account "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 423
    iget-object v4, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$5;->this$0:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v5, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$5;->val$activity:Landroid/app/Activity;

    invoke-virtual {v4, v0, v5}, Lcom/google/android/youtube/core/async/UserAuthorizer;->fetchAuthToken(Landroid/accounts/Account;Landroid/app/Activity;)V

    .line 438
    .end local v0           #account:Landroid/accounts/Account;
    .end local v1           #accountName:Ljava/lang/String;
    .end local v3           #extras:Landroid/os/Bundle;
    :goto_39
    return-void

    .line 425
    .restart local v0       #account:Landroid/accounts/Account;
    .restart local v1       #accountName:Ljava/lang/String;
    .restart local v3       #extras:Landroid/os/Bundle;
    :cond_3a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "account with name "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not created"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;)V

    .line 426
    iget-object v4, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$5;->this$0:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v4}, Lcom/google/android/youtube/core/async/UserAuthorizer;->notifyNotAuthenticated()V
    :try_end_5b
    .catch Landroid/accounts/OperationCanceledException; {:try_start_6 .. :try_end_5b} :catch_5c
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_5b} :catch_6a
    .catch Landroid/accounts/AuthenticatorException; {:try_start_6 .. :try_end_5b} :catch_76

    goto :goto_39

    .line 428
    .end local v0           #account:Landroid/accounts/Account;
    .end local v1           #accountName:Ljava/lang/String;
    .end local v3           #extras:Landroid/os/Bundle;
    :catch_5c
    move-exception v2

    .line 429
    .local v2, e:Landroid/accounts/OperationCanceledException;
    const-string v4, "added account canceled"

    invoke-static {v4}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 430
    iget-object v4, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$5;->this$0:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v5, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$5;->val$activity:Landroid/app/Activity;

    invoke-virtual {v4, v5}, Lcom/google/android/youtube/core/async/UserAuthorizer;->onSignOnFlowCancelled(Landroid/app/Activity;)V

    goto :goto_39

    .line 431
    .end local v2           #e:Landroid/accounts/OperationCanceledException;
    :catch_6a
    move-exception v2

    .line 432
    .local v2, e:Ljava/io/IOException;
    const-string v4, "added account IOException"

    invoke-static {v4}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;)V

    .line 433
    iget-object v4, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$5;->this$0:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v4, v2}, Lcom/google/android/youtube/core/async/UserAuthorizer;->notifyAuthenticationError(Ljava/lang/Exception;)V

    goto :goto_39

    .line 434
    .end local v2           #e:Ljava/io/IOException;
    :catch_76
    move-exception v2

    .line 435
    .local v2, e:Landroid/accounts/AuthenticatorException;
    const-string v4, "added account AuthenticatorException"

    invoke-static {v4}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;)V

    .line 436
    iget-object v4, p0, Lcom/google/android/youtube/core/async/UserAuthorizer$5;->this$0:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v4, v2}, Lcom/google/android/youtube/core/async/UserAuthorizer;->notifyAuthenticationError(Ljava/lang/Exception;)V

    goto :goto_39
.end method

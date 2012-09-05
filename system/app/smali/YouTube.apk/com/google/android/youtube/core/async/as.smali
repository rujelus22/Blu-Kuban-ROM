.class final Lcom/google/android/youtube/core/async/as;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/google/android/youtube/core/async/UserAuthorizer;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/async/UserAuthorizer;Landroid/app/Activity;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 454
    iput-object p1, p0, Lcom/google/android/youtube/core/async/as;->b:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iput-object p2, p0, Lcom/google/android/youtube/core/async/as;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Landroid/accounts/AccountManagerFuture;)V
    .registers 5
    .parameter

    .prologue
    .line 456
    iget-object v0, p0, Lcom/google/android/youtube/core/async/as;->a:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    .line 458
    :try_start_6
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 459
    const-string v1, "authAccount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 460
    iget-object v1, p0, Lcom/google/android/youtube/core/async/as;->b:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v1

    .line 461
    if-eqz v1, :cond_39

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "added account "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 463
    iget-object v0, p0, Lcom/google/android/youtube/core/async/as;->b:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v2, p0, Lcom/google/android/youtube/core/async/as;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Landroid/accounts/Account;Landroid/app/Activity;)V

    .line 478
    :goto_38
    return-void

    .line 465
    :cond_39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "account with name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not created"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V

    .line 466
    iget-object v0, p0, Lcom/google/android/youtube/core/async/as;->b:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->c()V
    :try_end_5a
    .catch Landroid/accounts/OperationCanceledException; {:try_start_6 .. :try_end_5a} :catch_5b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_5a} :catch_67
    .catch Landroid/accounts/AuthenticatorException; {:try_start_6 .. :try_end_5a} :catch_73

    goto :goto_38

    .line 468
    :catch_5b
    move-exception v0

    .line 469
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 470
    iget-object v0, p0, Lcom/google/android/youtube/core/async/as;->b:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v1, p0, Lcom/google/android/youtube/core/async/as;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Landroid/app/Activity;)V

    goto :goto_38

    .line 471
    :catch_67
    move-exception v0

    .line 472
    const-string v1, "added account IOException"

    invoke-static {v1}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;)V

    .line 473
    iget-object v1, p0, Lcom/google/android/youtube/core/async/as;->b:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Ljava/lang/Exception;)V

    goto :goto_38

    .line 474
    :catch_73
    move-exception v0

    .line 475
    const-string v1, "added account AuthenticatorException"

    invoke-static {v1}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;)V

    .line 476
    iget-object v1, p0, Lcom/google/android/youtube/core/async/as;->b:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Ljava/lang/Exception;)V

    goto :goto_38
.end method

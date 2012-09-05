.class abstract Lcom/google/android/youtube/core/async/au;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# instance fields
.field final synthetic b:Lcom/google/android/youtube/core/async/UserAuthorizer;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/youtube/core/async/UserAuthorizer;)V
    .registers 3
    .parameter

    .prologue
    .line 617
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/core/async/au;-><init>(Lcom/google/android/youtube/core/async/UserAuthorizer;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/youtube/core/async/UserAuthorizer;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 617
    iput-object p1, p0, Lcom/google/android/youtube/core/async/au;->b:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(Ljava/lang/Exception;)V
.end method

.method public abstract a(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;Ljava/lang/String;)V
.end method

.method public run(Landroid/accounts/AccountManagerFuture;)V
    .registers 6
    .parameter

    .prologue
    .line 621
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 623
    const-string v1, "intent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 626
    invoke-virtual {p0}, Lcom/google/android/youtube/core/async/au;->a()V

    .line 649
    :goto_11
    return-void

    .line 628
    :cond_12
    iget-object v1, p0, Lcom/google/android/youtube/core/async/au;->b:Lcom/google/android/youtube/core/async/UserAuthorizer;

    const-string v2, "authAccount"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v1

    .line 629
    const-string v2, "authtoken"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 630
    if-eqz v0, :cond_4f

    .line 631
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got authToken for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 632
    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/core/async/au;->b:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v2, v2, Lcom/google/android/youtube/core/async/UserAuthorizer;->a:Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;

    invoke-virtual {p0, v1, v2, v0}, Lcom/google/android/youtube/core/async/au;->a(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;Ljava/lang/String;)V
    :try_end_46
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_46} :catch_47
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_46} :catch_70
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_46} :catch_7a

    goto :goto_11

    .line 639
    :catch_47
    move-exception v0

    .line 640
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 641
    invoke-virtual {p0}, Lcom/google/android/youtube/core/async/au;->a()V

    goto :goto_11

    .line 634
    :cond_4f
    :try_start_4f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "got null authToken for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;)V

    .line 635
    new-instance v0, Landroid/accounts/AuthenticatorException;

    invoke-direct {v0}, Landroid/accounts/AuthenticatorException;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/async/au;->a(Ljava/lang/Exception;)V
    :try_end_6f
    .catch Landroid/accounts/OperationCanceledException; {:try_start_4f .. :try_end_6f} :catch_47
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_6f} :catch_70
    .catch Landroid/accounts/AuthenticatorException; {:try_start_4f .. :try_end_6f} :catch_7a

    goto :goto_11

    .line 642
    :catch_70
    move-exception v0

    .line 643
    const-string v1, "login IOException"

    invoke-static {v1}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;)V

    .line 644
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/async/au;->a(Ljava/lang/Exception;)V

    goto :goto_11

    .line 645
    :catch_7a
    move-exception v0

    .line 646
    const-string v1, "login AuthenticatorException"

    invoke-static {v1}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;)V

    .line 647
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/async/au;->a(Ljava/lang/Exception;)V

    goto :goto_11
.end method

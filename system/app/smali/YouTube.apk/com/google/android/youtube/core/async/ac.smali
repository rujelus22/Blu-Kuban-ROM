.class final Lcom/google/android/youtube/core/async/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/async/FroyoSignInActivity;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/async/FroyoSignInActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/google/android/youtube/core/async/ac;->a:Lcom/google/android/youtube/core/async/FroyoSignInActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Landroid/accounts/AccountManagerFuture;)V
    .registers 5
    .parameter

    .prologue
    .line 154
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 155
    const-string v1, "authAccount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    iget-object v1, p0, Lcom/google/android/youtube/core/async/ac;->a:Lcom/google/android/youtube/core/async/FroyoSignInActivity;

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/async/FroyoSignInActivity;->b(Lcom/google/android/youtube/core/async/FroyoSignInActivity;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "added account "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 158
    iget-object v1, p0, Lcom/google/android/youtube/core/async/ac;->a:Lcom/google/android/youtube/core/async/FroyoSignInActivity;

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/async/FroyoSignInActivity;->a(Lcom/google/android/youtube/core/async/FroyoSignInActivity;Ljava/lang/String;)V

    .line 173
    :goto_2a
    return-void

    .line 160
    :cond_2b
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "account with name "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not created"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/google/android/youtube/core/async/ac;->a:Lcom/google/android/youtube/core/async/FroyoSignInActivity;

    invoke-static {v0}, Lcom/google/android/youtube/core/async/FroyoSignInActivity;->c(Lcom/google/android/youtube/core/async/FroyoSignInActivity;)V
    :try_end_48
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_48} :catch_49
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_48} :catch_53
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_48} :catch_5f

    goto :goto_2a

    .line 163
    :catch_49
    move-exception v0

    .line 164
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 165
    iget-object v0, p0, Lcom/google/android/youtube/core/async/ac;->a:Lcom/google/android/youtube/core/async/FroyoSignInActivity;

    invoke-static {v0}, Lcom/google/android/youtube/core/async/FroyoSignInActivity;->a(Lcom/google/android/youtube/core/async/FroyoSignInActivity;)V

    goto :goto_2a

    .line 166
    :catch_53
    move-exception v0

    .line 167
    const-string v1, "added account IOException"

    invoke-static {v1}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;)V

    .line 168
    iget-object v1, p0, Lcom/google/android/youtube/core/async/ac;->a:Lcom/google/android/youtube/core/async/FroyoSignInActivity;

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/async/FroyoSignInActivity;->a(Lcom/google/android/youtube/core/async/FroyoSignInActivity;Ljava/lang/Exception;)V

    goto :goto_2a

    .line 169
    :catch_5f
    move-exception v0

    .line 170
    const-string v1, "added account AuthenticatorException"

    invoke-static {v1}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;)V

    .line 171
    iget-object v1, p0, Lcom/google/android/youtube/core/async/ac;->a:Lcom/google/android/youtube/core/async/FroyoSignInActivity;

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/async/FroyoSignInActivity;->a(Lcom/google/android/youtube/core/async/FroyoSignInActivity;Ljava/lang/Exception;)V

    goto :goto_2a
.end method

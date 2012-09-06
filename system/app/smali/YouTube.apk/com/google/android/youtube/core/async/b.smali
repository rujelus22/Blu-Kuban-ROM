.class final Lcom/google/android/youtube/core/async/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/async/a;

.field private b:Lcom/google/android/youtube/core/async/bc;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/async/a;Lcom/google/android/youtube/core/async/bc;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/google/android/youtube/core/async/b;->a:Lcom/google/android/youtube/core/async/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-object p2, p0, Lcom/google/android/youtube/core/async/b;->b:Lcom/google/android/youtube/core/async/bc;

    .line 163
    return-void
.end method


# virtual methods
.method public final run(Landroid/accounts/AccountManagerFuture;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 167
    :try_start_1
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 168
    const-string v1, "intent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 171
    iget-object v0, p0, Lcom/google/android/youtube/core/async/b;->b:Lcom/google/android/youtube/core/async/bc;

    invoke-interface {v0}, Lcom/google/android/youtube/core/async/bc;->e_()V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_76
    .catch Landroid/accounts/OperationCanceledException; {:try_start_1 .. :try_end_14} :catch_34
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_14} :catch_5a
    .catch Landroid/accounts/AuthenticatorException; {:try_start_1 .. :try_end_14} :catch_68

    .line 192
    :goto_14
    iput-object v5, p0, Lcom/google/android/youtube/core/async/b;->b:Lcom/google/android/youtube/core/async/bc;

    .line 193
    :goto_16
    return-void

    .line 173
    :cond_17
    :try_start_17
    const-string v1, "authAccount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 174
    const-string v2, "authtoken"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    if-eqz v0, :cond_3d

    .line 176
    iget-object v2, p0, Lcom/google/android/youtube/core/async/b;->b:Lcom/google/android/youtube/core/async/bc;

    new-instance v3, Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v4, p0, Lcom/google/android/youtube/core/async/b;->a:Lcom/google/android/youtube/core/async/a;

    iget-object v4, v4, Lcom/google/android/youtube/core/async/a;->a:Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;

    invoke-direct {v3, v1, v4, v0}, Lcom/google/android/youtube/core/model/UserAuth;-><init>(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/google/android/youtube/core/async/bc;->a(Lcom/google/android/youtube/core/model/UserAuth;)V
    :try_end_33
    .catchall {:try_start_17 .. :try_end_33} :catchall_76
    .catch Landroid/accounts/OperationCanceledException; {:try_start_17 .. :try_end_33} :catch_34
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_33} :catch_5a
    .catch Landroid/accounts/AuthenticatorException; {:try_start_17 .. :try_end_33} :catch_68

    goto :goto_14

    .line 182
    :catch_34
    move-exception v0

    .line 183
    :try_start_35
    iget-object v0, p0, Lcom/google/android/youtube/core/async/b;->b:Lcom/google/android/youtube/core/async/bc;

    invoke-interface {v0}, Lcom/google/android/youtube/core/async/bc;->e_()V
    :try_end_3a
    .catchall {:try_start_35 .. :try_end_3a} :catchall_76

    .line 192
    iput-object v5, p0, Lcom/google/android/youtube/core/async/b;->b:Lcom/google/android/youtube/core/async/bc;

    goto :goto_16

    .line 178
    :cond_3d
    :try_start_3d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "got null authToken for "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/google/android/youtube/core/async/b;->b:Lcom/google/android/youtube/core/async/bc;

    new-instance v1, Landroid/accounts/AuthenticatorException;

    invoke-direct {v1}, Landroid/accounts/AuthenticatorException;-><init>()V

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/async/bc;->a(Ljava/lang/Exception;)V
    :try_end_59
    .catchall {:try_start_3d .. :try_end_59} :catchall_76
    .catch Landroid/accounts/OperationCanceledException; {:try_start_3d .. :try_end_59} :catch_34
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_59} :catch_5a
    .catch Landroid/accounts/AuthenticatorException; {:try_start_3d .. :try_end_59} :catch_68

    goto :goto_14

    .line 184
    :catch_5a
    move-exception v0

    .line 185
    :try_start_5b
    const-string v1, "login IOException"

    invoke-static {v1}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;)V

    .line 186
    iget-object v1, p0, Lcom/google/android/youtube/core/async/b;->b:Lcom/google/android/youtube/core/async/bc;

    invoke-interface {v1, v0}, Lcom/google/android/youtube/core/async/bc;->a(Ljava/lang/Exception;)V
    :try_end_65
    .catchall {:try_start_5b .. :try_end_65} :catchall_76

    .line 192
    iput-object v5, p0, Lcom/google/android/youtube/core/async/b;->b:Lcom/google/android/youtube/core/async/bc;

    goto :goto_16

    .line 187
    :catch_68
    move-exception v0

    .line 188
    :try_start_69
    const-string v1, "login AuthenticatorException"

    invoke-static {v1}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;)V

    .line 189
    iget-object v1, p0, Lcom/google/android/youtube/core/async/b;->b:Lcom/google/android/youtube/core/async/bc;

    invoke-interface {v1, v0}, Lcom/google/android/youtube/core/async/bc;->a(Ljava/lang/Exception;)V
    :try_end_73
    .catchall {:try_start_69 .. :try_end_73} :catchall_76

    .line 192
    iput-object v5, p0, Lcom/google/android/youtube/core/async/b;->b:Lcom/google/android/youtube/core/async/bc;

    goto :goto_16

    :catchall_76
    move-exception v0

    iput-object v5, p0, Lcom/google/android/youtube/core/async/b;->b:Lcom/google/android/youtube/core/async/bc;

    throw v0
.end method

.class final Lcom/google/android/plus1/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# instance fields
.field final synthetic a:Lcom/google/android/plus1/a/c;


# direct methods
.method private constructor <init>(Lcom/google/android/plus1/a/c;)V
    .registers 2
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/google/android/plus1/a/d;->a:Lcom/google/android/plus1/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/plus1/a/c;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/google/android/plus1/a/d;-><init>(Lcom/google/android/plus1/a/c;)V

    return-void
.end method


# virtual methods
.method public final run(Landroid/accounts/AccountManagerFuture;)V
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x6

    .line 81
    :try_start_2
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v2, "authtoken"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    iget-object v2, p0, Lcom/google/android/plus1/a/d;->a:Lcom/google/android/plus1/a/c;

    iget-object v2, v2, Lcom/google/android/plus1/a/c;->a:Lcom/google/android/plus1/a/b;

    invoke-interface {v2}, Lcom/google/android/plus1/a/b;->a()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    const-string v3, "com.google"

    invoke-virtual {v2, v3, v0}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_22
    .catch Landroid/accounts/OperationCanceledException; {:try_start_2 .. :try_end_22} :catch_34
    .catch Landroid/accounts/AuthenticatorException; {:try_start_2 .. :try_end_22} :catch_45
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_22} :catch_56

    move-result-object v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 102
    :cond_26
    :goto_26
    iget-object v2, p0, Lcom/google/android/plus1/a/d;->a:Lcom/google/android/plus1/a/c;

    iget-object v2, v2, Lcom/google/android/plus1/a/c;->a:Lcom/google/android/plus1/a/b;

    if-eqz v2, :cond_33

    .line 103
    iget-object v2, p0, Lcom/google/android/plus1/a/d;->a:Lcom/google/android/plus1/a/c;

    iget-object v2, v2, Lcom/google/android/plus1/a/c;->a:Lcom/google/android/plus1/a/b;

    invoke-interface {v2, v1, v0}, Lcom/google/android/plus1/a/b;->a(Landroid/net/Uri;Ljava/lang/Exception;)V

    .line 105
    :cond_33
    return-void

    .line 86
    :catch_34
    move-exception v0

    .line 87
    const-string v2, "WebloginAuthHelper"

    invoke-static {v2, v4}, Lcom/google/android/plus1/al;->a(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 88
    const-string v2, "WebloginAuthHelper"

    const-string v3, "Cancelled while acquiring token: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_26

    .line 91
    :catch_45
    move-exception v0

    .line 92
    const-string v2, "WebloginAuthHelper"

    invoke-static {v2, v4}, Lcom/google/android/plus1/al;->a(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 93
    const-string v2, "WebloginAuthHelper"

    const-string v3, "Authentication error while acquiring token: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_26

    .line 96
    :catch_56
    move-exception v0

    .line 97
    const-string v2, "WebloginAuthHelper"

    invoke-static {v2, v4}, Lcom/google/android/plus1/al;->a(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 98
    const-string v2, "WebloginAuthHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "IO error while acquiring token: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26
.end method

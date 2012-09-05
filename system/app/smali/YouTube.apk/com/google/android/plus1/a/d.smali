.class final Lcom/google/android/plus1/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# instance fields
.field final synthetic a:Lcom/google/android/plus1/a/c;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/plus1/a/c;)V
    .registers 3
    .parameter

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/plus1/a/d;-><init>(Lcom/google/android/plus1/a/c;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/plus1/a/c;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/google/android/plus1/a/d;->a:Lcom/google/android/plus1/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Landroid/accounts/AccountManagerFuture;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x6

    .line 76
    const/4 v1, 0x0

    .line 77
    :try_start_2
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v2, "authtoken"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    iget-object v2, p0, Lcom/google/android/plus1/a/d;->a:Lcom/google/android/plus1/a/c;

    iget-object v2, v2, Lcom/google/android/plus1/a/c;->a:Lcom/google/android/plus1/a/b;

    invoke-interface {v2}, Lcom/google/android/plus1/a/b;->a()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    const-string v3, "com.google"

    invoke-virtual {v2, v3, v0}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_22
    .catch Landroid/accounts/OperationCanceledException; {:try_start_2 .. :try_end_22} :catch_31
    .catch Landroid/accounts/AuthenticatorException; {:try_start_2 .. :try_end_22} :catch_43
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_22} :catch_55

    move-result-object v0

    .line 98
    :goto_23
    iget-object v1, p0, Lcom/google/android/plus1/a/d;->a:Lcom/google/android/plus1/a/c;

    iget-object v1, v1, Lcom/google/android/plus1/a/c;->a:Lcom/google/android/plus1/a/b;

    if-eqz v1, :cond_30

    .line 101
    iget-object v1, p0, Lcom/google/android/plus1/a/d;->a:Lcom/google/android/plus1/a/c;

    iget-object v1, v1, Lcom/google/android/plus1/a/c;->a:Lcom/google/android/plus1/a/b;

    invoke-interface {v1, v0}, Lcom/google/android/plus1/a/b;->a(Landroid/net/Uri;)V

    .line 103
    :cond_30
    return-void

    .line 84
    :catch_31
    move-exception v0

    .line 85
    const-string v2, "WebloginAuthHelper"

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 86
    const-string v2, "WebloginAuthHelper"

    const-string v3, "Cancelled while acquiring token: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_41
    move-object v0, v1

    .line 88
    goto :goto_23

    .line 89
    :catch_43
    move-exception v0

    .line 90
    const-string v2, "WebloginAuthHelper"

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 91
    const-string v2, "WebloginAuthHelper"

    const-string v3, "Authentication error while acquiring token: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_53
    move-object v0, v1

    .line 93
    goto :goto_23

    .line 94
    :catch_55
    move-exception v0

    .line 95
    const-string v2, "WebloginAuthHelper"

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_76

    .line 96
    const-string v2, "WebloginAuthHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IO error while acquiring token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_76
    move-object v0, v1

    goto :goto_23
.end method

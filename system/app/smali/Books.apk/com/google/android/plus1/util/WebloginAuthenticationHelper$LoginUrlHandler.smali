.class Lcom/google/android/plus1/util/WebloginAuthenticationHelper$LoginUrlHandler;
.super Ljava/lang/Object;
.source "WebloginAuthenticationHelper.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/plus1/util/WebloginAuthenticationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoginUrlHandler"
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
.field final synthetic this$0:Lcom/google/android/plus1/util/WebloginAuthenticationHelper;


# direct methods
.method private constructor <init>(Lcom/google/android/plus1/util/WebloginAuthenticationHelper;)V
    .registers 2
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/google/android/plus1/util/WebloginAuthenticationHelper$LoginUrlHandler;->this$0:Lcom/google/android/plus1/util/WebloginAuthenticationHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/plus1/util/WebloginAuthenticationHelper;Lcom/google/android/plus1/util/WebloginAuthenticationHelper$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/google/android/plus1/util/WebloginAuthenticationHelper$LoginUrlHandler;-><init>(Lcom/google/android/plus1/util/WebloginAuthenticationHelper;)V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .registers 9
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
    .local p1, value:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    const/4 v6, 0x6

    .line 76
    const/4 v3, 0x0

    .line 77
    .local v3, uri:Landroid/net/Uri;
    const/4 v1, 0x0

    .line 79
    .local v1, exception:Ljava/lang/Exception;
    :try_start_3
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    const-string v5, "authtoken"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, loginUrl:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/plus1/util/WebloginAuthenticationHelper$LoginUrlHandler;->this$0:Lcom/google/android/plus1/util/WebloginAuthenticationHelper;

    iget-object v4, v4, Lcom/google/android/plus1/util/WebloginAuthenticationHelper;->mClient:Lcom/google/android/plus1/util/BrowserAuthenticationHelper$Client;

    invoke-interface {v4}, Lcom/google/android/plus1/util/BrowserAuthenticationHelper$Client;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    const-string v5, "com.google"

    invoke-virtual {v4, v5, v2}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_23
    .catch Landroid/accounts/OperationCanceledException; {:try_start_3 .. :try_end_23} :catch_32
    .catch Landroid/accounts/AuthenticatorException; {:try_start_3 .. :try_end_23} :catch_44
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_23} :catch_56

    move-result-object v3

    .line 100
    .end local v2           #loginUrl:Ljava/lang/String;
    :goto_24
    iget-object v4, p0, Lcom/google/android/plus1/util/WebloginAuthenticationHelper$LoginUrlHandler;->this$0:Lcom/google/android/plus1/util/WebloginAuthenticationHelper;

    iget-object v4, v4, Lcom/google/android/plus1/util/WebloginAuthenticationHelper;->mClient:Lcom/google/android/plus1/util/BrowserAuthenticationHelper$Client;

    if-eqz v4, :cond_31

    .line 101
    iget-object v4, p0, Lcom/google/android/plus1/util/WebloginAuthenticationHelper$LoginUrlHandler;->this$0:Lcom/google/android/plus1/util/WebloginAuthenticationHelper;

    iget-object v4, v4, Lcom/google/android/plus1/util/WebloginAuthenticationHelper;->mClient:Lcom/google/android/plus1/util/BrowserAuthenticationHelper$Client;

    invoke-interface {v4, v3, v1}, Lcom/google/android/plus1/util/BrowserAuthenticationHelper$Client;->finished(Landroid/net/Uri;Ljava/lang/Exception;)V

    .line 103
    :cond_31
    return-void

    .line 84
    :catch_32
    move-exception v0

    .line 85
    .local v0, e:Landroid/accounts/OperationCanceledException;
    const-string v4, "WebloginAuthHelper"

    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 86
    const-string v4, "WebloginAuthHelper"

    const-string v5, "Cancelled while acquiring token: "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    :cond_42
    move-object v1, v0

    .line 99
    goto :goto_24

    .line 89
    .end local v0           #e:Landroid/accounts/OperationCanceledException;
    :catch_44
    move-exception v0

    .line 90
    .local v0, e:Landroid/accounts/AuthenticatorException;
    const-string v4, "WebloginAuthHelper"

    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_54

    .line 91
    const-string v4, "WebloginAuthHelper"

    const-string v5, "Authentication error while acquiring token: "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    :cond_54
    move-object v1, v0

    .line 99
    goto :goto_24

    .line 94
    .end local v0           #e:Landroid/accounts/AuthenticatorException;
    :catch_56
    move-exception v0

    .line 95
    .local v0, e:Ljava/io/IOException;
    const-string v4, "WebloginAuthHelper"

    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_77

    .line 96
    const-string v4, "WebloginAuthHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IO error while acquiring token: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_77
    move-object v1, v0

    goto :goto_24
.end method

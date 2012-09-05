.class public Lcom/google/android/plus1/util/WebloginAuthenticationHelper;
.super Lcom/google/android/plus1/util/BrowserAuthenticationHelper;
.source "WebloginAuthenticationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/plus1/util/WebloginAuthenticationHelper$1;,
        Lcom/google/android/plus1/util/WebloginAuthenticationHelper$LoginUrlHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/plus1/util/BrowserAuthenticationHelper",
        "<",
        "Lcom/google/android/plus1/util/BrowserAuthenticationHelper$Client;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/plus1/util/BrowserAuthenticationHelper$Client;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "client"
    .parameter "accountName"
    .parameter "tokenType"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/google/android/plus1/util/BrowserAuthenticationHelper;-><init>(Lcom/google/android/plus1/util/BrowserAuthenticationHelper$Client;)V

    .line 43
    invoke-direct {p0, p2, p3}, Lcom/google/android/plus1/util/WebloginAuthenticationHelper;->getLoginUrl(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method private getLoginUrl(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "accountName"
    .parameter "tokenType"

    .prologue
    const/4 v3, 0x0

    .line 68
    new-instance v1, Landroid/accounts/Account;

    const-string v2, "com.google"

    invoke-direct {v1, p1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .local v1, account:Landroid/accounts/Account;
    new-instance v5, Lcom/google/android/plus1/util/WebloginAuthenticationHelper$LoginUrlHandler;

    invoke-direct {v5, p0, v3}, Lcom/google/android/plus1/util/WebloginAuthenticationHelper$LoginUrlHandler;-><init>(Lcom/google/android/plus1/util/WebloginAuthenticationHelper;Lcom/google/android/plus1/util/WebloginAuthenticationHelper$1;)V

    .line 70
    .local v5, callback:Lcom/google/android/plus1/util/WebloginAuthenticationHelper$LoginUrlHandler;
    iget-object v2, p0, Lcom/google/android/plus1/util/WebloginAuthenticationHelper;->mClient:Lcom/google/android/plus1/util/BrowserAuthenticationHelper$Client;

    invoke-interface {v2}, Lcom/google/android/plus1/util/BrowserAuthenticationHelper$Client;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 71
    .local v0, am:Landroid/accounts/AccountManager;
    iget-object v2, p0, Lcom/google/android/plus1/util/WebloginAuthenticationHelper;->mClient:Lcom/google/android/plus1/util/BrowserAuthenticationHelper$Client;

    invoke-interface {v2}, Lcom/google/android/plus1/util/BrowserAuthenticationHelper$Client;->getActivity()Landroid/app/Activity;

    move-result-object v4

    move-object v2, p2

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 72
    return-void
.end method

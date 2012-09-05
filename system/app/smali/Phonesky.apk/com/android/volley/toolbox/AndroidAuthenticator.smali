.class public Lcom/android/volley/toolbox/AndroidAuthenticator;
.super Ljava/lang/Object;
.source "AndroidAuthenticator.java"

# interfaces
.implements Lcom/android/volley/toolbox/Authenticator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/toolbox/AndroidAuthenticator$AuthTokenListener;
    }
.end annotation


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultAuthTokenType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;)V
    .registers 4
    .parameter "context"
    .parameter "account"

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/volley/toolbox/AndroidAuthenticator;-><init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V
    .registers 4
    .parameter "context"
    .parameter "account"
    .parameter "defaultAuthTokenType"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/volley/toolbox/AndroidAuthenticator;->mContext:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lcom/android/volley/toolbox/AndroidAuthenticator;->mAccount:Landroid/accounts/Account;

    .line 62
    iput-object p3, p0, Lcom/android/volley/toolbox/AndroidAuthenticator;->mDefaultAuthTokenType:Ljava/lang/String;

    .line 63
    return-void
.end method

.method private invalidateCachedToken(Ljava/lang/String;)V
    .registers 5
    .parameter "authTokenType"

    .prologue
    .line 203
    iget-object v1, p0, Lcom/android/volley/toolbox/AndroidAuthenticator;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/volley/toolbox/AndroidAuthenticator;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v1, v2, p1}, Landroid/accounts/AccountManager;->peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, cachedAuthToken:Ljava/lang/String;
    if-eqz v0, :cond_11

    .line 206
    invoke-virtual {p0, v0}, Lcom/android/volley/toolbox/AndroidAuthenticator;->invalidateAuthToken(Ljava/lang/String;)V

    .line 208
    :cond_11
    return-void
.end method


# virtual methods
.method public getAccount()Landroid/accounts/Account;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/volley/toolbox/AndroidAuthenticator;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method public getAuthToken()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/volley/toolbox/AndroidAuthenticator;->mDefaultAuthTokenType:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 75
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No default auth type."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_c
    iget-object v0, p0, Lcom/android/volley/toolbox/AndroidAuthenticator;->mDefaultAuthTokenType:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/volley/toolbox/AndroidAuthenticator;->getAuthToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuthToken(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "authTokenType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/volley/toolbox/AndroidAuthenticator;->getAuthToken(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuthToken(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 14
    .parameter "authTokenType"
    .parameter "forceReauth"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 87
    if-eqz p2, :cond_6

    .line 88
    invoke-direct {p0, p1}, Lcom/android/volley/toolbox/AndroidAuthenticator;->invalidateCachedToken(Ljava/lang/String;)V

    .line 90
    :cond_6
    iget-object v1, p0, Lcom/android/volley/toolbox/AndroidAuthenticator;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 91
    .local v0, accountManager:Landroid/accounts/AccountManager;
    iget-object v1, p0, Lcom/android/volley/toolbox/AndroidAuthenticator;->mAccount:Landroid/accounts/Account;

    const/4 v3, 0x0

    move-object v2, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v8

    .line 95
    .local v8, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :try_start_15
    invoke-interface {v8}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Bundle;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1b} :catch_3e

    .line 99
    .local v10, result:Landroid/os/Bundle;
    const/4 v6, 0x0

    .line 100
    .local v6, authToken:Ljava/lang/String;
    invoke-interface {v8}, Landroid/accounts/AccountManagerFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-interface {v8}, Landroid/accounts/AccountManagerFuture;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_4d

    .line 101
    const-string v1, "intent"

    invoke-virtual {v10, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 102
    const-string v1, "intent"

    invoke-virtual {v10, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 103
    .local v9, intent:Landroid/content/Intent;
    new-instance v1, Lcom/android/volley/AuthFailureError;

    invoke-direct {v1, v9}, Lcom/android/volley/AuthFailureError;-><init>(Landroid/content/Intent;)V

    throw v1

    .line 96
    .end local v6           #authToken:Ljava/lang/String;
    .end local v9           #intent:Landroid/content/Intent;
    .end local v10           #result:Landroid/os/Bundle;
    :catch_3e
    move-exception v7

    .line 97
    .local v7, e:Ljava/lang/Exception;
    new-instance v1, Lcom/android/volley/AuthFailureError;

    const-string v2, "Error while retrieving auth token"

    invoke-direct {v1, v2, v7}, Lcom/android/volley/AuthFailureError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 105
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v6       #authToken:Ljava/lang/String;
    .restart local v10       #result:Landroid/os/Bundle;
    :cond_47
    const-string v1, "authtoken"

    invoke-virtual {v10, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 107
    :cond_4d
    if-nez v6, :cond_68

    .line 108
    new-instance v1, Lcom/android/volley/AuthFailureError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got null auth token for type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/volley/AuthFailureError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 111
    :cond_68
    return-object v6
.end method

.method public getAuthTokenAsync(Lcom/android/volley/toolbox/AndroidAuthenticator$AuthTokenListener;Landroid/os/Handler;Ljava/lang/String;)V
    .registers 5
    .parameter "listener"
    .parameter "handler"
    .parameter "authTokenType"

    .prologue
    .line 150
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/volley/toolbox/AndroidAuthenticator;->getAuthTokenAsync(Lcom/android/volley/toolbox/AndroidAuthenticator$AuthTokenListener;Landroid/os/Handler;Ljava/lang/String;Z)V

    .line 151
    return-void
.end method

.method public getAuthTokenAsync(Lcom/android/volley/toolbox/AndroidAuthenticator$AuthTokenListener;Landroid/os/Handler;Ljava/lang/String;Z)V
    .registers 11
    .parameter "listener"
    .parameter "handler"
    .parameter "authTokenType"
    .parameter "forceReauth"

    .prologue
    .line 164
    if-nez p1, :cond_3

    .line 200
    :goto_2
    return-void

    .line 167
    :cond_3
    new-instance v0, Lcom/android/volley/toolbox/AndroidAuthenticator$1;

    move-object v1, p0

    move-object v2, p3

    move v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/AndroidAuthenticator$1;-><init>(Lcom/android/volley/toolbox/AndroidAuthenticator;Ljava/lang/String;ZLcom/android/volley/toolbox/AndroidAuthenticator$AuthTokenListener;Landroid/os/Handler;)V

    invoke-virtual {v0}, Lcom/android/volley/toolbox/AndroidAuthenticator$1;->start()V

    goto :goto_2
.end method

.method public getAuthTokenAsync(Lcom/android/volley/toolbox/AndroidAuthenticator$AuthTokenListener;Landroid/os/Handler;Z)V
    .registers 5
    .parameter "listener"
    .parameter "handler"
    .parameter "forceReauth"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/volley/toolbox/AndroidAuthenticator;->mDefaultAuthTokenType:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/volley/toolbox/AndroidAuthenticator;->getAuthTokenAsync(Lcom/android/volley/toolbox/AndroidAuthenticator$AuthTokenListener;Landroid/os/Handler;Ljava/lang/String;Z)V

    .line 138
    return-void
.end method

.method public invalidateAuthToken(Ljava/lang/String;)V
    .registers 4
    .parameter "authToken"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/volley/toolbox/AndroidAuthenticator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/volley/toolbox/AndroidAuthenticator;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    return-void
.end method

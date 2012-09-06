.class Lcom/google/android/apps/unveil/auth/AndroidAuthenticator$AndroidAccountManager;
.super Ljava/lang/Object;
.source "AndroidAuthenticator.java"

# interfaces
.implements Lcom/google/android/apps/unveil/auth/AndroidAuthenticator$AccountManagerBridge;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/auth/AndroidAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AndroidAccountManager"
.end annotation


# instance fields
.field private final accountManager:Landroid/accounts/AccountManager;


# direct methods
.method public constructor <init>(Landroid/accounts/AccountManager;)V
    .registers 2
    .parameter "accountManager"

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/google/android/apps/unveil/auth/AndroidAuthenticator$AndroidAccountManager;->accountManager:Landroid/accounts/AccountManager;

    .line 73
    return-void
.end method


# virtual methods
.method public addAccount(Landroid/accounts/AccountManagerCallback;)Landroid/accounts/AccountManagerFuture;
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;)",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, callback:Landroid/accounts/AccountManagerCallback;,"Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    const/4 v3, 0x0

    .line 77
    iget-object v0, p0, Lcom/google/android/apps/unveil/auth/AndroidAuthenticator$AndroidAccountManager;->accountManager:Landroid/accounts/AccountManager;

    const-string v1, "com.google"

    const-string v2, "SID"

    move-object v4, v3

    move-object v5, v3

    move-object v6, p1

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method public getAccounts()[Landroid/accounts/Account;
    .registers 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/apps/unveil/auth/AndroidAuthenticator$AndroidAccountManager;->accountManager:Landroid/accounts/AccountManager;

    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public getAuthToken(Landroid/accounts/Account;ZLandroid/accounts/AccountManagerCallback;)V
    .registers 10
    .parameter "account"
    .parameter "notifyAuthFailure"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Z",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p3, callback:Landroid/accounts/AccountManagerCallback;,"Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    iget-object v0, p0, Lcom/google/android/apps/unveil/auth/AndroidAuthenticator$AndroidAccountManager;->accountManager:Landroid/accounts/AccountManager;

    const-string v2, "SID"

    const/4 v5, 0x0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 91
    return-void
.end method

.method public invalidateAuthToken(Ljava/lang/String;)V
    .registers 4
    .parameter "authToken"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/apps/unveil/auth/AndroidAuthenticator$AndroidAccountManager;->accountManager:Landroid/accounts/AccountManager;

    const-string v1, "com.google"

    invoke-virtual {v0, v1, p1}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void
.end method

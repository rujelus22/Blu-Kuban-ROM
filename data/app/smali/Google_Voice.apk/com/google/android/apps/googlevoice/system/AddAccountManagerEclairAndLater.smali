.class public Lcom/google/android/apps/googlevoice/system/AddAccountManagerEclairAndLater;
.super Lcom/google/android/apps/googlevoice/system/BaseAddAccountManager;
.source "AddAccountManagerEclairAndLater.java"


# static fields
.field private static final GOOGLE_AUTENTICATOR:Ljava/lang/String; = "com.google"


# instance fields
.field private final accountManager:Landroid/accounts/AccountManager;

.field private final available:Z


# direct methods
.method public constructor <init>(Lcom/google/android/apps/common/log/GLog;Landroid/content/Context;)V
    .registers 4
    .parameter "log"
    .parameter "context"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/system/BaseAddAccountManager;-><init>(Lcom/google/android/apps/common/log/GLog;)V

    .line 35
    invoke-static {p2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/system/AddAccountManagerEclairAndLater;->accountManager:Landroid/accounts/AccountManager;

    .line 36
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AddAccountManagerEclairAndLater;->accountManager:Landroid/accounts/AccountManager;

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/system/AddAccountManagerEclairAndLater;->isGoogleAuthenticatorAvailable(Landroid/accounts/AccountManager;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/system/AddAccountManagerEclairAndLater;->available:Z

    .line 37
    return-void
.end method

.method private static isGoogleAuthenticatorAvailable(Landroid/accounts/AccountManager;)Z
    .registers 8
    .parameter "accountManager"

    .prologue
    .line 77
    invoke-virtual {p0}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v2

    .line 78
    .local v2, authenticatorTypes:[Landroid/accounts/AuthenticatorDescription;
    move-object v0, v2

    .local v0, arr$:[Landroid/accounts/AuthenticatorDescription;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_7
    if-ge v3, v4, :cond_1a

    aget-object v1, v0, v3

    .line 79
    .local v1, authenticatorType:Landroid/accounts/AuthenticatorDescription;
    iget-object v5, v1, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    const-string v6, "com.google"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 80
    const/4 v5, 0x1

    .line 83
    .end local v1           #authenticatorType:Landroid/accounts/AuthenticatorDescription;
    :goto_16
    return v5

    .line 78
    .restart local v1       #authenticatorType:Landroid/accounts/AuthenticatorDescription;
    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 83
    .end local v1           #authenticatorType:Landroid/accounts/AuthenticatorDescription;
    :cond_1a
    const/4 v5, 0x0

    goto :goto_16
.end method


# virtual methods
.method public addAccount(Landroid/app/Activity;Landroid/os/Message;)V
    .registers 11
    .parameter "activity"
    .parameter "onCompleted"

    .prologue
    const/4 v3, 0x0

    .line 46
    iget-boolean v0, p0, Lcom/google/android/apps/googlevoice/system/AddAccountManagerEclairAndLater;->available:Z

    if-nez v0, :cond_12

    .line 47
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AddAccountManagerEclairAndLater;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v1, "Add account not available"

    invoke-interface {v0, v1}, Lcom/google/android/apps/common/log/GLog;->e(Ljava/lang/String;)V

    .line 48
    sget-object v0, Lcom/google/android/apps/googlevoice/activity/setup/AddAccountManager$Error;->UNAVAILABLE:Lcom/google/android/apps/googlevoice/activity/setup/AddAccountManager$Error;

    invoke-virtual {p0, p2, v0, v3}, Lcom/google/android/apps/googlevoice/system/AddAccountManagerEclairAndLater;->fail(Landroid/os/Message;Lcom/google/android/apps/googlevoice/activity/setup/AddAccountManager$Error;Ljava/lang/Exception;)V

    .line 71
    :goto_11
    return-void

    .line 52
    :cond_12
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AddAccountManagerEclairAndLater;->accountManager:Landroid/accounts/AccountManager;

    const-string v1, "com.google"

    const-string v2, "grandcentral"

    new-instance v6, Lcom/google/android/apps/googlevoice/system/AddAccountManagerEclairAndLater$1;

    invoke-direct {v6, p0, p2}, Lcom/google/android/apps/googlevoice/system/AddAccountManagerEclairAndLater$1;-><init>(Lcom/google/android/apps/googlevoice/system/AddAccountManagerEclairAndLater;Landroid/os/Message;)V

    move-object v4, v3

    move-object v5, p1

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    goto :goto_11
.end method

.method public isAddAccountAvailable()Z
    .registers 2

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/google/android/apps/googlevoice/system/AddAccountManagerEclairAndLater;->available:Z

    return v0
.end method

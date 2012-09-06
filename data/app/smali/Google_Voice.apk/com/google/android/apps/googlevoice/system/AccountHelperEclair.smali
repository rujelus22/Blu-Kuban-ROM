.class public Lcom/google/android/apps/googlevoice/system/AccountHelperEclair;
.super Ljava/lang/Object;
.source "AccountHelperEclair.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/system/AccountHelper;


# static fields
.field private static final ACCOUNT_TYPE:Ljava/lang/String; = "com.google"

.field private static final FEATURE_PRIMARY:Ljava/lang/String; = "legacy_hosted_or_google"


# instance fields
.field private final accountManager:Landroid/accounts/AccountManager;

.field private final veryPersistentPreferences:Lcom/google/android/apps/googlevoice/VeryPersistentPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/googlevoice/VeryPersistentPreferences;)V
    .registers 4
    .parameter "context"
    .parameter "veryPersistentPreferences"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p2, p0, Lcom/google/android/apps/googlevoice/system/AccountHelperEclair;->veryPersistentPreferences:Lcom/google/android/apps/googlevoice/VeryPersistentPreferences;

    .line 41
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/system/AccountHelperEclair;->accountManager:Landroid/accounts/AccountManager;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/googlevoice/system/AccountHelperEclair;Landroid/accounts/AccountManagerFuture;)Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/system/AccountHelperEclair;->getDevicePrimaryAccountFromFuture(Landroid/accounts/AccountManagerFuture;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/googlevoice/system/AccountHelperEclair;)Lcom/google/android/apps/googlevoice/VeryPersistentPreferences;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AccountHelperEclair;->veryPersistentPreferences:Lcom/google/android/apps/googlevoice/VeryPersistentPreferences;

    return-object v0
.end method

.method private getDevicePrimaryAccountFromFuture(Landroid/accounts/AccountManagerFuture;)Ljava/lang/String;
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<[",
            "Landroid/accounts/Account;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .local p1, result:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<[Landroid/accounts/Account;>;"
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 75
    :try_start_2
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/accounts/Account;

    .line 76
    .local v1, accounts:[Landroid/accounts/Account;
    array-length v4, v1

    if-ne v4, v5, :cond_24

    .line 77
    const/4 v4, 0x0

    aget-object v4, v1, v4

    iget-object v0, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 78
    .local v0, account:Ljava/lang/String;
    sget-boolean v4, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v4, :cond_23

    .line 79
    const-string v4, "Found device primary account \'%s\'"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 94
    .end local v0           #account:Ljava/lang/String;
    .end local v1           #accounts:[Landroid/accounts/Account;
    :cond_23
    :goto_23
    return-object v0

    .line 83
    .restart local v1       #accounts:[Landroid/accounts/Account;
    :cond_24
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected 1 device primary account, found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;)V
    :try_end_3b
    .catch Landroid/accounts/OperationCanceledException; {:try_start_2 .. :try_end_3b} :catch_3d
    .catch Landroid/accounts/AuthenticatorException; {:try_start_2 .. :try_end_3b} :catch_45
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_3b} :catch_4d

    move-object v0, v3

    .line 84
    goto :goto_23

    .line 86
    .end local v1           #accounts:[Landroid/accounts/Account;
    :catch_3d
    move-exception v2

    .line 87
    .local v2, e:Landroid/accounts/OperationCanceledException;
    const-string v4, "Failed to find device primary account from AccountManager"

    invoke-static {v4, v2}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v3

    .line 88
    goto :goto_23

    .line 89
    .end local v2           #e:Landroid/accounts/OperationCanceledException;
    :catch_45
    move-exception v2

    .line 90
    .local v2, e:Landroid/accounts/AuthenticatorException;
    const-string v4, "Failed to find device primary account from AccountManager"

    invoke-static {v4, v2}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v3

    .line 91
    goto :goto_23

    .line 92
    .end local v2           #e:Landroid/accounts/AuthenticatorException;
    :catch_4d
    move-exception v2

    .line 93
    .local v2, e:Ljava/io/IOException;
    const-string v4, "Failed to find device primary account from AccountManager"

    invoke-static {v4, v2}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v3

    .line 94
    goto :goto_23
.end method


# virtual methods
.method public getDevicePrimaryAccount(Landroid/os/Message;Landroid/os/Message;)V
    .registers 9
    .parameter "success"
    .parameter "failure"

    .prologue
    .line 47
    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/AccountHelperEclair;->accountManager:Landroid/accounts/AccountManager;

    const-string v2, "com.google"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "legacy_hosted_or_google"

    aput-object v5, v3, v4

    new-instance v4, Lcom/google/android/apps/googlevoice/system/AccountHelperEclair$1;

    invoke-direct {v4, p0, p1, p2}, Lcom/google/android/apps/googlevoice/system/AccountHelperEclair$1;-><init>(Lcom/google/android/apps/googlevoice/system/AccountHelperEclair;Landroid/os/Message;Landroid/os/Message;)V

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/accounts/AccountManager;->getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_15} :catch_16

    .line 70
    :goto_15
    return-void

    .line 66
    :catch_16
    move-exception v0

    .line 67
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "Failed to look up device primary account"

    invoke-static {v1, v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_15
.end method

.method public hasGoogleAccount()Z
    .registers 4

    .prologue
    .line 100
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/AccountHelperEclair;->accountManager:Landroid/accounts/AccountManager;

    const-string v2, "com.google"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 101
    .local v0, accounts:[Landroid/accounts/Account;
    if-eqz v0, :cond_f

    array-length v1, v0

    if-lez v1, :cond_f

    const/4 v1, 0x1

    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

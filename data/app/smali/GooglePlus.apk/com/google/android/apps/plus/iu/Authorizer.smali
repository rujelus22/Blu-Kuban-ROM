.class Lcom/google/android/apps/plus/iu/Authorizer;
.super Ljava/lang/Object;
.source "Authorizer.java"


# instance fields
.field private mAccountManager:Landroid/accounts/AccountManager;

.field private final mAuthTokenType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .parameter "context"
    .parameter "authTokenType"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/iu/Authorizer;->mAccountManager:Landroid/accounts/AccountManager;

    .line 33
    iput-object p2, p0, Lcom/google/android/apps/plus/iu/Authorizer;->mAuthTokenType:Ljava/lang/String;

    .line 34
    return-void
.end method

.method private getAccount(Ljava/lang/String;)Landroid/accounts/Account;
    .registers 9
    .parameter "name"

    .prologue
    .line 64
    iget-object v5, p0, Lcom/google/android/apps/plus/iu/Authorizer;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v6, "com.google"

    invoke-virtual {v5, v6}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 65
    .local v1, accounts:[Landroid/accounts/Account;
    move-object v2, v1

    .local v2, arr$:[Landroid/accounts/Account;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_b
    if-ge v3, v4, :cond_1b

    aget-object v0, v2, v3

    .line 66
    .local v0, account:Landroid/accounts/Account;
    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 68
    .end local v0           #account:Landroid/accounts/Account;
    :goto_17
    return-object v0

    .line 65
    .restart local v0       #account:Landroid/accounts/Account;
    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 68
    .end local v0           #account:Landroid/accounts/Account;
    :cond_1b
    const/4 v0, 0x0

    goto :goto_17
.end method


# virtual methods
.method public getAuthToken(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .parameter "accountName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 38
    const-string v0, "UploaderAuthorizer"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 39
    const-string v0, "UploaderAuthorizer"

    const-string v2, "Authorizer.getAuthToken: authTokenType=%s; account=%s;"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/android/apps/plus/iu/Authorizer;->mAuthTokenType:Ljava/lang/String;

    aput-object v8, v5, v7

    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v3

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_24
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/iu/Authorizer;->getAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v1

    .line 43
    .local v1, account:Landroid/accounts/Account;
    if-eqz v1, :cond_47

    .line 44
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/Authorizer;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v2, p0, Lcom/google/android/apps/plus/iu/Authorizer;->mAuthTokenType:Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    const-wide/16 v2, 0x7530

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v5}, Landroid/accounts/AccountManagerFuture;->getResult(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    .line 47
    .local v6, bundle:Landroid/os/Bundle;
    if-nez v6, :cond_40

    :goto_3f
    return-object v4

    :cond_40
    const-string v0, "authtoken"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3f

    .line 49
    .end local v6           #bundle:Landroid/os/Bundle;
    :cond_47
    new-instance v0, Landroid/accounts/AuthenticatorException;

    const-string v2, "account doesn\'t exist"

    invoke-direct {v0, v2}, Landroid/accounts/AuthenticatorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFreshAuthToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "accountName"
    .parameter "authToken"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    .prologue
    .line 55
    const-string v0, "UploaderAuthorizer"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 56
    const-string v0, "UploaderAuthorizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Refreshing authToken for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_25
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/Authorizer;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v1, "com.google"

    invoke-virtual {v0, v1, p2}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/iu/Authorizer;->getAuthToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

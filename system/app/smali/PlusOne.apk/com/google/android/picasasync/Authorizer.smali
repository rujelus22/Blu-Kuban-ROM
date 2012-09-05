.class Lcom/google/android/picasasync/Authorizer;
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
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/picasasync/Authorizer;->mAccountManager:Landroid/accounts/AccountManager;

    .line 46
    iput-object p2, p0, Lcom/google/android/picasasync/Authorizer;->mAuthTokenType:Ljava/lang/String;

    .line 47
    return-void
.end method

.method private getAccount(Ljava/lang/String;)Landroid/accounts/Account;
    .registers 9
    .parameter "name"

    .prologue
    .line 78
    iget-object v5, p0, Lcom/google/android/picasasync/Authorizer;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v6, "com.google"

    invoke-virtual {v5, v6}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 79
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

    .line 80
    .local v0, account:Landroid/accounts/Account;
    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 82
    .end local v0           #account:Landroid/accounts/Account;
    :goto_17
    return-object v0

    .line 79
    .restart local v0       #account:Landroid/accounts/Account;
    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 82
    .end local v0           #account:Landroid/accounts/Account;
    :cond_1b
    const/4 v0, 0x0

    goto :goto_17
.end method


# virtual methods
.method public getAuthToken(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .parameter "accountName"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 50
    const-string v0, "UploaderAuthorizer"

    const-string v2, "Authorizer.getAuthToken: authTokenType=%s; account=%s;"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/picasasync/Authorizer;->mAuthTokenType:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-direct {p0, p1}, Lcom/google/android/picasasync/Authorizer;->getAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v1

    .line 53
    .local v1, account:Landroid/accounts/Account;
    if-eqz v1, :cond_47

    .line 55
    :try_start_21
    iget-object v0, p0, Lcom/google/android/picasasync/Authorizer;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v2, p0, Lcom/google/android/picasasync/Authorizer;->mAuthTokenType:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    const-wide/16 v2, 0x7530

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v4}, Landroid/accounts/AccountManagerFuture;->getResult(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    .line 58
    .local v6, bundle:Landroid/os/Bundle;
    if-nez v6, :cond_3a

    move-object v0, v8

    .line 67
    .end local v6           #bundle:Landroid/os/Bundle;
    :goto_39
    return-object v0

    .line 58
    .restart local v6       #bundle:Landroid/os/Bundle;
    :cond_3a
    const-string v0, "authtoken"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3f
    .catch Landroid/accounts/OperationCanceledException; {:try_start_21 .. :try_end_3f} :catch_41
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_3f} :catch_49
    .catch Landroid/accounts/AuthenticatorException; {:try_start_21 .. :try_end_3f} :catch_50

    move-result-object v0

    goto :goto_39

    .line 59
    .end local v6           #bundle:Landroid/os/Bundle;
    :catch_41
    move-exception v7

    .line 60
    .local v7, e:Landroid/accounts/OperationCanceledException;
    const-string v0, "UploaderAuthorizer"

    invoke-static {v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v7           #e:Landroid/accounts/OperationCanceledException;
    :cond_47
    :goto_47
    move-object v0, v8

    .line 67
    goto :goto_39

    .line 61
    :catch_49
    move-exception v7

    .line 62
    .local v7, e:Ljava/io/IOException;
    const-string v0, "UploaderAuthorizer"

    invoke-static {v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_47

    .line 63
    .end local v7           #e:Ljava/io/IOException;
    :catch_50
    move-exception v7

    .line 64
    .local v7, e:Landroid/accounts/AuthenticatorException;
    const-string v0, "UploaderAuthorizer"

    invoke-static {v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_47
.end method

.method public getFreshAuthToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "accountName"
    .parameter "authToken"

    .prologue
    .line 71
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

    .line 72
    iget-object v0, p0, Lcom/google/android/picasasync/Authorizer;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v1, "com.google"

    invoke-virtual {v0, v1, p2}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0, p1}, Lcom/google/android/picasasync/Authorizer;->getAuthToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

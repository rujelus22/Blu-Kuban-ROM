.class Lcom/google/android/accounts/StandardAccountManager;
.super Lcom/google/android/accounts/AccountManager;
.source "StandardAccountManager.java"


# instance fields
.field private final mManager:Landroid/accounts/AccountManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/google/android/accounts/AccountManager;-><init>(Landroid/content/Context;)V

    .line 188
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/accounts/StandardAccountManager;->mManager:Landroid/accounts/AccountManager;

    .line 189
    return-void
.end method

.method static synthetic access$000([Landroid/accounts/Account;)[Lcom/google/android/accounts/Account;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    invoke-static {p0}, Lcom/google/android/accounts/StandardAccountManager;->convertAccountArray([Landroid/accounts/Account;)[Lcom/google/android/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/accounts/AccountManagerFuture;)Lcom/google/android/accounts/AccountManagerFuture;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    invoke-static {p0}, Lcom/google/android/accounts/StandardAccountManager;->convertFuture(Landroid/accounts/AccountManagerFuture;)Lcom/google/android/accounts/AccountManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/accounts/AccountManagerFuture;)Lcom/google/android/accounts/AccountManagerFuture;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    invoke-static {p0}, Lcom/google/android/accounts/StandardAccountManager;->convertAccountArrayFuture(Landroid/accounts/AccountManagerFuture;)Lcom/google/android/accounts/AccountManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method private static convertAccount(Lcom/google/android/accounts/Account;)Landroid/accounts/Account;
    .registers 4
    .parameter "account"

    .prologue
    .line 46
    new-instance v0, Landroid/accounts/Account;

    iget-object v1, p0, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static convertAccount(Landroid/accounts/Account;)Lcom/google/android/accounts/Account;
    .registers 4
    .parameter "account"

    .prologue
    .line 34
    new-instance v0, Lcom/google/android/accounts/Account;

    iget-object v1, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v2, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static convertAccountArray([Landroid/accounts/Account;)[Lcom/google/android/accounts/Account;
    .registers 4
    .parameter "accounts"

    .prologue
    .line 38
    array-length v2, p0

    new-array v0, v2, [Lcom/google/android/accounts/Account;

    .line 39
    .local v0, array:[Lcom/google/android/accounts/Account;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_12

    .line 40
    aget-object v2, p0, v1

    invoke-static {v2}, Lcom/google/android/accounts/StandardAccountManager;->convertAccount(Landroid/accounts/Account;)Lcom/google/android/accounts/Account;

    move-result-object v2

    aput-object v2, v0, v1

    .line 39
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 42
    :cond_12
    return-object v0
.end method

.method private static convertAccountArrayCallback(Lcom/google/android/accounts/AccountManagerCallback;)Landroid/accounts/AccountManagerCallback;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/accounts/AccountManagerCallback",
            "<[",
            "Lcom/google/android/accounts/Account;",
            ">;)",
            "Landroid/accounts/AccountManagerCallback",
            "<[",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    .local p0, callback:Lcom/google/android/accounts/AccountManagerCallback;,"Lcom/google/android/accounts/AccountManagerCallback<[Lcom/google/android/accounts/Account;>;"
    if-eqz p0, :cond_8

    .line 173
    new-instance v0, Lcom/google/android/accounts/StandardAccountManager$4;

    invoke-direct {v0, p0}, Lcom/google/android/accounts/StandardAccountManager$4;-><init>(Lcom/google/android/accounts/AccountManagerCallback;)V

    .line 180
    :goto_7
    return-object v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private static convertAccountArrayFuture(Landroid/accounts/AccountManagerFuture;)Lcom/google/android/accounts/AccountManagerFuture;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<[",
            "Landroid/accounts/Account;",
            ">;)",
            "Lcom/google/android/accounts/AccountManagerFuture",
            "<[",
            "Lcom/google/android/accounts/Account;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<[Landroid/accounts/Account;>;"
    new-instance v0, Lcom/google/android/accounts/StandardAccountManager$2;

    invoke-direct {v0, p0}, Lcom/google/android/accounts/StandardAccountManager$2;-><init>(Landroid/accounts/AccountManagerFuture;)V

    return-object v0
.end method

.method private static convertCallback(Lcom/google/android/accounts/AccountManagerCallback;)Landroid/accounts/AccountManagerCallback;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/accounts/AccountManagerCallback",
            "<TV;>;)",
            "Landroid/accounts/AccountManagerCallback",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 159
    .local p0, callback:Lcom/google/android/accounts/AccountManagerCallback;,"Lcom/google/android/accounts/AccountManagerCallback<TV;>;"
    if-eqz p0, :cond_8

    .line 160
    new-instance v0, Lcom/google/android/accounts/StandardAccountManager$3;

    invoke-direct {v0, p0}, Lcom/google/android/accounts/StandardAccountManager$3;-><init>(Lcom/google/android/accounts/AccountManagerCallback;)V

    .line 166
    :goto_7
    return-object v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private static convertFuture(Landroid/accounts/AccountManagerFuture;)Lcom/google/android/accounts/AccountManagerFuture;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/accounts/AccountManagerFuture",
            "<TV;>;)",
            "Lcom/google/android/accounts/AccountManagerFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<TV;>;"
    new-instance v0, Lcom/google/android/accounts/StandardAccountManager$1;

    invoke-direct {v0, p0}, Lcom/google/android/accounts/StandardAccountManager$1;-><init>(Landroid/accounts/AccountManagerFuture;)V

    return-object v0
.end method


# virtual methods
.method public addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Void;Lcom/google/android/accounts/AccountManagerCallback;Landroid/os/Handler;)Lcom/google/android/accounts/AccountManagerFuture;
    .registers 16
    .parameter "accountType"
    .parameter "authTokenType"
    .parameter "requiredFeatures"
    .parameter "addAccountOptions"
    .parameter "activity"
    .parameter
    .parameter "handler"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/lang/Void;",
            "Lcom/google/android/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Lcom/google/android/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 223
    .local p6, callback:Lcom/google/android/accounts/AccountManagerCallback;,"Lcom/google/android/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    if-eqz p5, :cond_a

    .line 224
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Activity parameter is not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_a
    iget-object v0, p0, Lcom/google/android/accounts/StandardAccountManager;->mManager:Landroid/accounts/AccountManager;

    const/4 v5, 0x0

    invoke-static {p6}, Lcom/google/android/accounts/StandardAccountManager;->convertCallback(Lcom/google/android/accounts/AccountManagerCallback;)Landroid/accounts/AccountManagerCallback;

    move-result-object v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/accounts/StandardAccountManager;->convertFuture(Landroid/accounts/AccountManagerFuture;)Lcom/google/android/accounts/AccountManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method public addAccountExplicitly(Lcom/google/android/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 6
    .parameter "account"
    .parameter "password"
    .parameter "extras"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/android/accounts/StandardAccountManager;->mManager:Landroid/accounts/AccountManager;

    invoke-static {p1}, Lcom/google/android/accounts/StandardAccountManager;->convertAccount(Lcom/google/android/accounts/Account;)Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public getAccountsByType(Ljava/lang/String;)[Lcom/google/android/accounts/Account;
    .registers 3
    .parameter "type"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/android/accounts/StandardAccountManager;->mManager:Landroid/accounts/AccountManager;

    invoke-virtual {v0, p1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/accounts/StandardAccountManager;->convertAccountArray([Landroid/accounts/Account;)[Lcom/google/android/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/accounts/AccountManagerCallback;Landroid/os/Handler;)Lcom/google/android/accounts/AccountManagerFuture;
    .registers 7
    .parameter "type"
    .parameter "features"
    .parameter
    .parameter "handler"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lcom/google/android/accounts/AccountManagerCallback",
            "<[",
            "Lcom/google/android/accounts/Account;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Lcom/google/android/accounts/AccountManagerFuture",
            "<[",
            "Lcom/google/android/accounts/Account;",
            ">;"
        }
    .end annotation

    .prologue
    .line 199
    .local p3, callback:Lcom/google/android/accounts/AccountManagerCallback;,"Lcom/google/android/accounts/AccountManagerCallback<[Lcom/google/android/accounts/Account;>;"
    if-eqz p2, :cond_5

    array-length v0, p2

    if-nez v0, :cond_14

    .line 201
    :cond_5
    new-instance v0, Lcom/google/android/accounts/AccountManager$Future2Task;

    new-instance v1, Lcom/google/android/accounts/StandardAccountManager$5;

    invoke-direct {v1, p0, p1}, Lcom/google/android/accounts/StandardAccountManager$5;-><init>(Lcom/google/android/accounts/StandardAccountManager;Ljava/lang/String;)V

    invoke-direct {v0, p0, v1, p4, p3}, Lcom/google/android/accounts/AccountManager$Future2Task;-><init>(Lcom/google/android/accounts/AccountManager;Ljava/util/concurrent/Callable;Landroid/os/Handler;Lcom/google/android/accounts/AccountManagerCallback;)V

    invoke-virtual {v0}, Lcom/google/android/accounts/AccountManager$Future2Task;->start()Lcom/google/android/accounts/AccountManager$Future2Task;

    move-result-object v0

    .line 207
    :goto_13
    return-object v0

    :cond_14
    iget-object v0, p0, Lcom/google/android/accounts/StandardAccountManager;->mManager:Landroid/accounts/AccountManager;

    invoke-static {p3}, Lcom/google/android/accounts/StandardAccountManager;->convertAccountArrayCallback(Lcom/google/android/accounts/AccountManagerCallback;)Landroid/accounts/AccountManagerCallback;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1, p4}, Landroid/accounts/AccountManager;->getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/accounts/StandardAccountManager;->convertAccountArrayFuture(Landroid/accounts/AccountManagerFuture;)Lcom/google/android/accounts/AccountManagerFuture;

    move-result-object v0

    goto :goto_13
.end method

.method public getAuthToken(Lcom/google/android/accounts/Account;Ljava/lang/String;ZLcom/google/android/accounts/AccountManagerCallback;Landroid/os/Handler;)Lcom/google/android/accounts/AccountManagerFuture;
    .registers 12
    .parameter "account"
    .parameter "authTokenType"
    .parameter "notifyAuthFailure"
    .parameter
    .parameter "handler"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/accounts/Account;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/google/android/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Lcom/google/android/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 215
    .local p4, callback:Lcom/google/android/accounts/AccountManagerCallback;,"Lcom/google/android/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    iget-object v0, p0, Lcom/google/android/accounts/StandardAccountManager;->mManager:Landroid/accounts/AccountManager;

    invoke-static {p1}, Lcom/google/android/accounts/StandardAccountManager;->convertAccount(Lcom/google/android/accounts/Account;)Landroid/accounts/Account;

    move-result-object v1

    invoke-static {p4}, Lcom/google/android/accounts/StandardAccountManager;->convertCallback(Lcom/google/android/accounts/AccountManagerCallback;)Landroid/accounts/AccountManagerCallback;

    move-result-object v4

    move-object v2, p2

    move v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/accounts/StandardAccountManager;->convertFuture(Landroid/accounts/AccountManagerFuture;)Lcom/google/android/accounts/AccountManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method public invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "accountType"
    .parameter "authToken"

    .prologue
    .line 244
    iget-object v0, p0, Lcom/google/android/accounts/StandardAccountManager;->mManager:Landroid/accounts/AccountManager;

    invoke-virtual {v0, p1, p2}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    return-void
.end method

.method public removeAccount(Lcom/google/android/accounts/Account;Lcom/google/android/accounts/AccountManagerCallback;Landroid/os/Handler;)Lcom/google/android/accounts/AccountManagerFuture;
    .registers 7
    .parameter "account"
    .parameter
    .parameter "handler"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/accounts/Account;",
            "Lcom/google/android/accounts/AccountManagerCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Lcom/google/android/accounts/AccountManagerFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 238
    .local p2, callback:Lcom/google/android/accounts/AccountManagerCallback;,"Lcom/google/android/accounts/AccountManagerCallback<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lcom/google/android/accounts/StandardAccountManager;->mManager:Landroid/accounts/AccountManager;

    invoke-static {p1}, Lcom/google/android/accounts/StandardAccountManager;->convertAccount(Lcom/google/android/accounts/Account;)Landroid/accounts/Account;

    move-result-object v1

    invoke-static {p2}, Lcom/google/android/accounts/StandardAccountManager;->convertCallback(Lcom/google/android/accounts/AccountManagerCallback;)Landroid/accounts/AccountManagerCallback;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p3}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/accounts/StandardAccountManager;->convertFuture(Landroid/accounts/AccountManagerFuture;)Lcom/google/android/accounts/AccountManagerFuture;

    move-result-object v0

    return-object v0
.end method

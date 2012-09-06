.class Lcom/google/android/accounts/DatabaseAccountManager;
.super Lcom/google/android/accounts/AccountManager;
.source "DatabaseAccountManager.java"


# static fields
.field private static final SDK:I


# instance fields
.field private final mAuthenticators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/accounts/DatabaseAuthenticator;",
            ">;"
        }
    .end annotation
.end field

.field private mStandardAccountManager:Lcom/google/android/accounts/AccountManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/accounts/DatabaseAccountManager;->SDK:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/google/android/accounts/AccountManager;-><init>(Landroid/content/Context;)V

    .line 54
    invoke-static {p1}, Lcom/google/android/accounts/DatabaseAuthenticator;->createDatabaseAuthenticators(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/accounts/DatabaseAccountManager;->mAuthenticators:Ljava/util/Map;

    .line 55
    sget v0, Lcom/google/android/accounts/DatabaseAccountManager;->SDK:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_15

    .line 56
    new-instance v0, Lcom/google/android/accounts/StandardAccountManager;

    invoke-direct {v0, p1}, Lcom/google/android/accounts/StandardAccountManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/accounts/DatabaseAccountManager;->mStandardAccountManager:Lcom/google/android/accounts/AccountManager;

    .line 61
    :cond_15
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    invoke-static {p0}, Lcom/google/android/accounts/DatabaseAccountManager;->authenticatorMissing(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/accounts/DatabaseAccountManager;Ljava/lang/String;)Lcom/google/android/accounts/DatabaseAuthenticator;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/google/android/accounts/DatabaseAccountManager;->getAuthenticator(Ljava/lang/String;)Lcom/google/android/accounts/DatabaseAuthenticator;

    move-result-object v0

    return-object v0
.end method

.method private static authenticatorMissing(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 5
    .parameter "accountType"

    .prologue
    .line 42
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 43
    .local v0, result:Landroid/os/Bundle;
    const-string v1, "errorCode"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 44
    const-string v1, "errorMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown account type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-object v0
.end method

.method private getAuthenticator(Ljava/lang/String;)Lcom/google/android/accounts/DatabaseAuthenticator;
    .registers 5
    .parameter "type"

    .prologue
    .line 64
    iget-object v1, p0, Lcom/google/android/accounts/DatabaseAccountManager;->mAuthenticators:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/accounts/DatabaseAuthenticator;

    .line 65
    .local v0, authenticator:Lcom/google/android/accounts/DatabaseAuthenticator;
    if-eqz v0, :cond_14

    sget v1, Lcom/google/android/accounts/DatabaseAccountManager;->SDK:I

    invoke-virtual {v0}, Lcom/google/android/accounts/DatabaseAuthenticator;->getMaxSdkVersion()I

    move-result v2

    if-gt v1, v2, :cond_14

    move-object v1, v0

    .line 68
    :goto_13
    return-object v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method


# virtual methods
.method public addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Void;Lcom/google/android/accounts/AccountManagerCallback;Landroid/os/Handler;)Lcom/google/android/accounts/AccountManagerFuture;
    .registers 24
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
    .line 130
    .local p6, callback:Lcom/google/android/accounts/AccountManagerCallback;,"Lcom/google/android/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    if-eqz p5, :cond_a

    .line 131
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Activity parameter is not supported"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 133
    :cond_a
    invoke-direct/range {p0 .. p1}, Lcom/google/android/accounts/DatabaseAccountManager;->getAuthenticator(Ljava/lang/String;)Lcom/google/android/accounts/DatabaseAuthenticator;

    move-result-object v7

    .line 134
    .local v7, authenticator:Lcom/google/android/accounts/DatabaseAuthenticator;
    if-nez v7, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/accounts/DatabaseAccountManager;->mStandardAccountManager:Lcom/google/android/accounts/AccountManager;

    move-object v5, v0

    if-nez v5, :cond_38

    .line 135
    :cond_17
    new-instance v12, Lcom/google/android/accounts/AccountManager$Future2Task;

    new-instance v5, Lcom/google/android/accounts/DatabaseAccountManager$3;

    move-object/from16 v6, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    invoke-direct/range {v5 .. v11}, Lcom/google/android/accounts/DatabaseAccountManager$3;-><init>(Lcom/google/android/accounts/DatabaseAccountManager;Lcom/google/android/accounts/DatabaseAuthenticator;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)V

    move-object v0, v12

    move-object/from16 v1, p0

    move-object v2, v5

    move-object/from16 v3, p7

    move-object/from16 v4, p6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/accounts/AccountManager$Future2Task;-><init>(Lcom/google/android/accounts/AccountManager;Ljava/util/concurrent/Callable;Landroid/os/Handler;Lcom/google/android/accounts/AccountManagerCallback;)V

    invoke-virtual {v12}, Lcom/google/android/accounts/AccountManager$Future2Task;->start()Lcom/google/android/accounts/AccountManager$Future2Task;

    move-result-object v5

    .line 146
    :goto_37
    return-object v5

    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/accounts/DatabaseAccountManager;->mStandardAccountManager:Lcom/google/android/accounts/AccountManager;

    move-object v8, v0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    move-object/from16 v15, p7

    invoke-virtual/range {v8 .. v15}, Lcom/google/android/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Void;Lcom/google/android/accounts/AccountManagerCallback;Landroid/os/Handler;)Lcom/google/android/accounts/AccountManagerFuture;

    move-result-object v5

    goto :goto_37
.end method

.method public addAccountExplicitly(Lcom/google/android/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 6
    .parameter "account"
    .parameter "password"
    .parameter "userdata"

    .prologue
    .line 153
    iget-object v1, p1, Lcom/google/android/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/android/accounts/DatabaseAccountManager;->getAuthenticator(Ljava/lang/String;)Lcom/google/android/accounts/DatabaseAuthenticator;

    move-result-object v0

    .line 154
    .local v0, authenticator:Lcom/google/android/accounts/DatabaseAuthenticator;
    if-eqz v0, :cond_d

    .line 155
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/accounts/DatabaseAuthenticator;->addAccountExplicitly(Lcom/google/android/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v1

    .line 159
    :goto_c
    return v1

    .line 156
    :cond_d
    iget-object v1, p0, Lcom/google/android/accounts/DatabaseAccountManager;->mStandardAccountManager:Lcom/google/android/accounts/AccountManager;

    if-eqz v1, :cond_18

    .line 157
    iget-object v1, p0, Lcom/google/android/accounts/DatabaseAccountManager;->mStandardAccountManager:Lcom/google/android/accounts/AccountManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/google/android/accounts/AccountManager;->addAccountExplicitly(Lcom/google/android/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v1

    goto :goto_c

    .line 159
    :cond_18
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public getAccountsByType(Ljava/lang/String;)[Lcom/google/android/accounts/Account;
    .registers 4
    .parameter "type"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/google/android/accounts/DatabaseAccountManager;->getAuthenticator(Ljava/lang/String;)Lcom/google/android/accounts/DatabaseAuthenticator;

    move-result-object v0

    .line 75
    .local v0, authenticator:Lcom/google/android/accounts/DatabaseAuthenticator;
    if-eqz v0, :cond_b

    .line 76
    invoke-virtual {v0, p1}, Lcom/google/android/accounts/DatabaseAuthenticator;->getAccountsByType(Ljava/lang/String;)[Lcom/google/android/accounts/Account;

    move-result-object v1

    .line 80
    :goto_a
    return-object v1

    .line 77
    :cond_b
    iget-object v1, p0, Lcom/google/android/accounts/DatabaseAccountManager;->mStandardAccountManager:Lcom/google/android/accounts/AccountManager;

    if-eqz v1, :cond_16

    .line 78
    iget-object v1, p0, Lcom/google/android/accounts/DatabaseAccountManager;->mStandardAccountManager:Lcom/google/android/accounts/AccountManager;

    invoke-virtual {v1, p1}, Lcom/google/android/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Lcom/google/android/accounts/Account;

    move-result-object v1

    goto :goto_a

    .line 80
    :cond_16
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/accounts/Account;

    goto :goto_a
.end method

.method public getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/accounts/AccountManagerCallback;Landroid/os/Handler;)Lcom/google/android/accounts/AccountManagerFuture;
    .registers 8
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
    .line 87
    .local p3, callback:Lcom/google/android/accounts/AccountManagerCallback;,"Lcom/google/android/accounts/AccountManagerCallback<[Lcom/google/android/accounts/Account;>;"
    invoke-direct {p0, p1}, Lcom/google/android/accounts/DatabaseAccountManager;->getAuthenticator(Ljava/lang/String;)Lcom/google/android/accounts/DatabaseAuthenticator;

    move-result-object v0

    .line 88
    .local v0, authenticator:Lcom/google/android/accounts/DatabaseAuthenticator;
    if-nez v0, :cond_a

    iget-object v1, p0, Lcom/google/android/accounts/DatabaseAccountManager;->mStandardAccountManager:Lcom/google/android/accounts/AccountManager;

    if-nez v1, :cond_19

    .line 89
    :cond_a
    new-instance v1, Lcom/google/android/accounts/AccountManager$Future2Task;

    new-instance v2, Lcom/google/android/accounts/DatabaseAccountManager$1;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/google/android/accounts/DatabaseAccountManager$1;-><init>(Lcom/google/android/accounts/DatabaseAccountManager;Lcom/google/android/accounts/DatabaseAuthenticator;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {v1, p0, v2, p4, p3}, Lcom/google/android/accounts/AccountManager$Future2Task;-><init>(Lcom/google/android/accounts/AccountManager;Ljava/util/concurrent/Callable;Landroid/os/Handler;Lcom/google/android/accounts/AccountManagerCallback;)V

    invoke-virtual {v1}, Lcom/google/android/accounts/AccountManager$Future2Task;->start()Lcom/google/android/accounts/AccountManager$Future2Task;

    move-result-object v1

    .line 99
    :goto_18
    return-object v1

    :cond_19
    iget-object v1, p0, Lcom/google/android/accounts/DatabaseAccountManager;->mStandardAccountManager:Lcom/google/android/accounts/AccountManager;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/google/android/accounts/AccountManager;->getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/accounts/AccountManagerCallback;Landroid/os/Handler;)Lcom/google/android/accounts/AccountManagerFuture;

    move-result-object v1

    goto :goto_18
.end method

.method public getAuthToken(Lcom/google/android/accounts/Account;Ljava/lang/String;ZLcom/google/android/accounts/AccountManagerCallback;Landroid/os/Handler;)Lcom/google/android/accounts/AccountManagerFuture;
    .registers 13
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
    .line 108
    .local p4, callback:Lcom/google/android/accounts/AccountManagerCallback;,"Lcom/google/android/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    iget-object v0, p1, Lcom/google/android/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/accounts/DatabaseAccountManager;->getAuthenticator(Ljava/lang/String;)Lcom/google/android/accounts/DatabaseAuthenticator;

    move-result-object v6

    .line 109
    .local v6, authenticator:Lcom/google/android/accounts/DatabaseAuthenticator;
    if-nez v6, :cond_c

    iget-object v0, p0, Lcom/google/android/accounts/DatabaseAccountManager;->mStandardAccountManager:Lcom/google/android/accounts/AccountManager;

    if-nez v0, :cond_1b

    .line 110
    :cond_c
    new-instance v0, Lcom/google/android/accounts/AccountManager$Future2Task;

    new-instance v1, Lcom/google/android/accounts/DatabaseAccountManager$2;

    invoke-direct {v1, p0, v6, p1, p2}, Lcom/google/android/accounts/DatabaseAccountManager$2;-><init>(Lcom/google/android/accounts/DatabaseAccountManager;Lcom/google/android/accounts/DatabaseAuthenticator;Lcom/google/android/accounts/Account;Ljava/lang/String;)V

    invoke-direct {v0, p0, v1, p5, p4}, Lcom/google/android/accounts/AccountManager$Future2Task;-><init>(Lcom/google/android/accounts/AccountManager;Ljava/util/concurrent/Callable;Landroid/os/Handler;Lcom/google/android/accounts/AccountManagerCallback;)V

    invoke-virtual {v0}, Lcom/google/android/accounts/AccountManager$Future2Task;->start()Lcom/google/android/accounts/AccountManager$Future2Task;

    move-result-object v0

    .line 120
    :goto_1a
    return-object v0

    :cond_1b
    iget-object v0, p0, Lcom/google/android/accounts/DatabaseAccountManager;->mStandardAccountManager:Lcom/google/android/accounts/AccountManager;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/accounts/AccountManager;->getAuthToken(Lcom/google/android/accounts/Account;Ljava/lang/String;ZLcom/google/android/accounts/AccountManagerCallback;Landroid/os/Handler;)Lcom/google/android/accounts/AccountManagerFuture;

    move-result-object v0

    goto :goto_1a
.end method

.method public invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "accountType"
    .parameter "authToken"

    .prologue
    .line 185
    invoke-direct {p0, p1}, Lcom/google/android/accounts/DatabaseAccountManager;->getAuthenticator(Ljava/lang/String;)Lcom/google/android/accounts/DatabaseAuthenticator;

    move-result-object v0

    .line 186
    .local v0, authenticator:Lcom/google/android/accounts/DatabaseAuthenticator;
    if-eqz v0, :cond_a

    .line 187
    invoke-virtual {v0, p1, p2}, Lcom/google/android/accounts/DatabaseAuthenticator;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_9
    :goto_9
    return-void

    .line 188
    :cond_a
    iget-object v1, p0, Lcom/google/android/accounts/DatabaseAccountManager;->mStandardAccountManager:Lcom/google/android/accounts/AccountManager;

    if-eqz v1, :cond_9

    .line 189
    iget-object v1, p0, Lcom/google/android/accounts/DatabaseAccountManager;->mStandardAccountManager:Lcom/google/android/accounts/AccountManager;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
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
    .line 166
    .local p2, callback:Lcom/google/android/accounts/AccountManagerCallback;,"Lcom/google/android/accounts/AccountManagerCallback<Ljava/lang/Boolean;>;"
    iget-object v1, p1, Lcom/google/android/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/android/accounts/DatabaseAccountManager;->getAuthenticator(Ljava/lang/String;)Lcom/google/android/accounts/DatabaseAuthenticator;

    move-result-object v0

    .line 167
    .local v0, authenticator:Lcom/google/android/accounts/DatabaseAuthenticator;
    if-nez v0, :cond_c

    iget-object v1, p0, Lcom/google/android/accounts/DatabaseAccountManager;->mStandardAccountManager:Lcom/google/android/accounts/AccountManager;

    if-nez v1, :cond_1b

    .line 168
    :cond_c
    new-instance v1, Lcom/google/android/accounts/AccountManager$Future2Task;

    new-instance v2, Lcom/google/android/accounts/DatabaseAccountManager$4;

    invoke-direct {v2, p0, p1}, Lcom/google/android/accounts/DatabaseAccountManager$4;-><init>(Lcom/google/android/accounts/DatabaseAccountManager;Lcom/google/android/accounts/Account;)V

    invoke-direct {v1, p0, v2, p3, p2}, Lcom/google/android/accounts/AccountManager$Future2Task;-><init>(Lcom/google/android/accounts/AccountManager;Ljava/util/concurrent/Callable;Landroid/os/Handler;Lcom/google/android/accounts/AccountManagerCallback;)V

    invoke-virtual {v1}, Lcom/google/android/accounts/AccountManager$Future2Task;->start()Lcom/google/android/accounts/AccountManager$Future2Task;

    move-result-object v1

    .line 179
    :goto_1a
    return-object v1

    :cond_1b
    iget-object v1, p0, Lcom/google/android/accounts/DatabaseAccountManager;->mStandardAccountManager:Lcom/google/android/accounts/AccountManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/google/android/accounts/AccountManager;->removeAccount(Lcom/google/android/accounts/Account;Lcom/google/android/accounts/AccountManagerCallback;Landroid/os/Handler;)Lcom/google/android/accounts/AccountManagerFuture;

    move-result-object v1

    goto :goto_1a
.end method

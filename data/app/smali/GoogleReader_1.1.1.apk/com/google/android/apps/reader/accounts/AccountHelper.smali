.class public Lcom/google/android/apps/reader/accounts/AccountHelper;
.super Ljava/lang/Object;
.source "AccountHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/reader/accounts/AccountHelper$AddAccountCallback;,
        Lcom/google/android/apps/reader/accounts/AccountHelper$InvalidateAuthTokenCallback;,
        Lcom/google/android/apps/reader/accounts/AccountHelper$GetAuthTokenCallback;,
        Lcom/google/android/apps/reader/accounts/AccountHelper$GetAccountsCallback;,
        Lcom/google/android/apps/reader/accounts/AccountHelper$Callback;
    }
.end annotation


# static fields
.field private static final ACCOUNT_TYPE:Ljava/lang/String; = "com.google"

.field private static final AUTH_TOKEN_TYPE:Ljava/lang/String; = "reader"

.field private static final TAG:Ljava/lang/String; = "AccountHelper"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mException:Ljava/lang/Exception;

.field private mFuture:Lcom/google/android/accounts/AccountManagerFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/accounts/AccountManagerFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private final mManager:Lcom/google/android/accounts/AccountManager;

.field private mToken:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    if-nez p1, :cond_d

    .line 155
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Context required"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_d
    iput-object p1, p0, Lcom/google/android/apps/reader/accounts/AccountHelper;->mActivity:Landroid/app/Activity;

    .line 158
    iget-object v0, p0, Lcom/google/android/apps/reader/accounts/AccountHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/accounts/AccountManager;->get(Landroid/content/Context;)Lcom/google/android/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/reader/accounts/AccountHelper;->mManager:Lcom/google/android/accounts/AccountManager;

    .line 159
    return-void
.end method

.method static synthetic access$000(Landroid/os/Bundle;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-static {p0}, Lcom/google/android/apps/reader/accounts/AccountHelper;->clearNewTaskFlag(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/reader/accounts/AccountHelper;)Lcom/google/android/accounts/AccountManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/apps/reader/accounts/AccountHelper;->mManager:Lcom/google/android/accounts/AccountManager;

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/Intent;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-static {p0}, Lcom/google/android/apps/reader/accounts/AccountHelper;->clearNewTaskFlag(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/apps/reader/accounts/AccountHelper;)Landroid/app/Activity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/apps/reader/accounts/AccountHelper;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private checkReady()V
    .registers 3

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/android/apps/reader/accounts/AccountHelper;->mFuture:Lcom/google/android/accounts/AccountManagerFuture;

    if-eqz v0, :cond_c

    .line 184
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Another request is already in progress"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_c
    return-void
.end method

.method private static clearNewTaskFlag(Landroid/content/Intent;)V
    .registers 3
    .parameter

    .prologue
    .line 121
    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    .line 122
    const v1, -0x10000001

    and-int/2addr v0, v1

    .line 123
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 124
    return-void
.end method

.method private static clearNewTaskFlag(Landroid/os/Bundle;)V
    .registers 3
    .parameter "result"

    .prologue
    .line 127
    const-string v1, "intent"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 128
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_d

    .line 129
    invoke-static {v0}, Lcom/google/android/apps/reader/accounts/AccountHelper;->clearNewTaskFlag(Landroid/content/Intent;)V

    .line 131
    :cond_d
    return-void
.end method

.method private getAccounts(Lcom/google/android/accounts/AccountManagerCallback;)Lcom/google/android/accounts/AccountManagerFuture;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/accounts/AccountManagerCallback",
            "<[",
            "Lcom/google/android/accounts/Account;",
            ">;)",
            "Lcom/google/android/accounts/AccountManagerFuture",
            "<[",
            "Lcom/google/android/accounts/Account;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, callback:Lcom/google/android/accounts/AccountManagerCallback;,"Lcom/google/android/accounts/AccountManagerCallback<[Lcom/google/android/accounts/Account;>;"
    const/4 v2, 0x0

    .line 197
    iget-object v0, p0, Lcom/google/android/apps/reader/accounts/AccountHelper;->mManager:Lcom/google/android/accounts/AccountManager;

    const-string v1, "com.google"

    invoke-virtual {v0, v1, v2, p1, v2}, Lcom/google/android/accounts/AccountManager;->getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/accounts/AccountManagerCallback;Landroid/os/Handler;)Lcom/google/android/accounts/AccountManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method private getAccountsByFeature(Ljava/lang/String;Lcom/google/android/accounts/AccountManagerCallback;)Lcom/google/android/accounts/AccountManagerFuture;
    .registers 7
    .parameter "feature"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/accounts/AccountManagerCallback",
            "<[",
            "Lcom/google/android/accounts/Account;",
            ">;)",
            "Lcom/google/android/accounts/AccountManagerFuture",
            "<[",
            "Lcom/google/android/accounts/Account;",
            ">;"
        }
    .end annotation

    .prologue
    .line 203
    .local p2, callback:Lcom/google/android/accounts/AccountManagerCallback;,"Lcom/google/android/accounts/AccountManagerCallback<[Lcom/google/android/accounts/Account;>;"
    iget-object v0, p0, Lcom/google/android/apps/reader/accounts/AccountHelper;->mManager:Lcom/google/android/accounts/AccountManager;

    const-string v1, "com.google"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p2, v3}, Lcom/google/android/accounts/AccountManager;->getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/accounts/AccountManagerCallback;Landroid/os/Handler;)Lcom/google/android/accounts/AccountManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method private newToken()I
    .registers 2

    .prologue
    .line 192
    iget v0, p0, Lcom/google/android/apps/reader/accounts/AccountHelper;->mToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/apps/reader/accounts/AccountHelper;->mToken:I

    return v0
.end method

.method public static readAccountFromActivityResult(Landroid/content/Intent;)Lcom/google/android/accounts/Account;
    .registers 4
    .parameter "data"

    .prologue
    .line 102
    const-string v2, "authAccount"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_18

    .line 104
    const-string v2, "accountType"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, type:Ljava/lang/String;
    if-nez v1, :cond_12

    .line 106
    const-string v1, "com.google"

    .line 108
    :cond_12
    new-instance v2, Lcom/google/android/accounts/Account;

    invoke-direct {v2, v0, v1}, Lcom/google/android/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .end local v1           #type:Ljava/lang/String;
    :goto_17
    return-object v2

    :cond_18
    const/4 v2, 0x0

    goto :goto_17
.end method


# virtual methods
.method public addAccount(ILcom/google/android/apps/reader/accounts/AccountHelper$Callback;)V
    .registers 11
    .parameter "requestCode"
    .parameter "callback"

    .prologue
    const/4 v5, 0x0

    .line 293
    invoke-direct {p0}, Lcom/google/android/apps/reader/accounts/AccountHelper;->checkReady()V

    .line 296
    const/4 v3, 0x0

    .line 297
    .local v3, requiredFeatures:[Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/apps/reader/accounts/AccountHelper;->mManager:Lcom/google/android/accounts/AccountManager;

    const-string v1, "com.google"

    const-string v2, "reader"

    sget-object v4, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    new-instance v6, Lcom/google/android/apps/reader/accounts/AccountHelper$AddAccountCallback;

    invoke-direct {p0}, Lcom/google/android/apps/reader/accounts/AccountHelper;->newToken()I

    move-result v7

    invoke-direct {v6, p0, p1, p2, v7}, Lcom/google/android/apps/reader/accounts/AccountHelper$AddAccountCallback;-><init>(Lcom/google/android/apps/reader/accounts/AccountHelper;ILcom/google/android/apps/reader/accounts/AccountHelper$Callback;I)V

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Void;Lcom/google/android/accounts/AccountManagerCallback;Landroid/os/Handler;)Lcom/google/android/accounts/AccountManagerFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/reader/accounts/AccountHelper;->mFuture:Lcom/google/android/accounts/AccountManagerFuture;

    .line 300
    return-void
.end method

.method public cancel()V
    .registers 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/android/apps/reader/accounts/AccountHelper;->mFuture:Lcom/google/android/accounts/AccountManagerFuture;

    if-eqz v0, :cond_d

    .line 171
    const/4 v0, 0x0

    .line 172
    iget-object v1, p0, Lcom/google/android/apps/reader/accounts/AccountHelper;->mFuture:Lcom/google/android/accounts/AccountManagerFuture;

    invoke-interface {v1, v0}, Lcom/google/android/accounts/AccountManagerFuture;->cancel(Z)Z

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/reader/accounts/AccountHelper;->mFuture:Lcom/google/android/accounts/AccountManagerFuture;

    .line 175
    :cond_d
    return-void
.end method

.method public getAllAccounts(Lcom/google/android/apps/reader/accounts/AccountHelper$Callback;)V
    .registers 4
    .parameter "callback"

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/google/android/apps/reader/accounts/AccountHelper;->checkReady()V

    .line 222
    new-instance v0, Lcom/google/android/apps/reader/accounts/AccountHelper$GetAccountsCallback;

    invoke-direct {p0}, Lcom/google/android/apps/reader/accounts/AccountHelper;->newToken()I

    move-result v1

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/apps/reader/accounts/AccountHelper$GetAccountsCallback;-><init>(Lcom/google/android/apps/reader/accounts/AccountHelper;Lcom/google/android/apps/reader/accounts/AccountHelper$Callback;I)V

    invoke-direct {p0, v0}, Lcom/google/android/apps/reader/accounts/AccountHelper;->getAccounts(Lcom/google/android/accounts/AccountManagerCallback;)Lcom/google/android/accounts/AccountManagerFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/reader/accounts/AccountHelper;->mFuture:Lcom/google/android/accounts/AccountManagerFuture;

    .line 223
    return-void
.end method

.method public getAuthToken(Lcom/google/android/accounts/Account;Ljava/lang/String;Lcom/google/android/apps/reader/accounts/AccountHelper$Callback;)V
    .registers 13
    .parameter "account"
    .parameter "authTokenType"
    .parameter "callback"

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/google/android/apps/reader/accounts/AccountHelper;->checkReady()V

    .line 265
    iget-object v7, p0, Lcom/google/android/apps/reader/accounts/AccountHelper;->mManager:Lcom/google/android/accounts/AccountManager;

    const/4 v8, 0x0

    new-instance v0, Lcom/google/android/apps/reader/accounts/AccountHelper$GetAuthTokenCallback;

    invoke-direct {p0}, Lcom/google/android/apps/reader/accounts/AccountHelper;->newToken()I

    move-result v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/reader/accounts/AccountHelper$GetAuthTokenCallback;-><init>(Lcom/google/android/apps/reader/accounts/AccountHelper;Lcom/google/android/accounts/Account;Ljava/lang/String;Lcom/google/android/apps/reader/accounts/AccountHelper$Callback;I)V

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move v4, v8

    move-object v5, v0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/accounts/AccountManager;->getAuthToken(Lcom/google/android/accounts/Account;Ljava/lang/String;ZLcom/google/android/accounts/AccountManagerCallback;Landroid/os/Handler;)Lcom/google/android/accounts/AccountManagerFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/reader/accounts/AccountHelper;->mFuture:Lcom/google/android/accounts/AccountManagerFuture;

    .line 267
    return-void
.end method

.method public getException()Ljava/lang/Exception;
    .registers 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/google/android/apps/reader/accounts/AccountHelper;->mException:Ljava/lang/Exception;

    return-object v0
.end method

.method public getReaderAccounts(Lcom/google/android/apps/reader/accounts/AccountHelper$Callback;)V
    .registers 5
    .parameter "callback"

    .prologue
    .line 236
    invoke-direct {p0}, Lcom/google/android/apps/reader/accounts/AccountHelper;->checkReady()V

    .line 238
    new-instance v0, Lcom/google/android/apps/reader/accounts/CompositeAccountManagerFuture;

    new-instance v1, Lcom/google/android/apps/reader/accounts/AccountHelper$GetAccountsCallback;

    invoke-direct {p0}, Lcom/google/android/apps/reader/accounts/AccountHelper;->newToken()I

    move-result v2

    invoke-direct {v1, p0, p1, v2}, Lcom/google/android/apps/reader/accounts/AccountHelper$GetAccountsCallback;-><init>(Lcom/google/android/apps/reader/accounts/AccountHelper;Lcom/google/android/apps/reader/accounts/AccountHelper$Callback;I)V

    invoke-direct {v0, v1}, Lcom/google/android/apps/reader/accounts/CompositeAccountManagerFuture;-><init>(Lcom/google/android/accounts/AccountManagerCallback;)V

    .line 242
    .local v0, composite:Lcom/google/android/apps/reader/accounts/CompositeAccountManagerFuture;
    const-string v1, "google"

    invoke-direct {p0, v1, v0}, Lcom/google/android/apps/reader/accounts/AccountHelper;->getAccountsByFeature(Ljava/lang/String;Lcom/google/android/accounts/AccountManagerCallback;)Lcom/google/android/accounts/AccountManagerFuture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/accounts/CompositeAccountManagerFuture;->addFuture(Lcom/google/android/accounts/AccountManagerFuture;)V

    .line 250
    const-string v1, "service_reader"

    invoke-direct {p0, v1, v0}, Lcom/google/android/apps/reader/accounts/AccountHelper;->getAccountsByFeature(Ljava/lang/String;Lcom/google/android/accounts/AccountManagerCallback;)Lcom/google/android/accounts/AccountManagerFuture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/accounts/CompositeAccountManagerFuture;->addFuture(Lcom/google/android/accounts/AccountManagerFuture;)V

    .line 252
    iput-object v0, p0, Lcom/google/android/apps/reader/accounts/AccountHelper;->mFuture:Lcom/google/android/accounts/AccountManagerFuture;

    .line 253
    return-void
.end method

.method getResult(Lcom/google/android/accounts/AccountManagerFuture;Lcom/google/android/apps/reader/accounts/AccountHelper$Callback;I)Ljava/lang/Object;
    .registers 9
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/accounts/AccountManagerFuture",
            "<TT;>;",
            "Lcom/google/android/apps/reader/accounts/AccountHelper$Callback;",
            "I)TT;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 315
    if-nez p1, :cond_d

    .line 316
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Future is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :cond_d
    iget-object v0, p0, Lcom/google/android/apps/reader/accounts/AccountHelper;->mFuture:Lcom/google/android/accounts/AccountManagerFuture;

    if-nez v0, :cond_1f

    move v0, v4

    .line 319
    :goto_12
    iget v1, p0, Lcom/google/android/apps/reader/accounts/AccountHelper;->mToken:I

    if-eq p3, v1, :cond_21

    move v1, v4

    .line 320
    :goto_17
    iput-object v3, p0, Lcom/google/android/apps/reader/accounts/AccountHelper;->mFuture:Lcom/google/android/accounts/AccountManagerFuture;

    .line 321
    iput-object v3, p0, Lcom/google/android/apps/reader/accounts/AccountHelper;->mException:Ljava/lang/Exception;

    .line 322
    if-eqz v0, :cond_23

    move-object v0, v3

    .line 350
    :goto_1e
    return-object v0

    :cond_1f
    move v0, v2

    .line 318
    goto :goto_12

    :cond_21
    move v1, v2

    .line 319
    goto :goto_17

    .line 325
    :cond_23
    if-eqz v1, :cond_27

    move-object v0, v3

    .line 326
    goto :goto_1e

    .line 330
    :cond_27
    :try_start_27
    invoke-interface {p1}, Lcom/google/android/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;
    :try_end_2a
    .catch Lcom/google/android/accounts/OperationCanceledException; {:try_start_27 .. :try_end_2a} :catch_2c
    .catch Lcom/google/android/accounts/AuthenticatorException; {:try_start_27 .. :try_end_2a} :catch_2f
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_3e
    .catch Ljava/lang/RuntimeException; {:try_start_27 .. :try_end_2a} :catch_4d

    move-result-object v0

    goto :goto_1e

    .line 332
    :catch_2c
    move-exception v0

    move-object v0, v3

    goto :goto_1e

    .line 336
    :catch_2f
    move-exception v0

    .line 337
    const-string v1, "AccountHelper"

    const-string v2, "Operation failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 338
    iput-object v0, p0, Lcom/google/android/apps/reader/accounts/AccountHelper;->mException:Ljava/lang/Exception;

    .line 339
    invoke-interface {p2, v0}, Lcom/google/android/apps/reader/accounts/AccountHelper$Callback;->onAccountError(Ljava/lang/Exception;)V

    move-object v0, v3

    .line 340
    goto :goto_1e

    .line 341
    :catch_3e
    move-exception v0

    .line 342
    const-string v1, "AccountHelper"

    const-string v2, "Operation failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 343
    iput-object v0, p0, Lcom/google/android/apps/reader/accounts/AccountHelper;->mException:Ljava/lang/Exception;

    .line 344
    invoke-interface {p2, v0}, Lcom/google/android/apps/reader/accounts/AccountHelper$Callback;->onAccountError(Ljava/lang/Exception;)V

    move-object v0, v3

    .line 345
    goto :goto_1e

    .line 346
    :catch_4d
    move-exception v0

    .line 347
    const-string v1, "AccountHelper"

    const-string v2, "Operation failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 348
    iput-object v0, p0, Lcom/google/android/apps/reader/accounts/AccountHelper;->mException:Ljava/lang/Exception;

    .line 349
    invoke-interface {p2, v0}, Lcom/google/android/apps/reader/accounts/AccountHelper$Callback;->onAccountError(Ljava/lang/Exception;)V

    move-object v0, v3

    .line 350
    goto :goto_1e
.end method

.method public hasAuthenticatorException()Z
    .registers 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/google/android/apps/reader/accounts/AccountHelper;->mException:Ljava/lang/Exception;

    instance-of v0, v0, Lcom/google/android/accounts/AuthenticatorException;

    return v0
.end method

.method public hasException()Z
    .registers 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/google/android/apps/reader/accounts/AccountHelper;->mException:Ljava/lang/Exception;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public invalidateAuthToken(Lcom/google/android/accounts/Account;Ljava/lang/String;Lcom/google/android/apps/reader/accounts/AccountHelper$Callback;)V
    .registers 10
    .parameter "account"
    .parameter "authTokenType"
    .parameter "callback"

    .prologue
    .line 273
    invoke-direct {p0}, Lcom/google/android/apps/reader/accounts/AccountHelper;->checkReady()V

    .line 274
    iget-object v0, p0, Lcom/google/android/apps/reader/accounts/AccountHelper;->mManager:Lcom/google/android/accounts/AccountManager;

    const/4 v3, 0x0

    new-instance v4, Lcom/google/android/apps/reader/accounts/AccountHelper$InvalidateAuthTokenCallback;

    invoke-direct {p0}, Lcom/google/android/apps/reader/accounts/AccountHelper;->newToken()I

    move-result v1

    invoke-direct {v4, p0, p3, v1}, Lcom/google/android/apps/reader/accounts/AccountHelper$InvalidateAuthTokenCallback;-><init>(Lcom/google/android/apps/reader/accounts/AccountHelper;Lcom/google/android/apps/reader/accounts/AccountHelper$Callback;I)V

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/accounts/AccountManager;->getAuthToken(Lcom/google/android/accounts/Account;Ljava/lang/String;ZLcom/google/android/accounts/AccountManagerCallback;Landroid/os/Handler;)Lcom/google/android/accounts/AccountManagerFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/reader/accounts/AccountHelper;->mFuture:Lcom/google/android/accounts/AccountManagerFuture;

    .line 276
    return-void
.end method

.method public isLoading()Z
    .registers 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/google/android/apps/reader/accounts/AccountHelper;->mFuture:Lcom/google/android/accounts/AccountManagerFuture;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

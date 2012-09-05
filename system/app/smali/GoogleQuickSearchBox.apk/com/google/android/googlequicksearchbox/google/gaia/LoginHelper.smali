.class public Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;
.super Ljava/lang/Object;
.source "LoginHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$AuthToken;,
        Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$Callback;
    }
.end annotation


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private final mAccountManager:Landroid/accounts/AccountManager;

.field private mAccounts:[Landroid/accounts/Account;

.field private final mAccountsListener:Landroid/accounts/OnAccountsUpdateListener;

.field private mAuthTokens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDataSetObservable:Landroid/database/DataSetObservable;

.field private final mHttpHelper:Lcom/google/android/googlequicksearchbox/util/HttpHelper;

.field private final mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

.field private final mUiThread:Landroid/os/Handler;

.field private final mUrlHelper:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/SearchSettings;Lcom/google/android/googlequicksearchbox/util/HttpHelper;Landroid/os/Handler;Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;)V
    .registers 10
    .parameter "context"
    .parameter "settings"
    .parameter "httpHelper"
    .parameter "uiThread"
    .parameter "searchUrlHelper"

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->mDataSetObservable:Landroid/database/DataSetObservable;

    .line 87
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    .line 88
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->mAccountManager:Landroid/accounts/AccountManager;

    .line 89
    new-instance v0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$1;

    invoke-direct {v0, p0}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$1;-><init>(Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->mAccountsListener:Landroid/accounts/OnAccountsUpdateListener;

    .line 95
    iput-object p3, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->mHttpHelper:Lcom/google/android/googlequicksearchbox/util/HttpHelper;

    .line 96
    iput-object p5, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->mUrlHelper:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

    .line 97
    iput-object p4, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->mUiThread:Landroid/os/Handler;

    .line 98
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->mAccountManager:Landroid/accounts/AccountManager;

    if-nez v0, :cond_2b

    .line 99
    const-string v0, "QSB.LoginHelper"

    const-string v1, "Missing account manager."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :goto_2a
    return-void

    .line 102
    :cond_2b
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->mAuthTokens:Ljava/util/Map;

    .line 103
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->mAccountsListener:Landroid/accounts/OnAccountsUpdateListener;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    goto :goto_2a
.end method

.method static synthetic access$000(Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->refresh()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->setToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->notifyChanged()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;)Landroid/accounts/Account;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->blockingGetUberAuthToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->mUiThread:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;)Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->mUrlHelper:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

    return-object v0
.end method

.method private blockingGetUberAuthToken(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .parameter "accountName"

    .prologue
    .line 399
    :try_start_0
    new-instance v0, Landroid/accounts/Account;

    const-string v7, "com.google"

    invoke-direct {v0, p1, v7}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    .local v0, account:Landroid/accounts/Account;
    iget-object v7, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v8, "SID"

    const/4 v9, 0x0

    invoke-virtual {v7, v0, v8, v9}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 401
    .local v6, sid:Ljava/lang/String;
    iget-object v7, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v8, "LSID"

    const/4 v9, 0x0

    invoke-virtual {v7, v0, v8, v9}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 402
    .local v2, lsid:Ljava/lang/String;
    new-instance v4, Lcom/google/android/googlequicksearchbox/util/HttpHelper$PostRequest;

    iget-object v7, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->mUrlHelper:Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;

    const-string v8, "https://%1$s/accounts/IssueAuthToken"

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;->formatUrl(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/google/android/googlequicksearchbox/util/HttpHelper$PostRequest;-><init>(Ljava/lang/String;)V

    .line 404
    .local v4, request:Lcom/google/android/googlequicksearchbox/util/HttpHelper$PostRequest;
    new-instance v7, Landroid/net/Uri$Builder;

    invoke-direct {v7}, Landroid/net/Uri$Builder;-><init>()V

    const-string v8, "SID"

    invoke-virtual {v7, v8, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v8, "LSID"

    invoke-virtual {v7, v8, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v8, "service"

    const-string v9, "gaia"

    invoke-virtual {v7, v8, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v8, "session"

    const-string v9, "false"

    invoke-virtual {v7, v8, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/google/android/googlequicksearchbox/util/HttpHelper$PostRequest;->setContent(Ljava/lang/String;)V

    .line 409
    const-string v7, "Content-Type"

    const-string v8, "application/x-www-form-urlencoded"

    invoke-virtual {v4, v7, v8}, Lcom/google/android/googlequicksearchbox/util/HttpHelper$PostRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    iget-object v7, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->mHttpHelper:Lcom/google/android/googlequicksearchbox/util/HttpHelper;

    const/4 v8, 0x4

    invoke-interface {v7, v4, v8}, Lcom/google/android/googlequicksearchbox/util/HttpHelper;->post(Lcom/google/android/googlequicksearchbox/util/HttpHelper$PostRequest;I)Ljava/lang/String;

    move-result-object v5

    .line 411
    .local v5, response:Ljava/lang/String;
    if-eqz v5, :cond_76

    .line 412
    const/16 v7, 0xa

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 413
    .local v3, newLinePos:I
    const/4 v7, 0x0

    const/4 v8, -0x1

    if-ne v3, v8, :cond_71

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    .end local v3           #newLinePos:I
    :cond_71
    invoke-virtual {v5, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 422
    .end local v0           #account:Landroid/accounts/Account;
    .end local v2           #lsid:Ljava/lang/String;
    .end local v4           #request:Lcom/google/android/googlequicksearchbox/util/HttpHelper$PostRequest;
    .end local v5           #response:Ljava/lang/String;
    .end local v6           #sid:Ljava/lang/String;
    :goto_75
    return-object v7

    .line 415
    .restart local v0       #account:Landroid/accounts/Account;
    .restart local v2       #lsid:Ljava/lang/String;
    .restart local v4       #request:Lcom/google/android/googlequicksearchbox/util/HttpHelper$PostRequest;
    .restart local v5       #response:Ljava/lang/String;
    .restart local v6       #sid:Ljava/lang/String;
    :cond_76
    const-string v7, "QSB.LoginHelper"

    const-string v8, "Failed to fetch uber auth token"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7d
    .catch Landroid/accounts/AccountsException; {:try_start_0 .. :try_end_7d} :catch_7f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7d} :catch_9d

    .line 422
    .end local v0           #account:Landroid/accounts/Account;
    .end local v2           #lsid:Ljava/lang/String;
    .end local v4           #request:Lcom/google/android/googlequicksearchbox/util/HttpHelper$PostRequest;
    .end local v5           #response:Ljava/lang/String;
    .end local v6           #sid:Ljava/lang/String;
    :goto_7d
    const/4 v7, 0x0

    goto :goto_75

    .line 417
    :catch_7f
    move-exception v1

    .line 418
    .local v1, e:Landroid/accounts/AccountsException;
    const-string v7, "QSB.LoginHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception while getting uber auth token: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/accounts/AccountsException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7d

    .line 419
    .end local v1           #e:Landroid/accounts/AccountsException;
    :catch_9d
    move-exception v1

    .line 420
    .local v1, e:Ljava/io/IOException;
    const-string v7, "QSB.LoginHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception while getting uber auth token: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7d
.end method

.method private declared-synchronized findAccountByName(Ljava/lang/String;)Landroid/accounts/Account;
    .registers 8
    .parameter "name"

    .prologue
    const/4 v4, 0x0

    .line 197
    monitor-enter p0

    if-eqz p1, :cond_8

    :try_start_4
    iget-object v5, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->mAccounts:[Landroid/accounts/Account;
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_20

    if-nez v5, :cond_b

    :cond_8
    move-object v0, v4

    .line 203
    :cond_9
    :goto_9
    monitor-exit p0

    return-object v0

    .line 198
    :cond_b
    :try_start_b
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->mAccounts:[Landroid/accounts/Account;

    .local v1, arr$:[Landroid/accounts/Account;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_f
    if-ge v2, v3, :cond_1e

    aget-object v0, v1, v2

    .line 199
    .local v0, a:Landroid/accounts/Account;
    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v5, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_20

    move-result v5

    if-nez v5, :cond_9

    .line 198
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .end local v0           #a:Landroid/accounts/Account;
    :cond_1e
    move-object v0, v4

    .line 203
    goto :goto_9

    .line 197
    .end local v1           #arr$:[Landroid/accounts/Account;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :catchall_20
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private getSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    return-object v0
.end method

.method private declared-synchronized handleAccounts([Landroid/accounts/Account;)V
    .registers 6
    .parameter "accounts"

    .prologue
    .line 218
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->mAccounts:[Landroid/accounts/Account;

    .line 219
    if-eqz p1, :cond_8

    array-length v2, p1

    if-nez v2, :cond_19

    .line 220
    :cond_8
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->setAccount(Landroid/accounts/Account;)V

    .line 221
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->getSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/google/android/googlequicksearchbox/SearchSettings;->setGoogleAccountToUse(Ljava/lang/String;)V

    .line 222
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->notifyChanged()V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_3a

    .line 234
    :goto_17
    monitor-exit p0

    return-void

    .line 226
    :cond_19
    :try_start_19
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->getSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/googlequicksearchbox/SearchSettings;->getGoogleAccountToUse()Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, chosenAccountName:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->findAccountByName(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    .line 228
    .local v0, chosenAccount:Landroid/accounts/Account;
    if-nez v0, :cond_33

    .line 229
    const/4 v2, 0x0

    aget-object v0, p1, v2

    .line 230
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->getSettings()Lcom/google/android/googlequicksearchbox/SearchSettings;

    move-result-object v2

    iget-object v3, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/google/android/googlequicksearchbox/SearchSettings;->setGoogleAccountToUse(Ljava/lang/String;)V

    .line 232
    :cond_33
    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->setAccount(Landroid/accounts/Account;)V

    .line 233
    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->updateAuthTokens(Landroid/accounts/Account;)V
    :try_end_39
    .catchall {:try_start_19 .. :try_end_39} :catchall_3a

    goto :goto_17

    .line 218
    .end local v0           #chosenAccount:Landroid/accounts/Account;
    .end local v1           #chosenAccountName:Ljava/lang/String;
    :catchall_3a
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private invalidateAuthToken(Ljava/lang/String;Z)V
    .registers 8
    .parameter "authTokenType"
    .parameter "refresh"

    .prologue
    .line 473
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->mAccountManager:Landroid/accounts/AccountManager;

    if-nez v3, :cond_5

    .line 505
    :cond_4
    :goto_4
    return-void

    .line 480
    :cond_5
    monitor-enter p0

    .line 481
    :try_start_6
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->mAuthTokens:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_13

    .line 483
    monitor-exit p0

    goto :goto_4

    .line 497
    :catchall_10
    move-exception v3

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_10

    throw v3

    .line 485
    :cond_13
    :try_start_13
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->mAccount:Landroid/accounts/Account;

    if-nez v3, :cond_19

    .line 487
    monitor-exit p0

    goto :goto_4

    .line 489
    :cond_19
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->mAccount:Landroid/accounts/Account;

    .line 490
    .local v0, account:Landroid/accounts/Account;
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->mAccount:Landroid/accounts/Account;

    iget-object v1, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 491
    .local v1, accountType:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->mAuthTokens:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 492
    .local v2, token:Ljava/lang/String;
    if-eqz p2, :cond_3b

    .line 493
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->mAuthTokens:Ljava/util/Map;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    :goto_2f
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_13 .. :try_end_30} :catchall_10

    .line 500
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v3, v1, v2}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    if-eqz p2, :cond_4

    .line 503
    invoke-direct {p0, v0, p1}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->updateAuthToken(Landroid/accounts/Account;Ljava/lang/String;)V

    goto :goto_4

    .line 495
    :cond_3b
    :try_start_3b
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->mAuthTokens:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_40
    .catchall {:try_start_3b .. :try_end_40} :catchall_10

    goto :goto_2f
.end method

.method private notifyChanged()V
    .registers 2

    .prologue
    .line 535
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 536
    return-void
.end method

.method private declared-synchronized refresh()V
    .registers 4

    .prologue
    .line 140
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v2, "com.google"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 142
    .local v0, accounts:[Landroid/accounts/Account;
    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->handleAccounts([Landroid/accounts/Account;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 143
    monitor-exit p0

    return-void

    .line 140
    .end local v0           #accounts:[Landroid/accounts/Account;
    :catchall_e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized requireAuthTokenType(Ljava/lang/String;Z)V
    .registers 6
    .parameter "authTokenType"
    .parameter "forceRefresh"

    .prologue
    .line 184
    monitor-enter p0

    const/4 v0, 0x0

    .line 185
    .local v0, newToken:Z
    :try_start_2
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->mAuthTokens:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 187
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->mAuthTokens:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const/4 v0, 0x1

    .line 190
    :cond_11
    if-nez v0, :cond_15

    if-eqz p2, :cond_18

    .line 192
    :cond_15
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->refresh()V
    :try_end_18
    .catchall {:try_start_2 .. :try_end_18} :catchall_1a

    .line 194
    :cond_18
    monitor-exit p0

    return-void

    .line 184
    :catchall_1a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized setAccount(Landroid/accounts/Account;)V
    .registers 6
    .parameter "account"

    .prologue
    .line 267
    monitor-enter p0

    if-eqz p1, :cond_b

    :try_start_3
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->mAccount:Landroid/accounts/Account;

    invoke-virtual {p1, v2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 268
    :cond_b
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->mAuthTokens:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 269
    .local v0, authTokenType:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->mAuthTokens:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_28

    goto :goto_15

    .line 267
    .end local v0           #authTokenType:Ljava/lang/String;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_28
    move-exception v2

    monitor-exit p0

    throw v2

    .line 272
    :cond_2b
    :try_start_2b
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->mAccount:Landroid/accounts/Account;
    :try_end_2d
    .catchall {:try_start_2b .. :try_end_2d} :catchall_28

    .line 273
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized setToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "account"
    .parameter "authTokenType"
    .parameter "authToken"

    .prologue
    .line 279
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->mAccount:Landroid/accounts/Account;

    invoke-virtual {p1, v0}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->mAuthTokens:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 281
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->mAuthTokens:Ljava/util/Map;

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 283
    :cond_16
    monitor-exit p0

    return-void

    .line 279
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateAuthToken(Landroid/accounts/Account;Ljava/lang/String;)V
    .registers 9
    .parameter "account"
    .parameter "authTokenType"

    .prologue
    .line 248
    new-instance v4, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$2;

    invoke-direct {v4, p0, p1, p2}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$2;-><init>(Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 262
    .local v4, callback:Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$Callback;,"Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$Callback<Landroid/os/Bundle;>;"
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->mAccountManager:Landroid/accounts/AccountManager;

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 263
    return-void
.end method

.method private updateAuthTokens(Landroid/accounts/Account;)V
    .registers 5
    .parameter "account"

    .prologue
    .line 238
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->mAuthTokens:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 239
    .local v0, authTokenType:Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->updateAuthToken(Landroid/accounts/Account;Ljava/lang/String;)V

    goto :goto_a

    .line 241
    .end local v0           #authTokenType:Ljava/lang/String;
    :cond_1a
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->mAccountManager:Landroid/accounts/AccountManager;

    if-nez v0, :cond_5

    .line 116
    :goto_4
    return-void

    .line 115
    :cond_5
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->mAccountsListener:Landroid/accounts/OnAccountsUpdateListener;

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    goto :goto_4
.end method

.method public destroyAuthTokens()V
    .registers 4

    .prologue
    .line 510
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->mAuthTokens:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 511
    .local v0, authTokenType:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->invalidateAuthToken(Ljava/lang/String;Z)V

    goto :goto_a

    .line 513
    .end local v0           #authTokenType:Ljava/lang/String;
    :cond_1b
    return-void
.end method

.method public declared-synchronized getAccount()Ljava/lang/String;
    .registers 2

    .prologue
    .line 310
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->mAccount:Landroid/accounts/Account;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_d

    if-nez v0, :cond_8

    .line 312
    const/4 v0, 0x0

    .line 315
    :goto_6
    monitor-exit p0

    return-object v0

    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->mAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_d

    goto :goto_6

    .line 310
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAllAccounts()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 119
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->mAccounts:[Landroid/accounts/Account;

    if-nez v2, :cond_f

    .line 120
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->refresh()V

    .line 121
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->mAccounts:[Landroid/accounts/Account;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_25

    if-nez v2, :cond_f

    .line 122
    const/4 v1, 0x0

    .line 129
    :cond_d
    monitor-exit p0

    return-object v1

    .line 125
    :cond_f
    :try_start_f
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->mAccounts:[Landroid/accounts/Account;

    array-length v2, v2

    new-array v1, v2, [Ljava/lang/String;

    .line 126
    .local v1, names:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_15
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->mAccounts:[Landroid/accounts/Account;

    array-length v2, v2

    if-ge v0, v2, :cond_d

    .line 127
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->mAccounts:[Landroid/accounts/Account;

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v2, v1, v0
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_25

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 119
    .end local v0           #i:I
    .end local v1           #names:[Ljava/lang/String;
    :catchall_25
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getAuthToken(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$AuthToken;
    .registers 5
    .parameter "authTokenType"

    .prologue
    .line 330
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->getAccount()Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, account:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->mAuthTokens:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 332
    .local v1, token:Ljava/lang/String;
    if-eqz v0, :cond_18

    if-eqz v1, :cond_18

    .line 333
    new-instance v2, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$AuthToken;

    invoke-direct {v2, v0, v1}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$AuthToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_1a

    .line 335
    :goto_16
    monitor-exit p0

    return-object v2

    :cond_18
    const/4 v2, 0x0

    goto :goto_16

    .line 330
    .end local v0           #account:Ljava/lang/String;
    .end local v1           #token:Ljava/lang/String;
    :catchall_1a
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getGaiaLoginLink(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/googlequicksearchbox/util/Consumer;)V
    .registers 5
    .parameter "continueToUrl"
    .parameter "service"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/googlequicksearchbox/util/Consumer",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 378
    .local p3, consumer:Lcom/google/android/googlequicksearchbox/util/Consumer;,"Lcom/google/android/googlequicksearchbox/util/Consumer<Landroid/net/Uri;>;"
    new-instance v0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$4;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$4;-><init>(Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/googlequicksearchbox/util/Consumer;)V

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->getGaiaUberAuthToken(Lcom/google/android/googlequicksearchbox/util/Consumer;)V

    .line 395
    return-void
.end method

.method public getGaiaUberAuthToken(Lcom/google/android/googlequicksearchbox/util/Consumer;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/googlequicksearchbox/util/Consumer",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 352
    .local p1, consumer:Lcom/google/android/googlequicksearchbox/util/Consumer;,"Lcom/google/android/googlequicksearchbox/util/Consumer<Ljava/lang/String;>;"
    new-instance v0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$3;

    invoke-direct {v0, p0, p1}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$3;-><init>(Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;Lcom/google/android/googlequicksearchbox/util/Consumer;)V

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$3;->start()V

    .line 364
    return-void
.end method

.method public invalidateAuthToken(Ljava/lang/String;)V
    .registers 3
    .parameter "authTokenType"

    .prologue
    .line 461
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->invalidateAuthToken(Ljava/lang/String;Z)V

    .line 462
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .parameter "observer"

    .prologue
    .line 521
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 522
    return-void
.end method

.method public requestAccount(Landroid/app/Activity;Lcom/google/android/googlequicksearchbox/util/Consumer;)V
    .registers 11
    .parameter "activity"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/googlequicksearchbox/util/Consumer",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, callback:Lcom/google/android/googlequicksearchbox/util/Consumer;,"Lcom/google/android/googlequicksearchbox/util/Consumer<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 431
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->mAccountManager:Landroid/accounts/AccountManager;

    if-nez v0, :cond_6

    .line 452
    :goto_5
    return-void

    .line 435
    :cond_6
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v1, "com.google"

    const-string v2, "gaia"

    new-instance v6, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$5;

    invoke-direct {v6, p0, p2}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper$5;-><init>(Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;Lcom/google/android/googlequicksearchbox/util/Consumer;)V

    move-object v4, v3

    move-object v5, p1

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    goto :goto_5
.end method

.method public declared-synchronized requireAuthTokenType(Ljava/lang/String;)V
    .registers 3
    .parameter "authTokenType"

    .prologue
    .line 169
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, p1, v0}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->requireAuthTokenType(Ljava/lang/String;Z)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 170
    monitor-exit p0

    return-void

    .line 169
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized requireRefreshedAuthTokenType(Ljava/lang/String;)V
    .registers 3
    .parameter "authTokenType"

    .prologue
    .line 156
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    invoke-direct {p0, p1, v0}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->requireAuthTokenType(Ljava/lang/String;Z)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 157
    monitor-exit p0

    return-void

    .line 156
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAccountToUse(Ljava/lang/String;)Z
    .registers 4
    .parameter "name"

    .prologue
    .line 207
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->findAccountByName(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    .line 208
    .local v0, chosen:Landroid/accounts/Account;
    if-eqz v0, :cond_e

    .line 209
    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->setAccount(Landroid/accounts/Account;)V

    .line 210
    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->updateAuthTokens(Landroid/accounts/Account;)V

    .line 211
    const/4 v1, 0x1

    .line 213
    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .parameter "observer"

    .prologue
    .line 528
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 529
    return-void
.end method

.class public Lcom/google/android/youtube/core/async/UserAuthorizer;
.super Ljava/lang/Object;
.source "UserAuthorizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/async/UserAuthorizer$AccountsChangedService;,
        Lcom/google/android/youtube/core/async/UserAuthorizer$AccountsChangedReceiver;,
        Lcom/google/android/youtube/core/async/UserAuthorizer$RetryingRequester;,
        Lcom/google/android/youtube/core/async/UserAuthorizer$AuthTokenCallback;,
        Lcom/google/android/youtube/core/async/UserAuthorizer$NoLinkedYouTubeAccountException;,
        Lcom/google/android/youtube/core/async/UserAuthorizer$OnSignedInChangedListener;,
        Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;
    }
.end annotation


# instance fields
.field private final accountManager:Landroid/accounts/AccountManager;

.field protected final authMethod:Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;

.field private final callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;",
            ">;"
        }
    .end annotation
.end field

.field private final onSignedInChangedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/youtube/core/async/UserAuthorizer$OnSignedInChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final preferences:Landroid/content/SharedPreferences;

.field private previousAccount:Landroid/accounts/Account;

.field private userAuth:Lcom/google/android/youtube/core/model/UserAuth;


# direct methods
.method public constructor <init>(Landroid/accounts/AccountManager;Landroid/content/SharedPreferences;)V
    .registers 4
    .parameter "accountManager"
    .parameter "preferences"

    .prologue
    .line 96
    sget-object v0, Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;->CLIENTLOGIN:Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/youtube/core/async/UserAuthorizer;-><init>(Landroid/accounts/AccountManager;Landroid/content/SharedPreferences;Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/accounts/AccountManager;Landroid/content/SharedPreferences;Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;)V
    .registers 5
    .parameter "accountManager"
    .parameter "preferences"
    .parameter "authMethod"

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->accountManager:Landroid/accounts/AccountManager;

    .line 102
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->preferences:Landroid/content/SharedPreferences;

    .line 103
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->callbacks:Ljava/util/List;

    .line 104
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->onSignedInChangedListeners:Ljava/util/Set;

    .line 105
    iput-object p3, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->authMethod:Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;

    .line 106
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/youtube/core/async/UserAuthorizer;Landroid/app/Activity;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/async/UserAuthorizer;->addAccount(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/youtube/core/async/UserAuthorizer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->signOutIfAccountRemoved()V

    return-void
.end method

.method private addAccount(Landroid/app/Activity;)V
    .registers 10
    .parameter "activity"

    .prologue
    const/4 v2, 0x0

    .line 400
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 405
    invoke-virtual {p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->notifyNotAuthenticated()V

    .line 441
    :goto_a
    return-void

    .line 409
    :cond_b
    const-string v0, "adding account"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 410
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->accountManager:Landroid/accounts/AccountManager;

    const-string v1, "com.google"

    new-instance v6, Lcom/google/android/youtube/core/async/UserAuthorizer$5;

    invoke-direct {v6, p0, p1}, Lcom/google/android/youtube/core/async/UserAuthorizer$5;-><init>(Lcom/google/android/youtube/core/async/UserAuthorizer;Landroid/app/Activity;)V

    move-object v3, v2

    move-object v4, v2

    move-object v5, p1

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    goto :goto_a
.end method

.method private declared-synchronized getSavedUserAccount()Ljava/lang/String;
    .registers 4

    .prologue
    .line 275
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "user_account"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized signOutIfAccountRemoved()V
    .registers 3

    .prologue
    .line 266
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/UserAuth;->account:Ljava/lang/String;

    :goto_9
    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/async/UserAuthorizer;->getAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    .line 268
    .local v0, account:Landroid/accounts/Account;
    if-nez v0, :cond_12

    .line 270
    invoke-virtual {p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->signOut()V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_19

    .line 272
    :cond_12
    monitor-exit p0

    return-void

    .line 266
    .end local v0           #account:Landroid/accounts/Account;
    :cond_14
    :try_start_14
    invoke-direct {p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->getSavedUserAccount()Ljava/lang/String;
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_19

    move-result-object v1

    goto :goto_9

    :catchall_19
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public declared-synchronized addOnSignedInChangedListener(Lcom/google/android/youtube/core/async/UserAuthorizer$OnSignedInChangedListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 246
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->onSignedInChangedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 247
    monitor-exit p0

    return-void

    .line 246
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized authenticate(Landroid/app/Activity;Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;)V
    .registers 4
    .parameter "activity"
    .parameter "callback"

    .prologue
    .line 160
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/youtube/core/async/UserAuthorizer;->authenticate(Landroid/app/Activity;ZLcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 161
    monitor-exit p0

    return-void

    .line 160
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized authenticate(Landroid/app/Activity;Ljava/lang/String;Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;)V
    .registers 6
    .parameter "activity"
    .parameter "account"
    .parameter "callback"

    .prologue
    .line 164
    monitor-enter p0

    :try_start_1
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/UserAuth;->account:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 166
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-interface {p3, v0}, Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;->onAuthenticated(Lcom/google/android/youtube/core/model/UserAuth;)V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_39

    .line 174
    :goto_17
    monitor-exit p0

    return-void

    .line 168
    :cond_19
    :try_start_19
    invoke-direct {p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->getSavedUserAccount()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 169
    invoke-virtual {p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->signOut()V

    .line 170
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "user_account"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 172
    :cond_35
    invoke-virtual {p0, p1, p3}, Lcom/google/android/youtube/core/async/UserAuthorizer;->authenticate(Landroid/app/Activity;Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;)V
    :try_end_38
    .catchall {:try_start_19 .. :try_end_38} :catchall_39

    goto :goto_17

    .line 164
    :catchall_39
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized authenticate(Landroid/app/Activity;ZLcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;)V
    .registers 9
    .parameter "activity"
    .parameter "useSingleAccount"
    .parameter "callback"

    .prologue
    const/4 v4, 0x1

    .line 132
    monitor-enter p0

    :try_start_2
    iget-object v3, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    if-eqz v3, :cond_d

    .line 133
    iget-object v3, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-interface {p3, v3}, Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;->onAuthenticated(Lcom/google/android/youtube/core/model/UserAuth;)V
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_36

    .line 154
    :cond_b
    :goto_b
    monitor-exit p0

    return-void

    .line 135
    :cond_d
    :try_start_d
    iget-object v3, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->callbacks:Ljava/util/List;

    invoke-interface {v3, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v3, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->callbacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v4, :cond_b

    .line 137
    invoke-direct {p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->getSavedUserAccount()Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, accountName:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/async/UserAuthorizer;->getAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    .line 139
    .local v0, account:Landroid/accounts/Account;
    if-nez v0, :cond_30

    if-eqz p2, :cond_30

    .line 141
    invoke-virtual {p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->getAccounts()[Landroid/accounts/Account;

    move-result-object v2

    .line 142
    .local v2, accounts:[Landroid/accounts/Account;
    array-length v3, v2

    if-ne v3, v4, :cond_30

    .line 143
    const/4 v3, 0x0

    aget-object v0, v2, v3

    .line 146
    .end local v2           #accounts:[Landroid/accounts/Account;
    :cond_30
    if-eqz v0, :cond_39

    .line 147
    invoke-virtual {p0, v0, p1}, Lcom/google/android/youtube/core/async/UserAuthorizer;->fetchAuthToken(Landroid/accounts/Account;Landroid/app/Activity;)V
    :try_end_35
    .catchall {:try_start_d .. :try_end_35} :catchall_36

    goto :goto_b

    .line 132
    .end local v0           #account:Landroid/accounts/Account;
    .end local v1           #accountName:Ljava/lang/String;
    :catchall_36
    move-exception v3

    monitor-exit p0

    throw v3

    .line 149
    .restart local v0       #account:Landroid/accounts/Account;
    .restart local v1       #accountName:Ljava/lang/String;
    :cond_39
    const/4 v3, 0x0

    :try_start_3a
    iput-object v3, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->previousAccount:Landroid/accounts/Account;

    .line 150
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Lcom/google/android/youtube/core/async/UserAuthorizer;->launchSignOnFlow(Landroid/app/Activity;Landroid/accounts/Account;)V
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_36

    goto :goto_b
.end method

.method public createRetryingRequester(Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/Requester;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "TE;>;)",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "TE;>;"
        }
    .end annotation

    .prologue
    .line 572
    .local p1, target:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Lcom/google/android/youtube/core/async/GDataRequest;TE;>;"
    new-instance v0, Lcom/google/android/youtube/core/async/UserAuthorizer$RetryingRequester;

    invoke-direct {v0, p0, p1}, Lcom/google/android/youtube/core/async/UserAuthorizer$RetryingRequester;-><init>(Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/async/Requester;)V

    return-object v0
.end method

.method protected fetchAuthToken(Landroid/accounts/Account;Landroid/app/Activity;)V
    .registers 10
    .parameter "account"
    .parameter "activity"

    .prologue
    const/4 v3, 0x0

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fetching authToken for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 448
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->accountManager:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->authMethod:Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;

    iget-object v2, v1, Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;->authTokenType:Ljava/lang/String;

    new-instance v5, Lcom/google/android/youtube/core/async/UserAuthorizer$6;

    invoke-direct {v5, p0, p2}, Lcom/google/android/youtube/core/async/UserAuthorizer$6;-><init>(Lcom/google/android/youtube/core/async/UserAuthorizer;Landroid/app/Activity;)V

    move-object v1, p1

    move-object v4, p2

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 466
    return-void
.end method

.method protected getAccount(Ljava/lang/String;)Landroid/accounts/Account;
    .registers 8
    .parameter "accountName"

    .prologue
    .line 517
    if-eqz p1, :cond_19

    .line 518
    invoke-virtual {p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    .line 519
    .local v1, accounts:[Landroid/accounts/Account;
    move-object v2, v1

    .local v2, arr$:[Landroid/accounts/Account;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_9
    if-ge v3, v4, :cond_19

    aget-object v0, v2, v3

    .line 520
    .local v0, account:Landroid/accounts/Account;
    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 525
    .end local v0           #account:Landroid/accounts/Account;
    .end local v1           #accounts:[Landroid/accounts/Account;
    .end local v2           #arr$:[Landroid/accounts/Account;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :goto_15
    return-object v0

    .line 519
    .restart local v0       #account:Landroid/accounts/Account;
    .restart local v1       #accounts:[Landroid/accounts/Account;
    .restart local v2       #arr$:[Landroid/accounts/Account;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 525
    .end local v0           #account:Landroid/accounts/Account;
    .end local v1           #accounts:[Landroid/accounts/Account;
    .end local v2           #arr$:[Landroid/accounts/Account;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_19
    const/4 v0, 0x0

    goto :goto_15
.end method

.method protected declared-synchronized getAccounts()[Landroid/accounts/Account;
    .registers 3

    .prologue
    .line 340
    monitor-enter p0

    :try_start_1
    const-string v0, "fetching accounts"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->accountManager:Landroid/accounts/AccountManager;

    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_10

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 340
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isSignedIn()Z
    .registers 3

    .prologue
    .line 282
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "user_account"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_14

    move-result v0

    if-eqz v0, :cond_12

    :cond_f
    const/4 v0, 0x1

    :goto_10
    monitor-exit p0

    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_10

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized launchSignOnFlow(Landroid/app/Activity;Landroid/accounts/Account;)V
    .registers 4
    .parameter "activity"
    .parameter "previousAccount"

    .prologue
    .line 326
    monitor-enter p0

    const/4 v0, 0x7

    :try_start_2
    invoke-virtual {p1, v0}, Landroid/app/Activity;->showDialog(I)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 327
    monitor-exit p0

    return-void

    .line 326
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized notifyAuthenticated(Landroid/app/Activity;Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 11
    .parameter "activity"
    .parameter "result"

    .prologue
    .line 289
    monitor-enter p0

    :try_start_1
    iget-object v5, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v5, v5, Lcom/google/android/youtube/core/model/UserAuth;->account:Ljava/lang/String;

    iget-object v6, p2, Lcom/google/android/youtube/core/model/UserAuth;->account:Ljava/lang/String;

    if-eq v5, v6, :cond_3e

    :cond_d
    const/4 v3, 0x1

    .line 291
    .local v3, notifyListeners:Z
    :goto_e
    iput-object p2, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    .line 292
    iget-object v5, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "user_account"

    iget-object v7, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v7, v7, Lcom/google/android/youtube/core/model/UserAuth;->account:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 294
    if-eqz v3, :cond_40

    .line 295
    iget-object v5, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->onSignedInChangedListeners:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/youtube/core/async/UserAuthorizer$OnSignedInChangedListener;

    .line 296
    .local v2, listener:Lcom/google/android/youtube/core/async/UserAuthorizer$OnSignedInChangedListener;
    invoke-interface {v2, p1, p2}, Lcom/google/android/youtube/core/async/UserAuthorizer$OnSignedInChangedListener;->onSignIn(Landroid/app/Activity;Lcom/google/android/youtube/core/model/UserAuth;)V
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_3b

    goto :goto_2b

    .line 289
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #listener:Lcom/google/android/youtube/core/async/UserAuthorizer$OnSignedInChangedListener;
    .end local v3           #notifyListeners:Z
    :catchall_3b
    move-exception v5

    monitor-exit p0

    throw v5

    :cond_3e
    const/4 v3, 0x0

    goto :goto_e

    .line 300
    .restart local v3       #notifyListeners:Z
    :cond_40
    :try_start_40
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->callbacks:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 301
    .local v4, toNotify:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;>;"
    iget-object v5, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->callbacks:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 302
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_50
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_62

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;

    .line 303
    .local v0, callback:Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;
    iget-object v5, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-interface {v0, v5}, Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;->onAuthenticated(Lcom/google/android/youtube/core/model/UserAuth;)V
    :try_end_61
    .catchall {:try_start_40 .. :try_end_61} :catchall_3b

    goto :goto_50

    .line 305
    .end local v0           #callback:Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;
    :cond_62
    monitor-exit p0

    return-void
.end method

.method declared-synchronized notifyAuthenticationError(Ljava/lang/Exception;)V
    .registers 6
    .parameter "e"

    .prologue
    .line 308
    monitor-enter p0

    :try_start_1
    const-string v3, "authentication error"

    invoke-static {v3, p1}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 309
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    .line 310
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->callbacks:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 311
    .local v2, toNotify:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;>;"
    iget-object v3, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->callbacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 312
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;

    .line 313
    .local v0, callback:Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;
    invoke-interface {v0, p1}, Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;->onAuthenticationError(Ljava/lang/Exception;)V
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_29

    goto :goto_19

    .line 308
    .end local v0           #callback:Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #toNotify:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;>;"
    :catchall_29
    move-exception v3

    monitor-exit p0

    throw v3

    .line 315
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #toNotify:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;>;"
    :cond_2c
    monitor-exit p0

    return-void
.end method

.method protected declared-synchronized notifyNotAuthenticated()V
    .registers 5

    .prologue
    .line 318
    monitor-enter p0

    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->callbacks:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 319
    .local v2, toNotify:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;>;"
    iget-object v3, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->callbacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 320
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;

    .line 321
    .local v0, callback:Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;
    invoke-interface {v0}, Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;->onNotAuthenticated()V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_21

    goto :goto_11

    .line 318
    .end local v0           #callback:Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #toNotify:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;>;"
    :catchall_21
    move-exception v3

    monitor-exit p0

    throw v3

    .line 323
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #toNotify:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;>;"
    :cond_24
    monitor-exit p0

    return-void
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z
    .registers 6
    .parameter "activity"
    .parameter "request"
    .parameter "result"
    .parameter "data"

    .prologue
    .line 396
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateDialog(Landroid/app/Activity;)Landroid/app/Dialog;
    .registers 8
    .parameter "activity"

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    .line 347
    .local v1, accounts:[Landroid/accounts/Account;
    array-length v4, v1

    add-int/lit8 v4, v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    .line 348
    .local v0, accountNames:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_a
    array-length v4, v1

    if-ge v3, v4, :cond_16

    .line 349
    aget-object v4, v1, v3

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v4, v0, v3

    .line 348
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 351
    :cond_16
    array-length v4, v1

    const v5, 0x7f0b0042

    invoke-virtual {p1, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    .line 353
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0b0041

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/google/android/youtube/core/async/UserAuthorizer$3;

    invoke-direct {v5, p0, p1}, Lcom/google/android/youtube/core/async/UserAuthorizer$3;-><init>(Lcom/google/android/youtube/core/async/UserAuthorizer;Landroid/app/Activity;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/google/android/youtube/core/async/UserAuthorizer$2;

    invoke-direct {v5, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer$2;-><init>(Lcom/google/android/youtube/core/async/UserAuthorizer;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 379
    .local v2, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v4

    new-instance v5, Lcom/google/android/youtube/core/async/UserAuthorizer$4;

    invoke-direct {v5, p0, v1, p1}, Lcom/google/android/youtube/core/async/UserAuthorizer$4;-><init>(Lcom/google/android/youtube/core/async/UserAuthorizer;[Landroid/accounts/Account;Landroid/app/Activity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 390
    return-object v2
.end method

.method protected final declared-synchronized onSignOnFlowCancelled(Landroid/app/Activity;)V
    .registers 3
    .parameter "activity"

    .prologue
    .line 330
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->previousAccount:Landroid/accounts/Account;

    if-eqz v0, :cond_f

    .line 332
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->previousAccount:Landroid/accounts/Account;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/youtube/core/async/UserAuthorizer;->fetchAuthToken(Landroid/accounts/Account;Landroid/app/Activity;)V

    .line 333
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->previousAccount:Landroid/accounts/Account;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_13

    .line 337
    :goto_d
    monitor-exit p0

    return-void

    .line 335
    :cond_f
    :try_start_f
    invoke-virtual {p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->notifyNotAuthenticated()V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_13

    goto :goto_d

    .line 330
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized peek(Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;)V
    .registers 9
    .parameter "callback"

    .prologue
    .line 202
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    if-eqz v0, :cond_c

    .line 203
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-interface {p1, v0}, Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;->onAuthenticated(Lcom/google/android/youtube/core/model/UserAuth;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_27

    .line 229
    :goto_a
    monitor-exit p0

    return-void

    .line 205
    :cond_c
    :try_start_c
    invoke-direct {p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->getSavedUserAccount()Ljava/lang/String;

    move-result-object v6

    .line 206
    .local v6, accountName:Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/google/android/youtube/core/async/UserAuthorizer;->getAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v1

    .line 207
    .local v1, account:Landroid/accounts/Account;
    if-eqz v1, :cond_2a

    .line 208
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->accountManager:Landroid/accounts/AccountManager;

    iget-object v2, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->authMethod:Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;

    iget-object v2, v2, Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;->authTokenType:Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Lcom/google/android/youtube/core/async/UserAuthorizer$1;

    invoke-direct {v4, p0, p1}, Lcom/google/android/youtube/core/async/UserAuthorizer$1;-><init>(Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;)V

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_27

    goto :goto_a

    .line 202
    .end local v1           #account:Landroid/accounts/Account;
    .end local v6           #accountName:Ljava/lang/String;
    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0

    .line 226
    .restart local v1       #account:Landroid/accounts/Account;
    .restart local v6       #accountName:Ljava/lang/String;
    :cond_2a
    :try_start_2a
    invoke-interface {p1}, Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;->onNotAuthenticated()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_27

    goto :goto_a
.end method

.method public declared-synchronized peek(Ljava/lang/String;Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;)V
    .registers 5
    .parameter "account"
    .parameter "callback"

    .prologue
    .line 232
    monitor-enter p0

    if-nez p1, :cond_8

    .line 233
    :try_start_3
    invoke-virtual {p0, p2}, Lcom/google/android/youtube/core/async/UserAuthorizer;->peek(Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_1c

    .line 243
    :goto_6
    monitor-exit p0

    return-void

    .line 234
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/UserAuth;->account:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 235
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-interface {p2, v0}, Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;->onAuthenticated(Lcom/google/android/youtube/core/model/UserAuth;)V
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_1c

    goto :goto_6

    .line 232
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 237
    :cond_1f
    :try_start_1f
    invoke-direct {p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->getSavedUserAccount()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 238
    invoke-virtual {p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->signOut()V

    .line 239
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "user_account"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 241
    :cond_3b
    invoke-virtual {p0, p2}, Lcom/google/android/youtube/core/async/UserAuthorizer;->peek(Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;)V
    :try_end_3e
    .catchall {:try_start_1f .. :try_end_3e} :catchall_1c

    goto :goto_6
.end method

.method public declared-synchronized refresh(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "expiredAuthToken"

    .prologue
    .line 537
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->accountManager:Landroid/accounts/AccountManager;

    const-string v4, "com.google"

    invoke-virtual {v3, v4, p1}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    iget-object v3, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    if-eqz v3, :cond_36

    iget-object v3, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v3, v3, Lcom/google/android/youtube/core/model/UserAuth;->account:Ljava/lang/String;

    :goto_10
    invoke-virtual {p0, v3}, Lcom/google/android/youtube/core/async/UserAuthorizer;->getAccount(Ljava/lang/String;)Landroid/accounts/Account;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_4a

    move-result-object v0

    .line 540
    .local v0, account:Landroid/accounts/Account;
    if-eqz v0, :cond_41

    .line 542
    :try_start_16
    iget-object v3, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->accountManager:Landroid/accounts/AccountManager;

    iget-object v4, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->authMethod:Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;

    iget-object v4, v4, Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;->authTokenType:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v4, v5}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 544
    .local v1, authToken:Ljava/lang/String;
    if-eqz v1, :cond_41

    .line 547
    iget-object v3, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    if-eqz v3, :cond_34

    .line 548
    new-instance v3, Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v4, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v4, v4, Lcom/google/android/youtube/core/model/UserAuth;->account:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->authMethod:Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;

    invoke-direct {v3, v4, v5, v1}, Lcom/google/android/youtube/core/model/UserAuth;-><init>(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;
    :try_end_34
    .catchall {:try_start_16 .. :try_end_34} :catchall_4a
    .catch Landroid/accounts/OperationCanceledException; {:try_start_16 .. :try_end_34} :catch_3b
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_34} :catch_43
    .catch Landroid/accounts/AuthenticatorException; {:try_start_16 .. :try_end_34} :catch_4d

    .line 560
    .end local v1           #authToken:Ljava/lang/String;
    :cond_34
    :goto_34
    monitor-exit p0

    return-object v1

    .line 539
    .end local v0           #account:Landroid/accounts/Account;
    :cond_36
    :try_start_36
    invoke-direct {p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->getSavedUserAccount()Ljava/lang/String;

    move-result-object v3

    goto :goto_10

    .line 552
    .restart local v0       #account:Landroid/accounts/Account;
    :catch_3b
    move-exception v2

    .line 553
    .local v2, e:Landroid/accounts/OperationCanceledException;
    const-string v3, "authToken refresh canceled"

    invoke-static {v3}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .end local v2           #e:Landroid/accounts/OperationCanceledException;
    :cond_41
    :goto_41
    move-object v1, p1

    .line 560
    goto :goto_34

    .line 554
    :catch_43
    move-exception v2

    .line 555
    .local v2, e:Ljava/io/IOException;
    const-string v3, "authToken refresh IOException"

    invoke-static {v3}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;)V
    :try_end_49
    .catchall {:try_start_36 .. :try_end_49} :catchall_4a

    goto :goto_41

    .line 537
    .end local v0           #account:Landroid/accounts/Account;
    .end local v2           #e:Ljava/io/IOException;
    :catchall_4a
    move-exception v3

    monitor-exit p0

    throw v3

    .line 556
    .restart local v0       #account:Landroid/accounts/Account;
    :catch_4d
    move-exception v2

    .line 557
    .local v2, e:Landroid/accounts/AuthenticatorException;
    :try_start_4e
    const-string v3, "authToken refresh AuthenticatorException"

    invoke-static {v3}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;)V
    :try_end_53
    .catchall {:try_start_4e .. :try_end_53} :catchall_4a

    goto :goto_41
.end method

.method public declared-synchronized signOut()V
    .registers 5

    .prologue
    .line 258
    monitor-enter p0

    const/4 v2, 0x0

    :try_start_2
    iput-object v2, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    .line 259
    iget-object v2, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "user_account"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 260
    iget-object v2, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->onSignedInChangedListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/async/UserAuthorizer$OnSignedInChangedListener;

    .line 261
    .local v1, listener:Lcom/google/android/youtube/core/async/UserAuthorizer$OnSignedInChangedListener;
    invoke-interface {v1}, Lcom/google/android/youtube/core/async/UserAuthorizer$OnSignedInChangedListener;->onSignOut()V
    :try_end_28
    .catchall {:try_start_2 .. :try_end_28} :catchall_29

    goto :goto_19

    .line 258
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/google/android/youtube/core/async/UserAuthorizer$OnSignedInChangedListener;
    :catchall_29
    move-exception v2

    monitor-exit p0

    throw v2

    .line 263
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_2c
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized switchAccount(Landroid/app/Activity;Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;)V
    .registers 5
    .parameter "activity"
    .parameter "callback"

    .prologue
    .line 183
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    if-nez v0, :cond_b

    .line 184
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/youtube/core/async/UserAuthorizer;->authenticate(Landroid/app/Activity;ZLcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_2c

    .line 193
    :cond_9
    :goto_9
    monitor-exit p0

    return-void

    .line 186
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->callbacks:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->callbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 188
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/UserAuth;->account:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->getAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->previousAccount:Landroid/accounts/Account;

    .line 189
    invoke-virtual {p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->signOut()V

    .line 190
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->previousAccount:Landroid/accounts/Account;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->launchSignOnFlow(Landroid/app/Activity;Landroid/accounts/Account;)V
    :try_end_2b
    .catchall {:try_start_b .. :try_end_2b} :catchall_2c

    goto :goto_9

    .line 183
    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.class public Lcom/google/android/youtube/core/async/UserAuthorizer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;

.field private final b:Landroid/accounts/AccountManager;

.field private final c:Landroid/content/SharedPreferences;

.field private final d:Ljava/util/Set;

.field private e:Lcom/google/android/youtube/core/client/ad;

.field private f:Landroid/accounts/Account;

.field private g:Lcom/google/android/youtube/core/model/UserAuth;

.field private final h:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/accounts/AccountManager;Landroid/content/SharedPreferences;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 97
    sget-object v0, Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;->CLIENTLOGIN:Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/youtube/core/async/UserAuthorizer;-><init>(Landroid/accounts/AccountManager;Landroid/content/SharedPreferences;Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/accounts/AccountManager;Landroid/content/SharedPreferences;Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->b:Landroid/accounts/AccountManager;

    .line 103
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->c:Landroid/content/SharedPreferences;

    .line 104
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->h:Ljava/util/List;

    .line 105
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->d:Ljava/util/Set;

    .line 106
    iput-object p3, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->a:Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;

    .line 107
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/model/UserAuth;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->g:Lcom/google/android/youtube/core/model/UserAuth;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/youtube/core/async/UserAuthorizer;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized a(Landroid/app/Activity;ZLcom/google/android/youtube/core/async/av;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 152
    monitor-enter p0

    :try_start_1
    const-string v0, "activity cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string v0, "callback cannot be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->g:Lcom/google/android/youtube/core/model/UserAuth;

    if-eqz v0, :cond_3f

    .line 155
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->g:Lcom/google/android/youtube/core/model/UserAuth;

    const-string v1, "callbackOrReRequestMyProfile called without userAuth"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->e:Lcom/google/android/youtube/core/client/ad;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->g:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/UserAuth;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->e:Lcom/google/android/youtube/core/client/ad;

    iget-object v1, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->g:Lcom/google/android/youtube/core/model/UserAuth;

    new-instance v2, Lcom/google/android/youtube/core/async/ay;

    invoke-direct {v2, p0, p3}, Lcom/google/android/youtube/core/async/ay;-><init>(Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/async/av;)V

    invoke-static {p1, v2}, Lcom/google/android/youtube/core/async/a;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/g;)Lcom/google/android/youtube/core/async/a;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/client/ad;->a(Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/core/async/g;)V
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_3c

    .line 176
    :cond_34
    :goto_34
    monitor-exit p0

    return-void

    .line 155
    :cond_36
    :try_start_36
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->g:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-interface {p3, v0}, Lcom/google/android/youtube/core/async/av;->a(Lcom/google/android/youtube/core/model/UserAuth;)V
    :try_end_3b
    .catchall {:try_start_36 .. :try_end_3b} :catchall_3c

    goto :goto_34

    .line 152
    :catchall_3c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 157
    :cond_3f
    :try_start_3f
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->h:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_34

    .line 159
    invoke-direct {p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->f()Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    .line 161
    if-eqz v0, :cond_5b

    .line 169
    invoke-virtual {p0, v0, p1}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Landroid/accounts/Account;Landroid/app/Activity;)V

    goto :goto_34

    .line 171
    :cond_5b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->f:Landroid/accounts/Account;

    .line 172
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Landroid/app/Activity;Landroid/accounts/Account;)V
    :try_end_62
    .catchall {:try_start_3f .. :try_end_62} :catchall_3c

    goto :goto_34
.end method

.method static synthetic a(Lcom/google/android/youtube/core/async/UserAuthorizer;Landroid/app/Activity;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 60
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->c()V

    :goto_a
    return-void

    :cond_b
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->b:Landroid/accounts/AccountManager;

    const-string v1, "com.google"

    new-instance v6, Lcom/google/android/youtube/core/async/as;

    invoke-direct {v6, p0, p1}, Lcom/google/android/youtube/core/async/as;-><init>(Lcom/google/android/youtube/core/async/UserAuthorizer;Landroid/app/Activity;)V

    move-object v3, v2

    move-object v4, v2

    move-object v5, p1

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    goto :goto_a
.end method

.method static synthetic b(Lcom/google/android/youtube/core/async/UserAuthorizer;)V
    .registers 1
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->h()V

    return-void
.end method

.method static synthetic c(Lcom/google/android/youtube/core/async/UserAuthorizer;)Lcom/google/android/youtube/core/client/ad;
    .registers 2
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->e:Lcom/google/android/youtube/core/client/ad;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/youtube/core/async/UserAuthorizer;)Lcom/google/android/youtube/core/model/UserAuth;
    .registers 2
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->g:Lcom/google/android/youtube/core/model/UserAuth;

    return-object v0
.end method

.method private declared-synchronized e()V
    .registers 2

    .prologue
    .line 293
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->g:Lcom/google/android/youtube/core/model/UserAuth;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->g:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/UserAuth;->a:Ljava/lang/String;

    :goto_9
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    .line 295
    if-nez v0, :cond_12

    .line 297
    invoke-virtual {p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a()V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_19

    .line 299
    :cond_12
    monitor-exit p0

    return-void

    .line 293
    :cond_14
    :try_start_14
    invoke-direct {p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->f()Ljava/lang/String;
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_19

    move-result-object v0

    goto :goto_9

    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic e(Lcom/google/android/youtube/core/async/UserAuthorizer;)V
    .registers 1
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->e()V

    return-void
.end method

.method private declared-synchronized f()Ljava/lang/String;
    .registers 4

    .prologue
    .line 302
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->c:Landroid/content/SharedPreferences;

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

.method private declared-synchronized g()Ljava/lang/String;
    .registers 4

    .prologue
    .line 306
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->c:Landroid/content/SharedPreferences;

    const-string v1, "username"

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

.method private declared-synchronized h()V
    .registers 3

    .prologue
    .line 310
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "user_account"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "username"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 311
    monitor-exit p0

    return-void

    .line 310
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)Landroid/accounts/Account;
    .registers 7
    .parameter

    .prologue
    .line 502
    if-eqz p1, :cond_1a

    .line 503
    invoke-virtual {p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->d()[Landroid/accounts/Account;

    move-result-object v2

    .line 504
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_9
    if-ge v1, v3, :cond_1a

    aget-object v0, v2, v1

    .line 505
    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 510
    :goto_15
    return-object v0

    .line 504
    :cond_16
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    .line 510
    :cond_1a
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public final a(Lcom/google/android/youtube/core/async/ad;)Lcom/google/android/youtube/core/async/ad;
    .registers 3
    .parameter

    .prologue
    .line 560
    new-instance v0, Lcom/google/android/youtube/core/async/az;

    invoke-direct {v0, p0, p1}, Lcom/google/android/youtube/core/async/az;-><init>(Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/async/ad;)V

    return-object v0
.end method

.method public final declared-synchronized a()V
    .registers 3

    .prologue
    .line 285
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->g:Lcom/google/android/youtube/core/model/UserAuth;

    .line 286
    invoke-direct {p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->h()V

    .line 287
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/aw;

    .line 288
    invoke-interface {v0}, Lcom/google/android/youtube/core/async/aw;->t()V
    :try_end_1c
    .catchall {:try_start_2 .. :try_end_1c} :catchall_1d

    goto :goto_d

    .line 285
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 290
    :cond_20
    monitor-exit p0

    return-void
.end method

.method protected final a(Landroid/accounts/Account;Landroid/app/Activity;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fetching authToken for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 488
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->b:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->a:Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;

    iget-object v2, v1, Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;->authTokenType:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->e:Lcom/google/android/youtube/core/client/ad;

    if-nez v1, :cond_2e

    new-instance v5, Lcom/google/android/youtube/core/async/at;

    invoke-direct {v5, p0, p2}, Lcom/google/android/youtube/core/async/at;-><init>(Lcom/google/android/youtube/core/async/UserAuthorizer;Landroid/app/Activity;)V

    :goto_27
    move-object v1, p1

    move-object v4, p2

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 494
    return-void

    .line 488
    :cond_2e
    new-instance v5, Lcom/google/android/youtube/core/async/bb;

    invoke-direct {v5, p0, p2}, Lcom/google/android/youtube/core/async/bb;-><init>(Lcom/google/android/youtube/core/async/UserAuthorizer;Landroid/app/Activity;)V

    goto :goto_27
.end method

.method protected final declared-synchronized a(Landroid/app/Activity;)V
    .registers 3
    .parameter

    .prologue
    .line 370
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->f:Landroid/accounts/Account;

    if-eqz v0, :cond_f

    .line 372
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->f:Landroid/accounts/Account;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Landroid/accounts/Account;Landroid/app/Activity;)V

    .line 373
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->f:Landroid/accounts/Account;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_13

    .line 377
    :goto_d
    monitor-exit p0

    return-void

    .line 375
    :cond_f
    :try_start_f
    invoke-virtual {p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->c()V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_13

    goto :goto_d

    .line 370
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized a(Landroid/app/Activity;Landroid/accounts/Account;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 366
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {p1, v0}, Landroid/app/Activity;->showDialog(I)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 367
    monitor-exit p0

    return-void

    .line 366
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/av;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 195
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Landroid/app/Activity;ZLcom/google/android/youtube/core/async/av;)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 196
    monitor-exit p0

    return-void

    .line 195
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized a(Landroid/app/Activity;Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 324
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->g:Lcom/google/android/youtube/core/model/UserAuth;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->g:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/UserAuth;->a:Ljava/lang/String;

    iget-object v1, p2, Lcom/google/android/youtube/core/model/UserAuth;->a:Ljava/lang/String;

    if-eq v0, v1, :cond_48

    :cond_d
    const/4 v0, 0x1

    .line 326
    :goto_e
    iput-object p2, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->g:Lcom/google/android/youtube/core/model/UserAuth;

    .line 327
    iget-object v1, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->c:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "user_account"

    iget-object v3, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->g:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v3, v3, Lcom/google/android/youtube/core/model/UserAuth;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "username"

    iget-object v3, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->g:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v3, v3, Lcom/google/android/youtube/core/model/UserAuth;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 332
    if-eqz v0, :cond_4a

    .line 333
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_35
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/aw;

    .line 334
    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/aw;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/model/UserAuth;)V
    :try_end_44
    .catchall {:try_start_1 .. :try_end_44} :catchall_45

    goto :goto_35

    .line 324
    :catchall_45
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_48
    const/4 v0, 0x0

    goto :goto_e

    .line 338
    :cond_4a
    :try_start_4a
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->h:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 339
    iget-object v1, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 340
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/av;

    .line 341
    iget-object v2, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->g:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-interface {v0, v2}, Lcom/google/android/youtube/core/async/av;->a(Lcom/google/android/youtube/core/model/UserAuth;)V
    :try_end_6b
    .catchall {:try_start_4a .. :try_end_6b} :catchall_45

    goto :goto_5a

    .line 343
    :cond_6c
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized a(Lcom/google/android/youtube/core/async/av;)V
    .registers 8
    .parameter

    .prologue
    .line 239
    monitor-enter p0

    :try_start_1
    const-string v0, "callback cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->g:Lcom/google/android/youtube/core/model/UserAuth;

    if-eqz v0, :cond_11

    .line 241
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->g:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-interface {p1, v0}, Lcom/google/android/youtube/core/async/av;->a(Lcom/google/android/youtube/core/model/UserAuth;)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_2c

    .line 255
    :goto_f
    monitor-exit p0

    return-void

    .line 243
    :cond_11
    :try_start_11
    invoke-direct {p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->f()Ljava/lang/String;

    move-result-object v0

    .line 244
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v1

    .line 245
    if-eqz v1, :cond_2f

    .line 246
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->b:Landroid/accounts/AccountManager;

    iget-object v2, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->a:Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;

    iget-object v2, v2, Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;->authTokenType:Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Lcom/google/android/youtube/core/async/ax;

    invoke-direct {v4, p0, p1}, Lcom/google/android/youtube/core/async/ax;-><init>(Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/async/av;)V

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    :try_end_2b
    .catchall {:try_start_11 .. :try_end_2b} :catchall_2c

    goto :goto_f

    .line 239
    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 251
    :cond_2f
    :try_start_2f
    invoke-direct {p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->h()V

    .line 252
    invoke-interface {p1}, Lcom/google/android/youtube/core/async/av;->d_()V
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_2c

    goto :goto_f
.end method

.method public final declared-synchronized a(Lcom/google/android/youtube/core/async/aw;)V
    .registers 3
    .parameter

    .prologue
    .line 273
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 274
    monitor-exit p0

    return-void

    .line 273
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/google/android/youtube/core/client/ad;)V
    .registers 3
    .parameter

    .prologue
    .line 135
    const-string v0, "gdataClient cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/client/ad;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->e:Lcom/google/android/youtube/core/client/ad;

    .line 137
    return-void
.end method

.method final declared-synchronized a(Ljava/lang/Exception;)V
    .registers 4
    .parameter

    .prologue
    .line 346
    monitor-enter p0

    :try_start_1
    const-string v0, "authentication error"

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 347
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->g:Lcom/google/android/youtube/core/model/UserAuth;

    .line 348
    invoke-direct {p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->h()V

    .line 349
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->h:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 350
    iget-object v1, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 351
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/av;

    .line 352
    invoke-interface {v0, p1}, Lcom/google/android/youtube/core/async/av;->a(Ljava/lang/Exception;)V
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2c

    goto :goto_1c

    .line 346
    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 354
    :cond_2f
    monitor-exit p0

    return-void
.end method

.method public a(Landroid/app/Activity;IILandroid/content/Intent;)Z
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 436
    const/4 v0, 0x0

    return v0
.end method

.method public final b(Landroid/app/Activity;)Landroid/app/Dialog;
    .registers 6
    .parameter

    .prologue
    .line 385
    invoke-virtual {p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->d()[Landroid/accounts/Account;

    move-result-object v1

    .line 387
    array-length v0, v1

    add-int/lit8 v0, v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    .line 388
    const/4 v0, 0x0

    :goto_a
    array-length v3, v1

    if-ge v0, v3, :cond_16

    .line 389
    aget-object v3, v1, v0

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v3, v2, v0

    .line 388
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 391
    :cond_16
    array-length v0, v1

    const v3, 0x7f0a002e

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 393
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a002d

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/google/android/youtube/core/async/aq;

    invoke-direct {v2, p0, p1}, Lcom/google/android/youtube/core/async/aq;-><init>(Lcom/google/android/youtube/core/async/UserAuthorizer;Landroid/app/Activity;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/google/android/youtube/core/async/ap;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/async/ap;-><init>(Lcom/google/android/youtube/core/async/UserAuthorizer;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 419
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    new-instance v3, Lcom/google/android/youtube/core/async/ar;

    invoke-direct {v3, p0, v1, p1}, Lcom/google/android/youtube/core/async/ar;-><init>(Lcom/google/android/youtube/core/async/UserAuthorizer;[Landroid/accounts/Account;Landroid/app/Activity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 430
    return-object v0
.end method

.method public final declared-synchronized b(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter

    .prologue
    .line 522
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->b:Landroid/accounts/AccountManager;

    const-string v1, "com.google"

    invoke-virtual {v0, v1, p1}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->g:Lcom/google/android/youtube/core/model/UserAuth;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->g:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/UserAuth;->a:Ljava/lang/String;

    :goto_10
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Ljava/lang/String;)Landroid/accounts/Account;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_45

    move-result-object v0

    .line 525
    if-eqz v0, :cond_39

    .line 527
    :try_start_16
    iget-object v1, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->b:Landroid/accounts/AccountManager;

    iget-object v2, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->a:Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;

    iget-object v2, v2, Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;->authTokenType:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 529
    if-eqz v0, :cond_39

    .line 532
    iget-object v1, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->g:Lcom/google/android/youtube/core/model/UserAuth;

    if-eqz v1, :cond_38

    .line 533
    new-instance v1, Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v2, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->g:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v2, v2, Lcom/google/android/youtube/core/model/UserAuth;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->g:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v3, v3, Lcom/google/android/youtube/core/model/UserAuth;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->a:Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/google/android/youtube/core/model/UserAuth;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->g:Lcom/google/android/youtube/core/model/UserAuth;
    :try_end_38
    .catchall {:try_start_16 .. :try_end_38} :catchall_45
    .catch Landroid/accounts/OperationCanceledException; {:try_start_16 .. :try_end_38} :catch_40
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_38} :catch_48
    .catch Landroid/accounts/AuthenticatorException; {:try_start_16 .. :try_end_38} :catch_4f

    :cond_38
    move-object p1, v0

    .line 545
    :cond_39
    :goto_39
    monitor-exit p0

    return-object p1

    .line 524
    :cond_3b
    :try_start_3b
    invoke-direct {p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 538
    :catch_40
    move-exception v0

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V
    :try_end_44
    .catchall {:try_start_3b .. :try_end_44} :catchall_45

    goto :goto_39

    .line 522
    :catchall_45
    move-exception v0

    monitor-exit p0

    throw v0

    .line 540
    :catch_48
    move-exception v0

    :try_start_49
    const-string v0, "authToken refresh IOException"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;)V

    goto :goto_39

    .line 542
    :catch_4f
    move-exception v0

    const-string v0, "authToken refresh AuthenticatorException"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;)V
    :try_end_55
    .catchall {:try_start_49 .. :try_end_55} :catchall_45

    goto :goto_39
.end method

.method public final declared-synchronized b()Z
    .registers 3

    .prologue
    .line 317
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->g:Lcom/google/android/youtube/core/model/UserAuth;

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->c:Landroid/content/SharedPreferences;

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

.method protected final declared-synchronized c()V
    .registers 3

    .prologue
    .line 357
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->h()V

    .line 358
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->h:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 359
    iget-object v1, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 360
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/av;

    .line 361
    invoke-interface {v0}, Lcom/google/android/youtube/core/async/av;->d_()V
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_24

    goto :goto_14

    .line 357
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0

    .line 363
    :cond_27
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized d()[Landroid/accounts/Account;
    .registers 3

    .prologue
    .line 380
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 381
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->b:Landroid/accounts/AccountManager;

    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_e

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 380
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

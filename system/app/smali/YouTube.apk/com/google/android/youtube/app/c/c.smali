.class public final Lcom/google/android/youtube/app/c/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/app/c/g;
.implements Lcom/google/android/youtube/core/async/bd;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroid/content/pm/PackageManager;

.field private final c:Lcom/google/common/base/am;

.field private final d:Lcom/google/common/base/am;

.field private final e:Landroid/accounts/AccountManager;

.field private final f:Ljava/util/concurrent/Executor;

.field private final g:Ljava/util/concurrent/Executor;

.field private h:Lcom/google/android/youtube/app/c/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;Landroid/accounts/AccountManager;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/google/android/youtube/core/async/UserAuthorizer;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const-string v0, "packageName cannot be empty"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/c/c;->a:Ljava/lang/String;

    .line 68
    const-string v0, "packageManager cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManager;

    iput-object v0, p0, Lcom/google/android/youtube/app/c/c;->b:Landroid/content/pm/PackageManager;

    .line 70
    const-string v0, "accountManager cannot be null"

    invoke-static {p5, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    iput-object v0, p0, Lcom/google/android/youtube/app/c/c;->e:Landroid/accounts/AccountManager;

    .line 72
    const-string v0, "uiThreadExecutor cannot be null"

    invoke-static {p6, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/google/android/youtube/app/c/c;->f:Ljava/util/concurrent/Executor;

    .line 74
    const-string v0, "backgroundExecutor cannot be null"

    invoke-static {p7, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/google/android/youtube/app/c/c;->g:Ljava/util/concurrent/Executor;

    .line 76
    const-string v0, "plusOneDeveloperKey cannot be empty"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 77
    new-instance v0, Lcom/google/android/youtube/app/c/d;

    invoke-direct {v0, p0, p3}, Lcom/google/android/youtube/app/c/d;-><init>(Lcom/google/android/youtube/app/c/c;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/c/c;->c:Lcom/google/common/base/am;

    .line 82
    const-string v0, "plusOneClientId cannot be empty"

    invoke-static {p4, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 83
    new-instance v0, Lcom/google/android/youtube/app/c/e;

    invoke-direct {v0, p0, p4}, Lcom/google/android/youtube/app/c/e;-><init>(Lcom/google/android/youtube/app/c/c;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/c/c;->d:Lcom/google/common/base/am;

    .line 88
    const-string v0, "userAuthorizer cannot be null"

    invoke-static {p8, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-virtual {p8, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Lcom/google/android/youtube/core/async/bd;)V

    .line 91
    new-instance v0, Lcom/google/android/youtube/app/c/f;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/app/c/f;-><init>(Lcom/google/android/youtube/app/c/c;)V

    invoke-virtual {p8, v0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Lcom/google/android/youtube/core/async/bc;)V

    .line 102
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/c/c;)V
    .registers 1
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/android/youtube/app/c/c;->c()V

    return-void
.end method

.method private c()V
    .registers 2

    .prologue
    .line 105
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/app/c/c;->h:Lcom/google/android/youtube/app/c/a;

    .line 107
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/plus1/w;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/youtube/app/c/c;->h:Lcom/google/android/youtube/app/c/a;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/youtube/app/c/c;->h:Lcom/google/android/youtube/app/c/a;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/c/a;->a()Lcom/google/android/plus1/w;

    move-result-object v0

    goto :goto_5
.end method

.method public final declared-synchronized a(Landroid/app/Activity;Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 162
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 163
    iget-object v0, p2, Lcom/google/android/youtube/core/model/UserAuth;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/c/c;->a(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/google/android/youtube/app/c/c;->h:Lcom/google/android/youtube/app/c/a;

    if-eqz v0, :cond_13

    .line 165
    iget-object v0, p0, Lcom/google/android/youtube/app/c/c;->h:Lcom/google/android/youtube/app/c/a;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/youtube/app/c/a;->a(Landroid/app/Activity;Lcom/google/android/youtube/plus1/b;)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 167
    :cond_13
    monitor-exit p0

    return-void

    .line 162
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized a(Ljava/lang/String;)V
    .registers 10
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 114
    monitor-enter p0

    .line 115
    if-eqz p1, :cond_29

    .line 116
    :try_start_4
    iget-object v0, p0, Lcom/google/android/youtube/app/c/c;->e:Landroid/accounts/AccountManager;

    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_f
    if-ge v1, v4, :cond_1c

    aget-object v0, v3, v1

    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    move-object v2, v0

    .line 117
    :cond_1c
    if-nez v2, :cond_29

    .line 118
    const-string v0, "Account is not / no longer found in AccountManager."

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_53

    .line 129
    :goto_23
    monitor-exit p0

    return-void

    .line 116
    :cond_25
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f

    .line 122
    :cond_29
    :try_start_29
    new-instance v0, Lcom/google/android/plus1/ApiaryPlusOneApi;

    iget-object v1, p0, Lcom/google/android/youtube/app/c/c;->e:Landroid/accounts/AccountManager;

    iget-object v3, p0, Lcom/google/android/youtube/app/c/c;->c:Lcom/google/common/base/am;

    iget-object v4, p0, Lcom/google/android/youtube/app/c/c;->b:Landroid/content/pm/PackageManager;

    iget-object v5, p0, Lcom/google/android/youtube/app/c/c;->a:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/youtube/app/c/c;->d:Lcom/google/common/base/am;

    new-instance v7, Lcom/google/api/client/json/a/a;

    invoke-direct {v7}, Lcom/google/api/client/json/a/a;-><init>()V

    invoke-direct/range {v0 .. v7}, Lcom/google/android/plus1/ApiaryPlusOneApi;-><init>(Landroid/accounts/AccountManager;Landroid/accounts/Account;Lcom/google/common/base/am;Landroid/content/pm/PackageManager;Ljava/lang/String;Lcom/google/common/base/am;Lcom/google/api/client/json/c;)V

    .line 125
    new-instance v1, Lcom/google/android/plus1/am;

    invoke-direct {v1}, Lcom/google/android/plus1/am;-><init>()V

    .line 126
    new-instance v2, Lcom/google/android/plus1/w;

    iget-object v3, p0, Lcom/google/android/youtube/app/c/c;->f:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/google/android/youtube/app/c/c;->g:Ljava/util/concurrent/Executor;

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/google/android/plus1/w;-><init>(Lcom/google/android/plus1/an;Lcom/google/android/plus1/as;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    .line 128
    new-instance v0, Lcom/google/android/youtube/app/c/a;

    invoke-direct {v0, v2}, Lcom/google/android/youtube/app/c/a;-><init>(Lcom/google/android/plus1/w;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/c/c;->h:Lcom/google/android/youtube/app/c/a;
    :try_end_52
    .catchall {:try_start_29 .. :try_end_52} :catchall_53

    goto :goto_23

    .line 114
    :catchall_53
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/util/Set;Lcom/google/android/plus1/ac;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/android/youtube/app/c/c;->h:Lcom/google/android/youtube/app/c/a;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/android/youtube/app/c/c;->h:Lcom/google/android/youtube/app/c/a;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/c/a;->b()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 157
    iget-object v0, p0, Lcom/google/android/youtube/app/c/c;->h:Lcom/google/android/youtube/app/c/a;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/c/a;->a()Lcom/google/android/plus1/w;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/plus1/w;->a(Ljava/util/Set;Lcom/google/android/plus1/ac;)V

    .line 159
    :cond_15
    return-void
.end method

.method public final b()Z
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/android/youtube/app/c/c;->h:Lcom/google/android/youtube/app/c/a;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/youtube/app/c/c;->h:Lcom/google/android/youtube/app/c/a;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/c/a;->b()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final z()V
    .registers 1

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/google/android/youtube/app/c/c;->c()V

    .line 171
    return-void
.end method

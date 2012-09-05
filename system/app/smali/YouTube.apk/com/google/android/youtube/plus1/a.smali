.class public Lcom/google/android/youtube/plus1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/plus1/f;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroid/content/pm/PackageManager;

.field private final c:Lcom/google/common/base/w;

.field private final d:Lcom/google/common/base/w;

.field private final e:Landroid/accounts/AccountManager;

.field private final f:Ljava/util/concurrent/Executor;

.field private final g:Ljava/util/concurrent/Executor;

.field private final h:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;Landroid/accounts/AccountManager;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-string v0, "packageName cannot be empty"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/plus1/a;->a:Ljava/lang/String;

    .line 50
    const-string v0, "packageManager cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManager;

    iput-object v0, p0, Lcom/google/android/youtube/plus1/a;->b:Landroid/content/pm/PackageManager;

    .line 52
    const-string v0, "accountManager cannot be null"

    invoke-static {p5, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    iput-object v0, p0, Lcom/google/android/youtube/plus1/a;->e:Landroid/accounts/AccountManager;

    .line 54
    const-string v0, "uiThreadExecutor cannot be null"

    invoke-static {p6, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/google/android/youtube/plus1/a;->f:Ljava/util/concurrent/Executor;

    .line 56
    const-string v0, "backgroundExecutor cannot be null"

    invoke-static {p7, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/google/android/youtube/plus1/a;->g:Ljava/util/concurrent/Executor;

    .line 58
    const-string v0, "plusOneDeveloperKey cannot be empty"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 59
    new-instance v0, Lcom/google/android/youtube/plus1/b;

    invoke-direct {v0, p0, p3}, Lcom/google/android/youtube/plus1/b;-><init>(Lcom/google/android/youtube/plus1/a;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/youtube/plus1/a;->c:Lcom/google/common/base/w;

    .line 64
    const-string v0, "plusOneClientId cannot be empty"

    invoke-static {p4, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 65
    new-instance v0, Lcom/google/android/youtube/plus1/c;

    invoke-direct {v0, p0, p4}, Lcom/google/android/youtube/plus1/c;-><init>(Lcom/google/android/youtube/plus1/a;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/youtube/plus1/a;->d:Lcom/google/common/base/w;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/plus1/a;->h:Ljava/util/Map;

    .line 71
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/google/android/plus1/w;
    .registers 3
    .parameter

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/plus1/a;->b(Ljava/lang/String;)Lcom/google/android/youtube/plus1/d;

    move-result-object v0

    .line 75
    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-static {v0}, Lcom/google/android/youtube/plus1/d;->a(Lcom/google/android/youtube/plus1/d;)Lcom/google/android/plus1/w;

    move-result-object v0

    goto :goto_7
.end method

.method protected final declared-synchronized b(Ljava/lang/String;)Lcom/google/android/youtube/plus1/d;
    .registers 10
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v0, 0x0

    .line 84
    monitor-enter p0

    .line 85
    if-eqz p1, :cond_2e

    .line 86
    :try_start_5
    iget-object v1, p0, Lcom/google/android/youtube/plus1/a;->e:Landroid/accounts/AccountManager;

    const-string v2, "com.google"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    array-length v4, v3

    move v1, v7

    :goto_f
    if-ge v1, v4, :cond_2c

    aget-object v2, v3, v1

    iget-object v5, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 87
    :goto_1b
    if-nez v2, :cond_2f

    .line 88
    const-string v1, "Account is not / no longer found in AccountManager."

    invoke-static {v1}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lcom/google/android/youtube/plus1/a;->h:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_64

    .line 104
    :cond_27
    :goto_27
    monitor-exit p0

    return-object v0

    .line 86
    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_2c
    move-object v2, v0

    goto :goto_1b

    :cond_2e
    move-object v2, v0

    .line 93
    :cond_2f
    :try_start_2f
    iget-object v0, p0, Lcom/google/android/youtube/plus1/a;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/plus1/d;

    .line 94
    if-nez v0, :cond_27

    .line 95
    new-instance v0, Lcom/google/android/plus1/ApiaryPlusOneApi;

    iget-object v1, p0, Lcom/google/android/youtube/plus1/a;->e:Landroid/accounts/AccountManager;

    iget-object v3, p0, Lcom/google/android/youtube/plus1/a;->c:Lcom/google/common/base/w;

    iget-object v4, p0, Lcom/google/android/youtube/plus1/a;->b:Landroid/content/pm/PackageManager;

    iget-object v5, p0, Lcom/google/android/youtube/plus1/a;->a:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/youtube/plus1/a;->d:Lcom/google/common/base/w;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/plus1/ApiaryPlusOneApi;-><init>(Landroid/accounts/AccountManager;Landroid/accounts/Account;Lcom/google/common/base/w;Landroid/content/pm/PackageManager;Ljava/lang/String;Lcom/google/common/base/w;)V

    .line 98
    new-instance v1, Lcom/google/android/plus1/al;

    invoke-direct {v1}, Lcom/google/android/plus1/al;-><init>()V

    .line 99
    new-instance v2, Lcom/google/android/plus1/w;

    iget-object v3, p0, Lcom/google/android/youtube/plus1/a;->f:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/google/android/youtube/plus1/a;->g:Ljava/util/concurrent/Executor;

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/google/android/plus1/w;-><init>(Lcom/google/android/plus1/am;Lcom/google/android/plus1/ar;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    .line 101
    new-instance v0, Lcom/google/android/youtube/plus1/d;

    if-nez p1, :cond_67

    const/4 v1, 0x1

    :goto_5b
    invoke-direct {v0, v2, v1}, Lcom/google/android/youtube/plus1/d;-><init>(Lcom/google/android/plus1/w;Z)V

    .line 102
    iget-object v1, p0, Lcom/google/android/youtube/plus1/a;->h:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_63
    .catchall {:try_start_2f .. :try_end_63} :catchall_64

    goto :goto_27

    .line 84
    :catchall_64
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_67
    move v1, v7

    .line 101
    goto :goto_5b
.end method

.method public final c(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    .line 122
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/plus1/a;->b(Ljava/lang/String;)Lcom/google/android/youtube/plus1/d;

    move-result-object v0

    .line 123
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/google/android/youtube/plus1/d;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

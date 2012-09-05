.class public final Lcom/google/android/youtube/plus1/i;
.super Lcom/google/android/youtube/plus1/a;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/aw;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;Landroid/accounts/AccountManager;Lcom/google/android/youtube/core/async/UserAuthorizer;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V
    .registers 17
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p7

    move-object/from16 v7, p8

    .line 35
    invoke-direct/range {v0 .. v7}, Lcom/google/android/youtube/plus1/a;-><init>(Ljava/lang/String;Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;Landroid/accounts/AccountManager;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    .line 38
    const-string v0, "userAuthorizer cannot be null"

    invoke-static {p6, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-virtual {p6, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Lcom/google/android/youtube/core/async/aw;)V

    .line 40
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/app/Activity;Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 43
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 44
    iget-object v0, p2, Lcom/google/android/youtube/core/model/UserAuth;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/plus1/i;->b(Ljava/lang/String;)Lcom/google/android/youtube/plus1/d;

    move-result-object v0

    .line 45
    if-eqz v0, :cond_10

    .line 46
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/youtube/plus1/d;->a(Landroid/app/Activity;Lcom/google/android/youtube/plus1/g;)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 48
    :cond_10
    monitor-exit p0

    return-void

    .line 43
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final t()V
    .registers 1

    .prologue
    .line 52
    return-void
.end method

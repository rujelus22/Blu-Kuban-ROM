.class public Lcom/google/android/youtube/plus1/SignedInListenerPlusOneClient;
.super Lcom/google/android/youtube/plus1/DefaultPlusOneClient;
.source "SignedInListenerPlusOneClient.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/UserAuthorizer$OnSignedInChangedListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/AccountManager;Lcom/google/android/youtube/core/async/UserAuthorizer;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V
    .registers 13
    .parameter "packageName"
    .parameter "plusOneDeveloperKey"
    .parameter "accountManager"
    .parameter "userAuthorizer"
    .parameter "uiThreadExecutor"
    .parameter "backgroundExecutor"

    .prologue
    .line 31
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/plus1/DefaultPlusOneClient;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/AccountManager;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    .line 33
    const-string v0, "userAuthorizer cannot be null"

    invoke-static {p4, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-virtual {p4, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->addOnSignedInChangedListener(Lcom/google/android/youtube/core/async/UserAuthorizer$OnSignedInChangedListener;)V

    .line 35
    return-void
.end method


# virtual methods
.method public declared-synchronized onSignIn(Landroid/app/Activity;Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 5
    .parameter "activity"
    .parameter "userAuth"

    .prologue
    .line 38
    monitor-enter p0

    :try_start_1
    const-string v1, "User signed in, prefetching +1 account status"

    invoke-static {v1}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 39
    iget-object v1, p2, Lcom/google/android/youtube/core/model/UserAuth;->account:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/plus1/SignedInListenerPlusOneClient;->getControllerWrapper(Ljava/lang/String;)Lcom/google/android/youtube/plus1/DefaultPlusOneClient$ControllerWrapper;

    move-result-object v0

    .line 40
    .local v0, controllerWrapper:Lcom/google/android/youtube/plus1/DefaultPlusOneClient$ControllerWrapper;
    if-eqz v0, :cond_12

    .line 41
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/youtube/plus1/DefaultPlusOneClient$ControllerWrapper;->authorize(Landroid/app/Activity;Lcom/google/android/youtube/plus1/PlusOneClient$AuthorizeResultListener;)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 43
    :cond_12
    monitor-exit p0

    return-void

    .line 38
    .end local v0           #controllerWrapper:Lcom/google/android/youtube/plus1/DefaultPlusOneClient$ControllerWrapper;
    :catchall_14
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onSignOut()V
    .registers 1

    .prologue
    .line 47
    return-void
.end method

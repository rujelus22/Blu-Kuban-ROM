.class public final Lcom/google/android/youtube/core/async/SyncAuthenticatee;
.super Ljava/lang/Object;
.source "SyncAuthenticatee.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;


# instance fields
.field private final conditionVar:Landroid/os/ConditionVariable;

.field private volatile exception:Ljava/lang/Exception;

.field private volatile userAuth:Lcom/google/android/youtube/core/model/UserAuth;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroid/os/ConditionVariable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/youtube/core/async/SyncAuthenticatee;->conditionVar:Landroid/os/ConditionVariable;

    .line 25
    return-void
.end method


# virtual methods
.method public getUserAuth()Lcom/google/android/youtube/core/model/UserAuth;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/youtube/core/async/SyncAuthenticatee;->conditionVar:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 47
    iget-object v0, p0, Lcom/google/android/youtube/core/async/SyncAuthenticatee;->exception:Ljava/lang/Exception;

    if-eqz v0, :cond_11

    .line 48
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Lcom/google/android/youtube/core/async/SyncAuthenticatee;->exception:Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 50
    :cond_11
    iget-object v0, p0, Lcom/google/android/youtube/core/async/SyncAuthenticatee;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    return-object v0
.end method

.method public onAuthenticated(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 3
    .parameter "userAuth"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/google/android/youtube/core/async/SyncAuthenticatee;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/async/SyncAuthenticatee;->exception:Ljava/lang/Exception;

    .line 30
    iget-object v0, p0, Lcom/google/android/youtube/core/async/SyncAuthenticatee;->conditionVar:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 31
    return-void
.end method

.method public onAuthenticationError(Ljava/lang/Exception;)V
    .registers 3
    .parameter "exception"

    .prologue
    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/async/SyncAuthenticatee;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    .line 41
    iput-object p1, p0, Lcom/google/android/youtube/core/async/SyncAuthenticatee;->exception:Ljava/lang/Exception;

    .line 42
    iget-object v0, p0, Lcom/google/android/youtube/core/async/SyncAuthenticatee;->conditionVar:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 43
    return-void
.end method

.method public onNotAuthenticated()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/google/android/youtube/core/async/SyncAuthenticatee;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    .line 35
    iput-object v0, p0, Lcom/google/android/youtube/core/async/SyncAuthenticatee;->exception:Ljava/lang/Exception;

    .line 36
    iget-object v0, p0, Lcom/google/android/youtube/core/async/SyncAuthenticatee;->conditionVar:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 37
    return-void
.end method

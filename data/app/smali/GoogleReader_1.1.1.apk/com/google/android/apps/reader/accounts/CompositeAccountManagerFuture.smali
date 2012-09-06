.class Lcom/google/android/apps/reader/accounts/CompositeAccountManagerFuture;
.super Ljava/lang/Object;
.source "CompositeAccountManagerFuture.java"

# interfaces
.implements Lcom/google/android/accounts/AccountManagerCallback;
.implements Lcom/google/android/accounts/AccountManagerFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/accounts/AccountManagerFuture",
        "<[",
        "Lcom/google/android/accounts/Account;",
        ">;",
        "Lcom/google/android/accounts/AccountManagerCallback",
        "<[",
        "Lcom/google/android/accounts/Account;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/google/android/accounts/AccountManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/accounts/AccountManagerCallback",
            "<[",
            "Lcom/google/android/accounts/Account;",
            ">;"
        }
    .end annotation
.end field

.field private mCallbackExecuted:Z

.field private final mFutures:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/accounts/AccountManagerFuture",
            "<[",
            "Lcom/google/android/accounts/Account;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/accounts/AccountManagerCallback;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/accounts/AccountManagerCallback",
            "<[",
            "Lcom/google/android/accounts/Account;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, callback:Lcom/google/android/accounts/AccountManagerCallback;,"Lcom/google/android/accounts/AccountManagerCallback<[Lcom/google/android/accounts/Account;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/apps/reader/accounts/CompositeAccountManagerFuture;->mFutures:Ljava/util/Collection;

    .line 48
    iput-object p1, p0, Lcom/google/android/apps/reader/accounts/CompositeAccountManagerFuture;->mCallback:Lcom/google/android/accounts/AccountManagerCallback;

    .line 49
    return-void
.end method


# virtual methods
.method public addFuture(Lcom/google/android/accounts/AccountManagerFuture;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/accounts/AccountManagerFuture",
            "<[",
            "Lcom/google/android/accounts/Account;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/apps/reader/accounts/CompositeAccountManagerFuture;->mFutures:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 121
    return-void
.end method

.method public cancel(Z)Z
    .registers 6
    .parameter "mayInterruptIfRunning"

    .prologue
    .line 55
    const/4 v0, 0x1

    .line 56
    .local v0, cancelled:Z
    iget-object v3, p0, Lcom/google/android/apps/reader/accounts/CompositeAccountManagerFuture;->mFutures:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/accounts/AccountManagerFuture;

    .line 57
    .local v1, future:Lcom/google/android/accounts/AccountManagerFuture;,"Lcom/google/android/accounts/AccountManagerFuture<[Lcom/google/android/accounts/Account;>;"
    invoke-interface {v1, p1}, Lcom/google/android/accounts/AccountManagerFuture;->cancel(Z)Z

    move-result v3

    and-int/2addr v0, v3

    goto :goto_7

    .line 59
    .end local v1           #future:Lcom/google/android/accounts/AccountManagerFuture;,"Lcom/google/android/accounts/AccountManagerFuture<[Lcom/google/android/accounts/Account;>;"
    :cond_19
    return v0
.end method

.method public bridge synthetic getResult()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Lcom/google/android/accounts/AuthenticatorException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/google/android/apps/reader/accounts/CompositeAccountManagerFuture;->getResult()[Lcom/google/android/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResult(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Lcom/google/android/accounts/AuthenticatorException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/apps/reader/accounts/CompositeAccountManagerFuture;->getResult(JLjava/util/concurrent/TimeUnit;)[Lcom/google/android/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public getResult()[Lcom/google/android/accounts/Account;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Lcom/google/android/accounts/AuthenticatorException;
        }
    .end annotation

    .prologue
    .line 67
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 68
    iget-object v1, p0, Lcom/google/android/apps/reader/accounts/CompositeAccountManagerFuture;->mFutures:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/accounts/AccountManagerFuture;

    .line 69
    invoke-interface {p0}, Lcom/google/android/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_b

    .line 71
    :cond_25
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/accounts/Account;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/google/android/accounts/Account;

    return-object p0
.end method

.method public getResult(JLjava/util/concurrent/TimeUnit;)[Lcom/google/android/accounts/Account;
    .registers 5
    .parameter "timeout"
    .parameter "unit"

    .prologue
    .line 78
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isCancelled()Z
    .registers 4

    .prologue
    .line 85
    iget-object v2, p0, Lcom/google/android/apps/reader/accounts/CompositeAccountManagerFuture;->mFutures:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/accounts/AccountManagerFuture;

    .line 86
    .local v0, future:Lcom/google/android/accounts/AccountManagerFuture;,"Lcom/google/android/accounts/AccountManagerFuture<[Lcom/google/android/accounts/Account;>;"
    invoke-interface {v0}, Lcom/google/android/accounts/AccountManagerFuture;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 87
    const/4 v2, 0x1

    .line 90
    .end local v0           #future:Lcom/google/android/accounts/AccountManagerFuture;,"Lcom/google/android/accounts/AccountManagerFuture<[Lcom/google/android/accounts/Account;>;"
    :goto_19
    return v2

    :cond_1a
    const/4 v2, 0x0

    goto :goto_19
.end method

.method public isDone()Z
    .registers 4

    .prologue
    .line 97
    iget-object v2, p0, Lcom/google/android/apps/reader/accounts/CompositeAccountManagerFuture;->mFutures:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/accounts/AccountManagerFuture;

    .line 98
    .local v0, future:Lcom/google/android/accounts/AccountManagerFuture;,"Lcom/google/android/accounts/AccountManagerFuture<[Lcom/google/android/accounts/Account;>;"
    invoke-interface {v0}, Lcom/google/android/accounts/AccountManagerFuture;->isDone()Z

    move-result v2

    if-nez v2, :cond_6

    .line 99
    const/4 v2, 0x0

    .line 102
    .end local v0           #future:Lcom/google/android/accounts/AccountManagerFuture;,"Lcom/google/android/accounts/AccountManagerFuture<[Lcom/google/android/accounts/Account;>;"
    :goto_19
    return v2

    :cond_1a
    const/4 v2, 0x1

    goto :goto_19
.end method

.method public run(Lcom/google/android/accounts/AccountManagerFuture;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/accounts/AccountManagerFuture",
            "<[",
            "Lcom/google/android/accounts/Account;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, future:Lcom/google/android/accounts/AccountManagerFuture;,"Lcom/google/android/accounts/AccountManagerFuture<[Lcom/google/android/accounts/Account;>;"
    iget-boolean v0, p0, Lcom/google/android/apps/reader/accounts/CompositeAccountManagerFuture;->mCallbackExecuted:Z

    if-eqz v0, :cond_5

    .line 117
    :cond_4
    :goto_4
    return-void

    .line 111
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/apps/reader/accounts/CompositeAccountManagerFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p0}, Lcom/google/android/apps/reader/accounts/CompositeAccountManagerFuture;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 112
    :cond_11
    iget-object v0, p0, Lcom/google/android/apps/reader/accounts/CompositeAccountManagerFuture;->mCallback:Lcom/google/android/accounts/AccountManagerCallback;

    invoke-interface {v0, p0}, Lcom/google/android/accounts/AccountManagerCallback;->run(Lcom/google/android/accounts/AccountManagerFuture;)V

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/reader/accounts/CompositeAccountManagerFuture;->mCallbackExecuted:Z

    goto :goto_4
.end method

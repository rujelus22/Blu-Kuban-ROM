.class final Lcom/google/android/accounts/StandardAccountManager$2;
.super Ljava/lang/Object;
.source "StandardAccountManager.java"

# interfaces
.implements Lcom/google/android/accounts/AccountManagerFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/accounts/StandardAccountManager;->convertAccountArrayFuture(Landroid/accounts/AccountManagerFuture;)Lcom/google/android/accounts/AccountManagerFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/accounts/AccountManagerFuture",
        "<[",
        "Lcom/google/android/accounts/Account;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$future:Landroid/accounts/AccountManagerFuture;


# direct methods
.method constructor <init>(Landroid/accounts/AccountManagerFuture;)V
    .registers 2
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/google/android/accounts/StandardAccountManager$2;->val$future:Landroid/accounts/AccountManagerFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .registers 3
    .parameter "mayInterruptIfRunning"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/accounts/StandardAccountManager$2;->val$future:Landroid/accounts/AccountManagerFuture;

    invoke-interface {v0, p1}, Landroid/accounts/AccountManagerFuture;->cancel(Z)Z

    move-result v0

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
    .line 105
    invoke-virtual {p0}, Lcom/google/android/accounts/StandardAccountManager$2;->getResult()[Lcom/google/android/accounts/Account;

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
    .line 105
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/accounts/StandardAccountManager$2;->getResult(JLjava/util/concurrent/TimeUnit;)[Lcom/google/android/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public getResult()[Lcom/google/android/accounts/Account;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Lcom/google/android/accounts/AuthenticatorException;
        }
    .end annotation

    .prologue
    .line 147
    :try_start_0
    iget-object v1, p0, Lcom/google/android/accounts/StandardAccountManager$2;->val$future:Landroid/accounts/AccountManagerFuture;

    invoke-interface {v1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Landroid/accounts/Account;

    #calls: Lcom/google/android/accounts/StandardAccountManager;->convertAccountArray([Landroid/accounts/Account;)[Lcom/google/android/accounts/Account;
    invoke-static {p0}, Lcom/google/android/accounts/StandardAccountManager;->access$000([Landroid/accounts/Account;)[Lcom/google/android/accounts/Account;
    :try_end_b
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_b} :catch_d
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_b} :catch_15

    move-result-object v1

    return-object v1

    .line 148
    :catch_d
    move-exception v1

    move-object v0, v1

    .line 149
    .local v0, e:Landroid/accounts/AuthenticatorException;
    new-instance v1, Lcom/google/android/accounts/AuthenticatorException;

    invoke-direct {v1, v0}, Lcom/google/android/accounts/AuthenticatorException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 150
    .end local v0           #e:Landroid/accounts/AuthenticatorException;
    :catch_15
    move-exception v1

    move-object v0, v1

    .line 151
    .local v0, e:Landroid/accounts/OperationCanceledException;
    new-instance v1, Lcom/google/android/accounts/OperationCanceledException;

    invoke-direct {v1, v0}, Lcom/google/android/accounts/OperationCanceledException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getResult(JLjava/util/concurrent/TimeUnit;)[Lcom/google/android/accounts/Account;
    .registers 6
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Lcom/google/android/accounts/AuthenticatorException;
        }
    .end annotation

    .prologue
    .line 119
    :try_start_0
    iget-object v1, p0, Lcom/google/android/accounts/StandardAccountManager$2;->val$future:Landroid/accounts/AccountManagerFuture;

    invoke-interface {v1, p1, p2, p3}, Landroid/accounts/AccountManagerFuture;->getResult(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Landroid/accounts/Account;

    #calls: Lcom/google/android/accounts/StandardAccountManager;->convertAccountArray([Landroid/accounts/Account;)[Lcom/google/android/accounts/Account;
    invoke-static {p0}, Lcom/google/android/accounts/StandardAccountManager;->access$000([Landroid/accounts/Account;)[Lcom/google/android/accounts/Account;
    :try_end_b
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_b} :catch_d
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_b} :catch_15

    move-result-object v1

    return-object v1

    .line 120
    :catch_d
    move-exception v1

    move-object v0, v1

    .line 121
    .local v0, e:Landroid/accounts/AuthenticatorException;
    new-instance v1, Lcom/google/android/accounts/AuthenticatorException;

    invoke-direct {v1, v0}, Lcom/google/android/accounts/AuthenticatorException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 122
    .end local v0           #e:Landroid/accounts/AuthenticatorException;
    :catch_15
    move-exception v1

    move-object v0, v1

    .line 123
    .local v0, e:Landroid/accounts/OperationCanceledException;
    new-instance v1, Lcom/google/android/accounts/OperationCanceledException;

    invoke-direct {v1, v0}, Lcom/google/android/accounts/OperationCanceledException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isCancelled()Z
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/android/accounts/StandardAccountManager$2;->val$future:Landroid/accounts/AccountManagerFuture;

    invoke-interface {v0}, Landroid/accounts/AccountManagerFuture;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public isDone()Z
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/accounts/StandardAccountManager$2;->val$future:Landroid/accounts/AccountManagerFuture;

    invoke-interface {v0}, Landroid/accounts/AccountManagerFuture;->isDone()Z

    move-result v0

    return v0
.end method

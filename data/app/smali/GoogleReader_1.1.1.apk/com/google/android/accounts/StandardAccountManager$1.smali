.class final Lcom/google/android/accounts/StandardAccountManager$1;
.super Ljava/lang/Object;
.source "StandardAccountManager.java"

# interfaces
.implements Lcom/google/android/accounts/AccountManagerFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/accounts/StandardAccountManager;->convertFuture(Landroid/accounts/AccountManagerFuture;)Lcom/google/android/accounts/AccountManagerFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/accounts/AccountManagerFuture",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic val$future:Landroid/accounts/AccountManagerFuture;


# direct methods
.method constructor <init>(Landroid/accounts/AccountManagerFuture;)V
    .registers 2
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/google/android/accounts/StandardAccountManager$1;->val$future:Landroid/accounts/AccountManagerFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .registers 3
    .parameter "mayInterruptIfRunning"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/accounts/StandardAccountManager$1;->val$future:Landroid/accounts/AccountManagerFuture;

    invoke-interface {v0, p1}, Landroid/accounts/AccountManagerFuture;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method public getResult()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Lcom/google/android/accounts/AuthenticatorException;
        }
    .end annotation

    .prologue
    .line 93
    :try_start_0
    iget-object v1, p0, Lcom/google/android/accounts/StandardAccountManager$1;->val$future:Landroid/accounts/AccountManagerFuture;

    invoke-interface {v1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;
    :try_end_5
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_5} :catch_7
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_5} :catch_f

    move-result-object v1

    return-object v1

    .line 94
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 95
    .local v0, e:Landroid/accounts/AuthenticatorException;
    new-instance v1, Lcom/google/android/accounts/AuthenticatorException;

    invoke-direct {v1, v0}, Lcom/google/android/accounts/AuthenticatorException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 96
    .end local v0           #e:Landroid/accounts/AuthenticatorException;
    :catch_f
    move-exception v1

    move-object v0, v1

    .line 97
    .local v0, e:Landroid/accounts/OperationCanceledException;
    new-instance v1, Lcom/google/android/accounts/OperationCanceledException;

    invoke-direct {v1, v0}, Lcom/google/android/accounts/OperationCanceledException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getResult(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 6
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Lcom/google/android/accounts/AuthenticatorException;
        }
    .end annotation

    .prologue
    .line 65
    :try_start_0
    iget-object v1, p0, Lcom/google/android/accounts/StandardAccountManager$1;->val$future:Landroid/accounts/AccountManagerFuture;

    invoke-interface {v1, p1, p2, p3}, Landroid/accounts/AccountManagerFuture;->getResult(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_5
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_5} :catch_7
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_5} :catch_f

    move-result-object v1

    return-object v1

    .line 66
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 67
    .local v0, e:Landroid/accounts/AuthenticatorException;
    new-instance v1, Lcom/google/android/accounts/AuthenticatorException;

    invoke-direct {v1, v0}, Lcom/google/android/accounts/AuthenticatorException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 68
    .end local v0           #e:Landroid/accounts/AuthenticatorException;
    :catch_f
    move-exception v1

    move-object v0, v1

    .line 69
    .local v0, e:Landroid/accounts/OperationCanceledException;
    new-instance v1, Lcom/google/android/accounts/OperationCanceledException;

    invoke-direct {v1, v0}, Lcom/google/android/accounts/OperationCanceledException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isCancelled()Z
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/accounts/StandardAccountManager$1;->val$future:Landroid/accounts/AccountManagerFuture;

    invoke-interface {v0}, Landroid/accounts/AccountManagerFuture;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public isDone()Z
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/accounts/StandardAccountManager$1;->val$future:Landroid/accounts/AccountManagerFuture;

    invoke-interface {v0}, Landroid/accounts/AccountManagerFuture;->isDone()Z

    move-result v0

    return v0
.end method

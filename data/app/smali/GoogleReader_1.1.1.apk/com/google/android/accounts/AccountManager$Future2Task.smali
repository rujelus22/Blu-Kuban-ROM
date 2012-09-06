.class Lcom/google/android/accounts/AccountManager$Future2Task;
.super Lcom/google/android/accounts/AccountManager$BaseFutureTask;
.source "AccountManager.java"

# interfaces
.implements Lcom/google/android/accounts/AccountManagerFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/accounts/AccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Future2Task"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/accounts/AccountManager$BaseFutureTask",
        "<TT;>;",
        "Lcom/google/android/accounts/AccountManagerFuture",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final mCallback:Lcom/google/android/accounts/AccountManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/accounts/AccountManagerCallback",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/accounts/AccountManager;


# direct methods
.method public constructor <init>(Lcom/google/android/accounts/AccountManager;Ljava/util/concurrent/Callable;Landroid/os/Handler;Lcom/google/android/accounts/AccountManagerCallback;)V
    .registers 5
    .parameter
    .parameter
    .parameter "handler"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;",
            "Landroid/os/Handler;",
            "Lcom/google/android/accounts/AccountManagerCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 145
    .local p0, this:Lcom/google/android/accounts/AccountManager$Future2Task;,"Lcom/google/android/accounts/AccountManager$Future2Task<TT;>;"
    .local p2, callable:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<TT;>;"
    .local p4, callback:Lcom/google/android/accounts/AccountManagerCallback;,"Lcom/google/android/accounts/AccountManagerCallback<TT;>;"
    iput-object p1, p0, Lcom/google/android/accounts/AccountManager$Future2Task;->this$0:Lcom/google/android/accounts/AccountManager;

    .line 146
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/accounts/AccountManager$BaseFutureTask;-><init>(Lcom/google/android/accounts/AccountManager;Ljava/util/concurrent/Callable;Landroid/os/Handler;)V

    .line 147
    iput-object p4, p0, Lcom/google/android/accounts/AccountManager$Future2Task;->mCallback:Lcom/google/android/accounts/AccountManagerCallback;

    .line 148
    return-void
.end method

.method private internalGetResult(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
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
    const/4 v2, 0x1

    .line 169
    if-nez p1, :cond_b

    .line 170
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/accounts/AccountManager$Future2Task;->get()Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_37
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_6} :catch_17
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_6} :catch_21
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_6} :catch_26
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_6} :catch_2b

    move-result-object v0

    .line 197
    invoke-virtual {p0, v2}, Lcom/google/android/accounts/AccountManager$Future2Task;->cancel(Z)Z

    .line 198
    :goto_a
    return-object v0

    .line 172
    :cond_b
    :try_start_b
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/accounts/AccountManager$Future2Task;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_37
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_12} :catch_17
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_b .. :try_end_12} :catch_21
    .catch Ljava/util/concurrent/CancellationException; {:try_start_b .. :try_end_12} :catch_26
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_b .. :try_end_12} :catch_2b

    move-result-object v0

    .line 197
    invoke-virtual {p0, v2}, Lcom/google/android/accounts/AccountManager$Future2Task;->cancel(Z)Z

    goto :goto_a

    .line 196
    :catch_17
    move-exception v0

    .line 197
    invoke-virtual {p0, v2}, Lcom/google/android/accounts/AccountManager$Future2Task;->cancel(Z)Z

    .line 199
    :goto_1b
    new-instance v0, Lcom/google/android/accounts/OperationCanceledException;

    invoke-direct {v0}, Lcom/google/android/accounts/OperationCanceledException;-><init>()V

    throw v0

    .line 196
    :catch_21
    move-exception v0

    .line 197
    invoke-virtual {p0, v2}, Lcom/google/android/accounts/AccountManager$Future2Task;->cancel(Z)Z

    goto :goto_1b

    .line 196
    :catch_26
    move-exception v0

    .line 197
    invoke-virtual {p0, v2}, Lcom/google/android/accounts/AccountManager$Future2Task;->cancel(Z)Z

    goto :goto_1b

    .line 180
    :catch_2b
    move-exception v0

    .line 181
    :try_start_2c
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 182
    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_3c

    .line 183
    check-cast v0, Ljava/io/IOException;

    throw v0
    :try_end_37
    .catchall {:try_start_2c .. :try_end_37} :catchall_37

    .line 196
    :catchall_37
    move-exception v0

    .line 197
    invoke-virtual {p0, v2}, Lcom/google/android/accounts/AccountManager$Future2Task;->cancel(Z)Z

    .line 198
    throw v0

    .line 184
    :cond_3c
    :try_start_3c
    instance-of v1, v0, Ljava/lang/UnsupportedOperationException;

    if-eqz v1, :cond_46

    .line 185
    new-instance v1, Lcom/google/android/accounts/AuthenticatorException;

    invoke-direct {v1, v0}, Lcom/google/android/accounts/AuthenticatorException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 186
    :cond_46
    instance-of v1, v0, Lcom/google/android/accounts/AuthenticatorException;

    if-eqz v1, :cond_4d

    .line 187
    check-cast v0, Lcom/google/android/accounts/AuthenticatorException;

    throw v0

    .line 188
    :cond_4d
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_54

    .line 189
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 190
    :cond_54
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_5b

    .line 191
    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 193
    :cond_5b
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_61
    .catchall {:try_start_3c .. :try_end_61} :catchall_37
.end method


# virtual methods
.method protected done()V
    .registers 2

    .prologue
    .line 152
    .local p0, this:Lcom/google/android/accounts/AccountManager$Future2Task;,"Lcom/google/android/accounts/AccountManager$Future2Task<TT;>;"
    iget-object v0, p0, Lcom/google/android/accounts/AccountManager$Future2Task;->mCallback:Lcom/google/android/accounts/AccountManagerCallback;

    if-eqz v0, :cond_c

    .line 153
    new-instance v0, Lcom/google/android/accounts/AccountManager$Future2Task$1;

    invoke-direct {v0, p0}, Lcom/google/android/accounts/AccountManager$Future2Task$1;-><init>(Lcom/google/android/accounts/AccountManager$Future2Task;)V

    invoke-virtual {p0, v0}, Lcom/google/android/accounts/AccountManager$Future2Task;->postRunnableToHandler(Ljava/lang/Runnable;)V

    .line 159
    :cond_c
    return-void
.end method

.method public getResult()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
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
    .local p0, this:Lcom/google/android/accounts/AccountManager$Future2Task;,"Lcom/google/android/accounts/AccountManager$Future2Task<TT;>;"
    const/4 v0, 0x0

    .line 206
    invoke-direct {p0, v0, v0}, Lcom/google/android/accounts/AccountManager$Future2Task;->internalGetResult(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getResult(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 5
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
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
    .line 214
    .local p0, this:Lcom/google/android/accounts/AccountManager$Future2Task;,"Lcom/google/android/accounts/AccountManager$Future2Task<TT;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/google/android/accounts/AccountManager$Future2Task;->internalGetResult(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public start()Lcom/google/android/accounts/AccountManager$Future2Task;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/accounts/AccountManager$Future2Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 162
    .local p0, this:Lcom/google/android/accounts/AccountManager$Future2Task;,"Lcom/google/android/accounts/AccountManager$Future2Task<TT;>;"
    invoke-virtual {p0}, Lcom/google/android/accounts/AccountManager$Future2Task;->startTask()V

    .line 163
    return-object p0
.end method

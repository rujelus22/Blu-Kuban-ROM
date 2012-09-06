.class Lcom/google/android/accounts/AccountManager$BaseFutureTask;
.super Ljava/util/concurrent/FutureTask;
.source "AccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/accounts/AccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseFutureTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/google/android/accounts/AccountManager;


# direct methods
.method public constructor <init>(Lcom/google/android/accounts/AccountManager;Ljava/util/concurrent/Callable;Landroid/os/Handler;)V
    .registers 4
    .parameter
    .parameter
    .parameter "handler"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, this:Lcom/google/android/accounts/AccountManager$BaseFutureTask;,"Lcom/google/android/accounts/AccountManager$BaseFutureTask<TT;>;"
    .local p2, callable:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<TT;>;"
    iput-object p1, p0, Lcom/google/android/accounts/AccountManager$BaseFutureTask;->this$0:Lcom/google/android/accounts/AccountManager;

    .line 128
    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 129
    iput-object p3, p0, Lcom/google/android/accounts/AccountManager$BaseFutureTask;->mHandler:Landroid/os/Handler;

    .line 130
    return-void
.end method


# virtual methods
.method protected postRunnableToHandler(Ljava/lang/Runnable;)V
    .registers 3
    .parameter

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/android/accounts/AccountManager$BaseFutureTask;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/google/android/accounts/AccountManager$BaseFutureTask;->this$0:Lcom/google/android/accounts/AccountManager;

    #getter for: Lcom/google/android/accounts/AccountManager;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/accounts/AccountManager;->access$000(Lcom/google/android/accounts/AccountManager;)Landroid/os/Handler;

    move-result-object v0

    .line 134
    :goto_a
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 135
    return-void

    .line 133
    :cond_e
    iget-object v0, p0, Lcom/google/android/accounts/AccountManager$BaseFutureTask;->mHandler:Landroid/os/Handler;

    goto :goto_a
.end method

.method protected startTask()V
    .registers 3

    .prologue
    .line 138
    .local p0, this:Lcom/google/android/accounts/AccountManager$BaseFutureTask;,"Lcom/google/android/accounts/AccountManager$BaseFutureTask<TT;>;"
    new-instance v0, Lcom/google/android/accounts/AccountManager$TaskExecutor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/accounts/AccountManager$TaskExecutor;-><init>(Lcom/google/android/accounts/AccountManager$1;)V

    invoke-virtual {v0, p0}, Lcom/google/android/accounts/AccountManager$TaskExecutor;->execute(Ljava/lang/Runnable;)V

    .line 139
    return-void
.end method

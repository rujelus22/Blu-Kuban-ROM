.class public abstract Lcom/google/android/apps/unveil/env/HoneycombAsyncTask;
.super Ljava/lang/Object;
.source "HoneycombAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    .local p0, this:Lcom/google/android/apps/unveil/env/HoneycombAsyncTask;,"Lcom/google/android/apps/unveil/env/HoneycombAsyncTask<TResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract doInBackground()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation
.end method

.method public execute(Ljava/util/concurrent/Executor;Landroid/os/Handler;)V
    .registers 4
    .parameter "executor"
    .parameter "uiThreadHandler"

    .prologue
    .line 36
    .local p0, this:Lcom/google/android/apps/unveil/env/HoneycombAsyncTask;,"Lcom/google/android/apps/unveil/env/HoneycombAsyncTask<TResult;>;"
    new-instance v0, Lcom/google/android/apps/unveil/env/HoneycombAsyncTask$1;

    invoke-direct {v0, p0, p2}, Lcom/google/android/apps/unveil/env/HoneycombAsyncTask$1;-><init>(Lcom/google/android/apps/unveil/env/HoneycombAsyncTask;Landroid/os/Handler;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 48
    return-void
.end method

.method protected abstract onPostExecute(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation
.end method

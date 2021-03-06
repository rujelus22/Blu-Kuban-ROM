.class public abstract Lcom/android/contacts/util/WeakAsyncTask;
.super Landroid/os/AsyncTask;
.source "WeakAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        "WeakTarget:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask",
        "<TParams;TProgress;TResult;>;"
    }
.end annotation


# instance fields
.field protected mTarget:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<TWeakTarget;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TWeakTarget;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, this:Lcom/android/contacts/util/WeakAsyncTask;,"Lcom/android/contacts/util/WeakAsyncTask<TParams;TProgress;TResult;TWeakTarget;>;"
    .local p1, target:Ljava/lang/Object;,"TWeakTarget;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 28
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/contacts/util/WeakAsyncTask;->mTarget:Ljava/lang/ref/WeakReference;

    .line 29
    return-void
.end method


# virtual methods
.method protected varargs abstract doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TWeakTarget;[TParams;)TResult;"
        }
    .end annotation
.end method

.method protected final varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, this:Lcom/android/contacts/util/WeakAsyncTask;,"Lcom/android/contacts/util/WeakAsyncTask<TParams;TProgress;TResult;TWeakTarget;>;"
    .local p1, params:[Ljava/lang/Object;,"[TParams;"
    iget-object v1, p0, Lcom/android/contacts/util/WeakAsyncTask;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 44
    .local v0, target:Ljava/lang/Object;,"TWeakTarget;"
    if-eqz v0, :cond_d

    .line 45
    invoke-virtual {p0, v0, p1}, Lcom/android/contacts/util/WeakAsyncTask;->doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 47
    :goto_c
    return-object v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method protected final onPostExecute(Ljava/lang/Object;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, this:Lcom/android/contacts/util/WeakAsyncTask;,"Lcom/android/contacts/util/WeakAsyncTask<TParams;TProgress;TResult;TWeakTarget;>;"
    .local p1, result:Ljava/lang/Object;,"TResult;"
    iget-object v1, p0, Lcom/android/contacts/util/WeakAsyncTask;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 55
    .local v0, target:Ljava/lang/Object;,"TWeakTarget;"
    if-eqz v0, :cond_b

    .line 56
    invoke-virtual {p0, v0, p1}, Lcom/android/contacts/util/WeakAsyncTask;->onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 58
    :cond_b
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TWeakTarget;TResult;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, this:Lcom/android/contacts/util/WeakAsyncTask;,"Lcom/android/contacts/util/WeakAsyncTask<TParams;TProgress;TResult;TWeakTarget;>;"
    .local p1, target:Ljava/lang/Object;,"TWeakTarget;"
    .local p2, result:Ljava/lang/Object;,"TResult;"
    return-void
.end method

.method protected final onPreExecute()V
    .registers 3

    .prologue
    .line 34
    .local p0, this:Lcom/android/contacts/util/WeakAsyncTask;,"Lcom/android/contacts/util/WeakAsyncTask<TParams;TProgress;TResult;TWeakTarget;>;"
    iget-object v1, p0, Lcom/android/contacts/util/WeakAsyncTask;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 35
    .local v0, target:Ljava/lang/Object;,"TWeakTarget;"
    if-eqz v0, :cond_b

    .line 36
    invoke-virtual {p0, v0}, Lcom/android/contacts/util/WeakAsyncTask;->onPreExecute(Ljava/lang/Object;)V

    .line 38
    :cond_b
    return-void
.end method

.method protected onPreExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TWeakTarget;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, this:Lcom/android/contacts/util/WeakAsyncTask;,"Lcom/android/contacts/util/WeakAsyncTask<TParams;TProgress;TResult;TWeakTarget;>;"
    .local p1, target:Ljava/lang/Object;,"TWeakTarget;"
    return-void
.end method

.method public setTarget(Ljava/lang/Object;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TWeakTarget;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, this:Lcom/android/contacts/util/WeakAsyncTask;,"Lcom/android/contacts/util/WeakAsyncTask<TParams;TProgress;TResult;TWeakTarget;>;"
    .local p1, target:Ljava/lang/Object;,"TWeakTarget;"
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/contacts/util/WeakAsyncTask;->mTarget:Ljava/lang/ref/WeakReference;

    .line 62
    return-void
.end method

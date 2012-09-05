.class public final Lcom/google/android/youtube/core/async/SyncCallback;
.super Ljava/lang/Object;
.source "SyncCallback.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/async/Callback",
        "<TR;TE;>;"
    }
.end annotation


# instance fields
.field private final conditionVar:Landroid/os/ConditionVariable;

.field private volatile exception:Ljava/lang/Exception;

.field private volatile response:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 20
    .local p0, this:Lcom/google/android/youtube/core/async/SyncCallback;,"Lcom/google/android/youtube/core/async/SyncCallback<TR;TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Landroid/os/ConditionVariable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/youtube/core/async/SyncCallback;->conditionVar:Landroid/os/ConditionVariable;

    .line 22
    return-void
.end method


# virtual methods
.method public getResponse()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 37
    .local p0, this:Lcom/google/android/youtube/core/async/SyncCallback;,"Lcom/google/android/youtube/core/async/SyncCallback<TR;TE;>;"
    iget-object v0, p0, Lcom/google/android/youtube/core/async/SyncCallback;->conditionVar:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 38
    iget-object v0, p0, Lcom/google/android/youtube/core/async/SyncCallback;->exception:Ljava/lang/Exception;

    if-eqz v0, :cond_11

    .line 39
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Lcom/google/android/youtube/core/async/SyncCallback;->exception:Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 41
    :cond_11
    iget-object v0, p0, Lcom/google/android/youtube/core/async/SyncCallback;->response:Ljava/lang/Object;

    return-object v0
.end method

.method public onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter "exception"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, this:Lcom/google/android/youtube/core/async/SyncCallback;,"Lcom/google/android/youtube/core/async/SyncCallback<TR;TE;>;"
    .local p1, request:Ljava/lang/Object;,"TR;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/async/SyncCallback;->response:Ljava/lang/Object;

    .line 32
    iput-object p2, p0, Lcom/google/android/youtube/core/async/SyncCallback;->exception:Ljava/lang/Exception;

    .line 33
    iget-object v0, p0, Lcom/google/android/youtube/core/async/SyncCallback;->conditionVar:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 34
    return-void
.end method

.method public onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TE;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, this:Lcom/google/android/youtube/core/async/SyncCallback;,"Lcom/google/android/youtube/core/async/SyncCallback<TR;TE;>;"
    .local p1, req:Ljava/lang/Object;,"TR;"
    .local p2, response:Ljava/lang/Object;,"TE;"
    iput-object p2, p0, Lcom/google/android/youtube/core/async/SyncCallback;->response:Ljava/lang/Object;

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/async/SyncCallback;->exception:Ljava/lang/Exception;

    .line 27
    iget-object v0, p0, Lcom/google/android/youtube/core/async/SyncCallback;->conditionVar:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 28
    return-void
.end method

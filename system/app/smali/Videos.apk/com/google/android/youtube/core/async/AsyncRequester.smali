.class public final Lcom/google/android/youtube/core/async/AsyncRequester;
.super Ljava/lang/Object;
.source "AsyncRequester.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Requester;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/async/Requester",
        "<TR;TE;>;"
    }
.end annotation


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final target:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<TR;TE;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/youtube/core/async/Requester;)V
    .registers 3
    .parameter "executor"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/youtube/core/async/Requester",
            "<TR;TE;>;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p0, this:Lcom/google/android/youtube/core/async/AsyncRequester;,"Lcom/google/android/youtube/core/async/AsyncRequester<TR;TE;>;"
    .local p2, target:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<TR;TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/google/android/youtube/core/async/AsyncRequester;->executor:Ljava/util/concurrent/Executor;

    .line 28
    iput-object p2, p0, Lcom/google/android/youtube/core/async/AsyncRequester;->target:Lcom/google/android/youtube/core/async/Requester;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/youtube/core/async/AsyncRequester;)Lcom/google/android/youtube/core/async/Requester;
    .registers 2
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/google/android/youtube/core/async/AsyncRequester;->target:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method

.method public static create(Ljava/util/concurrent/Executor;Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/AsyncRequester;
    .registers 3
    .parameter "executor"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/youtube/core/async/Requester",
            "<TR;TE;>;)",
            "Lcom/google/android/youtube/core/async/AsyncRequester",
            "<TR;TE;>;"
        }
    .end annotation

    .prologue
    .line 21
    .local p1, target:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<TR;TE;>;"
    const-string v0, "executor may not be null"

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    const-string v0, "target may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    new-instance v0, Lcom/google/android/youtube/core/async/AsyncRequester;

    invoke-direct {v0, p0, p1}, Lcom/google/android/youtube/core/async/AsyncRequester;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/youtube/core/async/Requester;)V

    return-object v0
.end method


# virtual methods
.method public request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lcom/google/android/youtube/core/async/Callback",
            "<TR;TE;>;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, this:Lcom/google/android/youtube/core/async/AsyncRequester;,"Lcom/google/android/youtube/core/async/AsyncRequester<TR;TE;>;"
    .local p1, request:Ljava/lang/Object;,"TR;"
    .local p2, callback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<TR;TE;>;"
    const-string v1, "request may not be null"

    invoke-static {p1, v1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string v1, "callback may not be null"

    invoke-static {p2, v1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    :try_start_a
    iget-object v1, p0, Lcom/google/android/youtube/core/async/AsyncRequester;->executor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/youtube/core/async/AsyncRequester$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/android/youtube/core/async/AsyncRequester$1;-><init>(Lcom/google/android/youtube/core/async/AsyncRequester;Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_14
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_a .. :try_end_14} :catch_15

    .line 43
    :goto_14
    return-void

    .line 40
    :catch_15
    move-exception v0

    .line 41
    .local v0, e:Ljava/util/concurrent/RejectedExecutionException;
    invoke-interface {p2, p1, v0}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_14
.end method

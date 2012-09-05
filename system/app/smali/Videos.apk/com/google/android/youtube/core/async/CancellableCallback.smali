.class public final Lcom/google/android/youtube/core/async/CancellableCallback;
.super Ljava/lang/Object;
.source "CancellableCallback.java"

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
.field private volatile cancelled:Z

.field private final target:Lcom/google/android/youtube/core/async/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Callback",
            "<TR;TE;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/core/async/Callback;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/async/Callback",
            "<TR;TE;>;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p0, this:Lcom/google/android/youtube/core/async/CancellableCallback;,"Lcom/google/android/youtube/core/async/CancellableCallback<TR;TE;>;"
    .local p1, target:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<TR;TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/google/android/youtube/core/async/CancellableCallback;->target:Lcom/google/android/youtube/core/async/Callback;

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/async/CancellableCallback;->cancelled:Z

    .line 19
    return-void
.end method

.method public static create(Lcom/google/android/youtube/core/async/Callback;)Lcom/google/android/youtube/core/async/CancellableCallback;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/youtube/core/async/Callback",
            "<TR;TE;>;)",
            "Lcom/google/android/youtube/core/async/CancellableCallback",
            "<TR;TE;>;"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, target:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<TR;TE;>;"
    new-instance v0, Lcom/google/android/youtube/core/async/CancellableCallback;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/async/CancellableCallback;-><init>(Lcom/google/android/youtube/core/async/Callback;)V

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .prologue
    .line 26
    .local p0, this:Lcom/google/android/youtube/core/async/CancellableCallback;,"Lcom/google/android/youtube/core/async/CancellableCallback<TR;TE;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/async/CancellableCallback;->cancelled:Z

    .line 27
    return-void
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
    .line 40
    .local p0, this:Lcom/google/android/youtube/core/async/CancellableCallback;,"Lcom/google/android/youtube/core/async/CancellableCallback<TR;TE;>;"
    .local p1, request:Ljava/lang/Object;,"TR;"
    iget-boolean v0, p0, Lcom/google/android/youtube/core/async/CancellableCallback;->cancelled:Z

    if-nez v0, :cond_9

    .line 41
    iget-object v0, p0, Lcom/google/android/youtube/core/async/CancellableCallback;->target:Lcom/google/android/youtube/core/async/Callback;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 43
    :cond_9
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
    .line 34
    .local p0, this:Lcom/google/android/youtube/core/async/CancellableCallback;,"Lcom/google/android/youtube/core/async/CancellableCallback<TR;TE;>;"
    .local p1, request:Ljava/lang/Object;,"TR;"
    .local p2, response:Ljava/lang/Object;,"TE;"
    iget-boolean v0, p0, Lcom/google/android/youtube/core/async/CancellableCallback;->cancelled:Z

    if-nez v0, :cond_9

    .line 35
    iget-object v0, p0, Lcom/google/android/youtube/core/async/CancellableCallback;->target:Lcom/google/android/youtube/core/async/Callback;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/Callback;->onResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 37
    :cond_9
    return-void
.end method

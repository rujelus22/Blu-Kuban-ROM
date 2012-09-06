.class public final Lcom/google/android/youtube/core/async/av;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field private final a:Landroid/os/ConditionVariable;

.field private volatile b:Ljava/lang/Object;

.field private volatile c:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Landroid/os/ConditionVariable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/youtube/core/async/av;->a:Landroid/os/ConditionVariable;

    .line 22
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/youtube/core/async/av;->a:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 38
    iget-object v0, p0, Lcom/google/android/youtube/core/async/av;->c:Ljava/lang/Exception;

    if-eqz v0, :cond_11

    .line 39
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Lcom/google/android/youtube/core/async/av;->c:Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 41
    :cond_11
    iget-object v0, p0, Lcom/google/android/youtube/core/async/av;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/async/av;->b:Ljava/lang/Object;

    .line 32
    iput-object p2, p0, Lcom/google/android/youtube/core/async/av;->c:Ljava/lang/Exception;

    .line 33
    iget-object v0, p0, Lcom/google/android/youtube/core/async/av;->a:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 34
    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 25
    iput-object p2, p0, Lcom/google/android/youtube/core/async/av;->b:Ljava/lang/Object;

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/async/av;->c:Ljava/lang/Exception;

    .line 27
    iget-object v0, p0, Lcom/google/android/youtube/core/async/av;->a:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 28
    return-void
.end method

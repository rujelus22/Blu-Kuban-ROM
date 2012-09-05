.class public final Lcom/google/android/youtube/core/async/ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/av;


# instance fields
.field private final a:Landroid/os/ConditionVariable;

.field private volatile b:Lcom/google/android/youtube/core/model/UserAuth;

.field private volatile c:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroid/os/ConditionVariable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/youtube/core/async/ai;->a:Landroid/os/ConditionVariable;

    .line 25
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 3
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/google/android/youtube/core/async/ai;->b:Lcom/google/android/youtube/core/model/UserAuth;

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/async/ai;->c:Ljava/lang/Exception;

    .line 30
    iget-object v0, p0, Lcom/google/android/youtube/core/async/ai;->a:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 31
    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 3
    .parameter

    .prologue
    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/async/ai;->b:Lcom/google/android/youtube/core/model/UserAuth;

    .line 41
    iput-object p1, p0, Lcom/google/android/youtube/core/async/ai;->c:Ljava/lang/Exception;

    .line 42
    iget-object v0, p0, Lcom/google/android/youtube/core/async/ai;->a:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 43
    return-void
.end method

.method public final b()Lcom/google/android/youtube/core/model/UserAuth;
    .registers 3

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/youtube/core/async/ai;->a:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 47
    iget-object v0, p0, Lcom/google/android/youtube/core/async/ai;->c:Ljava/lang/Exception;

    if-eqz v0, :cond_11

    .line 48
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Lcom/google/android/youtube/core/async/ai;->c:Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 50
    :cond_11
    iget-object v0, p0, Lcom/google/android/youtube/core/async/ai;->b:Lcom/google/android/youtube/core/model/UserAuth;

    return-object v0
.end method

.method public final d_()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/google/android/youtube/core/async/ai;->b:Lcom/google/android/youtube/core/model/UserAuth;

    .line 35
    iput-object v0, p0, Lcom/google/android/youtube/core/async/ai;->c:Ljava/lang/Exception;

    .line 36
    iget-object v0, p0, Lcom/google/android/youtube/core/async/ai;->a:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 37
    return-void
.end method

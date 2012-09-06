.class public final Lcom/google/android/youtube/core/async/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/ar;


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Lcom/google/android/youtube/core/async/ar;


# direct methods
.method private constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/youtube/core/async/ar;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/google/android/youtube/core/async/d;->a:Ljava/util/concurrent/Executor;

    .line 29
    iput-object p2, p0, Lcom/google/android/youtube/core/async/d;->b:Lcom/google/android/youtube/core/async/ar;

    .line 30
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/async/d;)Lcom/google/android/youtube/core/async/ar;
    .registers 2
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/android/youtube/core/async/d;->b:Lcom/google/android/youtube/core/async/ar;

    return-object v0
.end method

.method public static a(Ljava/util/concurrent/Executor;Lcom/google/android/youtube/core/async/ar;)Lcom/google/android/youtube/core/async/d;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 22
    const-string v0, "executor may not be null"

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    const-string v0, "target may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    new-instance v0, Lcom/google/android/youtube/core/async/d;

    invoke-direct {v0, p0, p1}, Lcom/google/android/youtube/core/async/d;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/youtube/core/async/ar;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/l;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 33
    const-string v0, "request may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string v0, "callback may not be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :try_start_a
    iget-object v0, p0, Lcom/google/android/youtube/core/async/d;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/youtube/core/async/e;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/youtube/core/async/e;-><init>(Lcom/google/android/youtube/core/async/d;Ljava/lang/Object;Lcom/google/android/youtube/core/async/l;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_14
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_a .. :try_end_14} :catch_15

    .line 49
    :goto_14
    return-void

    .line 46
    :catch_15
    move-exception v0

    .line 47
    invoke-interface {p2, p1, v0}, Lcom/google/android/youtube/core/async/l;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_14
.end method

.class public final Lcom/google/android/youtube/core/async/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/ad;


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Lcom/google/android/youtube/core/async/ad;


# direct methods
.method private constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/youtube/core/async/ad;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/google/android/youtube/core/async/b;->a:Ljava/util/concurrent/Executor;

    .line 29
    iput-object p2, p0, Lcom/google/android/youtube/core/async/b;->b:Lcom/google/android/youtube/core/async/ad;

    .line 30
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/async/b;)Lcom/google/android/youtube/core/async/ad;
    .registers 2
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/android/youtube/core/async/b;->b:Lcom/google/android/youtube/core/async/ad;

    return-object v0
.end method

.method public static a(Ljava/util/concurrent/Executor;Lcom/google/android/youtube/core/async/ad;)Lcom/google/android/youtube/core/async/b;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 22
    const-string v0, "executor may not be null"

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    const-string v0, "target may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    new-instance v0, Lcom/google/android/youtube/core/async/b;

    invoke-direct {v0, p0, p1}, Lcom/google/android/youtube/core/async/b;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/youtube/core/async/ad;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/g;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 33
    const-string v0, "request may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string v0, "callback may not be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :try_start_a
    iget-object v0, p0, Lcom/google/android/youtube/core/async/b;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/youtube/core/async/c;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/youtube/core/async/c;-><init>(Lcom/google/android/youtube/core/async/b;Ljava/lang/Object;Lcom/google/android/youtube/core/async/g;)V

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
    invoke-interface {p2, p1, v0}, Lcom/google/android/youtube/core/async/g;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_14
.end method

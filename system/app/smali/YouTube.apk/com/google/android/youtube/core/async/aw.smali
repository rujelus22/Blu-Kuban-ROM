.class public abstract Lcom/google/android/youtube/core/async/aw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;


# static fields
.field private static final a:Ljava/util/concurrent/LinkedBlockingQueue;


# instance fields
.field private final b:Lcom/google/android/youtube/core/async/l;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lcom/google/android/youtube/core/async/aw;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/youtube/core/async/l;)V
    .registers 3
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/l;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/aw;->b:Lcom/google/android/youtube/core/async/l;

    .line 33
    return-void
.end method

.method private static a()Lcom/google/android/youtube/core/async/ax;
    .registers 2

    .prologue
    .line 55
    sget-object v0, Lcom/google/android/youtube/core/async/aw;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/ax;

    .line 56
    if-eqz v0, :cond_b

    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Lcom/google/android/youtube/core/async/ax;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/async/ax;-><init>(B)V

    goto :goto_a
.end method

.method static synthetic a(Lcom/google/android/youtube/core/async/ax;)V
    .registers 3
    .parameter

    .prologue
    .line 23
    :try_start_0
    sget-object v0, Lcom/google/android/youtube/core/async/aw;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    const-string v1, "Interrupted when releasing runnable to the queue"

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-static {}, Lcom/google/android/youtube/core/async/aw;->a()Lcom/google/android/youtube/core/async/ax;

    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/google/android/youtube/core/async/aw;->b:Lcom/google/android/youtube/core/async/l;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/youtube/core/async/ax;->a(Lcom/google/android/youtube/core/async/l;Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 44
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/async/aw;->a(Ljava/lang/Runnable;)V

    .line 45
    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-static {}, Lcom/google/android/youtube/core/async/aw;->a()Lcom/google/android/youtube/core/async/ax;

    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/google/android/youtube/core/async/aw;->b:Lcom/google/android/youtube/core/async/l;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/youtube/core/async/ax;->a(Lcom/google/android/youtube/core/async/l;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 38
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/async/aw;->a(Ljava/lang/Runnable;)V

    .line 39
    return-void
.end method

.method protected abstract a(Ljava/lang/Runnable;)V
.end method

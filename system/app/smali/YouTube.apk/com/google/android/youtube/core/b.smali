.class final Lcom/google/android/youtube/core/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final a:I

.field private final b:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .parameter

    .prologue
    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 463
    iput p1, p0, Lcom/google/android/youtube/core/b;->a:I

    .line 464
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/b;->b:Ljava/util/concurrent/ThreadFactory;

    .line 465
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/b;)I
    .registers 2
    .parameter

    .prologue
    .line 458
    iget v0, p0, Lcom/google/android/youtube/core/b;->a:I

    return v0
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 4
    .parameter

    .prologue
    .line 468
    iget-object v0, p0, Lcom/google/android/youtube/core/b;->b:Ljava/util/concurrent/ThreadFactory;

    new-instance v1, Lcom/google/android/youtube/core/c;

    invoke-direct {v1, p0, p1}, Lcom/google/android/youtube/core/c;-><init>(Lcom/google/android/youtube/core/b;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method

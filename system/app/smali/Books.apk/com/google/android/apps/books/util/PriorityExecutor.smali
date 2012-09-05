.class public Lcom/google/android/apps/books/util/PriorityExecutor;
.super Ljava/lang/Object;
.source "PriorityExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/util/PriorityExecutor$PriorityComparator;,
        Lcom/google/android/apps/books/util/PriorityExecutor$Task;
    }
.end annotation


# instance fields
.field private final mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public constructor <init>()V
    .registers 8

    .prologue
    const/4 v1, 0x1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v6, Ljava/util/concurrent/PriorityBlockingQueue;

    const/16 v0, 0xb

    new-instance v2, Lcom/google/android/apps/books/util/PriorityExecutor$PriorityComparator;

    invoke-direct {v2}, Lcom/google/android/apps/books/util/PriorityExecutor$PriorityComparator;-><init>()V

    invoke-direct {v6, v0, v2}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(ILjava/util/Comparator;)V

    .line 58
    .local v6, queue:Ljava/util/concurrent/BlockingQueue;,"Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0x5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move v2, v1

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/google/android/apps/books/util/PriorityExecutor;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 60
    return-void
.end method

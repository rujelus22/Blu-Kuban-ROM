.class public final Landroid/support/place/utils/WorkerThreadPool;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CORE_POOL_SIZE:I = 0x3

.field private static final KEEP_ALIVE:I = 0x1

.field private static final MAXIMUM_POOL_SIZE:I = 0x7fffffff

.field private static final sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static final sPoolWorkQueue:Ljava/util/concurrent/LinkedBlockingQueue;

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v1, 0x3

    .line 18
    new-instance v0, Landroid/support/place/utils/WorkerThreadPool$1;

    invoke-direct {v0}, Landroid/support/place/utils/WorkerThreadPool$1;-><init>()V

    sput-object v0, Landroid/support/place/utils/WorkerThreadPool;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 26
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Landroid/support/place/utils/WorkerThreadPool;->sPoolWorkQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 29
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const v2, 0x7fffffff

    const-wide/16 v3, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Landroid/support/place/utils/WorkerThreadPool;->sPoolWorkQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    sget-object v7, Landroid/support/place/utils/WorkerThreadPool;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Landroid/support/place/utils/WorkerThreadPool;->sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .registers 2
    .parameter

    .prologue
    .line 33
    sget-object v0, Landroid/support/place/utils/WorkerThreadPool;->sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 34
    return-void
.end method

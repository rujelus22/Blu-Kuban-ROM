.class public Lcom/google/android/apps/unveil/env/ExecutorServiceFactory;
.super Ljava/lang/Object;
.source "ExecutorServiceFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/env/ExecutorServiceFactory$2;,
        Lcom/google/android/apps/unveil/env/ExecutorServiceFactory$Order;
    }
.end annotation


# static fields
.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/env/ExecutorServiceFactory;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method static synthetic access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;
    .registers 1

    .prologue
    .line 18
    sget-object v0, Lcom/google/android/apps/unveil/env/ExecutorServiceFactory;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-object v0
.end method

.method private static newFifoLoggingExecutor(II)Ljava/util/concurrent/ExecutorService;
    .registers 3
    .parameter "parallelTasks"
    .parameter "keepAliveSeconds"

    .prologue
    .line 51
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/google/android/apps/unveil/env/ExecutorServiceFactory;->newLoggingExecutor(IILjava/util/concurrent/BlockingQueue;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method private static newLifoLoggingExecutor(II)Ljava/util/concurrent/ExecutorService;
    .registers 3
    .parameter "parallelTasks"
    .parameter "keepAliveSeconds"

    .prologue
    .line 56
    new-instance v0, Lcom/google/android/apps/unveil/env/LIFOBlockingQueue;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/LIFOBlockingQueue;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/google/android/apps/unveil/env/ExecutorServiceFactory;->newLoggingExecutor(IILjava/util/concurrent/BlockingQueue;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method private static newLoggingExecutor(IILjava/util/concurrent/BlockingQueue;)Ljava/util/concurrent/ExecutorService;
    .registers 10
    .parameter "parallelTasks"
    .parameter "keepAliveSeconds"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;)",
            "Ljava/util/concurrent/ExecutorService;"
        }
    .end annotation

    .prologue
    .line 27
    .local p2, queue:Ljava/util/concurrent/BlockingQueue;,"Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    new-instance v0, Lcom/google/android/apps/unveil/env/ExecutorServiceFactory$1;

    int-to-long v3, p1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move v1, p0

    move v2, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/unveil/env/ExecutorServiceFactory$1;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    return-object v0
.end method

.method public static newLoggingExecutor(Lcom/google/android/apps/unveil/env/ExecutorServiceFactory$Order;II)Ljava/util/concurrent/ExecutorService;
    .registers 5
    .parameter "order"
    .parameter "parallelTasks"
    .parameter "keepAliveSeconds"

    .prologue
    .line 61
    sget-object v0, Lcom/google/android/apps/unveil/env/ExecutorServiceFactory$2;->$SwitchMap$com$google$android$apps$unveil$env$ExecutorServiceFactory$Order:[I

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/env/ExecutorServiceFactory$Order;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1c

    .line 67
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 63
    :pswitch_11
    invoke-static {p1, p2}, Lcom/google/android/apps/unveil/env/ExecutorServiceFactory;->newFifoLoggingExecutor(II)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 65
    :goto_15
    return-object v0

    :pswitch_16
    invoke-static {p1, p2}, Lcom/google/android/apps/unveil/env/ExecutorServiceFactory;->newLifoLoggingExecutor(II)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    goto :goto_15

    .line 61
    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_11
        :pswitch_16
    .end packed-switch
.end method

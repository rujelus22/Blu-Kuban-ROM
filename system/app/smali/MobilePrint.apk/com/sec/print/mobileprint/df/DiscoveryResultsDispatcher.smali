.class Lcom/sec/print/mobileprint/df/DiscoveryResultsDispatcher;
.super Ljava/lang/Object;
.source "DiscoveryResultsDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private volatile finish:Z

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/print/mobileprint/df/DiscoveryListener;",
            ">;"
        }
    .end annotation
.end field

.field private final results:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/sec/print/mobileprint/df/DiscoveryResult;",
            ">;"
        }
    .end annotation
.end field

.field private final threadsCount:I


# direct methods
.method constructor <init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/List;I)V
    .registers 4
    .parameter
    .parameter
    .parameter "threadsCount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/sec/print/mobileprint/df/DiscoveryResult;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/print/mobileprint/df/DiscoveryListener;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p1, results:Ljava/util/concurrent/BlockingQueue;,"Ljava/util/concurrent/BlockingQueue<Lcom/sec/print/mobileprint/df/DiscoveryResult;>;"
    .local p2, listeners:Ljava/util/List;,"Ljava/util/List<Lcom/sec/print/mobileprint/df/DiscoveryListener;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/sec/print/mobileprint/df/DiscoveryResultsDispatcher;->results:Ljava/util/concurrent/BlockingQueue;

    .line 18
    iput-object p2, p0, Lcom/sec/print/mobileprint/df/DiscoveryResultsDispatcher;->listeners:Ljava/util/List;

    .line 19
    iput p3, p0, Lcom/sec/print/mobileprint/df/DiscoveryResultsDispatcher;->threadsCount:I

    .line 20
    return-void
.end method

.method static synthetic access$000(Lcom/sec/print/mobileprint/df/DiscoveryResultsDispatcher;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 9
    iget-object v0, p0, Lcom/sec/print/mobileprint/df/DiscoveryResultsDispatcher;->listeners:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public finish()V
    .registers 2

    .prologue
    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/print/mobileprint/df/DiscoveryResultsDispatcher;->finish:Z

    .line 57
    return-void
.end method

.method public run()V
    .registers 8

    .prologue
    .line 23
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/sec/print/mobileprint/df/DiscoveryResultsDispatcher;->finish:Z

    .line 24
    iget v4, p0, Lcom/sec/print/mobileprint/df/DiscoveryResultsDispatcher;->threadsCount:I

    invoke-static {v4}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 25
    .local v1, executor:Ljava/util/concurrent/ExecutorService;
    new-instance v3, Ljava/util/concurrent/Semaphore;

    iget v4, p0, Lcom/sec/print/mobileprint/df/DiscoveryResultsDispatcher;->threadsCount:I

    invoke-direct {v3, v4}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 28
    .local v3, semaphore:Ljava/util/concurrent/Semaphore;
    :goto_10
    :try_start_10
    iget-boolean v4, p0, Lcom/sec/print/mobileprint/df/DiscoveryResultsDispatcher;->finish:Z

    if-nez v4, :cond_31

    .line 29
    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 30
    iget-object v4, p0, Lcom/sec/print/mobileprint/df/DiscoveryResultsDispatcher;->results:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/print/mobileprint/df/DiscoveryResult;

    .line 31
    .local v2, newDevice:Lcom/sec/print/mobileprint/df/DiscoveryResult;
    new-instance v4, Lcom/sec/print/mobileprint/df/DiscoveryResultsDispatcher$1;

    invoke-direct {v4, p0, v2, v3}, Lcom/sec/print/mobileprint/df/DiscoveryResultsDispatcher$1;-><init>(Lcom/sec/print/mobileprint/df/DiscoveryResultsDispatcher;Lcom/sec/print/mobileprint/df/DiscoveryResult;Ljava/util/concurrent/Semaphore;)V

    invoke-interface {v1, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_27
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_27} :catch_28

    goto :goto_10

    .line 50
    .end local v2           #newDevice:Lcom/sec/print/mobileprint/df/DiscoveryResult;
    :catch_28
    move-exception v0

    .line 51
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 53
    .end local v0           #e:Ljava/lang/InterruptedException;
    :goto_30
    return-void

    .line 48
    :cond_31
    :try_start_31
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 49
    const-wide/32 v4, 0x7fffffff

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v4, v5, v6}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_3c
    .catch Ljava/lang/InterruptedException; {:try_start_31 .. :try_end_3c} :catch_28

    goto :goto_30
.end method

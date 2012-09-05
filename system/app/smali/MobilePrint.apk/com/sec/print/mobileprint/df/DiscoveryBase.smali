.class abstract Lcom/sec/print/mobileprint/df/DiscoveryBase;
.super Ljava/lang/Object;
.source "DiscoveryBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field protected static final PRINTER_OID:Lorg/snmp4j/smi/OID;


# instance fields
.field final discoveryResultsDispatcher:Lcom/sec/print/mobileprint/df/DiscoveryResultsDispatcher;

.field private final discoveryThread:Ljava/lang/Thread;

.field private final dispatcherThread:Ljava/lang/Thread;

.field private final foundDeviceCount:Ljava/util/concurrent/atomic/AtomicInteger;

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

.field private volatile stopped:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 19
    new-instance v0, Lorg/snmp4j/smi/OID;

    const/4 v1, 0x7

    new-array v1, v1, [I

    fill-array-data v1, :array_e

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/OID;-><init>([I)V

    sput-object v0, Lcom/sec/print/mobileprint/df/DiscoveryBase;->PRINTER_OID:Lorg/snmp4j/smi/OID;

    return-void

    :array_e
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2bt 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected constructor <init>(II)V
    .registers 6
    .parameter "deviceBufferSize"
    .parameter "concurrentNotificationThreadsCount"

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-boolean v1, p0, Lcom/sec/print/mobileprint/df/DiscoveryBase;->stopped:Z

    .line 26
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/print/mobileprint/df/DiscoveryBase;->listeners:Ljava/util/List;

    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/sec/print/mobileprint/df/DiscoveryBase;->foundDeviceCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 30
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/sec/print/mobileprint/df/DiscoveryBase;->results:Ljava/util/concurrent/BlockingQueue;

    .line 31
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/print/mobileprint/df/DiscoveryBase;->discoveryThread:Ljava/lang/Thread;

    .line 32
    new-instance v0, Lcom/sec/print/mobileprint/df/DiscoveryResultsDispatcher;

    iget-object v1, p0, Lcom/sec/print/mobileprint/df/DiscoveryBase;->results:Ljava/util/concurrent/BlockingQueue;

    iget-object v2, p0, Lcom/sec/print/mobileprint/df/DiscoveryBase;->listeners:Ljava/util/List;

    invoke-direct {v0, v1, v2, p2}, Lcom/sec/print/mobileprint/df/DiscoveryResultsDispatcher;-><init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/List;I)V

    iput-object v0, p0, Lcom/sec/print/mobileprint/df/DiscoveryBase;->discoveryResultsDispatcher:Lcom/sec/print/mobileprint/df/DiscoveryResultsDispatcher;

    .line 34
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/sec/print/mobileprint/df/DiscoveryBase;->discoveryResultsDispatcher:Lcom/sec/print/mobileprint/df/DiscoveryResultsDispatcher;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/print/mobileprint/df/DiscoveryBase;->dispatcherThread:Ljava/lang/Thread;

    .line 35
    return-void
.end method


# virtual methods
.method public addDiscoveryListener(Lcom/sec/print/mobileprint/df/DiscoveryListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sec/print/mobileprint/df/DiscoveryBase;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    return-void
.end method

.method protected abstract getDiscoveryPercentComplete()D
.end method

.method public getPercentComplete()D
    .registers 5

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sec/print/mobileprint/df/DiscoveryBase;->foundDeviceCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_d

    .line 52
    invoke-virtual {p0}, Lcom/sec/print/mobileprint/df/DiscoveryBase;->getDiscoveryPercentComplete()D

    move-result-wide v0

    .line 54
    :goto_c
    return-wide v0

    :cond_d
    iget-object v0, p0, Lcom/sec/print/mobileprint/df/DiscoveryBase;->foundDeviceCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget-object v1, p0, Lcom/sec/print/mobileprint/df/DiscoveryBase;->results:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-double v0, v0

    invoke-virtual {p0}, Lcom/sec/print/mobileprint/df/DiscoveryBase;->getDiscoveryPercentComplete()D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget-object v2, p0, Lcom/sec/print/mobileprint/df/DiscoveryBase;->foundDeviceCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    goto :goto_c
.end method

.method isStopped()Z
    .registers 2

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/sec/print/mobileprint/df/DiscoveryBase;->stopped:Z

    return v0
.end method

.method newDeviceFound(Ljava/lang/String;I)V
    .registers 6
    .parameter "host"
    .parameter "version"

    .prologue
    .line 65
    :try_start_0
    iget-object v1, p0, Lcom/sec/print/mobileprint/df/DiscoveryBase;->results:Ljava/util/concurrent/BlockingQueue;

    new-instance v2, Lcom/sec/print/mobileprint/df/DiscoveryResult;

    invoke-direct {v2, p1, p2}, Lcom/sec/print/mobileprint/df/DiscoveryResult;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_a} :catch_b

    .line 69
    :goto_a
    return-void

    .line 66
    :catch_b
    move-exception v0

    .line 67
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_a
.end method

.method newDeviceFoundException(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .parameter "host"
    .parameter "exception"

    .prologue
    .line 73
    :try_start_0
    iget-object v1, p0, Lcom/sec/print/mobileprint/df/DiscoveryBase;->results:Ljava/util/concurrent/BlockingQueue;

    new-instance v2, Lcom/sec/print/mobileprint/df/DiscoveryResult;

    invoke-direct {v2, p1, p2}, Lcom/sec/print/mobileprint/df/DiscoveryResult;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_a} :catch_b

    .line 77
    :goto_a
    return-void

    .line 74
    :catch_b
    move-exception v0

    .line 75
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_a
.end method

.method public start()V
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sec/print/mobileprint/df/DiscoveryBase;->discoveryThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 39
    iget-object v0, p0, Lcom/sec/print/mobileprint/df/DiscoveryBase;->dispatcherThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 40
    return-void
.end method

.method public stop()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/print/mobileprint/df/DiscoveryBase;->stopped:Z

    .line 44
    iget-object v0, p0, Lcom/sec/print/mobileprint/df/DiscoveryBase;->discoveryThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 45
    iget-object v0, p0, Lcom/sec/print/mobileprint/df/DiscoveryBase;->dispatcherThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 46
    iget-object v0, p0, Lcom/sec/print/mobileprint/df/DiscoveryBase;->discoveryThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 47
    iget-object v0, p0, Lcom/sec/print/mobileprint/df/DiscoveryBase;->dispatcherThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 48
    return-void
.end method

.method public waitDiscovery()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sec/print/mobileprint/df/DiscoveryBase;->discoveryThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 81
    iget-object v0, p0, Lcom/sec/print/mobileprint/df/DiscoveryBase;->dispatcherThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 82
    return-void
.end method

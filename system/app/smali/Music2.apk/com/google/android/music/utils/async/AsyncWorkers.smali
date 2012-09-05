.class public Lcom/google/android/music/utils/async/AsyncWorkers;
.super Ljava/lang/Object;
.source "AsyncWorkers.java"


# static fields
.field public static final sBackendServiceWorker:Lcom/google/android/music/Worker;

.field public static final sUIBackgroundWorker:Lcom/google/android/music/Worker;

.field private static final sUniqueMessageTypes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/android/music/Worker;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 22
    new-instance v0, Lcom/google/android/music/Worker;

    const-string v1, "UIAsyncWorker"

    invoke-direct {v0, v1}, Lcom/google/android/music/Worker;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sUIBackgroundWorker:Lcom/google/android/music/Worker;

    .line 27
    new-instance v0, Lcom/google/android/music/Worker;

    const-string v1, "BGAsyncWorker"

    invoke-direct {v0, v1}, Lcom/google/android/music/Worker;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sUniqueMessageTypes:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static declared-synchronized getUniqueMessageType(Lcom/google/android/music/Worker;)I
    .registers 4
    .parameter "worker"

    .prologue
    .line 62
    const-class v2, Lcom/google/android/music/utils/async/AsyncWorkers;

    monitor-enter v2

    :try_start_3
    sget-object v1, Lcom/google/android/music/utils/async/AsyncWorkers;->sUniqueMessageTypes:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 63
    .local v0, i:Ljava/util/concurrent/atomic/AtomicInteger;
    if-nez v0, :cond_18

    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .end local v0           #i:Ljava/util/concurrent/atomic/AtomicInteger;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 65
    .restart local v0       #i:Ljava/util/concurrent/atomic/AtomicInteger;
    sget-object v1, Lcom/google/android/music/utils/async/AsyncWorkers;->sUniqueMessageTypes:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_18
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_1e

    move-result v1

    monitor-exit v2

    return v1

    .line 62
    .end local v0           #i:Ljava/util/concurrent/atomic/AtomicInteger;
    :catchall_1e
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static runAsync(Lcom/google/android/music/Worker;ILjava/lang/Runnable;Z)V
    .registers 6
    .parameter "worker"
    .parameter "msgType"
    .parameter "r"
    .parameter "clearPrevious"

    .prologue
    .line 42
    if-eqz p3, :cond_5

    .line 43
    invoke-virtual {p0, p1}, Lcom/google/android/music/Worker;->removeMessages(I)V

    .line 45
    :cond_5
    new-instance v1, Lcom/google/android/music/utils/async/TraceableRunnable;

    invoke-direct {v1, p2}, Lcom/google/android/music/utils/async/TraceableRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    .line 46
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 47
    invoke-virtual {p0, v0}, Lcom/google/android/music/Worker;->sendMessage(Landroid/os/Message;)Z

    .line 48
    return-void
.end method

.method public static runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V
    .registers 3
    .parameter "worker"
    .parameter "r"

    .prologue
    .line 37
    new-instance v0, Lcom/google/android/music/utils/async/TraceableRunnable;

    invoke-direct {v0, p1}, Lcom/google/android/music/utils/async/TraceableRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/google/android/music/Worker;->post(Ljava/lang/Runnable;)Z

    .line 38
    return-void
.end method

.method public static runAsyncWithCallback(Lcom/google/android/music/Worker;Lcom/google/android/music/utils/async/AsyncRunner;)V
    .registers 4
    .parameter "worker"
    .parameter "runner"

    .prologue
    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 54
    .local v0, callbackHandler:Landroid/os/Handler;
    new-instance v1, Lcom/google/android/music/utils/async/CallbackRunnable;

    invoke-direct {v1, v0, p1}, Lcom/google/android/music/utils/async/CallbackRunnable;-><init>(Landroid/os/Handler;Lcom/google/android/music/utils/async/AsyncRunner;)V

    invoke-virtual {p0, v1}, Lcom/google/android/music/Worker;->post(Ljava/lang/Runnable;)Z

    .line 55
    return-void
.end method

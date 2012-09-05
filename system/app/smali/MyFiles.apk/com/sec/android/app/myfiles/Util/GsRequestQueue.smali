.class public Lcom/sec/android/app/myfiles/Util/GsRequestQueue;
.super Ljava/lang/Object;
.source "GsRequestQueue.java"


# static fields
.field private static queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/sec/android/app/myfiles/Util/GsRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/sec/android/app/myfiles/Util/GsRequestQueue;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 16
    sput-object v0, Lcom/sec/android/app/myfiles/Util/GsRequestQueue;->queue:Ljava/util/Queue;

    .line 18
    sput-object v0, Lcom/sec/android/app/myfiles/Util/GsRequestQueue;->sInstance:Lcom/sec/android/app/myfiles/Util/GsRequestQueue;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/sec/android/app/myfiles/Util/GsRequestQueue;->queue:Ljava/util/Queue;

    .line 24
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/sec/android/app/myfiles/Util/GsRequestQueue;
    .registers 2

    .prologue
    .line 28
    const-class v1, Lcom/sec/android/app/myfiles/Util/GsRequestQueue;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/sec/android/app/myfiles/Util/GsRequestQueue;->sInstance:Lcom/sec/android/app/myfiles/Util/GsRequestQueue;

    if-nez v0, :cond_e

    .line 30
    new-instance v0, Lcom/sec/android/app/myfiles/Util/GsRequestQueue;

    invoke-direct {v0}, Lcom/sec/android/app/myfiles/Util/GsRequestQueue;-><init>()V

    sput-object v0, Lcom/sec/android/app/myfiles/Util/GsRequestQueue;->sInstance:Lcom/sec/android/app/myfiles/Util/GsRequestQueue;

    .line 32
    :cond_e
    sget-object v0, Lcom/sec/android/app/myfiles/Util/GsRequestQueue;->sInstance:Lcom/sec/android/app/myfiles/Util/GsRequestQueue;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 28
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized getRequest()Lcom/sec/android/app/myfiles/Util/GsRequest;
    .registers 2

    .prologue
    .line 38
    monitor-enter p0

    :goto_1
    :try_start_1
    sget-object v0, Lcom/sec/android/app/myfiles/Util/GsRequestQueue;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_19

    move-result-object v0

    if-nez v0, :cond_f

    .line 42
    :try_start_9
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_19
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_c} :catch_d

    goto :goto_1

    .line 44
    :catch_d
    move-exception v0

    goto :goto_1

    .line 50
    :cond_f
    :try_start_f
    sget-object v0, Lcom/sec/android/app/myfiles/Util/GsRequestQueue;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/myfiles/Util/GsRequest;
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_19

    monitor-exit p0

    return-object v0

    .line 38
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized init()V
    .registers 2

    .prologue
    .line 64
    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/sec/android/app/myfiles/Util/GsRequestQueue;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 66
    monitor-exit p0

    return-void

    .line 64
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized putRequest(Lcom/sec/android/app/myfiles/Util/GsRequest;)V
    .registers 3
    .parameter "request"

    .prologue
    .line 56
    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/sec/android/app/myfiles/Util/GsRequestQueue;->queue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 58
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 60
    monitor-exit p0

    return-void

    .line 56
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

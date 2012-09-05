.class public Lcom/sec/android/app/clockpackage/deskclock/EventLoader;
.super Ljava/lang/Object;
.source "EventLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/clockpackage/deskclock/EventLoader$1;,
        Lcom/sec/android/app/clockpackage/deskclock/EventLoader$LoaderThread;,
        Lcom/sec/android/app/clockpackage/deskclock/EventLoader$LoadEventsRequest;,
        Lcom/sec/android/app/clockpackage/deskclock/EventLoader$ShutdownRequest;,
        Lcom/sec/android/app/clockpackage/deskclock/EventLoader$LoadRequest;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLoaderQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/sec/android/app/clockpackage/deskclock/EventLoader$LoadRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mLoaderThread:Lcom/sec/android/app/clockpackage/deskclock/EventLoader$LoaderThread;

.field private mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 194
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/EventLoader;->mHandler:Landroid/os/Handler;

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/EventLoader;->mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 195
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/EventLoader;->mContext:Landroid/content/Context;

    .line 196
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/EventLoader;->mLoaderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 198
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/clockpackage/deskclock/EventLoader;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/EventLoader;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/clockpackage/deskclock/EventLoader;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/EventLoader;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/clockpackage/deskclock/EventLoader;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/EventLoader;->mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method


# virtual methods
.method public loadEventsInBackground(ILjava/util/ArrayList;JLjava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 15
    .parameter "numDays"
    .parameter
    .parameter "start"
    .parameter "successCallback"
    .parameter "cancelCallback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/clockpackage/deskclock/Event;",
            ">;J",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 234
    .local p2, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/clockpackage/deskclock/Event;>;"
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/EventLoader;->mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    .line 237
    .local v1, id:I
    new-instance v0, Lcom/sec/android/app/clockpackage/deskclock/EventLoader$LoadEventsRequest;

    move-wide v2, p3

    move v4, p1

    move-object v5, p2

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/clockpackage/deskclock/EventLoader$LoadEventsRequest;-><init>(IJILjava/util/ArrayList;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 241
    .local v0, request:Lcom/sec/android/app/clockpackage/deskclock/EventLoader$LoadEventsRequest;
    :try_start_10
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/EventLoader;->mLoaderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_15} :catch_16

    .line 248
    :goto_15
    return-void

    .line 242
    :catch_16
    move-exception v2

    goto :goto_15
.end method

.method public startBackgroundThread()V
    .registers 3

    .prologue
    .line 204
    new-instance v0, Lcom/sec/android/app/clockpackage/deskclock/EventLoader$LoaderThread;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/EventLoader;->mLoaderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/clockpackage/deskclock/EventLoader$LoaderThread;-><init>(Ljava/util/concurrent/LinkedBlockingQueue;Lcom/sec/android/app/clockpackage/deskclock/EventLoader;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/EventLoader;->mLoaderThread:Lcom/sec/android/app/clockpackage/deskclock/EventLoader$LoaderThread;

    .line 205
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/EventLoader;->mLoaderThread:Lcom/sec/android/app/clockpackage/deskclock/EventLoader$LoaderThread;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/deskclock/EventLoader$LoaderThread;->start()V

    .line 206
    return-void
.end method

.method public stopBackgroundThread()V
    .registers 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/EventLoader;->mLoaderThread:Lcom/sec/android/app/clockpackage/deskclock/EventLoader$LoaderThread;

    if-eqz v0, :cond_9

    .line 213
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/EventLoader;->mLoaderThread:Lcom/sec/android/app/clockpackage/deskclock/EventLoader$LoaderThread;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/deskclock/EventLoader$LoaderThread;->shutdown()V

    .line 215
    :cond_9
    return-void
.end method

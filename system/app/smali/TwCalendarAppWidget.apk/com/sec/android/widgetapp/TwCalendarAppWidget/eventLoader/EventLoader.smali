.class public Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;
.super Ljava/lang/Object;
.source "EventLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader$1;,
        Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader$LoaderThread;,
        Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader$LoadEventsRequest;,
        Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader$ShutdownRequest;,
        Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader$LoadRequest;
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
            "Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader$LoadRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mLoaderThread:Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader$LoaderThread;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 192
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;->mHandler:Landroid/os/Handler;

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;->mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 193
    iput-object p1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;->mContext:Landroid/content/Context;

    .line 194
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;->mLoaderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 195
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;->mResolver:Landroid/content/ContentResolver;

    .line 196
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;->mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

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
            "Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;",
            ">;J",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 228
    .local p2, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;>;"
    iget-object v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;->mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    .line 231
    .local v1, id:I
    new-instance v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader$LoadEventsRequest;

    move-wide v2, p3

    move v4, p1

    move-object v5, p2

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader$LoadEventsRequest;-><init>(IJILjava/util/ArrayList;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 235
    .local v0, request:Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader$LoadEventsRequest;
    :try_start_10
    iget-object v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;->mLoaderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_15} :catch_16

    .line 242
    :goto_15
    return-void

    .line 236
    :catch_16
    move-exception v2

    goto :goto_15
.end method

.method public startBackgroundThread()V
    .registers 3

    .prologue
    .line 202
    new-instance v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader$LoaderThread;

    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;->mLoaderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, v1, p0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader$LoaderThread;-><init>(Ljava/util/concurrent/LinkedBlockingQueue;Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;->mLoaderThread:Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader$LoaderThread;

    .line 203
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;->mLoaderThread:Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader$LoaderThread;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader$LoaderThread;->start()V

    .line 204
    return-void
.end method

.method public stopBackgroundThread()V
    .registers 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;->mLoaderThread:Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader$LoaderThread;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader$LoaderThread;->shutdown()V

    .line 211
    return-void
.end method

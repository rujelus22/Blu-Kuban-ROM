.class Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader$LoaderThread;
.super Ljava/lang/Thread;
.source "EventLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoaderThread"
.end annotation


# instance fields
.field mEventLoader:Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;

.field mQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader$LoadRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/LinkedBlockingQueue;Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;)V
    .registers 3
    .parameter
    .parameter "eventLoader"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader$LoadRequest;",
            ">;",
            "Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;",
            ")V"
        }
    .end annotation

    .prologue
    .line 147
    .local p1, queue:Ljava/util/concurrent/LinkedBlockingQueue;,"Ljava/util/concurrent/LinkedBlockingQueue<Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader$LoadRequest;>;"
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 148
    iput-object p1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader$LoaderThread;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 149
    iput-object p2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader$LoaderThread;->mEventLoader:Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;

    .line 150
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 165
    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 169
    :goto_5
    :try_start_5
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader$LoaderThread;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader$LoadRequest;

    .line 173
    .local v0, request:Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader$LoadRequest;
    :goto_d
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader$LoaderThread;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_23

    .line 175
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader$LoaderThread;->mEventLoader:Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;

    invoke-interface {v0, v1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader$LoadRequest;->skipRequest(Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;)V

    .line 178
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader$LoaderThread;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #request:Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader$LoadRequest;
    check-cast v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader$LoadRequest;

    .restart local v0       #request:Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader$LoadRequest;
    goto :goto_d

    .line 181
    :cond_23
    instance-of v1, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader$ShutdownRequest;

    if-eqz v1, :cond_28

    .line 182
    return-void

    .line 184
    :cond_28
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader$LoaderThread;->mEventLoader:Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;

    invoke-interface {v0, v1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader$LoadRequest;->processRequest(Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;)V
    :try_end_2d
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_2d} :catch_2e

    goto :goto_5

    .line 185
    .end local v0           #request:Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader$LoadRequest;
    :catch_2e
    move-exception v1

    goto :goto_5
.end method

.method public shutdown()V
    .registers 4

    .prologue
    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader$LoaderThread;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader$ShutdownRequest;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader$ShutdownRequest;-><init>(Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader$1;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_b} :catch_c

    .line 161
    :goto_b
    return-void

    .line 155
    :catch_c
    move-exception v0

    goto :goto_b
.end method

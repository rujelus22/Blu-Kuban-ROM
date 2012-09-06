.class Lcom/android/calendar/EventLoader$LoaderThread;
.super Ljava/lang/Thread;
.source "EventLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/EventLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoaderThread"
.end annotation


# instance fields
.field mEventLoader:Lcom/android/calendar/EventLoader;

.field mQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/android/calendar/EventLoader$LoadRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/LinkedBlockingQueue;Lcom/android/calendar/EventLoader;)V
    .registers 3
    .parameter
    .parameter "eventLoader"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/android/calendar/EventLoader$LoadRequest;",
            ">;",
            "Lcom/android/calendar/EventLoader;",
            ")V"
        }
    .end annotation

    .prologue
    .line 164
    .local p1, queue:Ljava/util/concurrent/LinkedBlockingQueue;,"Ljava/util/concurrent/LinkedBlockingQueue<Lcom/android/calendar/EventLoader$LoadRequest;>;"
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 165
    iput-object p1, p0, Lcom/android/calendar/EventLoader$LoaderThread;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 166
    iput-object p2, p0, Lcom/android/calendar/EventLoader$LoaderThread;->mEventLoader:Lcom/android/calendar/EventLoader;

    .line 167
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 182
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 186
    :goto_5
    :try_start_5
    iget-object v2, p0, Lcom/android/calendar/EventLoader$LoaderThread;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/EventLoader$LoadRequest;

    .line 190
    .local v1, request:Lcom/android/calendar/EventLoader$LoadRequest;
    :goto_d
    iget-object v2, p0, Lcom/android/calendar/EventLoader$LoaderThread;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_23

    .line 192
    iget-object v2, p0, Lcom/android/calendar/EventLoader$LoaderThread;->mEventLoader:Lcom/android/calendar/EventLoader;

    invoke-interface {v1, v2}, Lcom/android/calendar/EventLoader$LoadRequest;->skipRequest(Lcom/android/calendar/EventLoader;)V

    .line 195
    iget-object v2, p0, Lcom/android/calendar/EventLoader$LoaderThread;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #request:Lcom/android/calendar/EventLoader$LoadRequest;
    check-cast v1, Lcom/android/calendar/EventLoader$LoadRequest;

    .restart local v1       #request:Lcom/android/calendar/EventLoader$LoadRequest;
    goto :goto_d

    .line 198
    :cond_23
    instance-of v2, v1, Lcom/android/calendar/EventLoader$ShutdownRequest;

    if-eqz v2, :cond_28

    .line 199
    return-void

    .line 201
    :cond_28
    iget-object v2, p0, Lcom/android/calendar/EventLoader$LoaderThread;->mEventLoader:Lcom/android/calendar/EventLoader;

    invoke-interface {v1, v2}, Lcom/android/calendar/EventLoader$LoadRequest;->processRequest(Lcom/android/calendar/EventLoader;)V
    :try_end_2d
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_2d} :catch_2e

    goto :goto_5

    .line 202
    .end local v1           #request:Lcom/android/calendar/EventLoader$LoadRequest;
    :catch_2e
    move-exception v0

    .line 203
    .local v0, ex:Ljava/lang/InterruptedException;
    const-string v2, "Cal"

    const-string v3, "background LoaderThread interrupted!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public shutdown()V
    .registers 5

    .prologue
    .line 171
    :try_start_0
    iget-object v1, p0, Lcom/android/calendar/EventLoader$LoaderThread;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v2, Lcom/android/calendar/EventLoader$ShutdownRequest;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/calendar/EventLoader$ShutdownRequest;-><init>(Lcom/android/calendar/EventLoader$1;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_b} :catch_c

    .line 178
    :goto_b
    return-void

    .line 172
    :catch_c
    move-exception v0

    .line 176
    .local v0, ex:Ljava/lang/InterruptedException;
    const-string v1, "Cal"

    const-string v2, "LoaderThread.shutdown() interrupted!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

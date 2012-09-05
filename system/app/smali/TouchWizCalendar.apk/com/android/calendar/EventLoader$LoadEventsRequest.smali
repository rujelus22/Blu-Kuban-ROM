.class Lcom/android/calendar/EventLoader$LoadEventsRequest;
.super Ljava/lang/Object;
.source "EventLoader.java"

# interfaces
.implements Lcom/android/calendar/EventLoader$LoadRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/EventLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadEventsRequest"
.end annotation


# instance fields
.field public cancelCallback:Ljava/lang/Runnable;

.field public events:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;"
        }
    .end annotation
.end field

.field public id:I

.field public numDays:I

.field public startMillis:J

.field public successCallback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(IJILjava/util/ArrayList;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 8
    .parameter "id"
    .parameter "startMillis"
    .parameter "numDays"
    .parameter
    .parameter "successCallback"
    .parameter "cancelCallback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJI",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 108
    .local p5, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput p1, p0, Lcom/android/calendar/EventLoader$LoadEventsRequest;->id:I

    .line 110
    iput-wide p2, p0, Lcom/android/calendar/EventLoader$LoadEventsRequest;->startMillis:J

    .line 111
    iput p4, p0, Lcom/android/calendar/EventLoader$LoadEventsRequest;->numDays:I

    .line 112
    iput-object p5, p0, Lcom/android/calendar/EventLoader$LoadEventsRequest;->events:Ljava/util/ArrayList;

    .line 113
    iput-object p6, p0, Lcom/android/calendar/EventLoader$LoadEventsRequest;->successCallback:Ljava/lang/Runnable;

    .line 114
    iput-object p7, p0, Lcom/android/calendar/EventLoader$LoadEventsRequest;->cancelCallback:Ljava/lang/Runnable;

    .line 115
    return-void
.end method


# virtual methods
.method public processRequest(Lcom/android/calendar/EventLoader;)V
    .registers 10
    .parameter "eventLoader"

    .prologue
    .line 118
    #getter for: Lcom/android/calendar/EventLoader;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/calendar/EventLoader;->access$200(Lcom/android/calendar/EventLoader;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/EventLoader$LoadEventsRequest;->events:Ljava/util/ArrayList;

    iget-wide v2, p0, Lcom/android/calendar/EventLoader$LoadEventsRequest;->startMillis:J

    iget v4, p0, Lcom/android/calendar/EventLoader$LoadEventsRequest;->numDays:I

    iget v5, p0, Lcom/android/calendar/EventLoader$LoadEventsRequest;->id:I

    #getter for: Lcom/android/calendar/EventLoader;->mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {p1}, Lcom/android/calendar/EventLoader;->access$300(Lcom/android/calendar/EventLoader;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/android/calendar/Event;->loadEvents(Landroid/content/Context;Ljava/util/ArrayList;JIILjava/util/concurrent/atomic/AtomicInteger;Z)V

    .line 122
    iget v0, p0, Lcom/android/calendar/EventLoader$LoadEventsRequest;->id:I

    #getter for: Lcom/android/calendar/EventLoader;->mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {p1}, Lcom/android/calendar/EventLoader;->access$300(Lcom/android/calendar/EventLoader;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne v0, v1, :cond_33

    .line 123
    #getter for: Lcom/android/calendar/EventLoader;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/android/calendar/EventLoader;->access$000(Lcom/android/calendar/EventLoader;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/EventLoader$LoadEventsRequest;->successCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 124
    #getter for: Lcom/android/calendar/EventLoader;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/android/calendar/EventLoader;->access$000(Lcom/android/calendar/EventLoader;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/EventLoader$LoadEventsRequest;->successCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 129
    :goto_32
    return-void

    .line 126
    :cond_33
    #getter for: Lcom/android/calendar/EventLoader;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/android/calendar/EventLoader;->access$000(Lcom/android/calendar/EventLoader;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/EventLoader$LoadEventsRequest;->cancelCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 127
    #getter for: Lcom/android/calendar/EventLoader;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/android/calendar/EventLoader;->access$000(Lcom/android/calendar/EventLoader;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/EventLoader$LoadEventsRequest;->cancelCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_32
.end method

.method public skipRequest(Lcom/android/calendar/EventLoader;)V
    .registers 4
    .parameter "eventLoader"

    .prologue
    .line 132
    #getter for: Lcom/android/calendar/EventLoader;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/android/calendar/EventLoader;->access$000(Lcom/android/calendar/EventLoader;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/EventLoader$LoadEventsRequest;->cancelCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 133
    return-void
.end method

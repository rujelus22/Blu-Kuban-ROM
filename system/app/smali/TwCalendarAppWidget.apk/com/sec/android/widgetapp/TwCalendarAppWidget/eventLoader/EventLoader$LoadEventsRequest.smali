.class Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader$LoadEventsRequest;
.super Ljava/lang/Object;
.source "EventLoader.java"

# interfaces
.implements Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader$LoadRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;
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
            "Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;",
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
            "Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;",
            ">;",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 117
    .local p5, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput p1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader$LoadEventsRequest;->id:I

    .line 119
    iput-wide p2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader$LoadEventsRequest;->startMillis:J

    .line 120
    iput p4, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader$LoadEventsRequest;->numDays:I

    .line 121
    iput-object p5, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader$LoadEventsRequest;->events:Ljava/util/ArrayList;

    .line 122
    iput-object p6, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader$LoadEventsRequest;->successCallback:Ljava/lang/Runnable;

    .line 123
    iput-object p7, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader$LoadEventsRequest;->cancelCallback:Ljava/lang/Runnable;

    .line 124
    return-void
.end method


# virtual methods
.method public processRequest(Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;)V
    .registers 10
    .parameter "eventLoader"

    .prologue
    .line 127
    #getter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;->access$200(Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader$LoadEventsRequest;->events:Ljava/util/ArrayList;

    iget-wide v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader$LoadEventsRequest;->startMillis:J

    iget v4, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader$LoadEventsRequest;->numDays:I

    iget v5, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader$LoadEventsRequest;->id:I

    #getter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;->mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {p1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;->access$300(Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->loadEvents(Landroid/content/Context;Ljava/util/ArrayList;JIILjava/util/concurrent/atomic/AtomicInteger;Z)V

    .line 131
    iget v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader$LoadEventsRequest;->id:I

    #getter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;->mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {p1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;->access$300(Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne v0, v1, :cond_2a

    .line 132
    #getter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;->access$000(Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader$LoadEventsRequest;->successCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 136
    :goto_29
    return-void

    .line 134
    :cond_2a
    #getter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;->access$000(Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader$LoadEventsRequest;->cancelCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_29
.end method

.method public skipRequest(Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;)V
    .registers 4
    .parameter "eventLoader"

    .prologue
    .line 139
    #getter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;->access$000(Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader$LoadEventsRequest;->cancelCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 140
    return-void
.end method

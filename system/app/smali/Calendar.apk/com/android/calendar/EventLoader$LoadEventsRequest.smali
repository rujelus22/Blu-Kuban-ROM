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

.field public startDay:I

.field public successCallback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(IIILjava/util/ArrayList;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 7
    .parameter "id"
    .parameter "startDay"
    .parameter "numDays"
    .parameter
    .parameter "successCallback"
    .parameter "cancelCallback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
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
    .line 134
    .local p4, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput p1, p0, Lcom/android/calendar/EventLoader$LoadEventsRequest;->id:I

    .line 136
    iput p2, p0, Lcom/android/calendar/EventLoader$LoadEventsRequest;->startDay:I

    .line 137
    iput p3, p0, Lcom/android/calendar/EventLoader$LoadEventsRequest;->numDays:I

    .line 138
    iput-object p4, p0, Lcom/android/calendar/EventLoader$LoadEventsRequest;->events:Ljava/util/ArrayList;

    .line 139
    iput-object p5, p0, Lcom/android/calendar/EventLoader$LoadEventsRequest;->successCallback:Ljava/lang/Runnable;

    .line 140
    iput-object p6, p0, Lcom/android/calendar/EventLoader$LoadEventsRequest;->cancelCallback:Ljava/lang/Runnable;

    .line 141
    return-void
.end method


# virtual methods
.method public processRequest(Lcom/android/calendar/EventLoader;)V
    .registers 8
    .parameter "eventLoader"

    .prologue
    .line 144
    #getter for: Lcom/android/calendar/EventLoader;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/calendar/EventLoader;->access$200(Lcom/android/calendar/EventLoader;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/EventLoader$LoadEventsRequest;->events:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/calendar/EventLoader$LoadEventsRequest;->startDay:I

    iget v3, p0, Lcom/android/calendar/EventLoader$LoadEventsRequest;->numDays:I

    iget v4, p0, Lcom/android/calendar/EventLoader$LoadEventsRequest;->id:I

    #getter for: Lcom/android/calendar/EventLoader;->mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {p1}, Lcom/android/calendar/EventLoader;->access$300(Lcom/android/calendar/EventLoader;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/Event;->loadEvents(Landroid/content/Context;Ljava/util/ArrayList;IIILjava/util/concurrent/atomic/AtomicInteger;)V

    .line 148
    iget v0, p0, Lcom/android/calendar/EventLoader$LoadEventsRequest;->id:I

    #getter for: Lcom/android/calendar/EventLoader;->mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {p1}, Lcom/android/calendar/EventLoader;->access$300(Lcom/android/calendar/EventLoader;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne v0, v1, :cond_29

    .line 149
    #getter for: Lcom/android/calendar/EventLoader;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/android/calendar/EventLoader;->access$000(Lcom/android/calendar/EventLoader;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/EventLoader$LoadEventsRequest;->successCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 153
    :goto_28
    return-void

    .line 151
    :cond_29
    #getter for: Lcom/android/calendar/EventLoader;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/android/calendar/EventLoader;->access$000(Lcom/android/calendar/EventLoader;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/EventLoader$LoadEventsRequest;->cancelCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_28
.end method

.method public skipRequest(Lcom/android/calendar/EventLoader;)V
    .registers 4
    .parameter "eventLoader"

    .prologue
    .line 156
    #getter for: Lcom/android/calendar/EventLoader;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/android/calendar/EventLoader;->access$000(Lcom/android/calendar/EventLoader;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/EventLoader$LoadEventsRequest;->cancelCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 157
    return-void
.end method

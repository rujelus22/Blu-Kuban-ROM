.class public Lcom/google/android/apps/googlevoice/activity/HandlerAsMessageSender;
.super Ljava/lang/Object;
.source "HandlerAsMessageSender.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/activity/MessageSender;


# instance fields
.field private final handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 2
    .parameter "handler"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/HandlerAsMessageSender;->handler:Landroid/os/Handler;

    .line 18
    return-void
.end method


# virtual methods
.method public obtainMessage(I)Landroid/os/Message;
    .registers 3
    .parameter "what"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/HandlerAsMessageSender;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;
    .registers 6
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/HandlerAsMessageSender;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
    .registers 4
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/HandlerAsMessageSender;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public post(Ljava/lang/Runnable;)Z
    .registers 3
    .parameter "r"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/HandlerAsMessageSender;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public postAtTime(Ljava/lang/Runnable;J)Z
    .registers 5
    .parameter "r"
    .parameter "millis"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/HandlerAsMessageSender;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Z
    .registers 5
    .parameter "r"
    .parameter "delayMillis"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/HandlerAsMessageSender;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)V
    .registers 3
    .parameter "r"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/HandlerAsMessageSender;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 78
    return-void
.end method

.method public removeMessages(I)V
    .registers 3
    .parameter "what"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/HandlerAsMessageSender;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 73
    return-void
.end method

.method public sendEmptyMessage(I)Z
    .registers 3
    .parameter "what"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/HandlerAsMessageSender;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-result v0

    return v0
.end method

.method public sendEmptyMessageDelayed(IJ)Z
    .registers 5
    .parameter "what"
    .parameter "delayMillis"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/HandlerAsMessageSender;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move-result v0

    return v0
.end method

.method public sendMessage(Landroid/os/Message;)Z
    .registers 3
    .parameter "message"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/HandlerAsMessageSender;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public sendMessageDelayed(Landroid/os/Message;J)Z
    .registers 5
    .parameter "message"
    .parameter "delayMillis"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/HandlerAsMessageSender;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v0

    return v0
.end method

.method public sendToTarget(Landroid/os/Message;)V
    .registers 2
    .parameter "message"

    .prologue
    .line 82
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 83
    return-void
.end method

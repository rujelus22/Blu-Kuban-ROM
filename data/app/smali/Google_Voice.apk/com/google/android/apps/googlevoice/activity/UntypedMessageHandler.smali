.class public abstract Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;
.super Ljava/lang/Object;
.source "UntypedMessageHandler.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/activity/MessageReceiver;
.implements Lcom/google/android/apps/googlevoice/activity/MessageSender;


# instance fields
.field private messageSender:Lcom/google/android/apps/googlevoice/activity/MessageSender;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final obtainMessage(I)Landroid/os/Message;
    .registers 3
    .parameter "what"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;->messageSender:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    invoke-interface {v0, p1}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;
    .registers 6
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;->messageSender:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
    .registers 4
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;->messageSender:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    invoke-interface {v0, p1, p2}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final post(Ljava/lang/Runnable;)Z
    .registers 3
    .parameter "r"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;->messageSender:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    invoke-interface {v0, p1}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->post(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public postAtTime(Ljava/lang/Runnable;J)Z
    .registers 5
    .parameter "r"
    .parameter "uptimeMillis"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;->messageSender:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->postAtTime(Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Z
    .registers 5
    .parameter "r"
    .parameter "delayMillis"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;->messageSender:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method

.method public final removeCallbacks(Ljava/lang/Runnable;)V
    .registers 3
    .parameter "r"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;->messageSender:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    invoke-interface {v0, p1}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 81
    return-void
.end method

.method public final removeMessages(I)V
    .registers 3
    .parameter "what"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;->messageSender:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    invoke-interface {v0, p1}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->removeMessages(I)V

    .line 76
    return-void
.end method

.method public final sendEmptyMessage(I)Z
    .registers 3
    .parameter "what"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;->messageSender:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    invoke-interface {v0, p1}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->sendEmptyMessage(I)Z

    move-result v0

    return v0
.end method

.method public final sendEmptyMessageDelayed(IJ)Z
    .registers 5
    .parameter "what"
    .parameter "delayMillis"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;->messageSender:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->sendEmptyMessageDelayed(IJ)Z

    move-result v0

    return v0
.end method

.method public final sendMessage(Landroid/os/Message;)Z
    .registers 3
    .parameter "message"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;->messageSender:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    invoke-interface {v0, p1}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public final sendMessageDelayed(Landroid/os/Message;J)Z
    .registers 5
    .parameter "message"
    .parameter "delayMillis"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;->messageSender:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v0

    return v0
.end method

.method public sendToTarget(Landroid/os/Message;)V
    .registers 3
    .parameter "message"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;->messageSender:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    invoke-interface {v0, p1}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->sendToTarget(Landroid/os/Message;)V

    .line 86
    return-void
.end method

.method public setMessageSender(Lcom/google/android/apps/googlevoice/activity/MessageSender;)V
    .registers 2
    .parameter "messageSender"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;->messageSender:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    .line 21
    return-void
.end method

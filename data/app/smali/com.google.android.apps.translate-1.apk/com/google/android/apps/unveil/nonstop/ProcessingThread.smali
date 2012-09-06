.class public Lcom/google/android/apps/unveil/nonstop/ProcessingThread;
.super Lcom/google/android/apps/unveil/nonstop/ProcessingChain;
.source "ProcessingThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final STOP_CODE:I = -0x1


# instance fields
.field private processingHandler:Landroid/os/Handler;

.field private final threadName:Ljava/lang/String;

.field private final threadPriority:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/google/android/apps/unveil/nonstop/ProcessingChain;)V
    .registers 4
    .parameter "name"
    .parameter "priority"
    .parameter "nextThread"

    .prologue
    .line 24
    invoke-direct {p0, p3}, Lcom/google/android/apps/unveil/nonstop/ProcessingChain;-><init>(Lcom/google/android/apps/unveil/nonstop/ProcessingChain;)V

    .line 25
    iput-object p1, p0, Lcom/google/android/apps/unveil/nonstop/ProcessingThread;->threadName:Ljava/lang/String;

    .line 26
    iput p2, p0, Lcom/google/android/apps/unveil/nonstop/ProcessingThread;->threadPriority:I

    .line 27
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 31
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 33
    new-instance v0, Lcom/google/android/apps/unveil/nonstop/ProcessingThread$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/unveil/nonstop/ProcessingThread$1;-><init>(Lcom/google/android/apps/unveil/nonstop/ProcessingThread;)V

    iput-object v0, p0, Lcom/google/android/apps/unveil/nonstop/ProcessingThread;->processingHandler:Landroid/os/Handler;

    .line 49
    invoke-virtual {p0, v1}, Lcom/google/android/apps/unveil/nonstop/ProcessingThread;->setReady(Z)V

    .line 51
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/unveil/nonstop/ProcessingThread;->processingHandler:Landroid/os/Handler;

    .line 54
    invoke-virtual {p0, v1}, Lcom/google/android/apps/unveil/nonstop/ProcessingThread;->setReady(Z)V

    .line 55
    return-void
.end method

.method protected sendFrame(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;)V
    .registers 4
    .parameter "previewFrame"

    .prologue
    .line 85
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/apps/unveil/nonstop/ProcessingThread;->setReady(Z)V

    .line 86
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 87
    .local v0, message:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 89
    iget-object v1, p0, Lcom/google/android/apps/unveil/nonstop/ProcessingThread;->processingHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 90
    return-void
.end method

.method protected shutdown()V
    .registers 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/ProcessingThread;->processingHandler:Landroid/os/Handler;

    if-eqz v0, :cond_a

    .line 78
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/ProcessingThread;->processingHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 80
    :cond_a
    invoke-super {p0}, Lcom/google/android/apps/unveil/nonstop/ProcessingChain;->shutdown()V

    .line 81
    return-void
.end method

.method protected start()V
    .registers 3

    .prologue
    .line 59
    invoke-super {p0}, Lcom/google/android/apps/unveil/nonstop/ProcessingChain;->start()V

    .line 61
    iget-object v1, p0, Lcom/google/android/apps/unveil/nonstop/ProcessingThread;->processingHandler:Landroid/os/Handler;

    if-nez v1, :cond_21

    .line 62
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 64
    .local v0, thread:Ljava/lang/Thread;
    iget-object v1, p0, Lcom/google/android/apps/unveil/nonstop/ProcessingThread;->threadName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 66
    iget v1, p0, Lcom/google/android/apps/unveil/nonstop/ProcessingThread;->threadPriority:I

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 67
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 69
    :goto_19
    iget-object v1, p0, Lcom/google/android/apps/unveil/nonstop/ProcessingThread;->processingHandler:Landroid/os/Handler;

    if-nez v1, :cond_21

    .line 70
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/nonstop/ProcessingThread;->waitForNotification()V

    goto :goto_19

    .line 73
    .end local v0           #thread:Ljava/lang/Thread;
    :cond_21
    return-void
.end method

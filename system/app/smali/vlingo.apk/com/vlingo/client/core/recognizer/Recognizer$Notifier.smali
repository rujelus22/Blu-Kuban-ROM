.class Lcom/vlingo/client/core/recognizer/Recognizer$Notifier;
.super Ljava/lang/Thread;
.source "Recognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/core/recognizer/Recognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Notifier"
.end annotation


# instance fields
.field stopRequested:Z

.field final synthetic this$0:Lcom/vlingo/client/core/recognizer/Recognizer;


# direct methods
.method public constructor <init>(Lcom/vlingo/client/core/recognizer/Recognizer;)V
    .registers 3
    .parameter

    .prologue
    .line 758
    iput-object p1, p0, Lcom/vlingo/client/core/recognizer/Recognizer$Notifier;->this$0:Lcom/vlingo/client/core/recognizer/Recognizer;

    .line 759
    const-string v0, "SRNotifier"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 756
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer$Notifier;->stopRequested:Z

    .line 760
    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 3

    .prologue
    .line 763
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer$Notifier;->stopRequested:Z

    .line 764
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer$Notifier;->this$0:Lcom/vlingo/client/core/recognizer/Recognizer;

    #getter for: Lcom/vlingo/client/core/recognizer/Recognizer;->notificationQueue:Lcom/vlingo/client/core/recognizer/Queue;
    invoke-static {v0}, Lcom/vlingo/client/core/recognizer/Recognizer;->access$1400(Lcom/vlingo/client/core/recognizer/Recognizer;)Lcom/vlingo/client/core/recognizer/Queue;

    move-result-object v1

    monitor-enter v1

    .line 765
    :try_start_a
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer$Notifier;->this$0:Lcom/vlingo/client/core/recognizer/Recognizer;

    #getter for: Lcom/vlingo/client/core/recognizer/Recognizer;->notificationQueue:Lcom/vlingo/client/core/recognizer/Queue;
    invoke-static {v0}, Lcom/vlingo/client/core/recognizer/Recognizer;->access$1400(Lcom/vlingo/client/core/recognizer/Recognizer;)Lcom/vlingo/client/core/recognizer/Queue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 766
    monitor-exit v1

    .line 767
    return-void

    .line 766
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_15

    throw v0
.end method

.method public run()V
    .registers 6

    .prologue
    .line 770
    :cond_0
    iget-boolean v2, p0, Lcom/vlingo/client/core/recognizer/Recognizer$Notifier;->stopRequested:Z

    if-nez v2, :cond_6c

    .line 772
    :try_start_4
    iget-object v2, p0, Lcom/vlingo/client/core/recognizer/Recognizer$Notifier;->this$0:Lcom/vlingo/client/core/recognizer/Recognizer;

    #getter for: Lcom/vlingo/client/core/recognizer/Recognizer;->notificationQueue:Lcom/vlingo/client/core/recognizer/Queue;
    invoke-static {v2}, Lcom/vlingo/client/core/recognizer/Recognizer;->access$1400(Lcom/vlingo/client/core/recognizer/Recognizer;)Lcom/vlingo/client/core/recognizer/Queue;

    move-result-object v3

    monitor-enter v3
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_b} :catch_4b

    .line 773
    :try_start_b
    iget-object v2, p0, Lcom/vlingo/client/core/recognizer/Recognizer$Notifier;->this$0:Lcom/vlingo/client/core/recognizer/Recognizer;

    #getter for: Lcom/vlingo/client/core/recognizer/Recognizer;->notificationQueue:Lcom/vlingo/client/core/recognizer/Queue;
    invoke-static {v2}, Lcom/vlingo/client/core/recognizer/Recognizer;->access$1400(Lcom/vlingo/client/core/recognizer/Recognizer;)Lcom/vlingo/client/core/recognizer/Queue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vlingo/client/core/recognizer/Queue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 774
    iget-object v2, p0, Lcom/vlingo/client/core/recognizer/Recognizer$Notifier;->this$0:Lcom/vlingo/client/core/recognizer/Recognizer;

    #getter for: Lcom/vlingo/client/core/recognizer/Recognizer;->notificationQueue:Lcom/vlingo/client/core/recognizer/Queue;
    invoke-static {v2}, Lcom/vlingo/client/core/recognizer/Recognizer;->access$1400(Lcom/vlingo/client/core/recognizer/Recognizer;)Lcom/vlingo/client/core/recognizer/Queue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 776
    :cond_20
    monitor-exit v3
    :try_end_21
    .catchall {:try_start_b .. :try_end_21} :catchall_48

    .line 782
    :cond_21
    :goto_21
    iget-boolean v2, p0, Lcom/vlingo/client/core/recognizer/Recognizer$Notifier;->stopRequested:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/vlingo/client/core/recognizer/Recognizer$Notifier;->this$0:Lcom/vlingo/client/core/recognizer/Recognizer;

    #getter for: Lcom/vlingo/client/core/recognizer/Recognizer;->notificationQueue:Lcom/vlingo/client/core/recognizer/Queue;
    invoke-static {v2}, Lcom/vlingo/client/core/recognizer/Recognizer;->access$1400(Lcom/vlingo/client/core/recognizer/Recognizer;)Lcom/vlingo/client/core/recognizer/Queue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vlingo/client/core/recognizer/Queue;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vlingo/client/core/recognizer/Recognizer$Notification;

    .local v1, n:Lcom/vlingo/client/core/recognizer/Recognizer$Notification;
    if-eqz v1, :cond_0

    .line 783
    iget v2, v1, Lcom/vlingo/client/core/recognizer/Recognizer$Notification;->m_Status:I

    const v3, 0xf4240

    if-ne v2, v3, :cond_56

    .line 787
    iget-object v2, p0, Lcom/vlingo/client/core/recognizer/Recognizer$Notifier;->this$0:Lcom/vlingo/client/core/recognizer/Recognizer;

    #getter for: Lcom/vlingo/client/core/recognizer/Recognizer;->recorder:Lcom/vlingo/client/core/recognizer/Recorder;
    invoke-static {v2}, Lcom/vlingo/client/core/recognizer/Recognizer;->access$2600(Lcom/vlingo/client/core/recognizer/Recognizer;)Lcom/vlingo/client/core/recognizer/Recorder;

    move-result-object v3

    iget-object v2, v1, Lcom/vlingo/client/core/recognizer/Recognizer$Notification;->m_Data:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v3, v2}, Lcom/vlingo/client/core/recognizer/Recorder;->notify(Ljava/lang/Integer;)V

    goto :goto_21

    .line 776
    .end local v1           #n:Lcom/vlingo/client/core/recognizer/Recognizer$Notification;
    :catchall_48
    move-exception v2

    :try_start_49
    monitor-exit v3
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    :try_start_4a
    throw v2
    :try_end_4b
    .catch Ljava/lang/InterruptedException; {:try_start_4a .. :try_end_4b} :catch_4b

    .line 777
    :catch_4b
    move-exception v0

    .line 778
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "VLG_EXCEPTION"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 791
    .end local v0           #e:Ljava/lang/InterruptedException;
    .restart local v1       #n:Lcom/vlingo/client/core/recognizer/Recognizer$Notification;
    :cond_56
    iget-object v2, p0, Lcom/vlingo/client/core/recognizer/Recognizer$Notifier;->this$0:Lcom/vlingo/client/core/recognizer/Recognizer;

    #getter for: Lcom/vlingo/client/core/recognizer/Recognizer;->listener:Lcom/vlingo/client/core/recognizer/RecognizerListener;
    invoke-static {v2}, Lcom/vlingo/client/core/recognizer/Recognizer;->access$2700(Lcom/vlingo/client/core/recognizer/Recognizer;)Lcom/vlingo/client/core/recognizer/RecognizerListener;

    move-result-object v2

    if-eqz v2, :cond_21

    .line 798
    iget-object v2, p0, Lcom/vlingo/client/core/recognizer/Recognizer$Notifier;->this$0:Lcom/vlingo/client/core/recognizer/Recognizer;

    #getter for: Lcom/vlingo/client/core/recognizer/Recognizer;->listener:Lcom/vlingo/client/core/recognizer/RecognizerListener;
    invoke-static {v2}, Lcom/vlingo/client/core/recognizer/Recognizer;->access$2700(Lcom/vlingo/client/core/recognizer/Recognizer;)Lcom/vlingo/client/core/recognizer/RecognizerListener;

    move-result-object v2

    iget v3, v1, Lcom/vlingo/client/core/recognizer/Recognizer$Notification;->m_Status:I

    iget-object v4, v1, Lcom/vlingo/client/core/recognizer/Recognizer$Notification;->m_Data:Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/vlingo/client/core/recognizer/RecognizerListener;->notifyRecognitionState(ILjava/lang/Object;)V

    goto :goto_21

    .line 809
    .end local v1           #n:Lcom/vlingo/client/core/recognizer/Recognizer$Notification;
    :cond_6c
    return-void
.end method

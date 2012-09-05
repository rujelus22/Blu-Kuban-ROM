.class Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler$SocketTimeoutMonitor;
.super Ljava/lang/Object;
.source "UploadServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SocketTimeoutMonitor"
.end annotation


# instance fields
.field accessIntentCountDown:I

.field final lockObj:Ljava/lang/Object;

.field myThread:Ljava/lang/Thread;

.field paused:Z

.field retryTimerCount:I

.field running:Z

.field final synthetic this$1:Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler;


# direct methods
.method constructor <init>(Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler;)V
    .registers 4
    .parameter

    .prologue
    .line 675
    iput-object p1, p0, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler$SocketTimeoutMonitor;->this$1:Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 668
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler$SocketTimeoutMonitor;->accessIntentCountDown:I

    .line 669
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler$SocketTimeoutMonitor;->running:Z

    .line 670
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler$SocketTimeoutMonitor;->paused:Z

    .line 671
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler$SocketTimeoutMonitor;->lockObj:Ljava/lang/Object;

    .line 676
    const-string v0, "UploadServer.ConnectionHandler.SocketTimeoutMonitor.SocketTimeoutMonitor()"

    const-string v1, "##### ***** Created"

    invoke-static {v0, v1}, Lcom/samsung/swift/service/fx/UploadServer;->Log(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    invoke-virtual {p0}, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler$SocketTimeoutMonitor;->resetRetryTimerCount()V

    .line 678
    return-void
.end method


# virtual methods
.method decRetryTimerCount()I
    .registers 4

    .prologue
    .line 690
    iget-object v1, p0, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler$SocketTimeoutMonitor;->lockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 692
    :try_start_3
    iget v0, p0, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler$SocketTimeoutMonitor;->retryTimerCount:I

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler$SocketTimeoutMonitor;->retryTimerCount:I

    monitor-exit v1

    return v0

    .line 693
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method isPaused()Z
    .registers 2

    .prologue
    .line 698
    iget-boolean v0, p0, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler$SocketTimeoutMonitor;->paused:Z

    return v0
.end method

.method isRunning()Z
    .registers 2

    .prologue
    .line 716
    iget-boolean v0, p0, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler$SocketTimeoutMonitor;->running:Z

    return v0
.end method

.method resetRetryTimerCount()V
    .registers 3

    .prologue
    .line 682
    iget-object v1, p0, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler$SocketTimeoutMonitor;->lockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 684
    const/16 v0, 0x2ee

    :try_start_5
    iput v0, p0, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler$SocketTimeoutMonitor;->retryTimerCount:I

    .line 685
    monitor-exit v1

    .line 686
    return-void

    .line 685
    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public run()V
    .registers 6

    .prologue
    .line 743
    const-string v1, "UploadServer.ConnectionHandler.SocketTimeoutMonitor.run()"

    const-string v2, "##### ***** Starting"

    invoke-static {v1, v2}, Lcom/samsung/swift/service/fx/UploadServer;->Log(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler$SocketTimeoutMonitor;->myThread:Ljava/lang/Thread;

    .line 745
    :cond_d
    :goto_d
    invoke-virtual {p0}, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler$SocketTimeoutMonitor;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_78

    .line 747
    iget v1, p0, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler$SocketTimeoutMonitor;->accessIntentCountDown:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler$SocketTimeoutMonitor;->accessIntentCountDown:I

    .line 748
    iget v1, p0, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler$SocketTimeoutMonitor;->accessIntentCountDown:I

    if-gez v1, :cond_2c

    .line 750
    const/16 v1, 0xbb8

    iput v1, p0, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler$SocketTimeoutMonitor;->accessIntentCountDown:I

    .line 751
    const-string v1, "UploadServer.ConnectionHandler.SocketTimeoutMonitor.run()"

    const-string v2, "##### ***** Firing access event to security manager"

    invoke-static {v1, v2}, Lcom/samsung/swift/service/fx/UploadServer;->Log(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/samsung/swift/security/SecurityManager;->fireAccessEvent(I)V

    .line 755
    :cond_2c
    invoke-virtual {p0}, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler$SocketTimeoutMonitor;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 759
    :try_start_32
    iget-object v2, p0, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler$SocketTimeoutMonitor;->lockObj:Ljava/lang/Object;

    monitor-enter v2
    :try_end_35
    .catch Ljava/lang/InterruptedException; {:try_start_32 .. :try_end_35} :catch_47

    .line 761
    :try_start_35
    invoke-virtual {p0}, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler$SocketTimeoutMonitor;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 764
    iget-object v1, p0, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler$SocketTimeoutMonitor;->lockObj:Ljava/lang/Object;

    const-wide/16 v3, 0x14

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 766
    :cond_42
    monitor-exit v2

    goto :goto_d

    :catchall_44
    move-exception v1

    monitor-exit v2
    :try_end_46
    .catchall {:try_start_35 .. :try_end_46} :catchall_44

    :try_start_46
    throw v1
    :try_end_47
    .catch Ljava/lang/InterruptedException; {:try_start_46 .. :try_end_47} :catch_47

    .line 768
    :catch_47
    move-exception v1

    goto :goto_d

    .line 776
    :cond_49
    invoke-virtual {p0}, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler$SocketTimeoutMonitor;->decRetryTimerCount()I

    move-result v0

    .line 777
    .local v0, i:I
    if-lez v0, :cond_53

    .line 779
    invoke-static {}, Lcom/samsung/swift/service/fx/UploadServer;->threadSleep()V

    goto :goto_d

    .line 783
    :cond_53
    const-string v1, "UploadServer.ConnectionHandler.SocketTimeoutMonitor.run()"

    const-string v2, "##### ***** Write Timed out"

    invoke-static {v1, v2}, Lcom/samsung/swift/service/fx/UploadServer;->Log(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler$SocketTimeoutMonitor;->setPaused(Z)V

    .line 787
    :try_start_5e
    iget-object v1, p0, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler$SocketTimeoutMonitor;->this$1:Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler;

    #getter for: Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler;->socket:Ljava/net/Socket;
    invoke-static {v1}, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler;->access$300(Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler;)Ljava/net/Socket;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 789
    iget-object v1, p0, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler$SocketTimeoutMonitor;->this$1:Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler;

    #getter for: Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler;->socket:Ljava/net/Socket;
    invoke-static {v1}, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler;->access$300(Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler;)Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 790
    iget-object v1, p0, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler$SocketTimeoutMonitor;->this$1:Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler;

    const/4 v2, 0x0

    #setter for: Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler;->socket:Ljava/net/Socket;
    invoke-static {v1, v2}, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler;->access$302(Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler;Ljava/net/Socket;)Ljava/net/Socket;
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_75} :catch_76

    goto :goto_d

    .line 793
    :catch_76
    move-exception v1

    goto :goto_d

    .line 799
    .end local v0           #i:I
    :cond_78
    const-string v1, "UploadServer.ConnectionHandler.SocketTimeoutMonitor.run()"

    const-string v2, "##### ***** Ending"

    invoke-static {v1, v2}, Lcom/samsung/swift/service/fx/UploadServer;->Log(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    return-void
.end method

.method setPaused(Z)V
    .registers 4
    .parameter "paused"

    .prologue
    .line 703
    invoke-virtual {p0}, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler$SocketTimeoutMonitor;->resetRetryTimerCount()V

    .line 704
    iput-boolean p1, p0, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler$SocketTimeoutMonitor;->paused:Z

    .line 705
    if-eqz p1, :cond_8

    .line 712
    :goto_7
    return-void

    .line 708
    :cond_8
    iget-object v1, p0, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler$SocketTimeoutMonitor;->lockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 710
    :try_start_b
    iget-object v0, p0, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler$SocketTimeoutMonitor;->lockObj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 711
    monitor-exit v1

    goto :goto_7

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_12

    throw v0
.end method

.method stop()V
    .registers 3

    .prologue
    .line 721
    const-string v0, "UploadServer.ConnectionHandler.SocketTimeoutMonitor.stop()"

    const-string v1, "##### ***** Stopping"

    invoke-static {v0, v1}, Lcom/samsung/swift/service/fx/UploadServer;->Log(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler$SocketTimeoutMonitor;->running:Z

    .line 723
    iget-object v1, p0, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler$SocketTimeoutMonitor;->lockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 725
    :try_start_d
    iget-object v0, p0, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler$SocketTimeoutMonitor;->lockObj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 726
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_20

    .line 730
    :try_start_13
    iget-object v0, p0, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler$SocketTimeoutMonitor;->myThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1f

    .line 732
    iget-object v0, p0, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler$SocketTimeoutMonitor;->myThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 733
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/swift/service/fx/UploadServer$ConnectionHandler$SocketTimeoutMonitor;->myThread:Ljava/lang/Thread;
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_1f} :catch_23

    .line 739
    :cond_1f
    :goto_1f
    return-void

    .line 726
    :catchall_20
    move-exception v0

    :try_start_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v0

    .line 736
    :catch_23
    move-exception v0

    goto :goto_1f
.end method

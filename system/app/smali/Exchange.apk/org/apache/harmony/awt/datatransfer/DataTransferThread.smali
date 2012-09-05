.class public Lorg/apache/harmony/awt/datatransfer/DataTransferThread;
.super Ljava/lang/Thread;
.source "DataTransferThread.java"


# instance fields
.field private final dtk:Lorg/apache/harmony/awt/datatransfer/DTK;


# direct methods
.method public constructor <init>(Lorg/apache/harmony/awt/datatransfer/DTK;)V
    .registers 3
    .parameter "dtk"

    .prologue
    .line 32
    const-string v0, "AWT-DataTransferThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 33
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/harmony/awt/datatransfer/DataTransferThread;->setDaemon(Z)V

    .line 34
    iput-object p1, p0, Lorg/apache/harmony/awt/datatransfer/DataTransferThread;->dtk:Lorg/apache/harmony/awt/datatransfer/DTK;

    .line 35
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 39
    monitor-enter p0

    .line 41
    :try_start_1
    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataTransferThread;->dtk:Lorg/apache/harmony/awt/datatransfer/DTK;

    invoke-virtual {v0}, Lorg/apache/harmony/awt/datatransfer/DTK;->initDragAndDrop()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_10

    .line 43
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 39
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_15

    .line 46
    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DataTransferThread;->dtk:Lorg/apache/harmony/awt/datatransfer/DTK;

    invoke-virtual {v0}, Lorg/apache/harmony/awt/datatransfer/DTK;->runEventLoop()V

    .line 47
    return-void

    .line 42
    :catchall_10
    move-exception v0

    .line 43
    :try_start_11
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 44
    throw v0

    .line 39
    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public start()V
    .registers 3

    .prologue
    .line 51
    monitor-enter p0

    .line 52
    :try_start_1
    invoke-super {p0}, Ljava/lang/Thread;->start()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_10

    .line 54
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_10
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_7} :catch_9

    .line 51
    :try_start_7
    monitor-exit p0

    .line 59
    return-void

    .line 55
    :catch_9
    move-exception v0

    .line 56
    .local v0, e:Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 51
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_10
    move-exception v1

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_10

    throw v1
.end method

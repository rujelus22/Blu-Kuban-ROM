.class Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;
.super Ljava/lang/Thread;
.source "BluetoothHandsfree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothHandsfree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SignalScoCloseThread"
.end annotation


# instance fields
.field private stopped:Z

.field final synthetic this$0:Lcom/android/phone/BluetoothHandsfree;


# direct methods
.method private constructor <init>(Lcom/android/phone/BluetoothHandsfree;)V
    .registers 3
    .parameter

    .prologue
    .line 488
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 489
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;->stopped:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/BluetoothHandsfree$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 488
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 493
    :cond_1
    :goto_1
    iget-boolean v5, p0, Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;->stopped:Z

    if-nez v5, :cond_36

    .line 494
    const/4 v2, 0x0

    .line 495
    .local v2, connectedSco:Landroid/bluetooth/BluetoothSocket;
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    monitor-enter v6

    .line 496
    :try_start_9
    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/BluetoothSocket;
    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$400(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v2

    .line 497
    monitor-exit v6
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_37

    .line 498
    if-eqz v2, :cond_1

    .line 499
    new-array v0, v7, [B

    .line 500
    .local v0, b:[B
    const/4 v3, 0x0

    .line 502
    .local v3, inStream:Ljava/io/InputStream;
    :try_start_15
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_3a

    move-result-object v3

    .line 505
    :goto_19
    if-eqz v3, :cond_1

    .line 510
    const/4 v5, 0x0

    const/4 v6, 0x1

    :try_start_1d
    invoke-virtual {v3, v0, v5, v6}, Ljava/io/InputStream;->read([BII)I
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_1

    .line 511
    :catch_21
    move-exception v1

    .line 515
    .local v1, connectException:Ljava/io/IOException;
    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;
    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$1100(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    move-result-object v5

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    .line 516
    .local v4, msg:Landroid/os/Message;
    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHandler:Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;
    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$1100(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/phone/BluetoothHandsfree$HandsfreeMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 522
    .end local v0           #b:[B
    .end local v1           #connectException:Ljava/io/IOException;
    .end local v2           #connectedSco:Landroid/bluetooth/BluetoothSocket;
    .end local v3           #inStream:Ljava/io/InputStream;
    .end local v4           #msg:Landroid/os/Message;
    :cond_36
    return-void

    .line 497
    .restart local v2       #connectedSco:Landroid/bluetooth/BluetoothSocket;
    :catchall_37
    move-exception v5

    :try_start_38
    monitor-exit v6
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v5

    .line 503
    .restart local v0       #b:[B
    .restart local v3       #inStream:Ljava/io/InputStream;
    :catch_3a
    move-exception v5

    goto :goto_19
.end method

.method shutdown()V
    .registers 2

    .prologue
    .line 526
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;->stopped:Z

    .line 527
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->closeConnectedSco()V
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$1300(Lcom/android/phone/BluetoothHandsfree;)V

    .line 528
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;->interrupt()V

    .line 529
    return-void
.end method

.class Lcom/android/bluetooth/opp/BluetoothOppRfcommListener$1;
.super Ljava/lang/Thread;
.source "BluetoothOppRfcommListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->start(Landroid/os/Handler;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    const/4 v10, 0x1

    .line 116
    const/4 v5, 0x1

    .line 122
    .local v5, serverOK:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_3
    const/16 v7, 0xa

    if-ge v3, v7, :cond_64

    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mInterrupted:Z
    invoke-static {v7}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->access$000(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;)Z

    move-result v7

    if-nez v7, :cond_64

    .line 124
    :try_start_f
    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->access$300(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v8

    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mBtOppRfcommChannel:I
    invoke-static {v9}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->access$200(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/bluetooth/BluetoothAdapter;->listenUsingInsecureRfcommOn(I)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v8

    #setter for: Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mBtServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    invoke-static {v7, v8}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->access$102(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;Landroid/bluetooth/BluetoothServerSocket;)Landroid/bluetooth/BluetoothServerSocket;
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_24} :catch_37

    .line 130
    :goto_24
    if-nez v5, :cond_64

    .line 131
    monitor-enter p0

    .line 133
    :try_start_27
    const-string v7, "BtOppRfcommListener"

    const-string v8, "wait 3 seconds"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const-wide/16 v7, 0xbb8

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_33
    .catchall {:try_start_27 .. :try_end_33} :catchall_61
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_33} :catch_52

    .line 139
    :goto_33
    :try_start_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_61

    .line 122
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 126
    :catch_37
    move-exception v2

    .line 127
    .local v2, e1:Ljava/io/IOException;
    const-string v7, "BtOppRfcommListener"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error create RfcommServerSocket "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const/4 v5, 0x0

    goto :goto_24

    .line 135
    .end local v2           #e1:Ljava/io/IOException;
    :catch_52
    move-exception v1

    .line 136
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_53
    const-string v7, "BtOppRfcommListener"

    const-string v8, "socketAcceptThread thread was interrupted (3)"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    const/4 v8, 0x1

    #setter for: Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mInterrupted:Z
    invoke-static {v7, v8}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->access$002(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;Z)Z

    goto :goto_33

    .line 139
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_61
    move-exception v7

    monitor-exit p0
    :try_end_63
    .catchall {:try_start_53 .. :try_end_63} :catchall_61

    throw v7

    .line 144
    :cond_64
    if-nez v5, :cond_72

    .line 145
    const-string v7, "BtOppRfcommListener"

    const-string v8, "Error start listening after 10 try"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    #setter for: Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mInterrupted:Z
    invoke-static {v7, v10}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->access$002(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;Z)Z

    .line 148
    :cond_72
    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mInterrupted:Z
    invoke-static {v7}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->access$000(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;)Z

    move-result v7

    if-nez v7, :cond_98

    .line 149
    const-string v7, "BtOppRfcommListener"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Accept thread started on channel "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mBtOppRfcommChannel:I
    invoke-static {v9}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->access$200(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_98
    :goto_98
    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mInterrupted:Z
    invoke-static {v7}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->access$000(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;)Z

    move-result v7

    if-nez v7, :cond_fc

    .line 154
    :try_start_a0
    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mBtServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    invoke-static {v7}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->access$100(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v7

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothServerSocket;->accept()Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    .line 155
    .local v0, clientSocket:Landroid/bluetooth/BluetoothSocket;
    const-string v7, "BtOppRfcommListener"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Accepted connectoin from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    new-instance v6, Lcom/android/bluetooth/opp/BluetoothOppRfcommTransport;

    invoke-direct {v6, v0}, Lcom/android/bluetooth/opp/BluetoothOppRfcommTransport;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    .line 159
    .local v6, transport:Lcom/android/bluetooth/opp/BluetoothOppRfcommTransport;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 160
    .local v4, msg:Landroid/os/Message;
    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->mCallback:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;->access$400(Lcom/android/bluetooth/opp/BluetoothOppRfcommListener;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 161
    const/16 v7, 0x64

    iput v7, v4, Landroid/os/Message;->what:I

    .line 162
    iput-object v6, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 163
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V
    :try_end_e1
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_e1} :catch_e2

    goto :goto_98

    .line 164
    .end local v0           #clientSocket:Landroid/bluetooth/BluetoothSocket;
    .end local v4           #msg:Landroid/os/Message;
    .end local v6           #transport:Lcom/android/bluetooth/opp/BluetoothOppRfcommTransport;
    :catch_e2
    move-exception v1

    .line 165
    .local v1, e:Ljava/io/IOException;
    const-string v7, "BtOppRfcommListener"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error accept connection "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_98

    .line 168
    .end local v1           #e:Ljava/io/IOException;
    :cond_fc
    const-string v7, "BtOppRfcommListener"

    const-string v8, "BluetoothSocket listen thread finished"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return-void
.end method

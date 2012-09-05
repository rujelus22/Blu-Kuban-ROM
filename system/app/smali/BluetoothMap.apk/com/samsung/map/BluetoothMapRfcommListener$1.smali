.class Lcom/samsung/map/BluetoothMapRfcommListener$1;
.super Ljava/lang/Thread;
.source "BluetoothMapRfcommListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/map/BluetoothMapRfcommListener;->start(Landroid/os/Handler;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/map/BluetoothMapRfcommListener;


# direct methods
.method constructor <init>(Lcom/samsung/map/BluetoothMapRfcommListener;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/samsung/map/BluetoothMapRfcommListener$1;->this$0:Lcom/samsung/map/BluetoothMapRfcommListener;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    const/4 v12, 0x1

    .line 110
    const/4 v4, 0x1

    .line 112
    .local v4, serverOK:Z
    invoke-static {}, Lcom/samsung/map/BluetoothMapRfcommListener;->access$000()Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 113
    :goto_7
    :try_start_7
    iget-object v7, p0, Lcom/samsung/map/BluetoothMapRfcommListener$1;->this$0:Lcom/samsung/map/BluetoothMapRfcommListener;

    #getter for: Lcom/samsung/map/BluetoothMapRfcommListener;->channel:I
    invoke-static {v7}, Lcom/samsung/map/BluetoothMapRfcommListener;->access$100(Lcom/samsung/map/BluetoothMapRfcommListener;)I

    move-result v7

    const/16 v9, 0x1e

    if-ge v7, v9, :cond_b7

    .line 114
    iget-object v7, p0, Lcom/samsung/map/BluetoothMapRfcommListener$1;->this$0:Lcom/samsung/map/BluetoothMapRfcommListener;

    #getter for: Lcom/samsung/map/BluetoothMapRfcommListener;->mInterrupted:Z
    invoke-static {v7}, Lcom/samsung/map/BluetoothMapRfcommListener;->access$200(Lcom/samsung/map/BluetoothMapRfcommListener;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 115
    monitor-exit v8

    .line 185
    :cond_1a
    :goto_1a
    return-void

    .line 123
    :cond_1b
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1c
    const/16 v7, 0xa

    if-ge v2, v7, :cond_b5

    iget-object v7, p0, Lcom/samsung/map/BluetoothMapRfcommListener$1;->this$0:Lcom/samsung/map/BluetoothMapRfcommListener;

    #getter for: Lcom/samsung/map/BluetoothMapRfcommListener;->mInterrupted:Z
    invoke-static {v7}, Lcom/samsung/map/BluetoothMapRfcommListener;->access$200(Lcom/samsung/map/BluetoothMapRfcommListener;)Z
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_76

    move-result v7

    if-nez v7, :cond_b5

    .line 124
    const/4 v4, 0x1

    .line 126
    :try_start_29
    iget-object v7, p0, Lcom/samsung/map/BluetoothMapRfcommListener$1;->this$0:Lcom/samsung/map/BluetoothMapRfcommListener;

    iget-object v9, p0, Lcom/samsung/map/BluetoothMapRfcommListener$1;->this$0:Lcom/samsung/map/BluetoothMapRfcommListener;

    #getter for: Lcom/samsung/map/BluetoothMapRfcommListener;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v9}, Lcom/samsung/map/BluetoothMapRfcommListener;->access$400(Lcom/samsung/map/BluetoothMapRfcommListener;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/map/BluetoothMapRfcommListener$1;->this$0:Lcom/samsung/map/BluetoothMapRfcommListener;

    #getter for: Lcom/samsung/map/BluetoothMapRfcommListener;->channel:I
    invoke-static {v10}, Lcom/samsung/map/BluetoothMapRfcommListener;->access$100(Lcom/samsung/map/BluetoothMapRfcommListener;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/bluetooth/BluetoothAdapter;->listenUsingEncryptedRfcommOn(I)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v9

    #setter for: Lcom/samsung/map/BluetoothMapRfcommListener;->mBtServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    invoke-static {v7, v9}, Lcom/samsung/map/BluetoothMapRfcommListener;->access$302(Lcom/samsung/map/BluetoothMapRfcommListener;Landroid/bluetooth/BluetoothServerSocket;)Landroid/bluetooth/BluetoothServerSocket;
    :try_end_3e
    .catchall {:try_start_29 .. :try_end_3e} :catchall_76
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_3e} :catch_4a

    .line 132
    :goto_3e
    if-nez v4, :cond_7c

    .line 133
    :try_start_40
    monitor-enter p0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_76

    .line 136
    const-wide/16 v9, 0xbb8

    :try_start_43
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_79
    .catch Ljava/lang/InterruptedException; {:try_start_43 .. :try_end_46} :catch_65

    .line 142
    :try_start_46
    monitor-exit p0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_79

    .line 123
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 127
    :catch_4a
    move-exception v1

    .line 128
    .local v1, e1:Ljava/io/IOException;
    :try_start_4b
    const-string v7, "BtMapRfcommListener"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error create RfcommServerSocket "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catchall {:try_start_4b .. :try_end_63} :catchall_76

    .line 129
    const/4 v4, 0x0

    goto :goto_3e

    .line 137
    .end local v1           #e1:Ljava/io/IOException;
    :catch_65
    move-exception v0

    .line 138
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_66
    const-string v7, "BtMapRfcommListener"

    const-string v9, "socketAcceptThread thread was interrupted"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v7, p0, Lcom/samsung/map/BluetoothMapRfcommListener$1;->this$0:Lcom/samsung/map/BluetoothMapRfcommListener;

    const/4 v9, 0x1

    #setter for: Lcom/samsung/map/BluetoothMapRfcommListener;->mInterrupted:Z
    invoke-static {v7, v9}, Lcom/samsung/map/BluetoothMapRfcommListener;->access$202(Lcom/samsung/map/BluetoothMapRfcommListener;Z)Z

    .line 140
    monitor-exit p0
    :try_end_74
    .catchall {:try_start_66 .. :try_end_74} :catchall_79

    :try_start_74
    monitor-exit v8

    goto :goto_1a

    .line 158
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v2           #i:I
    :catchall_76
    move-exception v7

    monitor-exit v8
    :try_end_78
    .catchall {:try_start_74 .. :try_end_78} :catchall_76

    throw v7

    .line 142
    .restart local v2       #i:I
    :catchall_79
    move-exception v7

    :try_start_7a
    monitor-exit p0
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_79

    :try_start_7b
    throw v7

    .line 145
    :cond_7c
    iget-object v7, p0, Lcom/samsung/map/BluetoothMapRfcommListener$1;->this$0:Lcom/samsung/map/BluetoothMapRfcommListener;

    #getter for: Lcom/samsung/map/BluetoothMapRfcommListener;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/samsung/map/BluetoothMapRfcommListener;->access$500(Lcom/samsung/map/BluetoothMapRfcommListener;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x1110029

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_b5

    .line 147
    new-instance v5, Lcom/samsung/map/SamsungMAPServiceRecord;

    iget-object v7, p0, Lcom/samsung/map/BluetoothMapRfcommListener$1;->this$0:Lcom/samsung/map/BluetoothMapRfcommListener;

    #getter for: Lcom/samsung/map/BluetoothMapRfcommListener;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/samsung/map/BluetoothMapRfcommListener;->access$500(Lcom/samsung/map/BluetoothMapRfcommListener;)Landroid/content/Context;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/samsung/map/SamsungMAPServiceRecord;-><init>(Landroid/content/Context;)V

    .line 148
    .local v5, smsr:Lcom/samsung/map/SamsungMAPServiceRecord;
    iget-object v7, p0, Lcom/samsung/map/BluetoothMapRfcommListener$1;->this$0:Lcom/samsung/map/BluetoothMapRfcommListener;

    #getter for: Lcom/samsung/map/BluetoothMapRfcommListener;->serviceName:Ljava/lang/String;
    invoke-static {v7}, Lcom/samsung/map/BluetoothMapRfcommListener;->access$600(Lcom/samsung/map/BluetoothMapRfcommListener;)Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Lcom/samsung/map/BluetoothMapRfcommListener$1;->this$0:Lcom/samsung/map/BluetoothMapRfcommListener;

    #getter for: Lcom/samsung/map/BluetoothMapRfcommListener;->MASInstanceID:I
    invoke-static {v9}, Lcom/samsung/map/BluetoothMapRfcommListener;->access$700(Lcom/samsung/map/BluetoothMapRfcommListener;)I

    move-result v9

    iget-object v10, p0, Lcom/samsung/map/BluetoothMapRfcommListener$1;->this$0:Lcom/samsung/map/BluetoothMapRfcommListener;

    #getter for: Lcom/samsung/map/BluetoothMapRfcommListener;->supportedMessageTypes:I
    invoke-static {v10}, Lcom/samsung/map/BluetoothMapRfcommListener;->access$800(Lcom/samsung/map/BluetoothMapRfcommListener;)I

    move-result v10

    iget-object v11, p0, Lcom/samsung/map/BluetoothMapRfcommListener$1;->this$0:Lcom/samsung/map/BluetoothMapRfcommListener;

    #getter for: Lcom/samsung/map/BluetoothMapRfcommListener;->channel:I
    invoke-static {v11}, Lcom/samsung/map/BluetoothMapRfcommListener;->access$100(Lcom/samsung/map/BluetoothMapRfcommListener;)I

    move-result v11

    invoke-virtual {v5, v7, v9, v10, v11}, Lcom/samsung/map/SamsungMAPServiceRecord;->addRfcommServiceRecord(Ljava/lang/String;III)V

    .line 154
    .end local v5           #smsr:Lcom/samsung/map/SamsungMAPServiceRecord;
    :cond_b5
    if-eqz v4, :cond_c8

    .line 158
    .end local v2           #i:I
    :cond_b7
    monitor-exit v8
    :try_end_b8
    .catchall {:try_start_7b .. :try_end_b8} :catchall_76

    .line 160
    if-nez v4, :cond_cf

    .line 161
    const-string v7, "BtMapRfcommListener"

    const-string v8, "Error start listening after 10 try"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v7, p0, Lcom/samsung/map/BluetoothMapRfcommListener$1;->this$0:Lcom/samsung/map/BluetoothMapRfcommListener;

    #setter for: Lcom/samsung/map/BluetoothMapRfcommListener;->mInterrupted:Z
    invoke-static {v7, v12}, Lcom/samsung/map/BluetoothMapRfcommListener;->access$202(Lcom/samsung/map/BluetoothMapRfcommListener;Z)Z

    goto/16 :goto_1a

    .line 113
    .restart local v2       #i:I
    :cond_c8
    :try_start_c8
    iget-object v7, p0, Lcom/samsung/map/BluetoothMapRfcommListener$1;->this$0:Lcom/samsung/map/BluetoothMapRfcommListener;

    invoke-static {v7}, Lcom/samsung/map/BluetoothMapRfcommListener;->access$108(Lcom/samsung/map/BluetoothMapRfcommListener;)I
    :try_end_cd
    .catchall {:try_start_c8 .. :try_end_cd} :catchall_76

    goto/16 :goto_7

    .line 165
    .end local v2           #i:I
    :cond_cf
    iget-object v7, p0, Lcom/samsung/map/BluetoothMapRfcommListener$1;->this$0:Lcom/samsung/map/BluetoothMapRfcommListener;

    #getter for: Lcom/samsung/map/BluetoothMapRfcommListener;->mInterrupted:Z
    invoke-static {v7}, Lcom/samsung/map/BluetoothMapRfcommListener;->access$200(Lcom/samsung/map/BluetoothMapRfcommListener;)Z

    move-result v7

    if-nez v7, :cond_d7

    .line 168
    :cond_d7
    :goto_d7
    iget-object v7, p0, Lcom/samsung/map/BluetoothMapRfcommListener$1;->this$0:Lcom/samsung/map/BluetoothMapRfcommListener;

    #getter for: Lcom/samsung/map/BluetoothMapRfcommListener;->mInterrupted:Z
    invoke-static {v7}, Lcom/samsung/map/BluetoothMapRfcommListener;->access$200(Lcom/samsung/map/BluetoothMapRfcommListener;)Z

    move-result v7

    if-nez v7, :cond_1a

    .line 170
    :try_start_df
    iget-object v7, p0, Lcom/samsung/map/BluetoothMapRfcommListener$1;->this$0:Lcom/samsung/map/BluetoothMapRfcommListener;

    iget-object v8, p0, Lcom/samsung/map/BluetoothMapRfcommListener$1;->this$0:Lcom/samsung/map/BluetoothMapRfcommListener;

    #getter for: Lcom/samsung/map/BluetoothMapRfcommListener;->mBtServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    invoke-static {v8}, Lcom/samsung/map/BluetoothMapRfcommListener;->access$300(Lcom/samsung/map/BluetoothMapRfcommListener;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v8

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothServerSocket;->accept()Landroid/bluetooth/BluetoothSocket;

    move-result-object v8

    #setter for: Lcom/samsung/map/BluetoothMapRfcommListener;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    invoke-static {v7, v8}, Lcom/samsung/map/BluetoothMapRfcommListener;->access$902(Lcom/samsung/map/BluetoothMapRfcommListener;Landroid/bluetooth/BluetoothSocket;)Landroid/bluetooth/BluetoothSocket;

    .line 173
    new-instance v6, Lcom/samsung/map/BluetoothMapObexTransport;

    iget-object v7, p0, Lcom/samsung/map/BluetoothMapRfcommListener$1;->this$0:Lcom/samsung/map/BluetoothMapRfcommListener;

    #getter for: Lcom/samsung/map/BluetoothMapRfcommListener;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    invoke-static {v7}, Lcom/samsung/map/BluetoothMapRfcommListener;->access$900(Lcom/samsung/map/BluetoothMapRfcommListener;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/map/BluetoothMapRfcommListener$1;->this$0:Lcom/samsung/map/BluetoothMapRfcommListener;

    #getter for: Lcom/samsung/map/BluetoothMapRfcommListener;->MASInstanceID:I
    invoke-static {v8}, Lcom/samsung/map/BluetoothMapRfcommListener;->access$700(Lcom/samsung/map/BluetoothMapRfcommListener;)I

    move-result v8

    invoke-direct {v6, v7, v8}, Lcom/samsung/map/BluetoothMapObexTransport;-><init>(Landroid/bluetooth/BluetoothSocket;I)V

    .line 175
    .local v6, transport:Lcom/samsung/map/BluetoothMapObexTransport;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 176
    .local v3, msg:Landroid/os/Message;
    iget-object v7, p0, Lcom/samsung/map/BluetoothMapRfcommListener$1;->this$0:Lcom/samsung/map/BluetoothMapRfcommListener;

    #getter for: Lcom/samsung/map/BluetoothMapRfcommListener;->mCallback:Landroid/os/Handler;
    invoke-static {v7}, Lcom/samsung/map/BluetoothMapRfcommListener;->access$1000(Lcom/samsung/map/BluetoothMapRfcommListener;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 177
    const/16 v7, 0x64

    iput v7, v3, Landroid/os/Message;->what:I

    .line 178
    iput-object v6, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 179
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V
    :try_end_115
    .catch Ljava/io/IOException; {:try_start_df .. :try_end_115} :catch_116

    goto :goto_d7

    .line 180
    .end local v3           #msg:Landroid/os/Message;
    .end local v6           #transport:Lcom/samsung/map/BluetoothMapObexTransport;
    :catch_116
    move-exception v0

    .line 181
    .local v0, e:Ljava/io/IOException;
    const-string v7, "BtMapRfcommListener"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error accept connection "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d7
.end method

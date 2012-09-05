.class Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;
.super Ljava/lang/Thread;
.source "BluetoothOppObexClientSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientThread"
.end annotation


# instance fields
.field private mConnected:Z

.field private mContext1:Landroid/content/Context;

.field private mCs:Ljavax/obex/ClientSession;

.field private mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

.field private mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

.field private mTransport1:Ljavax/obex/ObexTransport;

.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

.field private volatile waitingForShare:Z

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Landroid/content/Context;Ljavax/obex/ObexTransport;)V
    .registers 8
    .parameter
    .parameter "context"
    .parameter "transport"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 143
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    .line 144
    const-string v1, "BtOpp ClientThread"

    invoke-direct {p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 139
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    .line 141
    iput-boolean v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mConnected:Z

    .line 145
    iput-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    .line 146
    iput-object p3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mTransport1:Ljavax/obex/ObexTransport;

    .line 147
    iput-boolean v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->waitingForShare:Z

    .line 148
    #setter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mWaitingForRemote:Z
    invoke-static {p1, v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$002(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    .line 150
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 151
    .local v0, pm:Landroid/os/PowerManager;
    const-string v1, "BtOpp ObexClient"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 152
    return-void
.end method

.method private connect()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 233
    const-string v3, "BtOpp ObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Create ClientSession with transport "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mTransport1:Ljavax/obex/ObexTransport;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :try_start_1f
    new-instance v3, Ljavax/obex/ClientSession;

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mTransport1:Ljavax/obex/ObexTransport;

    invoke-direct {v3, v4}, Ljavax/obex/ClientSession;-><init>(Ljavax/obex/ObexTransport;)V

    iput-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/obex/ClientSession;

    .line 236
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mConnected:Z
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_2b} :catch_56

    .line 240
    :goto_2b
    iget-boolean v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mConnected:Z

    if-eqz v3, :cond_4d

    .line 241
    iput-boolean v6, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mConnected:Z

    .line 242
    new-instance v2, Ljavax/obex/HeaderSet;

    invoke-direct {v2}, Ljavax/obex/HeaderSet;-><init>()V

    .line 243
    .local v2, hs:Ljavax/obex/HeaderSet;
    monitor-enter p0

    .line 244
    :try_start_37
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    const/4 v4, 0x1

    #setter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mWaitingForRemote:Z
    invoke-static {v3, v4}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$002(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    .line 245
    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_5f

    .line 247
    :try_start_3e
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/obex/ClientSession;

    invoke-virtual {v3, v2}, Ljavax/obex/ClientSession;->connect(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;

    .line 248
    const-string v3, "BtOpp ObexClient"

    const-string v4, "OBEX session created"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mConnected:Z
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_4d} :catch_62

    .line 254
    .end local v2           #hs:Ljavax/obex/HeaderSet;
    :cond_4d
    :goto_4d
    monitor-enter p0

    .line 255
    :try_start_4e
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    const/4 v4, 0x0

    #setter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mWaitingForRemote:Z
    invoke-static {v3, v4}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$002(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    .line 256
    monitor-exit p0
    :try_end_55
    .catchall {:try_start_4e .. :try_end_55} :catchall_6b

    .line 257
    return-void

    .line 237
    :catch_56
    move-exception v1

    .line 238
    .local v1, e1:Ljava/io/IOException;
    const-string v3, "BtOpp ObexClient"

    const-string v4, "OBEX session create error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    .line 245
    .end local v1           #e1:Ljava/io/IOException;
    .restart local v2       #hs:Ljavax/obex/HeaderSet;
    :catchall_5f
    move-exception v3

    :try_start_60
    monitor-exit p0
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    throw v3

    .line 250
    :catch_62
    move-exception v0

    .line 251
    .local v0, e:Ljava/io/IOException;
    const-string v3, "BtOpp ObexClient"

    const-string v4, "OBEX session connect error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d

    .line 256
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #hs:Ljavax/obex/HeaderSet;
    :catchall_6b
    move-exception v3

    :try_start_6c
    monitor-exit p0
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    throw v3
.end method

.method private disconnect()V
    .registers 5

    .prologue
    .line 205
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/obex/ClientSession;

    if-eqz v1, :cond_a

    .line 206
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/obex/ClientSession;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavax/obex/ClientSession;->disconnect(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;

    .line 208
    :cond_a
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/obex/ClientSession;

    .line 209
    const-string v1, "BtOpp ObexClient"

    const-string v2, "OBEX session disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_14} :catch_35

    .line 214
    :goto_14
    :try_start_14
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/obex/ClientSession;

    if-eqz v1, :cond_2b

    .line 215
    const-string v1, "BtOpp ObexClient"

    const-string v2, "OBEX session close mCs"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/obex/ClientSession;

    invoke-virtual {v1}, Ljavax/obex/ClientSession;->close()V

    .line 217
    const-string v1, "BtOpp ObexClient"

    const-string v2, "OBEX session closed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_2b} :catch_4f

    .line 222
    :cond_2b
    :goto_2b
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mTransport1:Ljavax/obex/ObexTransport;

    if-eqz v1, :cond_34

    .line 224
    :try_start_2f
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mTransport1:Ljavax/obex/ObexTransport;

    invoke-interface {v1}, Ljavax/obex/ObexTransport;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_34} :catch_69

    .line 230
    :cond_34
    :goto_34
    return-void

    .line 210
    :catch_35
    move-exception v0

    .line 211
    .local v0, e:Ljava/io/IOException;
    const-string v1, "BtOpp ObexClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OBEX session disconnect error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 219
    .end local v0           #e:Ljava/io/IOException;
    :catch_4f
    move-exception v0

    .line 220
    .restart local v0       #e:Ljava/io/IOException;
    const-string v1, "BtOpp ObexClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OBEX session close error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    .line 225
    .end local v0           #e:Ljava/io/IOException;
    :catch_69
    move-exception v0

    .line 226
    .restart local v0       #e:Ljava/io/IOException;
    const-string v1, "BtOpp ObexClient"

    const-string v2, "mTransport.close error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34
.end method

.method private doSend()V
    .registers 7

    .prologue
    const/16 v5, 0xc8

    .line 261
    const/16 v2, 0xc8

    .line 264
    .local v2, status:I
    :goto_4
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    if-nez v3, :cond_12

    .line 266
    const-wide/16 v3, 0x32

    :try_start_a
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_4

    .line 267
    :catch_e
    move-exception v0

    .line 268
    .local v0, e:Ljava/lang/InterruptedException;
    const/16 v2, 0x1ea

    .line 269
    goto :goto_4

    .line 271
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_12
    iget-boolean v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mConnected:Z

    if-nez v3, :cond_18

    .line 273
    const/16 v2, 0x1f1

    .line 275
    :cond_18
    if-ne v2, v5, :cond_45

    .line 277
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    if-eqz v3, :cond_40

    .line 278
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    invoke-direct {p0, v3}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->sendFile(Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;)I

    move-result v2

    .line 283
    :goto_26
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->waitingForShare:Z

    .line 288
    :goto_29
    if-ne v2, v5, :cond_4f

    .line 289
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mCallback:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$200(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 290
    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x0

    iput v3, v1, Landroid/os/Message;->what:I

    .line 291
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 292
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 300
    :goto_3f
    return-void

    .line 281
    .end local v1           #msg:Landroid/os/Message;
    :cond_40
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    iget v2, v3, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mStatus:I

    goto :goto_26

    .line 285
    :cond_45
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-static {v3, v4, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    goto :goto_29

    .line 294
    :cond_4f
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mCallback:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$200(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 295
    .restart local v1       #msg:Landroid/os/Message;
    const/4 v3, 0x2

    iput v3, v1, Landroid/os/Message;->what:I

    .line 296
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iput v2, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    .line 297
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 298
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3f
.end method

.method private handleSendException(Ljava/lang/String;)V
    .registers 6
    .parameter "exception"

    .prologue
    .line 559
    const-string v1, "BtOpp ObexClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error when sending file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    const/16 v0, 0x1f0

    .line 561
    .local v0, status:I
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v2, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-static {v1, v2, v0}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 562
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mCallback:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$200(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 563
    return-void
.end method

.method private processShareInfo()Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 306
    const-string v3, "BtOpp ObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Client thread processShareInfo() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v5, v5, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget-object v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget-object v5, v5, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMimetype:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget-object v6, v6, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDestination:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6}, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->generateFileInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    move-result-object v1

    .line 310
    .local v1, fileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;
    iget-object v3, v1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    if-eqz v3, :cond_3b

    iget-wide v3, v1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_4e

    .line 311
    :cond_3b
    const-string v3, "BtOpp ObexClient"

    const-string v4, "BluetoothOppSendFileInfo get invalid file"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    iget v5, v1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mStatus:I

    invoke-static {v3, v4, v5}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 332
    :goto_4d
    return-object v1

    .line 316
    :cond_4e
    const-string v3, "BtOpp ObexClient"

    const-string v4, "Generate BluetoothOppSendFileInfo:"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const-string v3, "BtOpp ObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "filename  :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const-string v3, "BtOpp ObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "length    :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const-string v3, "BtOpp ObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mimetype  :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mMimetype:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 323
    .local v2, updateValues:Landroid/content/ContentValues;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 325
    .local v0, contentUri:Landroid/net/Uri;
    const-string v3, "hint"

    iget-object v4, v1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const-string v3, "total_bytes"

    iget-wide v4, v1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 327
    const-string v3, "mimetype"

    iget-object v4, v1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mMimetype:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0, v2, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_4d
.end method

.method private sendFile(Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;)I
    .registers 29
    .parameter "fileInfo"

    .prologue
    .line 336
    const/4 v8, 0x0

    .line 337
    .local v8, error:Z
    const/16 v18, -0x1

    .line 338
    .local v18, responseCode:I
    const/16 v19, 0xc8

    .line 339
    .local v19, status:I
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v24, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 342
    .local v6, contentUri:Landroid/net/Uri;
    new-instance v17, Ljavax/obex/HeaderSet;

    invoke-direct/range {v17 .. v17}, Ljavax/obex/HeaderSet;-><init>()V

    .line 343
    .local v17, request:Ljavax/obex/HeaderSet;
    const/16 v23, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v17

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 344
    const/16 v23, 0x42

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mMimetype:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v17

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 346
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->applyRemoteDeviceQuirks(Ljavax/obex/HeaderSet;Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;)V

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v24, v0

    const/16 v25, 0xc0

    invoke-static/range {v23 .. v25}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 350
    const/16 v23, 0xc3

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    move-object/from16 v0, v17

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 351
    const/4 v15, 0x0

    .line 352
    .local v15, putOperation:Ljavax/obex/ClientOperation;
    const/4 v12, 0x0

    .line 353
    .local v12, outputStream:Ljava/io/OutputStream;
    const/4 v9, 0x0

    .line 355
    .local v9, inputStream:Ljava/io/InputStream;
    :try_start_8b
    monitor-enter p0
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_5aa
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8c} :catch_276
    .catch Ljava/lang/NullPointerException; {:try_start_8b .. :try_end_8c} :catch_348
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8b .. :try_end_8c} :catch_425
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8b .. :try_end_8c} :catch_4d7

    .line 356
    :try_start_8c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    #setter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mWaitingForRemote:Z
    invoke-static/range {v23 .. v24}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$002(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    .line 357
    monitor-exit p0
    :try_end_98
    .catchall {:try_start_8c .. :try_end_98} :catchall_273

    .line 359
    :try_start_98
    const-string v23, "BtOpp ObexClient"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "put headerset for "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mCs:Ljavax/obex/ClientSession;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljavax/obex/ClientSession;->put(Ljavax/obex/HeaderSet;)Ljavax/obex/Operation;

    move-result-object v23

    move-object/from16 v0, v23

    check-cast v0, Ljavax/obex/ClientOperation;

    move-object v15, v0
    :try_end_c9
    .catchall {:try_start_98 .. :try_end_c9} :catchall_5aa
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_c9} :catch_31d
    .catch Ljava/lang/NullPointerException; {:try_start_98 .. :try_end_c9} :catch_348
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_98 .. :try_end_c9} :catch_425
    .catch Ljava/lang/OutOfMemoryError; {:try_start_98 .. :try_end_c9} :catch_4d7

    .line 368
    :goto_c9
    :try_start_c9
    monitor-enter p0
    :try_end_ca
    .catchall {:try_start_c9 .. :try_end_ca} :catchall_5aa
    .catch Ljava/io/IOException; {:try_start_c9 .. :try_end_ca} :catch_276
    .catch Ljava/lang/NullPointerException; {:try_start_c9 .. :try_end_ca} :catch_348
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c9 .. :try_end_ca} :catch_425
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c9 .. :try_end_ca} :catch_4d7

    .line 369
    :try_start_ca
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    #setter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mWaitingForRemote:Z
    invoke-static/range {v23 .. v24}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$002(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    .line 370
    monitor-exit p0
    :try_end_d6
    .catchall {:try_start_ca .. :try_end_d6} :catchall_345

    .line 372
    if-nez v8, :cond_fe

    .line 374
    :try_start_d8
    const-string v23, "BtOpp ObexClient"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "openOutputStream "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    invoke-virtual {v15}, Ljavax/obex/ClientOperation;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    .line 376
    invoke-virtual {v15}, Ljavax/obex/ClientOperation;->openInputStream()Ljava/io/InputStream;
    :try_end_fd
    .catchall {:try_start_d8 .. :try_end_fd} :catchall_5aa
    .catch Ljava/io/IOException; {:try_start_d8 .. :try_end_fd} :catch_3fa
    .catch Ljava/lang/NullPointerException; {:try_start_d8 .. :try_end_fd} :catch_348
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_d8 .. :try_end_fd} :catch_425
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d8 .. :try_end_fd} :catch_4d7

    move-result-object v9

    .line 384
    :cond_fe
    :goto_fe
    if-nez v8, :cond_134

    .line 385
    :try_start_100
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 386
    .local v22, updateValues:Landroid/content/ContentValues;
    const-string v23, "current_bytes"

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 387
    const-string v23, "status"

    const/16 v24, 0xc0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 391
    .end local v22           #updateValues:Landroid/content/ContentValues;
    :cond_134
    if-nez v8, :cond_717

    .line 394
    const-wide/16 v13, 0x0

    .line 396
    .local v13, position:J
    const/16 v16, 0x0

    .line 397
    .local v16, readLength:I
    const/4 v10, 0x0

    .line 398
    .local v10, okToProceed:Z
    const-wide/16 v20, 0x0

    .line 399
    .local v20, timestamp:J
    invoke-virtual {v15}, Ljavax/obex/ClientOperation;->getMaxPacketSize()I

    move-result v11

    .line 400
    .local v11, outputBufferSize:I
    new-array v5, v11, [B

    .line 401
    .local v5, buffer:[B
    new-instance v4, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mInputStream:Ljava/io/FileInputStream;

    move-object/from16 v23, v0

    const/16 v24, 0x4000

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v4, v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 403
    .local v4, a:Ljava/io/BufferedInputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v23, v0

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mInterrupted:Z
    invoke-static/range {v23 .. v23}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$100(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z

    move-result v23

    if-nez v23, :cond_214

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v23, v0

    cmp-long v23, v13, v23

    if-eqz v23, :cond_214

    .line 404
    #calls: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->readFully(Ljava/io/InputStream;[BI)I
    invoke-static {v4, v5, v11}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$300(Ljava/io/InputStream;[BI)I

    move-result v16

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v23, v0

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mCallback:Landroid/os/Handler;
    invoke-static/range {v23 .. v23}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$200(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v24, v0

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mCallback:Landroid/os/Handler;
    invoke-static/range {v24 .. v24}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$200(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v24

    const/16 v25, 0x4

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v24

    const-wide/32 v25, 0xc350

    invoke-virtual/range {v23 .. v26}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 409
    monitor-enter p0
    :try_end_18f
    .catchall {:try_start_100 .. :try_end_18f} :catchall_5aa
    .catch Ljava/io/IOException; {:try_start_100 .. :try_end_18f} :catch_276
    .catch Ljava/lang/NullPointerException; {:try_start_100 .. :try_end_18f} :catch_348
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_100 .. :try_end_18f} :catch_425
    .catch Ljava/lang/OutOfMemoryError; {:try_start_100 .. :try_end_18f} :catch_4d7

    .line 410
    :try_start_18f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    #setter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mWaitingForRemote:Z
    invoke-static/range {v23 .. v24}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$002(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    .line 411
    monitor-exit p0
    :try_end_19b
    .catchall {:try_start_18f .. :try_end_19b} :catchall_422

    .line 414
    const/16 v23, 0x0

    :try_start_19d
    move/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v12, v5, v0, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 416
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v23, v0

    add-long v13, v13, v23

    .line 418
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v23, v0

    cmp-long v23, v13, v23

    if-eqz v23, :cond_586

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v23, v0

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mCallback:Landroid/os/Handler;
    invoke-static/range {v23 .. v23}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$200(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v23

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->removeMessages(I)V

    .line 420
    monitor-enter p0
    :try_end_1c5
    .catchall {:try_start_19d .. :try_end_1c5} :catchall_5aa
    .catch Ljava/io/IOException; {:try_start_19d .. :try_end_1c5} :catch_276
    .catch Ljava/lang/NullPointerException; {:try_start_19d .. :try_end_1c5} :catch_348
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_19d .. :try_end_1c5} :catch_425
    .catch Ljava/lang/OutOfMemoryError; {:try_start_19d .. :try_end_1c5} :catch_4d7

    .line 421
    :try_start_1c5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    #setter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mWaitingForRemote:Z
    invoke-static/range {v23 .. v24}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$002(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    .line 422
    monitor-exit p0
    :try_end_1d1
    .catchall {:try_start_1c5 .. :try_end_1d1} :catchall_4d4

    .line 433
    :goto_1d1
    :try_start_1d1
    invoke-virtual {v15}, Ljavax/obex/ClientOperation;->getResponseCode()I

    move-result v18

    .line 435
    const/16 v23, 0x90

    move/from16 v0, v18

    move/from16 v1, v23

    if-eq v0, v1, :cond_1e5

    const/16 v23, 0xa0

    move/from16 v0, v18

    move/from16 v1, v23

    if-ne v0, v1, :cond_646

    .line 437
    :cond_1e5
    const-string v23, "BtOpp ObexClient"

    const-string v24, "Remote accept"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    const/4 v10, 0x1

    .line 439
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 440
    .restart local v22       #updateValues:Landroid/content/ContentValues;
    const-string v23, "current_bytes"

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 448
    .end local v22           #updateValues:Landroid/content/ContentValues;
    :cond_214
    :goto_214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v23, v0

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mInterrupted:Z
    invoke-static/range {v23 .. v23}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$100(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z

    move-result v23

    if-nez v23, :cond_6d2

    if-eqz v10, :cond_6d2

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v23, v0

    cmp-long v23, v13, v23

    if-eqz v23, :cond_6d2

    .line 450
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 452
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v4, v5, v0, v11}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v16

    .line 453
    const/16 v23, 0x0

    move/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v12, v5, v0, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 456
    invoke-virtual {v15}, Ljavax/obex/ClientOperation;->getResponseCode()I

    move-result v18

    .line 457
    const-string v23, "BtOpp ObexClient"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Response code is "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_261
    .catchall {:try_start_1d1 .. :try_end_261} :catchall_5aa
    .catch Ljava/io/IOException; {:try_start_1d1 .. :try_end_261} :catch_276
    .catch Ljava/lang/NullPointerException; {:try_start_1d1 .. :try_end_261} :catch_348
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1d1 .. :try_end_261} :catch_425
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1d1 .. :try_end_261} :catch_4d7

    .line 458
    const/16 v23, 0x90

    move/from16 v0, v18

    move/from16 v1, v23

    if-eq v0, v1, :cond_664

    const/16 v23, 0xa0

    move/from16 v0, v18

    move/from16 v1, v23

    if-eq v0, v1, :cond_664

    .line 461
    const/4 v10, 0x0

    goto :goto_214

    .line 357
    .end local v4           #a:Ljava/io/BufferedInputStream;
    .end local v5           #buffer:[B
    .end local v10           #okToProceed:Z
    .end local v11           #outputBufferSize:I
    .end local v13           #position:J
    .end local v16           #readLength:I
    .end local v20           #timestamp:J
    :catchall_273
    move-exception v23

    :try_start_274
    monitor-exit p0
    :try_end_275
    .catchall {:try_start_274 .. :try_end_275} :catchall_273

    :try_start_275
    throw v23
    :try_end_276
    .catchall {:try_start_275 .. :try_end_276} :catchall_5aa
    .catch Ljava/io/IOException; {:try_start_275 .. :try_end_276} :catch_276
    .catch Ljava/lang/NullPointerException; {:try_start_275 .. :try_end_276} :catch_348
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_275 .. :try_end_276} :catch_425
    .catch Ljava/lang/OutOfMemoryError; {:try_start_275 .. :try_end_276} :catch_4d7

    .line 507
    :catch_276
    move-exception v7

    .line 508
    .local v7, e:Ljava/io/IOException;
    :try_start_277
    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->handleSendException(Ljava/lang/String;)V
    :try_end_282
    .catchall {:try_start_277 .. :try_end_282} :catchall_5aa

    .line 521
    :try_start_282
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mInputStream:Ljava/io/FileInputStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/FileInputStream;->close()V

    .line 522
    if-nez v8, :cond_2f7

    .line 523
    invoke-virtual {v15}, Ljavax/obex/ClientOperation;->getResponseCode()I

    move-result v18

    .line 524
    const/16 v23, -0x1

    move/from16 v0, v18

    move/from16 v1, v23

    if-eq v0, v1, :cond_887

    .line 525
    const-string v23, "BtOpp ObexClient"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Get response code "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    const/16 v23, 0xa0

    move/from16 v0, v18

    move/from16 v1, v23

    if-eq v0, v1, :cond_2f7

    .line 527
    const-string v23, "BtOpp ObexClient"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Response error code is "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    const/16 v19, 0x1ef

    .line 529
    const/16 v23, 0xcf

    move/from16 v0, v18

    move/from16 v1, v23

    if-ne v0, v1, :cond_2e5

    .line 530
    const/16 v19, 0x196

    .line 532
    :cond_2e5
    const/16 v23, 0xc3

    move/from16 v0, v18

    move/from16 v1, v23

    if-eq v0, v1, :cond_2f5

    const/16 v23, 0xc6

    move/from16 v0, v18

    move/from16 v1, v23

    if-ne v0, v1, :cond_2f7

    .line 534
    :cond_2f5
    const/16 v19, 0x193

    .line 543
    :cond_2f7
    :goto_2f7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v24, v0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 545
    if-eqz v9, :cond_317

    .line 546
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 548
    :cond_317
    if-eqz v15, :cond_31c

    .line 549
    invoke-virtual {v15}, Ljavax/obex/ClientOperation;->close()V
    :try_end_31c
    .catch Ljava/io/IOException; {:try_start_282 .. :try_end_31c} :catch_880

    .line 555
    .end local v7           #e:Ljava/io/IOException;
    :cond_31c
    :goto_31c
    return v19

    .line 361
    :catch_31d
    move-exception v7

    .line 362
    .restart local v7       #e:Ljava/io/IOException;
    const/16 v19, 0x1f0

    .line 363
    :try_start_320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v24, v0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 365
    const-string v23, "BtOpp ObexClient"

    const-string v24, "Error when put HeaderSet "

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_342
    .catchall {:try_start_320 .. :try_end_342} :catchall_5aa
    .catch Ljava/io/IOException; {:try_start_320 .. :try_end_342} :catch_276
    .catch Ljava/lang/NullPointerException; {:try_start_320 .. :try_end_342} :catch_348
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_320 .. :try_end_342} :catch_425
    .catch Ljava/lang/OutOfMemoryError; {:try_start_320 .. :try_end_342} :catch_4d7

    .line 366
    const/4 v8, 0x1

    goto/16 :goto_c9

    .line 370
    .end local v7           #e:Ljava/io/IOException;
    :catchall_345
    move-exception v23

    :try_start_346
    monitor-exit p0
    :try_end_347
    .catchall {:try_start_346 .. :try_end_347} :catchall_345

    :try_start_347
    throw v23
    :try_end_348
    .catchall {:try_start_347 .. :try_end_348} :catchall_5aa
    .catch Ljava/io/IOException; {:try_start_347 .. :try_end_348} :catch_276
    .catch Ljava/lang/NullPointerException; {:try_start_347 .. :try_end_348} :catch_348
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_347 .. :try_end_348} :catch_425
    .catch Ljava/lang/OutOfMemoryError; {:try_start_347 .. :try_end_348} :catch_4d7

    .line 509
    :catch_348
    move-exception v7

    .line 510
    .local v7, e:Ljava/lang/NullPointerException;
    :try_start_349
    invoke-virtual {v7}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->handleSendException(Ljava/lang/String;)V
    :try_end_354
    .catchall {:try_start_349 .. :try_end_354} :catchall_5aa

    .line 521
    :try_start_354
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mInputStream:Ljava/io/FileInputStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/FileInputStream;->close()V

    .line 522
    if-nez v8, :cond_3c9

    .line 523
    invoke-virtual {v15}, Ljavax/obex/ClientOperation;->getResponseCode()I

    move-result v18

    .line 524
    const/16 v23, -0x1

    move/from16 v0, v18

    move/from16 v1, v23

    if-eq v0, v1, :cond_88b

    .line 525
    const-string v23, "BtOpp ObexClient"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Get response code "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    const/16 v23, 0xa0

    move/from16 v0, v18

    move/from16 v1, v23

    if-eq v0, v1, :cond_3c9

    .line 527
    const-string v23, "BtOpp ObexClient"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Response error code is "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    const/16 v19, 0x1ef

    .line 529
    const/16 v23, 0xcf

    move/from16 v0, v18

    move/from16 v1, v23

    if-ne v0, v1, :cond_3b7

    .line 530
    const/16 v19, 0x196

    .line 532
    :cond_3b7
    const/16 v23, 0xc3

    move/from16 v0, v18

    move/from16 v1, v23

    if-eq v0, v1, :cond_3c7

    const/16 v23, 0xc6

    move/from16 v0, v18

    move/from16 v1, v23

    if-ne v0, v1, :cond_3c9

    .line 534
    :cond_3c7
    const/16 v19, 0x193

    .line 543
    :cond_3c9
    :goto_3c9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v24, v0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 545
    if-eqz v9, :cond_3e9

    .line 546
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 548
    :cond_3e9
    if-eqz v15, :cond_31c

    .line 549
    invoke-virtual {v15}, Ljavax/obex/ClientOperation;->close()V
    :try_end_3ee
    .catch Ljava/io/IOException; {:try_start_354 .. :try_end_3ee} :catch_3f0

    goto/16 :goto_31c

    .line 551
    :catch_3f0
    move-exception v7

    .line 552
    .local v7, e:Ljava/io/IOException;
    const-string v23, "BtOpp ObexClient"

    const-string v24, "Error when closing stream after send"

    :goto_3f5
    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_31c

    .line 377
    .end local v7           #e:Ljava/io/IOException;
    :catch_3fa
    move-exception v7

    .line 378
    .restart local v7       #e:Ljava/io/IOException;
    const/16 v19, 0x1f0

    .line 379
    :try_start_3fd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v24, v0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 380
    const-string v23, "BtOpp ObexClient"

    const-string v24, "Error when openOutputStream"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41f
    .catchall {:try_start_3fd .. :try_end_41f} :catchall_5aa
    .catch Ljava/io/IOException; {:try_start_3fd .. :try_end_41f} :catch_276
    .catch Ljava/lang/NullPointerException; {:try_start_3fd .. :try_end_41f} :catch_348
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3fd .. :try_end_41f} :catch_425
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3fd .. :try_end_41f} :catch_4d7

    .line 381
    const/4 v8, 0x1

    goto/16 :goto_fe

    .line 411
    .end local v7           #e:Ljava/io/IOException;
    .restart local v4       #a:Ljava/io/BufferedInputStream;
    .restart local v5       #buffer:[B
    .restart local v10       #okToProceed:Z
    .restart local v11       #outputBufferSize:I
    .restart local v13       #position:J
    .restart local v16       #readLength:I
    .restart local v20       #timestamp:J
    :catchall_422
    move-exception v23

    :try_start_423
    monitor-exit p0
    :try_end_424
    .catchall {:try_start_423 .. :try_end_424} :catchall_422

    :try_start_424
    throw v23
    :try_end_425
    .catchall {:try_start_424 .. :try_end_425} :catchall_5aa
    .catch Ljava/io/IOException; {:try_start_424 .. :try_end_425} :catch_276
    .catch Ljava/lang/NullPointerException; {:try_start_424 .. :try_end_425} :catch_348
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_424 .. :try_end_425} :catch_425
    .catch Ljava/lang/OutOfMemoryError; {:try_start_424 .. :try_end_425} :catch_4d7

    .line 511
    .end local v4           #a:Ljava/io/BufferedInputStream;
    .end local v5           #buffer:[B
    .end local v10           #okToProceed:Z
    .end local v11           #outputBufferSize:I
    .end local v13           #position:J
    .end local v16           #readLength:I
    .end local v20           #timestamp:J
    :catch_425
    move-exception v7

    .line 512
    .local v7, e:Ljava/lang/IndexOutOfBoundsException;
    :try_start_426
    invoke-virtual {v7}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->handleSendException(Ljava/lang/String;)V
    :try_end_431
    .catchall {:try_start_426 .. :try_end_431} :catchall_5aa

    .line 521
    :try_start_431
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mInputStream:Ljava/io/FileInputStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/FileInputStream;->close()V

    .line 522
    if-nez v8, :cond_4a6

    .line 523
    invoke-virtual {v15}, Ljavax/obex/ClientOperation;->getResponseCode()I

    move-result v18

    .line 524
    const/16 v23, -0x1

    move/from16 v0, v18

    move/from16 v1, v23

    if-eq v0, v1, :cond_88f

    .line 525
    const-string v23, "BtOpp ObexClient"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Get response code "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    const/16 v23, 0xa0

    move/from16 v0, v18

    move/from16 v1, v23

    if-eq v0, v1, :cond_4a6

    .line 527
    const-string v23, "BtOpp ObexClient"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Response error code is "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    const/16 v19, 0x1ef

    .line 529
    const/16 v23, 0xcf

    move/from16 v0, v18

    move/from16 v1, v23

    if-ne v0, v1, :cond_494

    .line 530
    const/16 v19, 0x196

    .line 532
    :cond_494
    const/16 v23, 0xc3

    move/from16 v0, v18

    move/from16 v1, v23

    if-eq v0, v1, :cond_4a4

    const/16 v23, 0xc6

    move/from16 v0, v18

    move/from16 v1, v23

    if-ne v0, v1, :cond_4a6

    .line 534
    :cond_4a4
    const/16 v19, 0x193

    .line 543
    :cond_4a6
    :goto_4a6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v24, v0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 545
    if-eqz v9, :cond_4c6

    .line 546
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 548
    :cond_4c6
    if-eqz v15, :cond_31c

    .line 549
    invoke-virtual {v15}, Ljavax/obex/ClientOperation;->close()V
    :try_end_4cb
    .catch Ljava/io/IOException; {:try_start_431 .. :try_end_4cb} :catch_4cd

    goto/16 :goto_31c

    .line 551
    :catch_4cd
    move-exception v7

    .line 552
    .local v7, e:Ljava/io/IOException;
    const-string v23, "BtOpp ObexClient"

    const-string v24, "Error when closing stream after send"

    goto/16 :goto_3f5

    .line 422
    .end local v7           #e:Ljava/io/IOException;
    .restart local v4       #a:Ljava/io/BufferedInputStream;
    .restart local v5       #buffer:[B
    .restart local v10       #okToProceed:Z
    .restart local v11       #outputBufferSize:I
    .restart local v13       #position:J
    .restart local v16       #readLength:I
    .restart local v20       #timestamp:J
    :catchall_4d4
    move-exception v23

    :try_start_4d5
    monitor-exit p0
    :try_end_4d6
    .catchall {:try_start_4d5 .. :try_end_4d6} :catchall_4d4

    :try_start_4d6
    throw v23
    :try_end_4d7
    .catchall {:try_start_4d6 .. :try_end_4d7} :catchall_5aa
    .catch Ljava/io/IOException; {:try_start_4d6 .. :try_end_4d7} :catch_276
    .catch Ljava/lang/NullPointerException; {:try_start_4d6 .. :try_end_4d7} :catch_348
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4d6 .. :try_end_4d7} :catch_425
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4d6 .. :try_end_4d7} :catch_4d7

    .line 515
    .end local v4           #a:Ljava/io/BufferedInputStream;
    .end local v5           #buffer:[B
    .end local v10           #okToProceed:Z
    .end local v11           #outputBufferSize:I
    .end local v13           #position:J
    .end local v16           #readLength:I
    .end local v20           #timestamp:J
    :catch_4d7
    move-exception v7

    .line 516
    .local v7, e:Ljava/lang/OutOfMemoryError;
    :try_start_4d8
    invoke-virtual {v7}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->handleSendException(Ljava/lang/String;)V
    :try_end_4e3
    .catchall {:try_start_4d8 .. :try_end_4e3} :catchall_5aa

    .line 521
    :try_start_4e3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mInputStream:Ljava/io/FileInputStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/FileInputStream;->close()V

    .line 522
    if-nez v8, :cond_558

    .line 523
    invoke-virtual {v15}, Ljavax/obex/ClientOperation;->getResponseCode()I

    move-result v18

    .line 524
    const/16 v23, -0x1

    move/from16 v0, v18

    move/from16 v1, v23

    if-eq v0, v1, :cond_893

    .line 525
    const-string v23, "BtOpp ObexClient"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Get response code "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    const/16 v23, 0xa0

    move/from16 v0, v18

    move/from16 v1, v23

    if-eq v0, v1, :cond_558

    .line 527
    const-string v23, "BtOpp ObexClient"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Response error code is "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    const/16 v19, 0x1ef

    .line 529
    const/16 v23, 0xcf

    move/from16 v0, v18

    move/from16 v1, v23

    if-ne v0, v1, :cond_546

    .line 530
    const/16 v19, 0x196

    .line 532
    :cond_546
    const/16 v23, 0xc3

    move/from16 v0, v18

    move/from16 v1, v23

    if-eq v0, v1, :cond_556

    const/16 v23, 0xc6

    move/from16 v0, v18

    move/from16 v1, v23

    if-ne v0, v1, :cond_558

    .line 534
    :cond_556
    const/16 v19, 0x193

    .line 543
    :cond_558
    :goto_558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v24, v0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 545
    if-eqz v9, :cond_578

    .line 546
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 548
    :cond_578
    if-eqz v15, :cond_31c

    .line 549
    invoke-virtual {v15}, Ljavax/obex/ClientOperation;->close()V
    :try_end_57d
    .catch Ljava/io/IOException; {:try_start_4e3 .. :try_end_57d} :catch_57f

    goto/16 :goto_31c

    .line 551
    :catch_57f
    move-exception v7

    .line 552
    .local v7, e:Ljava/io/IOException;
    const-string v23, "BtOpp ObexClient"

    const-string v24, "Error when closing stream after send"

    goto/16 :goto_3f5

    .line 426
    .end local v7           #e:Ljava/io/IOException;
    .restart local v4       #a:Ljava/io/BufferedInputStream;
    .restart local v5       #buffer:[B
    .restart local v10       #okToProceed:Z
    .restart local v11       #outputBufferSize:I
    .restart local v13       #position:J
    .restart local v16       #readLength:I
    .restart local v20       #timestamp:J
    :cond_586
    :try_start_586
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v23, v0

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mCallback:Landroid/os/Handler;
    invoke-static/range {v23 .. v23}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$200(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v23

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->removeMessages(I)V

    .line 428
    monitor-enter p0
    :try_end_599
    .catchall {:try_start_586 .. :try_end_599} :catchall_5aa
    .catch Ljava/io/IOException; {:try_start_586 .. :try_end_599} :catch_276
    .catch Ljava/lang/NullPointerException; {:try_start_586 .. :try_end_599} :catch_348
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_586 .. :try_end_599} :catch_425
    .catch Ljava/lang/OutOfMemoryError; {:try_start_586 .. :try_end_599} :catch_4d7

    .line 429
    :try_start_599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    #setter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mWaitingForRemote:Z
    invoke-static/range {v23 .. v24}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$002(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    .line 430
    monitor-exit p0

    goto/16 :goto_1d1

    :catchall_5a7
    move-exception v23

    monitor-exit p0
    :try_end_5a9
    .catchall {:try_start_599 .. :try_end_5a9} :catchall_5a7

    :try_start_5a9
    throw v23
    :try_end_5aa
    .catchall {:try_start_5a9 .. :try_end_5aa} :catchall_5aa
    .catch Ljava/io/IOException; {:try_start_5a9 .. :try_end_5aa} :catch_276
    .catch Ljava/lang/NullPointerException; {:try_start_5a9 .. :try_end_5aa} :catch_348
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5a9 .. :try_end_5aa} :catch_425
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5a9 .. :try_end_5aa} :catch_4d7

    .line 520
    .end local v4           #a:Ljava/io/BufferedInputStream;
    .end local v5           #buffer:[B
    .end local v10           #okToProceed:Z
    .end local v11           #outputBufferSize:I
    .end local v13           #position:J
    .end local v16           #readLength:I
    .end local v20           #timestamp:J
    :catchall_5aa
    move-exception v23

    .line 521
    :try_start_5ab
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mInputStream:Ljava/io/FileInputStream;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/io/FileInputStream;->close()V

    .line 522
    if-nez v8, :cond_620

    .line 523
    invoke-virtual {v15}, Ljavax/obex/ClientOperation;->getResponseCode()I

    move-result v18

    .line 524
    const/16 v24, -0x1

    move/from16 v0, v18

    move/from16 v1, v24

    if-eq v0, v1, :cond_87c

    .line 525
    const-string v24, "BtOpp ObexClient"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Get response code "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    const/16 v24, 0xa0

    move/from16 v0, v18

    move/from16 v1, v24

    if-eq v0, v1, :cond_620

    .line 527
    const-string v24, "BtOpp ObexClient"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Response error code is "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    const/16 v19, 0x1ef

    .line 529
    const/16 v24, 0xcf

    move/from16 v0, v18

    move/from16 v1, v24

    if-ne v0, v1, :cond_60e

    .line 530
    const/16 v19, 0x196

    .line 532
    :cond_60e
    const/16 v24, 0xc3

    move/from16 v0, v18

    move/from16 v1, v24

    if-eq v0, v1, :cond_61e

    const/16 v24, 0xc6

    move/from16 v0, v18

    move/from16 v1, v24

    if-ne v0, v1, :cond_620

    .line 534
    :cond_61e
    const/16 v19, 0x193

    .line 543
    :cond_620
    :goto_620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v25, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 545
    if-eqz v9, :cond_640

    .line 546
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 548
    :cond_640
    if-eqz v15, :cond_645

    .line 549
    invoke-virtual {v15}, Ljavax/obex/ClientOperation;->close()V
    :try_end_645
    .catch Ljava/io/IOException; {:try_start_5ab .. :try_end_645} :catch_872

    .line 520
    :cond_645
    :goto_645
    throw v23

    .line 444
    .restart local v4       #a:Ljava/io/BufferedInputStream;
    .restart local v5       #buffer:[B
    .restart local v10       #okToProceed:Z
    .restart local v11       #outputBufferSize:I
    .restart local v13       #position:J
    .restart local v16       #readLength:I
    .restart local v20       #timestamp:J
    :cond_646
    :try_start_646
    const-string v23, "BtOpp ObexClient"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Remote reject, Response code is "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_214

    .line 463
    :cond_664
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v23, v0

    add-long v13, v13, v23

    .line 465
    const-string v23, "BtOpp ObexClient"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Sending file position = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " readLength "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " bytes took "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    sub-long v25, v25, v20

    invoke-virtual/range {v24 .. v26}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " ms"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 470
    .restart local v22       #updateValues:Landroid/content/ContentValues;
    const-string v23, "current_bytes"

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_214

    .line 477
    .end local v22           #updateValues:Landroid/content/ContentValues;
    :cond_6d2
    const/16 v23, 0xc3

    move/from16 v0, v18

    move/from16 v1, v23

    if-eq v0, v1, :cond_6e2

    const/16 v23, 0xc6

    move/from16 v0, v18

    move/from16 v1, v23

    if-ne v0, v1, :cond_7ba

    .line 479
    :cond_6e2
    const-string v23, "BtOpp ObexClient"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Remote reject file "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " length "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v25, v0

    invoke-virtual/range {v24 .. v26}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_710
    .catchall {:try_start_646 .. :try_end_710} :catchall_5aa
    .catch Ljava/io/IOException; {:try_start_646 .. :try_end_710} :catch_276
    .catch Ljava/lang/NullPointerException; {:try_start_646 .. :try_end_710} :catch_348
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_646 .. :try_end_710} :catch_425
    .catch Ljava/lang/OutOfMemoryError; {:try_start_646 .. :try_end_710} :catch_4d7

    .line 481
    const/16 v19, 0x193

    .line 498
    :goto_712
    if-eqz v4, :cond_717

    .line 500
    :try_start_714
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_717
    .catchall {:try_start_714 .. :try_end_717} :catchall_5aa
    .catch Ljava/io/IOException; {:try_start_714 .. :try_end_717} :catch_86f
    .catch Ljava/lang/NullPointerException; {:try_start_714 .. :try_end_717} :catch_348
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_714 .. :try_end_717} :catch_425
    .catch Ljava/lang/OutOfMemoryError; {:try_start_714 .. :try_end_717} :catch_4d7

    .line 521
    .end local v4           #a:Ljava/io/BufferedInputStream;
    .end local v5           #buffer:[B
    .end local v10           #okToProceed:Z
    .end local v11           #outputBufferSize:I
    .end local v13           #position:J
    .end local v16           #readLength:I
    .end local v20           #timestamp:J
    :cond_717
    :goto_717
    :try_start_717
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mInputStream:Ljava/io/FileInputStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/FileInputStream;->close()V

    .line 522
    if-nez v8, :cond_78c

    .line 523
    invoke-virtual {v15}, Ljavax/obex/ClientOperation;->getResponseCode()I

    move-result v18

    .line 524
    const/16 v23, -0x1

    move/from16 v0, v18

    move/from16 v1, v23

    if-eq v0, v1, :cond_897

    .line 525
    const-string v23, "BtOpp ObexClient"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Get response code "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    const/16 v23, 0xa0

    move/from16 v0, v18

    move/from16 v1, v23

    if-eq v0, v1, :cond_78c

    .line 527
    const-string v23, "BtOpp ObexClient"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Response error code is "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    const/16 v19, 0x1ef

    .line 529
    const/16 v23, 0xcf

    move/from16 v0, v18

    move/from16 v1, v23

    if-ne v0, v1, :cond_77a

    .line 530
    const/16 v19, 0x196

    .line 532
    :cond_77a
    const/16 v23, 0xc3

    move/from16 v0, v18

    move/from16 v1, v23

    if-eq v0, v1, :cond_78a

    const/16 v23, 0xc6

    move/from16 v0, v18

    move/from16 v1, v23

    if-ne v0, v1, :cond_78c

    .line 534
    :cond_78a
    const/16 v19, 0x193

    .line 543
    :cond_78c
    :goto_78c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mContext1:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    move/from16 v24, v0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/opp/Constants;->updateShareStatus(Landroid/content/Context;II)V

    .line 545
    if-eqz v9, :cond_7ac

    .line 546
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 548
    :cond_7ac
    if-eqz v15, :cond_31c

    .line 549
    invoke-virtual {v15}, Ljavax/obex/ClientOperation;->close()V
    :try_end_7b1
    .catch Ljava/io/IOException; {:try_start_717 .. :try_end_7b1} :catch_7b3

    goto/16 :goto_31c

    .line 551
    :catch_7b3
    move-exception v7

    .line 552
    .restart local v7       #e:Ljava/io/IOException;
    const-string v23, "BtOpp ObexClient"

    const-string v24, "Error when closing stream after send"

    goto/16 :goto_3f5

    .line 482
    .end local v7           #e:Ljava/io/IOException;
    .restart local v4       #a:Ljava/io/BufferedInputStream;
    .restart local v5       #buffer:[B
    .restart local v10       #okToProceed:Z
    .restart local v11       #outputBufferSize:I
    .restart local v13       #position:J
    .restart local v16       #readLength:I
    .restart local v20       #timestamp:J
    :cond_7ba
    const/16 v23, 0xcf

    move/from16 v0, v18

    move/from16 v1, v23

    if-ne v0, v1, :cond_7e4

    .line 483
    :try_start_7c2
    const-string v23, "BtOpp ObexClient"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Remote reject file type "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mMimetype:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    const/16 v19, 0x196

    goto/16 :goto_712

    .line 485
    :cond_7e4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-object/from16 v23, v0

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mInterrupted:Z
    invoke-static/range {v23 .. v23}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$100(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z

    move-result v23

    if-nez v23, :cond_82d

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v23, v0

    cmp-long v23, v13, v23

    if-nez v23, :cond_82d

    .line 486
    const-string v23, "BtOpp ObexClient"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "SendFile finished send out file "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " length "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v25, v0

    invoke-virtual/range {v24 .. v26}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V

    goto/16 :goto_712

    .line 490
    :cond_82d
    const/4 v8, 0x1

    .line 491
    const/16 v19, 0x1ea

    .line 492
    invoke-virtual {v15}, Ljavax/obex/ClientOperation;->abort()V

    .line 494
    const-string v23, "BtOpp ObexClient"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "SendFile interrupted when send out file "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " at "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " of "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    move-wide/from16 v25, v0

    invoke-virtual/range {v24 .. v26}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_86d
    .catchall {:try_start_7c2 .. :try_end_86d} :catchall_5aa
    .catch Ljava/io/IOException; {:try_start_7c2 .. :try_end_86d} :catch_276
    .catch Ljava/lang/NullPointerException; {:try_start_7c2 .. :try_end_86d} :catch_348
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7c2 .. :try_end_86d} :catch_425
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7c2 .. :try_end_86d} :catch_4d7

    goto/16 :goto_712

    .line 501
    :catch_86f
    move-exception v23

    goto/16 :goto_717

    .line 551
    .end local v4           #a:Ljava/io/BufferedInputStream;
    .end local v5           #buffer:[B
    .end local v10           #okToProceed:Z
    .end local v11           #outputBufferSize:I
    .end local v13           #position:J
    .end local v16           #readLength:I
    .end local v20           #timestamp:J
    :catch_872
    move-exception v7

    .line 552
    .restart local v7       #e:Ljava/io/IOException;
    const-string v24, "BtOpp ObexClient"

    const-string v25, "Error when closing stream after send"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_645

    .line 539
    .end local v7           #e:Ljava/io/IOException;
    :cond_87c
    const/16 v19, 0x1f1

    goto/16 :goto_620

    .line 551
    .restart local v7       #e:Ljava/io/IOException;
    :catch_880
    move-exception v7

    .line 552
    const-string v23, "BtOpp ObexClient"

    const-string v24, "Error when closing stream after send"

    goto/16 :goto_3f5

    .line 539
    :cond_887
    const/16 v19, 0x1f1

    goto/16 :goto_2f7

    .local v7, e:Ljava/lang/NullPointerException;
    :cond_88b
    const/16 v19, 0x1f1

    goto/16 :goto_3c9

    .local v7, e:Ljava/lang/IndexOutOfBoundsException;
    :cond_88f
    const/16 v19, 0x1f1

    goto/16 :goto_4a6

    .local v7, e:Ljava/lang/OutOfMemoryError;
    :cond_893
    const/16 v19, 0x1f1

    goto/16 :goto_558

    .end local v7           #e:Ljava/lang/OutOfMemoryError;
    :cond_897
    const/16 v19, 0x1f1

    goto/16 :goto_78c
.end method


# virtual methods
.method public addShare(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V
    .registers 3
    .parameter "info"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 156
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->processShareInfo()Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mFileInfo:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->waitingForShare:Z

    .line 158
    return-void
.end method

.method public interrupt()V
    .registers 5

    .prologue
    .line 567
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    .line 568
    monitor-enter p0

    .line 569
    :try_start_4
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mWaitingForRemote:Z
    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$000(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 570
    const-string v2, "BtOpp ObexClient"

    const-string v3, "Interrupted when waitingForRemote"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_3b

    .line 572
    :try_start_13
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mTransport1:Ljavax/obex/ObexTransport;

    invoke-interface {v2}, Ljavax/obex/ObexTransport;->close()V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_3b
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_18} :catch_32

    .line 576
    :goto_18
    :try_start_18
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mCallback:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$200(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 577
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    .line 578
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    if-eqz v2, :cond_2d

    .line 579
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 581
    :cond_2d
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 583
    .end local v1           #msg:Landroid/os/Message;
    :cond_30
    monitor-exit p0

    .line 584
    return-void

    .line 573
    :catch_32
    move-exception v0

    .line 574
    .local v0, e:Ljava/io/IOException;
    const-string v2, "BtOpp ObexClient"

    const-string v3, "mTransport.close error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 583
    .end local v0           #e:Ljava/io/IOException;
    :catchall_3b
    move-exception v2

    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_18 .. :try_end_3d} :catchall_3b

    throw v2
.end method

.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 162
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 164
    const-string v2, "BtOpp ObexClient"

    const-string v3, "acquire partial WakeLock"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 168
    const-wide/16 v2, 0x64

    :try_start_14
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_17} :catch_32

    .line 173
    :goto_17
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mInterrupted:Z
    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$100(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 174
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->connect()V

    .line 177
    :cond_22
    :goto_22
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mInterrupted:Z
    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$100(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Z

    move-result v2

    if-nez v2, :cond_4f

    .line 178
    iget-boolean v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->waitingForShare:Z

    if-nez v2, :cond_40

    .line 179
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->doSend()V

    goto :goto_22

    .line 169
    :catch_32
    move-exception v0

    .line 170
    .local v0, e1:Ljava/lang/InterruptedException;
    const-string v2, "BtOpp ObexClient"

    const-string v3, "Client thread was interrupted (1), exiting"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    #setter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mInterrupted:Z
    invoke-static {v2, v4}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$102(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    goto :goto_17

    .line 182
    .end local v0           #e1:Ljava/lang/InterruptedException;
    :cond_40
    :try_start_40
    const-string v2, "BtOpp ObexClient"

    const-string v3, "Client thread waiting for next share, sleep for 500"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4c
    .catch Ljava/lang/InterruptedException; {:try_start_40 .. :try_end_4c} :catch_4d

    goto :goto_22

    .line 185
    :catch_4d
    move-exception v2

    goto :goto_22

    .line 190
    :cond_4f
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->disconnect()V

    .line 192
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_66

    .line 193
    const-string v2, "BtOpp ObexClient"

    const-string v3, "release partial WakeLock"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 196
    :cond_66
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->mCallback:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->access$200(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 197
    .local v1, msg:Landroid/os/Message;
    iput v4, v1, Landroid/os/Message;->what:I

    .line 198
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$ClientThread;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 199
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 201
    return-void
.end method

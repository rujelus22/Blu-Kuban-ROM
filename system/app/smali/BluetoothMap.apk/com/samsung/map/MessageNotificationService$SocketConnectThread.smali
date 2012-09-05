.class Lcom/samsung/map/MessageNotificationService$SocketConnectThread;
.super Ljava/lang/Thread;
.source "MessageNotificationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/map/MessageNotificationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SocketConnectThread"
.end annotation


# instance fields
.field private final MASInstanceID:I

.field private btSocket:Landroid/bluetooth/BluetoothSocket;

.field private final channel:I

.field private final device:Landroid/bluetooth/BluetoothDevice;

.field final synthetic this$0:Lcom/samsung/map/MessageNotificationService;


# direct methods
.method public constructor <init>(Lcom/samsung/map/MessageNotificationService;Landroid/bluetooth/BluetoothDevice;II)V
    .registers 6
    .parameter
    .parameter "device"
    .parameter "channel"
    .parameter "MASInstanceID"

    .prologue
    .line 281
    iput-object p1, p0, Lcom/samsung/map/MessageNotificationService$SocketConnectThread;->this$0:Lcom/samsung/map/MessageNotificationService;

    .line 282
    const-string v0, "Socket Connect Thread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 277
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/map/MessageNotificationService$SocketConnectThread;->btSocket:Landroid/bluetooth/BluetoothSocket;

    .line 283
    iput-object p2, p0, Lcom/samsung/map/MessageNotificationService$SocketConnectThread;->device:Landroid/bluetooth/BluetoothDevice;

    .line 284
    iput p3, p0, Lcom/samsung/map/MessageNotificationService$SocketConnectThread;->channel:I

    .line 285
    iput p4, p0, Lcom/samsung/map/MessageNotificationService$SocketConnectThread;->MASInstanceID:I

    .line 286
    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 289
    const/4 v3, 0x0

    .line 291
    .local v3, socket:Landroid/bluetooth/BluetoothSocket;
    :try_start_1
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 292
    .local v2, obj:Ljava/lang/Object;
    monitor-enter v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7} :catch_1e

    .line 293
    const-wide/16 v4, 0x64

    :try_start_9
    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 294
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_1b

    .line 300
    .end local v2           #obj:Ljava/lang/Object;
    :goto_d
    :try_start_d
    iget-object v4, p0, Lcom/samsung/map/MessageNotificationService$SocketConnectThread;->device:Landroid/bluetooth/BluetoothDevice;

    iget v5, p0, Lcom/samsung/map/MessageNotificationService$SocketConnectThread;->channel:I

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothDevice;->createInsecureRfcommSocket(I)Landroid/bluetooth/BluetoothSocket;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_14} :catch_20

    move-result-object v3

    .line 307
    :try_start_15
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothSocket;->connect()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_2a

    .line 312
    :goto_18
    if-nez v3, :cond_30

    .line 328
    :goto_1a
    return-void

    .line 294
    .restart local v2       #obj:Ljava/lang/Object;
    :catchall_1b
    move-exception v4

    :try_start_1c
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    :try_start_1d
    throw v4
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1e} :catch_1e

    .line 295
    .end local v2           #obj:Ljava/lang/Object;
    :catch_1e
    move-exception v4

    goto :goto_d

    .line 301
    :catch_20
    move-exception v0

    .line 302
    .local v0, e:Ljava/io/IOException;
    const-string v4, "MAP MNS"

    const-string v5, "Rfcomm socket create error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const/4 v3, 0x0

    .line 304
    goto :goto_1a

    .line 308
    .end local v0           #e:Ljava/io/IOException;
    :catch_2a
    move-exception v0

    .line 309
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 310
    const/4 v3, 0x0

    goto :goto_18

    .line 318
    .end local v0           #e:Ljava/lang/Exception;
    :cond_30
    :try_start_30
    iget-object v4, p0, Lcom/samsung/map/MessageNotificationService$SocketConnectThread;->this$0:Lcom/samsung/map/MessageNotificationService;

    new-instance v5, Lcom/samsung/map/BluetoothMapObexTransport;

    iget v6, p0, Lcom/samsung/map/MessageNotificationService$SocketConnectThread;->MASInstanceID:I

    invoke-direct {v5, v3, v6}, Lcom/samsung/map/BluetoothMapObexTransport;-><init>(Landroid/bluetooth/BluetoothSocket;I)V

    #setter for: Lcom/samsung/map/MessageNotificationService;->transport:Lcom/samsung/map/BluetoothMapObexTransport;
    invoke-static {v4, v5}, Lcom/samsung/map/MessageNotificationService;->access$602(Lcom/samsung/map/MessageNotificationService;Lcom/samsung/map/BluetoothMapObexTransport;)Lcom/samsung/map/BluetoothMapObexTransport;

    .line 320
    new-instance v1, Ljavax/obex/HeaderSet;

    invoke-direct {v1}, Ljavax/obex/HeaderSet;-><init>()V

    .line 321
    .local v1, header:Ljavax/obex/HeaderSet;
    const/16 v4, 0x46

    invoke-static {}, Lcom/samsung/map/MessageNotificationService;->access$700()[B

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 323
    iget-object v4, p0, Lcom/samsung/map/MessageNotificationService$SocketConnectThread;->this$0:Lcom/samsung/map/MessageNotificationService;

    new-instance v5, Ljavax/obex/ClientSession;

    iget-object v6, p0, Lcom/samsung/map/MessageNotificationService$SocketConnectThread;->this$0:Lcom/samsung/map/MessageNotificationService;

    #getter for: Lcom/samsung/map/MessageNotificationService;->transport:Lcom/samsung/map/BluetoothMapObexTransport;
    invoke-static {v6}, Lcom/samsung/map/MessageNotificationService;->access$600(Lcom/samsung/map/MessageNotificationService;)Lcom/samsung/map/BluetoothMapObexTransport;

    move-result-object v6

    invoke-direct {v5, v6}, Ljavax/obex/ClientSession;-><init>(Ljavax/obex/ObexTransport;)V

    #setter for: Lcom/samsung/map/MessageNotificationService;->clientSession:Ljavax/obex/ClientSession;
    invoke-static {v4, v5}, Lcom/samsung/map/MessageNotificationService;->access$802(Lcom/samsung/map/MessageNotificationService;Ljavax/obex/ClientSession;)Ljavax/obex/ClientSession;

    .line 324
    iget-object v4, p0, Lcom/samsung/map/MessageNotificationService$SocketConnectThread;->this$0:Lcom/samsung/map/MessageNotificationService;

    #getter for: Lcom/samsung/map/MessageNotificationService;->clientSession:Ljavax/obex/ClientSession;
    invoke-static {v4}, Lcom/samsung/map/MessageNotificationService;->access$800(Lcom/samsung/map/MessageNotificationService;)Ljavax/obex/ClientSession;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljavax/obex/ClientSession;->connect(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_63} :catch_64

    goto :goto_1a

    .line 326
    .end local v1           #header:Ljavax/obex/HeaderSet;
    :catch_64
    move-exception v4

    goto :goto_1a
.end method

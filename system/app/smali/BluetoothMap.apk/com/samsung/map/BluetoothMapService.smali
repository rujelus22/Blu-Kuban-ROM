.class public Lcom/samsung/map/BluetoothMapService;
.super Landroid/app/Service;
.source "BluetoothMapService.java"


# static fields
.field public static accountIds:[I

.field public static firstEmailAccountId:I


# instance fields
.field private MASInstanceID:I

.field private instancesNumber:I

.field private isWaitingAuthorization:Z

.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBinder:Landroid/bluetooth/IBluetoothMap$Stub;

.field private mBluetoothService:Landroid/bluetooth/IBluetooth;

.field private mConnSocket:Landroid/bluetooth/BluetoothSocket;

.field private mHandler:Landroid/os/Handler;

.field private mListenStarted:Z

.field private mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

.field private mServerSession:Lcom/samsung/map/BluetoothMapObexServerSession;

.field private mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

.field private mSocketListener:[Lcom/samsung/map/BluetoothMapRfcommListener;

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 78
    const/4 v0, -0x1

    sput v0, Lcom/samsung/map/BluetoothMapService;->firstEmailAccountId:I

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 126
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 96
    iput-object v1, p0, Lcom/samsung/map/BluetoothMapService;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    .line 98
    iput-object v1, p0, Lcom/samsung/map/BluetoothMapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    .line 100
    iput-object v1, p0, Lcom/samsung/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 102
    iput-boolean v2, p0, Lcom/samsung/map/BluetoothMapService;->isWaitingAuthorization:Z

    .line 116
    iput v2, p0, Lcom/samsung/map/BluetoothMapService;->MASInstanceID:I

    .line 320
    new-instance v1, Lcom/samsung/map/BluetoothMapService$1;

    invoke-direct {v1, p0}, Lcom/samsung/map/BluetoothMapService$1;-><init>(Lcom/samsung/map/BluetoothMapService;)V

    iput-object v1, p0, Lcom/samsung/map/BluetoothMapService;->mHandler:Landroid/os/Handler;

    .line 487
    new-instance v1, Lcom/samsung/map/BluetoothMapService$2;

    invoke-direct {v1, p0}, Lcom/samsung/map/BluetoothMapService$2;-><init>(Lcom/samsung/map/BluetoothMapService;)V

    iput-object v1, p0, Lcom/samsung/map/BluetoothMapService;->mBinder:Landroid/bluetooth/IBluetoothMap$Stub;

    .line 127
    iput v2, p0, Lcom/samsung/map/BluetoothMapService;->mState:I

    .line 128
    const-string v1, "bluetooth"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 129
    .local v0, b:Landroid/os/IBinder;
    if-nez v0, :cond_2f

    .line 130
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Bluetooth service not available"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 132
    :cond_2f
    invoke-static {v0}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/map/BluetoothMapService;->mBluetoothService:Landroid/bluetooth/IBluetooth;

    .line 133
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/map/BluetoothMapService;)Landroid/bluetooth/BluetoothAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/samsung/map/BluetoothMapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/map/BluetoothMapService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/samsung/map/BluetoothMapService;->startSocketListener()V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/map/BluetoothMapService;)Lcom/samsung/map/BluetoothMapObexServerSession;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/samsung/map/BluetoothMapService;->mServerSession:Lcom/samsung/map/BluetoothMapObexServerSession;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/samsung/map/BluetoothMapService;Lcom/samsung/map/BluetoothMapObexServerSession;)Lcom/samsung/map/BluetoothMapObexServerSession;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/samsung/map/BluetoothMapService;->mServerSession:Lcom/samsung/map/BluetoothMapObexServerSession;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/samsung/map/BluetoothMapService;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/samsung/map/BluetoothMapService;->setState(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/map/BluetoothMapService;)Landroid/bluetooth/BluetoothDevice;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/samsung/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/map/BluetoothMapService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/samsung/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$302(Lcom/samsung/map/BluetoothMapService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/samsung/map/BluetoothMapService;->isWaitingAuthorization:Z

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/map/BluetoothMapService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/samsung/map/BluetoothMapService;->stopObexServerSession()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/map/BluetoothMapService;)Landroid/bluetooth/BluetoothSocket;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/samsung/map/BluetoothMapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    return-object v0
.end method

.method static synthetic access$502(Lcom/samsung/map/BluetoothMapService;Landroid/bluetooth/BluetoothSocket;)Landroid/bluetooth/BluetoothSocket;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/samsung/map/BluetoothMapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    return-object p1
.end method

.method static synthetic access$600(Lcom/samsung/map/BluetoothMapService;)[Lcom/samsung/map/BluetoothMapRfcommListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/samsung/map/BluetoothMapService;->mSocketListener:[Lcom/samsung/map/BluetoothMapRfcommListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/map/BluetoothMapService;Lcom/samsung/map/BluetoothMapObexTransport;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/samsung/map/BluetoothMapService;->createServerSession(Lcom/samsung/map/BluetoothMapObexTransport;)V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/map/BluetoothMapService;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/samsung/map/BluetoothMapService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/map/BluetoothMapService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/samsung/map/BluetoothMapService;->mState:I

    return v0
.end method

.method private createServerSession(Lcom/samsung/map/BluetoothMapObexTransport;)V
    .registers 8
    .parameter "transport"

    .prologue
    .line 444
    invoke-virtual {p1}, Lcom/samsung/map/BluetoothMapObexTransport;->getMASInstanceID()I

    move-result v3

    .line 450
    .local v3, MASInstanceID:I
    if-nez v3, :cond_35

    .line 451
    sget v0, Lcom/samsung/map/BluetoothMapService;->firstEmailAccountId:I

    if-lez v0, :cond_2f

    .line 452
    new-instance v5, Lcom/samsung/map/AnyMessageFolder;

    sget v0, Lcom/samsung/map/BluetoothMapService;->firstEmailAccountId:I

    invoke-direct {v5, v0, p0}, Lcom/samsung/map/AnyMessageFolder;-><init>(ILandroid/content/Context;)V

    .line 460
    .local v5, emf:Lcom/samsung/map/MessageFolder;
    :goto_11
    new-instance v0, Lcom/samsung/map/BluetoothMapObexServerSession;

    invoke-static {}, Lcom/samsung/map/MessageNotificationService;->getDefaultService()Lcom/samsung/map/MessageNotificationService;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/map/BluetoothMapObexServerSession;-><init>(Landroid/content/Context;Lcom/samsung/map/BluetoothMapObexTransport;ILcom/samsung/map/MessageNotificationService;Lcom/samsung/map/MessageFolder;)V

    iput-object v0, p0, Lcom/samsung/map/BluetoothMapService;->mServerSession:Lcom/samsung/map/BluetoothMapObexServerSession;

    .line 462
    iget-object v0, p0, Lcom/samsung/map/BluetoothMapService;->mServerSession:Lcom/samsung/map/BluetoothMapObexServerSession;

    invoke-virtual {v0}, Lcom/samsung/map/BluetoothMapObexServerSession;->preStart()V

    .line 463
    iget-object v0, p0, Lcom/samsung/map/BluetoothMapService;->mServerSession:Lcom/samsung/map/BluetoothMapObexServerSession;

    iget-object v1, p0, Lcom/samsung/map/BluetoothMapService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/samsung/map/BluetoothMapObexServerSession;->start(Landroid/os/Handler;)V

    .line 464
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/samsung/map/BluetoothMapService;->setState(I)V

    .line 466
    return-void

    .line 454
    .end local v5           #emf:Lcom/samsung/map/MessageFolder;
    :cond_2f
    new-instance v5, Lcom/samsung/map/MmsSmsMessageFolder;

    invoke-direct {v5, p0}, Lcom/samsung/map/MmsSmsMessageFolder;-><init>(Landroid/content/Context;)V

    .restart local v5       #emf:Lcom/samsung/map/MessageFolder;
    goto :goto_11

    .line 457
    .end local v5           #emf:Lcom/samsung/map/MessageFolder;
    :cond_35
    new-instance v5, Lcom/samsung/map/EmailMessageFolder;

    sget-object v0, Lcom/samsung/map/BluetoothMapService;->accountIds:[I

    add-int/lit8 v1, v3, -0x1

    aget v0, v0, v1

    invoke-direct {v5, v0, p0}, Lcom/samsung/map/EmailMessageFolder;-><init>(ILandroid/content/Context;)V

    .restart local v5       #emf:Lcom/samsung/map/MessageFolder;
    goto :goto_11
.end method

.method private parseIntent(Landroid/content/Intent;)V
    .registers 9
    .parameter "intent"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 272
    const-string v3, "action"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, action:Ljava/lang/String;
    const/4 v1, 0x1

    .line 277
    .local v1, removeTimeoutMsg:Z
    const-string v3, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 278
    iget-boolean v3, p0, Lcom/samsung/map/BluetoothMapService;->isWaitingAuthorization:Z

    if-nez v3, :cond_17

    .line 308
    :cond_16
    :goto_16
    return-void

    .line 283
    :cond_17
    iput-boolean v4, p0, Lcom/samsung/map/BluetoothMapService;->isWaitingAuthorization:Z

    .line 285
    const-string v3, "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_46

    .line 289
    const-string v3, "android.bluetooth.device.extra.ALWAYS_ALLOWED"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 290
    iget-object v3, p0, Lcom/samsung/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v5}, Landroid/bluetooth/BluetoothDevice;->setMapTrust(Z)Z

    .line 293
    :cond_2e
    iget-object v3, p0, Lcom/samsung/map/BluetoothMapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v3, :cond_3e

    .line 294
    new-instance v2, Lcom/samsung/map/BluetoothMapObexTransport;

    iget-object v3, p0, Lcom/samsung/map/BluetoothMapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    iget v4, p0, Lcom/samsung/map/BluetoothMapService;->MASInstanceID:I

    invoke-direct {v2, v3, v4}, Lcom/samsung/map/BluetoothMapObexTransport;-><init>(Landroid/bluetooth/BluetoothSocket;I)V

    .line 296
    .local v2, transport:Lcom/samsung/map/BluetoothMapObexTransport;
    invoke-direct {p0, v2}, Lcom/samsung/map/BluetoothMapService;->createServerSession(Lcom/samsung/map/BluetoothMapObexTransport;)V

    .line 305
    .end local v2           #transport:Lcom/samsung/map/BluetoothMapObexTransport;
    :cond_3e
    :goto_3e
    if-eqz v1, :cond_16

    .line 306
    iget-object v3, p0, Lcom/samsung/map/BluetoothMapService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_16

    .line 299
    :cond_46
    invoke-direct {p0}, Lcom/samsung/map/BluetoothMapService;->stopObexServerSession()V

    goto :goto_3e

    .line 302
    :cond_4a
    const/4 v1, 0x0

    goto :goto_3e
.end method

.method private setState(I)V
    .registers 3
    .parameter "state"

    .prologue
    .line 384
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/samsung/map/BluetoothMapService;->setState(II)V

    .line 385
    return-void
.end method

.method private declared-synchronized setState(II)V
    .registers 10
    .parameter "state"
    .parameter "result"

    .prologue
    .line 388
    monitor-enter p0

    :try_start_1
    iget v3, p0, Lcom/samsung/map/BluetoothMapService;->mState:I

    if-eq p1, v3, :cond_32

    .line 391
    iget v2, p0, Lcom/samsung/map/BluetoothMapService;->mState:I

    .line 392
    .local v2, prevState:I
    iput p1, p0, Lcom/samsung/map/BluetoothMapService;->mState:I

    .line 393
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.bluetooth.map.intent.action.MAP_STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 394
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "android.bluetooth.map.intent.MAP_PREVIOUS_STATE"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 395
    const-string v3, "android.bluetooth.map.intent.MAP_STATE"

    iget v4, p0, Lcom/samsung/map/BluetoothMapService;->mState:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 396
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    iget-object v4, p0, Lcom/samsung/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 397
    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {p0, v1, v3}, Lcom/samsung/map/BluetoothMapService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_3d

    .line 399
    :try_start_28
    iget-object v3, p0, Lcom/samsung/map/BluetoothMapService;->mBluetoothService:Landroid/bluetooth/IBluetooth;

    iget-object v4, p0, Lcom/samsung/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v5, 0x7

    iget v6, p0, Lcom/samsung/map/BluetoothMapService;->mState:I

    invoke-interface {v3, v4, v5, v6, v2}, Landroid/bluetooth/IBluetooth;->sendConnectionStateChange(Landroid/bluetooth/BluetoothDevice;III)V
    :try_end_32
    .catchall {:try_start_28 .. :try_end_32} :catchall_3d
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_32} :catch_34

    .line 405
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #prevState:I
    :cond_32
    :goto_32
    monitor-exit p0

    return-void

    .line 401
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v2       #prevState:I
    :catch_34
    move-exception v0

    .line 402
    .local v0, e:Landroid/os/RemoteException;
    :try_start_35
    const-string v3, "BtMap Service"

    const-string v4, "RemoteException in sendConnectionStateChange"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_3d

    goto :goto_32

    .line 388
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #prevState:I
    :catchall_3d
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private startListener()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 311
    iget-boolean v0, p0, Lcom/samsung/map/BluetoothMapService;->mListenStarted:Z

    if-nez v0, :cond_1a

    .line 312
    iget-object v0, p0, Lcom/samsung/map/BluetoothMapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 313
    iget-object v0, p0, Lcom/samsung/map/BluetoothMapService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/map/BluetoothMapService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 314
    iput-boolean v2, p0, Lcom/samsung/map/BluetoothMapService;->mListenStarted:Z

    .line 317
    :cond_1a
    return-void
.end method

.method private startSocketListener()V
    .registers 5

    .prologue
    .line 408
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget v2, p0, Lcom/samsung/map/BluetoothMapService;->instancesNumber:I

    if-ge v1, v2, :cond_1f

    .line 409
    iget-object v2, p0, Lcom/samsung/map/BluetoothMapService;->mSocketListener:[Lcom/samsung/map/BluetoothMapRfcommListener;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/samsung/map/BluetoothMapService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Lcom/samsung/map/BluetoothMapRfcommListener;->start(Landroid/os/Handler;)Z

    .line 411
    const-wide/16 v2, 0x1f4

    :try_start_10
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_13} :catch_16

    .line 408
    :goto_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 412
    :catch_16
    move-exception v0

    .line 413
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "BtMap Service"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13

    .line 417
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_1f
    return-void
.end method

.method private stopObexServerSession()V
    .registers 4

    .prologue
    .line 471
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/samsung/map/BluetoothMapService;->setState(I)V

    .line 473
    iget-object v1, p0, Lcom/samsung/map/BluetoothMapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v1, :cond_10

    .line 475
    :try_start_8
    iget-object v1, p0, Lcom/samsung/map/BluetoothMapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->close()V

    .line 476
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/map/BluetoothMapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_10} :catch_11

    .line 481
    :cond_10
    :goto_10
    return-void

    .line 477
    :catch_11
    move-exception v0

    .line 478
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BtMap Service"

    const-string v2, "IOException thrown"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "arg0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/samsung/map/BluetoothMapService;->mBinder:Landroid/bluetooth/IBluetoothMap$Stub;

    return-object v0
.end method

.method public onCreate()V
    .registers 9

    .prologue
    const/16 v1, 0xc

    const/4 v4, 0x2

    const/4 v2, 0x0

    .line 224
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 226
    new-array v0, v1, [I

    sput-object v0, Lcom/samsung/map/BluetoothMapService;->accountIds:[I

    .line 227
    new-array v0, v1, [Lcom/samsung/map/BluetoothMapRfcommListener;

    iput-object v0, p0, Lcom/samsung/map/BluetoothMapService;->mSocketListener:[Lcom/samsung/map/BluetoothMapRfcommListener;

    .line 228
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/map/BluetoothMapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 230
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/map/BluetoothMapService;->instancesNumber:I

    .line 233
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-ne v0, v4, :cond_23

    const/4 v4, 0x4

    .line 235
    .local v4, supportedTypes:I
    :cond_23
    const-string v3, "Android SMS"

    .line 237
    .local v3, serviceName:Ljava/lang/String;
    iget-object v7, p0, Lcom/samsung/map/BluetoothMapService;->mSocketListener:[Lcom/samsung/map/BluetoothMapRfcommListener;

    new-instance v0, Lcom/samsung/map/BluetoothMapRfcommListener;

    iget-object v1, p0, Lcom/samsung/map/BluetoothMapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/map/BluetoothMapRfcommListener;-><init>(Landroid/bluetooth/BluetoothAdapter;ILjava/lang/String;ILandroid/content/Context;)V

    aput-object v0, v7, v2

    .line 240
    new-instance v6, Landroid/content/IntentFilter;

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v6, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 244
    .local v6, filter:Landroid/content/IntentFilter;
    monitor-enter p0

    .line 245
    :try_start_39
    iget-object v0, p0, Lcom/samsung/map/BluetoothMapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_46

    .line 246
    const-string v0, "BtMap Service"

    const-string v1, "Local BT device is not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :goto_44
    monitor-exit p0

    .line 252
    return-void

    .line 249
    :cond_46
    invoke-direct {p0}, Lcom/samsung/map/BluetoothMapService;->startListener()V

    goto :goto_44

    .line 251
    :catchall_4a
    move-exception v0

    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_39 .. :try_end_4c} :catchall_4a

    throw v0
.end method

.method public onDestroy()V
    .registers 6

    .prologue
    const/4 v4, 0x2

    .line 422
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 424
    iget-object v2, p0, Lcom/samsung/map/BluetoothMapService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 425
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.bluetooth.device.action.CONNECTION_ACCESS_CANCEL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 427
    .local v1, timeoutIntent:Landroid/content/Intent;
    const-string v2, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 429
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    iget-object v3, p0, Lcom/samsung/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 430
    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {p0, v1, v2}, Lcom/samsung/map/BluetoothMapService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 433
    .end local v1           #timeoutIntent:Landroid/content/Intent;
    :cond_25
    const/4 v2, 0x0

    invoke-direct {p0, v2, v4}, Lcom/samsung/map/BluetoothMapService;->setState(II)V

    .line 436
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2a
    iget v2, p0, Lcom/samsung/map/BluetoothMapService;->instancesNumber:I

    if-ge v0, v2, :cond_38

    .line 437
    iget-object v2, p0, Lcom/samsung/map/BluetoothMapService;->mSocketListener:[Lcom/samsung/map/BluetoothMapRfcommListener;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/samsung/map/BluetoothMapRfcommListener;->stop()V

    .line 436
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 439
    :cond_38
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 7
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 257
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    .line 258
    .local v0, retCode:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 259
    iget-object v1, p0, Lcom/samsung/map/BluetoothMapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_13

    .line 260
    const-string v1, "BtMap Service"

    const-string v2, "Local BT device is not enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_12
    :goto_12
    return v0

    .line 262
    :cond_13
    if-eqz p1, :cond_12

    .line 263
    invoke-direct {p0, p1}, Lcom/samsung/map/BluetoothMapService;->parseIntent(Landroid/content/Intent;)V

    goto :goto_12
.end method

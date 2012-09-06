.class public Landroid/support/place/connector/BrokerConnection;
.super Ljava/lang/Object;
.source "BrokerConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/place/connector/BrokerConnection$Callback;,
        Landroid/support/place/connector/BrokerConnection$ListenerRec;,
        Landroid/support/place/connector/BrokerConnection$Listener;
    }
.end annotation


# static fields
.field private static mBrokerApk:Ljava/lang/String;


# instance fields
.field mBroker:Landroid/support/place/connector/Broker;

.field mBrokerConnection:Landroid/support/place/connector/IBrokerConnection$Stub;

.field mBrokerService:Landroid/support/place/connector/IBrokerService;

.field private final mBrokerServiceDeath:Landroid/os/IBinder$DeathRecipient;

.field mContainer:Landroid/support/place/connector/ConnectorContainer;

.field final mContext:Landroid/content/Context;

.field final mHandler:Landroid/os/Handler;

.field mListener:Landroid/support/place/connector/BrokerConnection$ListenerRec;

.field mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1, v0}, Landroid/support/place/connector/BrokerConnection;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 5
    .parameter "context"
    .parameter "handler"

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    new-instance v0, Landroid/support/place/connector/BrokerConnection$1;

    invoke-direct {v0, p0}, Landroid/support/place/connector/BrokerConnection$1;-><init>(Landroid/support/place/connector/BrokerConnection;)V

    iput-object v0, p0, Landroid/support/place/connector/BrokerConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 363
    new-instance v0, Landroid/support/place/connector/BrokerConnection$2;

    invoke-direct {v0, p0}, Landroid/support/place/connector/BrokerConnection$2;-><init>(Landroid/support/place/connector/BrokerConnection;)V

    iput-object v0, p0, Landroid/support/place/connector/BrokerConnection;->mBrokerServiceDeath:Landroid/os/IBinder$DeathRecipient;

    .line 60
    iput-object p1, p0, Landroid/support/place/connector/BrokerConnection;->mContext:Landroid/content/Context;

    .line 61
    iput-object v1, p0, Landroid/support/place/connector/BrokerConnection;->mListener:Landroid/support/place/connector/BrokerConnection$ListenerRec;

    .line 62
    iput-object v1, p0, Landroid/support/place/connector/BrokerConnection;->mContainer:Landroid/support/place/connector/ConnectorContainer;

    .line 63
    iput-object p2, p0, Landroid/support/place/connector/BrokerConnection;->mHandler:Landroid/os/Handler;

    .line 64
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/support/place/connector/ConnectorContainer;)V
    .registers 4
    .parameter "context"
    .parameter "container"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/support/place/connector/BrokerConnection;-><init>(Landroid/content/Context;)V

    .line 74
    iput-object p2, p0, Landroid/support/place/connector/BrokerConnection;->mContainer:Landroid/support/place/connector/ConnectorContainer;

    .line 75
    new-instance v0, Landroid/support/place/connector/BrokerConnection$Callback;

    invoke-direct {v0, p0}, Landroid/support/place/connector/BrokerConnection$Callback;-><init>(Landroid/support/place/connector/BrokerConnection;)V

    iput-object v0, p0, Landroid/support/place/connector/BrokerConnection;->mBrokerConnection:Landroid/support/place/connector/IBrokerConnection$Stub;

    .line 76
    return-void
.end method

.method static synthetic access$100(Landroid/support/place/connector/BrokerConnection;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/support/place/connector/BrokerConnection;->handleBrokerServiceDisconnected()V

    return-void
.end method

.method static synthetic access$200(Landroid/support/place/connector/BrokerConnection;Landroid/support/place/connector/IBrokerService;Landroid/support/place/rpc/EndpointInfo;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/support/place/connector/BrokerConnection;->handleBrokerConnected(Landroid/support/place/connector/IBrokerService;Landroid/support/place/rpc/EndpointInfo;)V

    return-void
.end method

.method static synthetic access$300(Landroid/support/place/connector/BrokerConnection;Landroid/support/place/connector/PlaceInfo;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/support/place/connector/BrokerConnection;->handlePlaceConnected(Landroid/support/place/connector/PlaceInfo;)V

    return-void
.end method

.method static synthetic access$400(Landroid/support/place/connector/BrokerConnection;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/support/place/connector/BrokerConnection;->handlePlaceDisconnected()V

    return-void
.end method

.method static synthetic access$500(Landroid/support/place/connector/BrokerConnection;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/support/place/connector/BrokerConnection;->handleBrokerDisconnected()V

    return-void
.end method

.method public static bindToBroker(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    .registers 7
    .parameter "context"
    .parameter "sc"

    .prologue
    .line 86
    invoke-static {p0}, Landroid/support/place/connector/BrokerConnection;->getServiceIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 87
    .local v1, intent:Landroid/content/Intent;
    if-nez v1, :cond_e

    .line 88
    const-string v2, "aah.BrokerConnection"

    const-string v3, "Broker is not installed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :goto_d
    return-void

    .line 93
    :cond_e
    const/4 v2, 0x1

    :try_start_f
    invoke-virtual {p0, v1, p1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 94
    const-string v2, "aah.BrokerConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "binding to service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_2a} :catch_2b

    goto :goto_d

    .line 95
    :catch_2b
    move-exception v0

    .line 96
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v2, "aah.BrokerConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error connecting to broker service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static getBrokerAPK(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .parameter "context"

    .prologue
    .line 471
    sget-object v0, Landroid/support/place/connector/BrokerConnection;->mBrokerApk:Ljava/lang/String;

    if-nez v0, :cond_18

    .line 474
    const-string v0, "com.google.android.hubbroker"

    invoke-static {p0, v0}, Landroid/support/place/connector/BrokerConnection;->getPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/place/connector/BrokerConnection;->mBrokerApk:Ljava/lang/String;

    .line 476
    sget-object v0, Landroid/support/place/connector/BrokerConnection;->mBrokerApk:Ljava/lang/String;

    if-nez v0, :cond_18

    .line 477
    const-string v0, "com.google.android.setupwarlock"

    invoke-static {p0, v0}, Landroid/support/place/connector/BrokerConnection;->getPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/place/connector/BrokerConnection;->mBrokerApk:Ljava/lang/String;

    .line 481
    :cond_18
    sget-object v0, Landroid/support/place/connector/BrokerConnection;->mBrokerApk:Ljava/lang/String;

    return-object v0
.end method

.method private static getPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 459
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 462
    .local v1, pm:Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    :try_start_5
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_8} :catch_9

    .line 466
    .end local p1
    :goto_8
    return-object p1

    .line 465
    .restart local p1
    :catch_9
    move-exception v0

    .line 466
    .local v0, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 p1, 0x0

    goto :goto_8
.end method

.method public static getServiceIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 5
    .parameter "context"

    .prologue
    .line 486
    invoke-static {p0}, Landroid/support/place/connector/BrokerConnection;->getBrokerAPK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 488
    .local v0, apk:Ljava/lang/String;
    if-nez v0, :cond_8

    .line 489
    const/4 v1, 0x0

    .line 494
    :goto_7
    return-object v1

    .line 491
    :cond_8
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 492
    .local v1, intent:Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.athome.broker.service.BrokerService"

    invoke-direct {v2, v0, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_7
.end method

.method private handleBrokerConnected(Landroid/support/place/connector/IBrokerService;Landroid/support/place/rpc/EndpointInfo;)V
    .registers 7
    .parameter "brokerService"
    .parameter "brokerConnector"

    .prologue
    .line 297
    iget-object v1, p0, Landroid/support/place/connector/BrokerConnection;->mBroker:Landroid/support/place/connector/Broker;

    if-eqz v1, :cond_b

    .line 298
    const-string v1, "aah.BrokerConnection"

    const-string v2, "received BrokerConnected but already connected to broker"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_b
    invoke-virtual {p0, p1, p2}, Landroid/support/place/connector/BrokerConnection;->createBroker(Landroid/support/place/connector/IBrokerService;Landroid/support/place/rpc/EndpointInfo;)Landroid/support/place/connector/Broker;

    move-result-object v1

    iput-object v1, p0, Landroid/support/place/connector/BrokerConnection;->mBroker:Landroid/support/place/connector/Broker;

    .line 304
    iget-object v1, p0, Landroid/support/place/connector/BrokerConnection;->mContainer:Landroid/support/place/connector/ConnectorContainer;

    if-eqz v1, :cond_23

    .line 305
    iput-object p1, p0, Landroid/support/place/connector/BrokerConnection;->mBrokerService:Landroid/support/place/connector/IBrokerService;

    .line 307
    :try_start_17
    iget-object v1, p0, Landroid/support/place/connector/BrokerConnection;->mBrokerService:Landroid/support/place/connector/IBrokerService;

    invoke-interface {v1}, Landroid/support/place/connector/IBrokerService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/place/connector/BrokerConnection;->mBrokerServiceDeath:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_23} :catch_27

    .line 313
    :cond_23
    :goto_23
    invoke-direct {p0}, Landroid/support/place/connector/BrokerConnection;->updateListener()V

    .line 314
    return-void

    .line 308
    :catch_27
    move-exception v0

    .line 309
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "aah.BrokerConnection"

    const-string v2, "handleBrokerConnected linkToDeath failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_23
.end method

.method private handleBrokerDisconnected()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 349
    iget-object v0, p0, Landroid/support/place/connector/BrokerConnection;->mBroker:Landroid/support/place/connector/Broker;

    if-eqz v0, :cond_c

    .line 351
    iget-object v0, p0, Landroid/support/place/connector/BrokerConnection;->mBroker:Landroid/support/place/connector/Broker;

    invoke-virtual {v0, v3}, Landroid/support/place/connector/Broker;->setPlace(Landroid/support/place/connector/PlaceInfo;)V

    .line 352
    iput-object v3, p0, Landroid/support/place/connector/BrokerConnection;->mBroker:Landroid/support/place/connector/Broker;

    .line 355
    :cond_c
    iget-object v0, p0, Landroid/support/place/connector/BrokerConnection;->mContainer:Landroid/support/place/connector/ConnectorContainer;

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/support/place/connector/BrokerConnection;->mBrokerService:Landroid/support/place/connector/IBrokerService;

    if-eqz v0, :cond_22

    .line 356
    iget-object v0, p0, Landroid/support/place/connector/BrokerConnection;->mBrokerService:Landroid/support/place/connector/IBrokerService;

    invoke-interface {v0}, Landroid/support/place/connector/IBrokerService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/place/connector/BrokerConnection;->mBrokerServiceDeath:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 357
    iput-object v3, p0, Landroid/support/place/connector/BrokerConnection;->mBrokerService:Landroid/support/place/connector/IBrokerService;

    .line 360
    :cond_22
    invoke-direct {p0}, Landroid/support/place/connector/BrokerConnection;->updateListener()V

    .line 361
    return-void
.end method

.method private handleBrokerServiceDisconnected()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 237
    iget-object v0, p0, Landroid/support/place/connector/BrokerConnection;->mListener:Landroid/support/place/connector/BrokerConnection$ListenerRec;

    if-eqz v0, :cond_c

    .line 239
    const-string v0, "aah.BrokerConnection"

    const-string v1, "Disconnected from BrokerService with a  listener still attached"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_c
    iput-object v2, p0, Landroid/support/place/connector/BrokerConnection;->mBrokerService:Landroid/support/place/connector/IBrokerService;

    .line 245
    iput-object v2, p0, Landroid/support/place/connector/BrokerConnection;->mBroker:Landroid/support/place/connector/Broker;

    .line 246
    invoke-direct {p0}, Landroid/support/place/connector/BrokerConnection;->updateListener()V

    .line 247
    return-void
.end method

.method private handlePlaceConnected(Landroid/support/place/connector/PlaceInfo;)V
    .registers 4
    .parameter "place"

    .prologue
    .line 328
    iget-object v0, p0, Landroid/support/place/connector/BrokerConnection;->mBroker:Landroid/support/place/connector/Broker;

    if-nez v0, :cond_c

    .line 329
    const-string v0, "aah.BrokerConnection"

    const-string v1, "received PlaceConnected but not connected to broker; ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :goto_b
    return-void

    .line 333
    :cond_c
    iget-object v0, p0, Landroid/support/place/connector/BrokerConnection;->mBroker:Landroid/support/place/connector/Broker;

    invoke-virtual {v0, p1}, Landroid/support/place/connector/Broker;->setPlace(Landroid/support/place/connector/PlaceInfo;)V

    .line 335
    invoke-direct {p0}, Landroid/support/place/connector/BrokerConnection;->updateListener()V

    goto :goto_b
.end method

.method private handlePlaceDisconnected()V
    .registers 3

    .prologue
    .line 341
    iget-object v0, p0, Landroid/support/place/connector/BrokerConnection;->mBroker:Landroid/support/place/connector/Broker;

    if-eqz v0, :cond_a

    .line 342
    iget-object v0, p0, Landroid/support/place/connector/BrokerConnection;->mBroker:Landroid/support/place/connector/Broker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/place/connector/Broker;->setPlace(Landroid/support/place/connector/PlaceInfo;)V

    .line 344
    :cond_a
    invoke-direct {p0}, Landroid/support/place/connector/BrokerConnection;->updateListener()V

    .line 345
    return-void
.end method

.method public static isBrokerInstalled(Landroid/content/Context;)Z
    .registers 6
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 193
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 195
    .local v1, pm:Landroid/content/pm/PackageManager;
    :try_start_5
    invoke-static {p0}, Landroid/support/place/connector/BrokerConnection;->getBrokerAPK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_d} :catch_f

    .line 199
    const/4 v2, 0x1

    :goto_e
    return v2

    .line 196
    :catch_f
    move-exception v0

    .line 197
    .local v0, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_e
.end method

.method private updateDisconnectedListener(Landroid/support/place/connector/BrokerConnection$ListenerRec;)V
    .registers 4
    .parameter "rec"

    .prologue
    const/4 v1, 0x0

    .line 437
    iget-object v0, p1, Landroid/support/place/connector/BrokerConnection$ListenerRec;->place:Landroid/support/place/connector/PlaceInfo;

    if-eqz v0, :cond_a

    .line 438
    iget-object v0, p1, Landroid/support/place/connector/BrokerConnection$ListenerRec;->listener:Landroid/support/place/connector/BrokerConnection$Listener;

    invoke-interface {v0}, Landroid/support/place/connector/BrokerConnection$Listener;->onPlaceDisconnected()V

    .line 441
    :cond_a
    iget-object v0, p1, Landroid/support/place/connector/BrokerConnection$ListenerRec;->broker:Landroid/support/place/connector/Broker;

    if-eqz v0, :cond_13

    .line 442
    iget-object v0, p1, Landroid/support/place/connector/BrokerConnection$ListenerRec;->listener:Landroid/support/place/connector/BrokerConnection$Listener;

    invoke-interface {v0}, Landroid/support/place/connector/BrokerConnection$Listener;->onBrokerDisconnected()V

    .line 445
    :cond_13
    iput-object v1, p1, Landroid/support/place/connector/BrokerConnection$ListenerRec;->place:Landroid/support/place/connector/PlaceInfo;

    .line 446
    iput-object v1, p1, Landroid/support/place/connector/BrokerConnection$ListenerRec;->broker:Landroid/support/place/connector/Broker;

    .line 447
    return-void
.end method

.method private updateListener()V
    .registers 3

    .prologue
    .line 379
    iget-object v0, p0, Landroid/support/place/connector/BrokerConnection;->mListener:Landroid/support/place/connector/BrokerConnection$ListenerRec;

    if-nez v0, :cond_5

    .line 433
    :cond_4
    :goto_4
    return-void

    .line 388
    :cond_5
    iget-object v0, p0, Landroid/support/place/connector/BrokerConnection;->mBroker:Landroid/support/place/connector/Broker;

    if-nez v0, :cond_f

    .line 390
    iget-object v0, p0, Landroid/support/place/connector/BrokerConnection;->mListener:Landroid/support/place/connector/BrokerConnection$ListenerRec;

    invoke-direct {p0, v0}, Landroid/support/place/connector/BrokerConnection;->updateDisconnectedListener(Landroid/support/place/connector/BrokerConnection$ListenerRec;)V

    goto :goto_4

    .line 394
    :cond_f
    iget-object v0, p0, Landroid/support/place/connector/BrokerConnection;->mListener:Landroid/support/place/connector/BrokerConnection$ListenerRec;

    iget-object v0, v0, Landroid/support/place/connector/BrokerConnection$ListenerRec;->broker:Landroid/support/place/connector/Broker;

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/support/place/connector/BrokerConnection;->mListener:Landroid/support/place/connector/BrokerConnection$ListenerRec;

    iget-object v0, v0, Landroid/support/place/connector/BrokerConnection$ListenerRec;->broker:Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/connector/BrokerConnection;->mBroker:Landroid/support/place/connector/Broker;

    if-eq v0, v1, :cond_22

    .line 398
    iget-object v0, p0, Landroid/support/place/connector/BrokerConnection;->mListener:Landroid/support/place/connector/BrokerConnection$ListenerRec;

    invoke-direct {p0, v0}, Landroid/support/place/connector/BrokerConnection;->updateDisconnectedListener(Landroid/support/place/connector/BrokerConnection$ListenerRec;)V

    .line 401
    :cond_22
    iget-object v0, p0, Landroid/support/place/connector/BrokerConnection;->mListener:Landroid/support/place/connector/BrokerConnection$ListenerRec;

    iget-object v0, v0, Landroid/support/place/connector/BrokerConnection$ListenerRec;->broker:Landroid/support/place/connector/Broker;

    if-nez v0, :cond_39

    .line 403
    iget-object v0, p0, Landroid/support/place/connector/BrokerConnection;->mListener:Landroid/support/place/connector/BrokerConnection$ListenerRec;

    iget-object v1, p0, Landroid/support/place/connector/BrokerConnection;->mBroker:Landroid/support/place/connector/Broker;

    iput-object v1, v0, Landroid/support/place/connector/BrokerConnection$ListenerRec;->broker:Landroid/support/place/connector/Broker;

    .line 404
    iget-object v0, p0, Landroid/support/place/connector/BrokerConnection;->mListener:Landroid/support/place/connector/BrokerConnection$ListenerRec;

    iget-object v0, v0, Landroid/support/place/connector/BrokerConnection$ListenerRec;->listener:Landroid/support/place/connector/BrokerConnection$Listener;

    iget-object v1, p0, Landroid/support/place/connector/BrokerConnection;->mListener:Landroid/support/place/connector/BrokerConnection$ListenerRec;

    iget-object v1, v1, Landroid/support/place/connector/BrokerConnection$ListenerRec;->broker:Landroid/support/place/connector/Broker;

    invoke-interface {v0, v1}, Landroid/support/place/connector/BrokerConnection$Listener;->onBrokerConnected(Landroid/support/place/connector/Broker;)V

    .line 407
    :cond_39
    iget-object v0, p0, Landroid/support/place/connector/BrokerConnection;->mBroker:Landroid/support/place/connector/Broker;

    invoke-virtual {v0}, Landroid/support/place/connector/Broker;->getPlace()Landroid/support/place/connector/PlaceInfo;

    move-result-object v0

    if-eqz v0, :cond_f1

    .line 409
    iget-object v0, p0, Landroid/support/place/connector/BrokerConnection;->mListener:Landroid/support/place/connector/BrokerConnection$ListenerRec;

    iget-object v0, v0, Landroid/support/place/connector/BrokerConnection$ListenerRec;->place:Landroid/support/place/connector/PlaceInfo;

    if-nez v0, :cond_5d

    .line 411
    iget-object v0, p0, Landroid/support/place/connector/BrokerConnection;->mListener:Landroid/support/place/connector/BrokerConnection$ListenerRec;

    iget-object v1, p0, Landroid/support/place/connector/BrokerConnection;->mBroker:Landroid/support/place/connector/Broker;

    invoke-virtual {v1}, Landroid/support/place/connector/Broker;->getPlace()Landroid/support/place/connector/PlaceInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/support/place/connector/BrokerConnection$ListenerRec;->place:Landroid/support/place/connector/PlaceInfo;

    .line 412
    iget-object v0, p0, Landroid/support/place/connector/BrokerConnection;->mListener:Landroid/support/place/connector/BrokerConnection$ListenerRec;

    iget-object v0, v0, Landroid/support/place/connector/BrokerConnection$ListenerRec;->listener:Landroid/support/place/connector/BrokerConnection$Listener;

    iget-object v1, p0, Landroid/support/place/connector/BrokerConnection;->mListener:Landroid/support/place/connector/BrokerConnection$ListenerRec;

    iget-object v1, v1, Landroid/support/place/connector/BrokerConnection$ListenerRec;->place:Landroid/support/place/connector/PlaceInfo;

    invoke-interface {v0, v1}, Landroid/support/place/connector/BrokerConnection$Listener;->onPlaceConnected(Landroid/support/place/connector/PlaceInfo;)V

    goto :goto_4

    .line 413
    :cond_5d
    iget-object v0, p0, Landroid/support/place/connector/BrokerConnection;->mListener:Landroid/support/place/connector/BrokerConnection$ListenerRec;

    iget-object v0, v0, Landroid/support/place/connector/BrokerConnection$ListenerRec;->place:Landroid/support/place/connector/PlaceInfo;

    invoke-virtual {v0}, Landroid/support/place/connector/PlaceInfo;->getPlaceId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/support/place/connector/BrokerConnection;->mBroker:Landroid/support/place/connector/Broker;

    invoke-virtual {v1}, Landroid/support/place/connector/Broker;->getPlace()Landroid/support/place/connector/PlaceInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/place/connector/PlaceInfo;->getPlaceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_93

    .line 415
    iget-object v0, p0, Landroid/support/place/connector/BrokerConnection;->mListener:Landroid/support/place/connector/BrokerConnection$ListenerRec;

    iget-object v1, p0, Landroid/support/place/connector/BrokerConnection;->mBroker:Landroid/support/place/connector/Broker;

    invoke-virtual {v1}, Landroid/support/place/connector/Broker;->getPlace()Landroid/support/place/connector/PlaceInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/support/place/connector/BrokerConnection$ListenerRec;->place:Landroid/support/place/connector/PlaceInfo;

    .line 416
    iget-object v0, p0, Landroid/support/place/connector/BrokerConnection;->mListener:Landroid/support/place/connector/BrokerConnection$ListenerRec;

    iget-object v0, v0, Landroid/support/place/connector/BrokerConnection$ListenerRec;->listener:Landroid/support/place/connector/BrokerConnection$Listener;

    invoke-interface {v0}, Landroid/support/place/connector/BrokerConnection$Listener;->onPlaceDisconnected()V

    .line 417
    iget-object v0, p0, Landroid/support/place/connector/BrokerConnection;->mListener:Landroid/support/place/connector/BrokerConnection$ListenerRec;

    iget-object v0, v0, Landroid/support/place/connector/BrokerConnection$ListenerRec;->listener:Landroid/support/place/connector/BrokerConnection$Listener;

    iget-object v1, p0, Landroid/support/place/connector/BrokerConnection;->mListener:Landroid/support/place/connector/BrokerConnection$ListenerRec;

    iget-object v1, v1, Landroid/support/place/connector/BrokerConnection$ListenerRec;->place:Landroid/support/place/connector/PlaceInfo;

    invoke-interface {v0, v1}, Landroid/support/place/connector/BrokerConnection$Listener;->onPlaceConnected(Landroid/support/place/connector/PlaceInfo;)V

    goto/16 :goto_4

    .line 418
    :cond_93
    iget-object v0, p0, Landroid/support/place/connector/BrokerConnection;->mListener:Landroid/support/place/connector/BrokerConnection$ListenerRec;

    iget-object v0, v0, Landroid/support/place/connector/BrokerConnection$ListenerRec;->place:Landroid/support/place/connector/PlaceInfo;

    iget-object v1, p0, Landroid/support/place/connector/BrokerConnection;->mBroker:Landroid/support/place/connector/Broker;

    invoke-virtual {v1}, Landroid/support/place/connector/Broker;->getPlace()Landroid/support/place/connector/PlaceInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/place/connector/PlaceInfo;->hasSameMaster(Landroid/support/place/connector/PlaceInfo;)Z

    move-result v0

    if-nez v0, :cond_be

    .line 421
    iget-object v0, p0, Landroid/support/place/connector/BrokerConnection;->mListener:Landroid/support/place/connector/BrokerConnection$ListenerRec;

    iget-object v1, p0, Landroid/support/place/connector/BrokerConnection;->mBroker:Landroid/support/place/connector/Broker;

    invoke-virtual {v1}, Landroid/support/place/connector/Broker;->getPlace()Landroid/support/place/connector/PlaceInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/support/place/connector/BrokerConnection$ListenerRec;->place:Landroid/support/place/connector/PlaceInfo;

    .line 422
    iget-object v0, p0, Landroid/support/place/connector/BrokerConnection;->mListener:Landroid/support/place/connector/BrokerConnection$ListenerRec;

    iget-object v0, v0, Landroid/support/place/connector/BrokerConnection$ListenerRec;->listener:Landroid/support/place/connector/BrokerConnection$Listener;

    iget-object v1, p0, Landroid/support/place/connector/BrokerConnection;->mListener:Landroid/support/place/connector/BrokerConnection$ListenerRec;

    iget-object v1, v1, Landroid/support/place/connector/BrokerConnection$ListenerRec;->place:Landroid/support/place/connector/PlaceInfo;

    invoke-virtual {v1}, Landroid/support/place/connector/PlaceInfo;->getMaster()Landroid/support/place/rpc/EndpointInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/support/place/connector/BrokerConnection$Listener;->onMasterChanged(Landroid/support/place/rpc/EndpointInfo;)V

    goto/16 :goto_4

    .line 423
    :cond_be
    iget-object v0, p0, Landroid/support/place/connector/BrokerConnection;->mListener:Landroid/support/place/connector/BrokerConnection$ListenerRec;

    iget-object v0, v0, Landroid/support/place/connector/BrokerConnection$ListenerRec;->place:Landroid/support/place/connector/PlaceInfo;

    invoke-virtual {v0}, Landroid/support/place/connector/PlaceInfo;->getPlaceName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/support/place/connector/BrokerConnection;->mBroker:Landroid/support/place/connector/Broker;

    invoke-virtual {v1}, Landroid/support/place/connector/Broker;->getPlace()Landroid/support/place/connector/PlaceInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/place/connector/PlaceInfo;->getPlaceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 425
    iget-object v0, p0, Landroid/support/place/connector/BrokerConnection;->mListener:Landroid/support/place/connector/BrokerConnection$ListenerRec;

    iget-object v1, p0, Landroid/support/place/connector/BrokerConnection;->mBroker:Landroid/support/place/connector/Broker;

    invoke-virtual {v1}, Landroid/support/place/connector/Broker;->getPlace()Landroid/support/place/connector/PlaceInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/support/place/connector/BrokerConnection$ListenerRec;->place:Landroid/support/place/connector/PlaceInfo;

    .line 426
    iget-object v0, p0, Landroid/support/place/connector/BrokerConnection;->mListener:Landroid/support/place/connector/BrokerConnection$ListenerRec;

    iget-object v0, v0, Landroid/support/place/connector/BrokerConnection$ListenerRec;->listener:Landroid/support/place/connector/BrokerConnection$Listener;

    iget-object v1, p0, Landroid/support/place/connector/BrokerConnection;->mListener:Landroid/support/place/connector/BrokerConnection$ListenerRec;

    iget-object v1, v1, Landroid/support/place/connector/BrokerConnection$ListenerRec;->place:Landroid/support/place/connector/PlaceInfo;

    invoke-virtual {v1}, Landroid/support/place/connector/PlaceInfo;->getPlaceName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/support/place/connector/BrokerConnection$Listener;->onPlaceNameChanged(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 428
    :cond_f1
    iget-object v0, p0, Landroid/support/place/connector/BrokerConnection;->mListener:Landroid/support/place/connector/BrokerConnection$ListenerRec;

    iget-object v0, v0, Landroid/support/place/connector/BrokerConnection$ListenerRec;->place:Landroid/support/place/connector/PlaceInfo;

    if-eqz v0, :cond_4

    .line 430
    iget-object v0, p0, Landroid/support/place/connector/BrokerConnection;->mListener:Landroid/support/place/connector/BrokerConnection$ListenerRec;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/place/connector/BrokerConnection$ListenerRec;->place:Landroid/support/place/connector/PlaceInfo;

    .line 431
    iget-object v0, p0, Landroid/support/place/connector/BrokerConnection;->mListener:Landroid/support/place/connector/BrokerConnection$ListenerRec;

    iget-object v0, v0, Landroid/support/place/connector/BrokerConnection$ListenerRec;->listener:Landroid/support/place/connector/BrokerConnection$Listener;

    invoke-interface {v0}, Landroid/support/place/connector/BrokerConnection$Listener;->onPlaceDisconnected()V

    goto/16 :goto_4
.end method


# virtual methods
.method public connect(Landroid/support/place/connector/BrokerConnection$Listener;)Z
    .registers 9
    .parameter "listener"

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 102
    iget-object v3, p0, Landroid/support/place/connector/BrokerConnection;->mListener:Landroid/support/place/connector/BrokerConnection$ListenerRec;

    if-eqz v3, :cond_e

    .line 103
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "This BrokerConnection is already in use. Call disconnect first"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 106
    :cond_e
    iget-object v3, p0, Landroid/support/place/connector/BrokerConnection;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/support/place/connector/BrokerConnection;->isBrokerInstalled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_20

    .line 107
    const-string v3, "aah.BrokerConnection"

    const-string v4, "Broker is not installed"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iput-object v6, p0, Landroid/support/place/connector/BrokerConnection;->mListener:Landroid/support/place/connector/BrokerConnection$ListenerRec;

    .line 128
    :goto_1f
    return v2

    .line 112
    :cond_20
    const-string v3, "aah.BrokerConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connect "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    new-instance v1, Landroid/support/place/connector/BrokerConnection$ListenerRec;

    invoke-direct {v1, p0, v6}, Landroid/support/place/connector/BrokerConnection$ListenerRec;-><init>(Landroid/support/place/connector/BrokerConnection;Landroid/support/place/connector/BrokerConnection$1;)V

    .line 115
    .local v1, rec:Landroid/support/place/connector/BrokerConnection$ListenerRec;
    iput-object p1, v1, Landroid/support/place/connector/BrokerConnection$ListenerRec;->listener:Landroid/support/place/connector/BrokerConnection$Listener;

    .line 117
    iput-object v1, p0, Landroid/support/place/connector/BrokerConnection;->mListener:Landroid/support/place/connector/BrokerConnection$ListenerRec;

    .line 119
    iget-object v3, p0, Landroid/support/place/connector/BrokerConnection;->mContainer:Landroid/support/place/connector/ConnectorContainer;

    if-nez v3, :cond_4c

    .line 121
    :try_start_45
    iget-object v3, p0, Landroid/support/place/connector/BrokerConnection;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/support/place/connector/BrokerConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-static {v3, v4}, Landroid/support/place/connector/BrokerConnection;->bindToBroker(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_4c
    .catch Ljava/lang/RuntimeException; {:try_start_45 .. :try_end_4c} :catch_51

    .line 127
    :cond_4c
    invoke-direct {p0}, Landroid/support/place/connector/BrokerConnection;->updateListener()V

    .line 128
    const/4 v2, 0x1

    goto :goto_1f

    .line 122
    :catch_51
    move-exception v0

    .line 123
    .local v0, ex:Ljava/lang/RuntimeException;
    iput-object v6, p0, Landroid/support/place/connector/BrokerConnection;->mListener:Landroid/support/place/connector/BrokerConnection$ListenerRec;

    goto :goto_1f
.end method

.method createBroker(Landroid/support/place/connector/IBrokerService;Landroid/support/place/rpc/EndpointInfo;)Landroid/support/place/connector/Broker;
    .registers 10
    .parameter "brokerService"
    .parameter "brokerConnector"

    .prologue
    .line 322
    new-instance v0, Landroid/support/place/connector/Broker;

    iget-object v1, p0, Landroid/support/place/connector/BrokerConnection;->mBrokerConnection:Landroid/support/place/connector/IBrokerConnection$Stub;

    iget-object v2, p0, Landroid/support/place/connector/BrokerConnection;->mContainer:Landroid/support/place/connector/ConnectorContainer;

    const/4 v5, 0x0

    iget-object v6, p0, Landroid/support/place/connector/BrokerConnection;->mHandler:Landroid/os/Handler;

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Landroid/support/place/connector/Broker;-><init>(Landroid/support/place/connector/IBrokerConnection;Landroid/support/place/connector/ConnectorContainer;Landroid/support/place/connector/IBrokerService;Landroid/support/place/rpc/EndpointInfo;Landroid/support/place/rpc/EndpointInfo;Landroid/os/Handler;)V

    return-object v0
.end method

.method public disconnect(Landroid/support/place/connector/BrokerConnection$Listener;)V
    .registers 6
    .parameter "listener"

    .prologue
    const/4 v3, 0x0

    .line 139
    const-string v0, "aah.BrokerConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Landroid/support/place/connector/BrokerConnection;->mListener:Landroid/support/place/connector/BrokerConnection$ListenerRec;

    if-nez v0, :cond_36

    .line 142
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "listener not attached: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_36
    iget-object v0, p0, Landroid/support/place/connector/BrokerConnection;->mBroker:Landroid/support/place/connector/Broker;

    if-eqz v0, :cond_43

    .line 152
    iget-object v0, p0, Landroid/support/place/connector/BrokerConnection;->mBroker:Landroid/support/place/connector/Broker;

    invoke-virtual {v0, v3}, Landroid/support/place/connector/Broker;->setPlace(Landroid/support/place/connector/PlaceInfo;)V

    .line 154
    iget-object v0, p0, Landroid/support/place/connector/BrokerConnection;->mBroker:Landroid/support/place/connector/Broker;

    iput-object v3, v0, Landroid/support/place/connector/Broker;->mConnection:Landroid/support/place/connector/IBrokerConnection;

    .line 158
    :cond_43
    :try_start_43
    iget-object v0, p0, Landroid/support/place/connector/BrokerConnection;->mBrokerService:Landroid/support/place/connector/IBrokerService;

    if-eqz v0, :cond_4e

    .line 159
    iget-object v0, p0, Landroid/support/place/connector/BrokerConnection;->mBrokerService:Landroid/support/place/connector/IBrokerService;

    iget-object v1, p0, Landroid/support/place/connector/BrokerConnection;->mBrokerConnection:Landroid/support/place/connector/IBrokerConnection$Stub;

    invoke-interface {v0, v1}, Landroid/support/place/connector/IBrokerService;->cancelRequests(Landroid/support/place/connector/IBrokerConnection;)V
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_4e} :catch_6f

    .line 169
    :cond_4e
    :goto_4e
    iget-object v0, p0, Landroid/support/place/connector/BrokerConnection;->mContainer:Landroid/support/place/connector/ConnectorContainer;

    if-nez v0, :cond_6a

    .line 171
    :try_start_52
    iget-object v0, p0, Landroid/support/place/connector/BrokerConnection;->mBrokerService:Landroid/support/place/connector/IBrokerService;

    if-eqz v0, :cond_5d

    .line 172
    iget-object v0, p0, Landroid/support/place/connector/BrokerConnection;->mBrokerService:Landroid/support/place/connector/IBrokerService;

    iget-object v1, p0, Landroid/support/place/connector/BrokerConnection;->mBrokerConnection:Landroid/support/place/connector/IBrokerConnection$Stub;

    invoke-interface {v0, v1}, Landroid/support/place/connector/IBrokerService;->unregisterCallback(Landroid/support/place/connector/IBrokerConnection;)V
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_5d} :catch_6d

    .line 178
    :cond_5d
    :goto_5d
    :try_start_5d
    iget-object v0, p0, Landroid/support/place/connector/BrokerConnection;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/place/connector/BrokerConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_64
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5d .. :try_end_64} :catch_6b

    .line 182
    :goto_64
    iput-object v3, p0, Landroid/support/place/connector/BrokerConnection;->mBrokerService:Landroid/support/place/connector/IBrokerService;

    .line 183
    iput-object v3, p0, Landroid/support/place/connector/BrokerConnection;->mBroker:Landroid/support/place/connector/Broker;

    .line 184
    iput-object v3, p0, Landroid/support/place/connector/BrokerConnection;->mListener:Landroid/support/place/connector/BrokerConnection$ListenerRec;

    .line 186
    :cond_6a
    return-void

    .line 179
    :catch_6b
    move-exception v0

    goto :goto_64

    .line 174
    :catch_6d
    move-exception v0

    goto :goto_5d

    .line 161
    :catch_6f
    move-exception v0

    goto :goto_4e
.end method

.method getBrokerService(Landroid/os/IBinder;)Landroid/support/place/connector/IBrokerService;
    .registers 3
    .parameter "service"

    .prologue
    .line 455
    invoke-static {p1}, Landroid/support/place/connector/IBrokerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/place/connector/IBrokerService;

    move-result-object v0

    return-object v0
.end method

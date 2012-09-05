.class public Lcom/samsung/map/MessageNotificationService;
.super Landroid/app/Service;
.source "MessageNotificationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/map/MessageNotificationService$SocketConnectThread;
    }
.end annotation


# static fields
.field private static final MNS_TARGET:[B

.field private static final MNS_UUID:Landroid/os/ParcelUuid;

.field private static busy:Ljava/lang/Object;

.field private static instance:Lcom/samsung/map/MessageNotificationService;


# instance fields
.field private MASInstancesIDs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private clientSession:Ljavax/obex/ClientSession;

.field private emailObserver:Lcom/samsung/map/EmailObserver;

.field private mConnectThread:Lcom/samsung/map/MessageNotificationService$SocketConnectThread;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mMASInstanceID:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mReceiver_UUID:Landroid/content/BroadcastReceiver;

.field private final mSessionHandler:Landroid/os/Handler;

.field private mTimeStamp:J

.field private mmsObserver:Lcom/samsung/map/MmsObserver;

.field private smsObserver:Lcom/samsung/map/SmsObserver;

.field private transport:Lcom/samsung/map/BluetoothMapObexTransport;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 78
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_1c

    sput-object v0, Lcom/samsung/map/MessageNotificationService;->MNS_TARGET:[B

    .line 83
    const-string v0, "00001133-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/samsung/map/MessageNotificationService;->MNS_UUID:Landroid/os/ParcelUuid;

    .line 99
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/map/MessageNotificationService;->instance:Lcom/samsung/map/MessageNotificationService;

    .line 101
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/map/MessageNotificationService;->busy:Ljava/lang/Object;

    return-void

    .line 78
    :array_1c
    .array-data 0x1
        0xbbt
        0x58t
        0x2bt
        0x41t
        0x42t
        0xct
        0x11t
        0xdbt
        0xb0t
        0xdet
        0x8t
        0x0t
        0x20t
        0xct
        0x9at
        0x66t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 86
    iput-object v0, p0, Lcom/samsung/map/MessageNotificationService;->smsObserver:Lcom/samsung/map/SmsObserver;

    .line 89
    iput-object v0, p0, Lcom/samsung/map/MessageNotificationService;->mmsObserver:Lcom/samsung/map/MmsObserver;

    .line 92
    iput-object v0, p0, Lcom/samsung/map/MessageNotificationService;->emailObserver:Lcom/samsung/map/EmailObserver;

    .line 95
    iput-object v0, p0, Lcom/samsung/map/MessageNotificationService;->clientSession:Ljavax/obex/ClientSession;

    .line 97
    iput-object v0, p0, Lcom/samsung/map/MessageNotificationService;->MASInstancesIDs:Ljava/util/HashSet;

    .line 105
    iput-object v0, p0, Lcom/samsung/map/MessageNotificationService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 113
    new-instance v0, Lcom/samsung/map/MessageNotificationService$1;

    invoke-direct {v0, p0}, Lcom/samsung/map/MessageNotificationService$1;-><init>(Lcom/samsung/map/MessageNotificationService;)V

    iput-object v0, p0, Lcom/samsung/map/MessageNotificationService;->mSessionHandler:Landroid/os/Handler;

    .line 247
    new-instance v0, Lcom/samsung/map/MessageNotificationService$2;

    invoke-direct {v0, p0}, Lcom/samsung/map/MessageNotificationService$2;-><init>(Lcom/samsung/map/MessageNotificationService;)V

    iput-object v0, p0, Lcom/samsung/map/MessageNotificationService;->mReceiver_UUID:Landroid/content/BroadcastReceiver;

    .line 457
    new-instance v0, Lcom/samsung/map/MessageNotificationService$4;

    invoke-direct {v0, p0}, Lcom/samsung/map/MessageNotificationService$4;-><init>(Lcom/samsung/map/MessageNotificationService;)V

    iput-object v0, p0, Lcom/samsung/map/MessageNotificationService;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/map/MessageNotificationService;)Landroid/bluetooth/BluetoothDevice;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/map/MessageNotificationService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/map/MessageNotificationService;)Landroid/content/BroadcastReceiver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/map/MessageNotificationService;->mReceiver_UUID:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/map/MessageNotificationService;)Lcom/samsung/map/SmsObserver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/map/MessageNotificationService;->smsObserver:Lcom/samsung/map/SmsObserver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/map/MessageNotificationService;)Lcom/samsung/map/MessageNotificationService$SocketConnectThread;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/map/MessageNotificationService;->mConnectThread:Lcom/samsung/map/MessageNotificationService$SocketConnectThread;

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/map/MessageNotificationService;Lcom/samsung/map/MessageNotificationService$SocketConnectThread;)Lcom/samsung/map/MessageNotificationService$SocketConnectThread;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/samsung/map/MessageNotificationService;->mConnectThread:Lcom/samsung/map/MessageNotificationService$SocketConnectThread;

    return-object p1
.end method

.method static synthetic access$300(Lcom/samsung/map/MessageNotificationService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/samsung/map/MessageNotificationService;->mMASInstanceID:I

    return v0
.end method

.method static synthetic access$400()Landroid/os/ParcelUuid;
    .registers 1

    .prologue
    .line 66
    sget-object v0, Lcom/samsung/map/MessageNotificationService;->MNS_UUID:Landroid/os/ParcelUuid;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/map/MessageNotificationService;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/map/MessageNotificationService;->mSessionHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/map/MessageNotificationService;)Lcom/samsung/map/BluetoothMapObexTransport;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/map/MessageNotificationService;->transport:Lcom/samsung/map/BluetoothMapObexTransport;

    return-object v0
.end method

.method static synthetic access$602(Lcom/samsung/map/MessageNotificationService;Lcom/samsung/map/BluetoothMapObexTransport;)Lcom/samsung/map/BluetoothMapObexTransport;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/samsung/map/MessageNotificationService;->transport:Lcom/samsung/map/BluetoothMapObexTransport;

    return-object p1
.end method

.method static synthetic access$700()[B
    .registers 1

    .prologue
    .line 66
    sget-object v0, Lcom/samsung/map/MessageNotificationService;->MNS_TARGET:[B

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/map/MessageNotificationService;)Ljavax/obex/ClientSession;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/map/MessageNotificationService;->clientSession:Ljavax/obex/ClientSession;

    return-object v0
.end method

.method static synthetic access$802(Lcom/samsung/map/MessageNotificationService;Ljavax/obex/ClientSession;)Ljavax/obex/ClientSession;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/samsung/map/MessageNotificationService;->clientSession:Ljavax/obex/ClientSession;

    return-object p1
.end method

.method static synthetic access$900()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 66
    sget-object v0, Lcom/samsung/map/MessageNotificationService;->busy:Ljava/lang/Object;

    return-object v0
.end method

.method private addMASInstanceID(I)V
    .registers 4
    .parameter "MASInstanceID"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/samsung/map/MessageNotificationService;->MASInstancesIDs:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 149
    return-void
.end method

.method private doMNSSdp(Landroid/bluetooth/BluetoothDevice;)V
    .registers 8
    .parameter "device"

    .prologue
    const/4 v5, -0x1

    .line 231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/map/MessageNotificationService;->mTimeStamp:J

    .line 233
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->fetchUuidsWithSdp()Z

    move-result v2

    if-nez v2, :cond_26

    .line 234
    const-string v2, "MAP MNS"

    const-string v3, "Start SDP query failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v2, p0, Lcom/samsung/map/MessageNotificationService;->mSessionHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    iget-object v4, p0, Lcom/samsung/map/MessageNotificationService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3, v5, v5, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 244
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/samsung/map/MessageNotificationService;->mSessionHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 245
    .end local v1           #msg:Landroid/os/Message;
    :goto_25
    return-void

    .line 238
    :cond_26
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.device.action.UUID"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 239
    .local v0, intentFilter:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/samsung/map/MessageNotificationService;->mReceiver_UUID:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/samsung/map/MessageNotificationService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_25
.end method

.method public static getDefaultService()Lcom/samsung/map/MessageNotificationService;
    .registers 1

    .prologue
    .line 433
    sget-object v0, Lcom/samsung/map/MessageNotificationService;->instance:Lcom/samsung/map/MessageNotificationService;

    return-object v0
.end method

.method private hasMASInstanceID(I)Z
    .registers 4
    .parameter "MASInstanceID"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/samsung/map/MessageNotificationService;->MASInstancesIDs:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isEmptyMASInstanceID()Z
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/samsung/map/MessageNotificationService;->MASInstancesIDs:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    return v0
.end method

.method private removeMASInstanceID(I)V
    .registers 4
    .parameter "MASInstanceID"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/samsung/map/MessageNotificationService;->MASInstancesIDs:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 153
    return-void
.end method


# virtual methods
.method public SendMessage(IILcom/samsung/map/MapEventReport;)V
    .registers 16
    .parameter "msg_type"
    .parameter "id"
    .parameter "event"

    .prologue
    const/4 v11, 0x1

    .line 164
    invoke-virtual {p3}, Lcom/samsung/map/MapEventReport;->toString()Ljava/lang/String;

    move-result-object v8

    .line 166
    .local v8, strevent:Ljava/lang/String;
    iget-object v9, p0, Lcom/samsung/map/MessageNotificationService;->clientSession:Ljavax/obex/ClientSession;

    if-eqz v9, :cond_60

    .line 167
    const/4 v5, 0x0

    .line 169
    .local v5, instanceID:I
    and-int/lit8 v9, p1, 0xb

    if-nez v9, :cond_12

    sget v9, Lcom/samsung/map/BluetoothMapService;->firstEmailAccountId:I

    if-ne p2, v9, :cond_61

    .line 171
    :cond_12
    const/4 v5, 0x0

    .line 181
    :cond_13
    invoke-direct {p0, v5}, Lcom/samsung/map/MessageNotificationService;->hasMASInstanceID(I)Z

    move-result v9

    if-eqz v9, :cond_60

    .line 183
    new-instance v0, Ljavax/obex/ApplicationParameter;

    invoke-direct {v0}, Ljavax/obex/ApplicationParameter;-><init>()V

    .line 184
    .local v0, applicationParameter:Ljavax/obex/ApplicationParameter;
    new-array v1, v11, [B

    .line 185
    .local v1, bytes:[B
    new-instance v3, Ljavax/obex/HeaderSet;

    invoke-direct {v3}, Ljavax/obex/HeaderSet;-><init>()V

    .line 186
    .local v3, header:Ljavax/obex/HeaderSet;
    const/16 v9, 0x42

    const-string v10, "x-bt/MAP-event-report"

    invoke-virtual {v3, v9, v10}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 187
    const/4 v9, 0x0

    int-to-byte v10, v5

    aput-byte v10, v1, v9

    .line 188
    const/16 v9, 0xf

    invoke-virtual {v0, v9, v11, v1}, Ljavax/obex/ApplicationParameter;->addAPPHeader(BB[B)V

    .line 190
    const/16 v9, 0x4c

    invoke-virtual {v0}, Ljavax/obex/ApplicationParameter;->getAPPparam()[B

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 192
    const/16 v9, 0x46

    sget-object v10, Lcom/samsung/map/MessageNotificationService;->MNS_TARGET:[B

    invoke-virtual {v3, v9, v10}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 195
    :try_start_45
    sget-object v10, Lcom/samsung/map/MessageNotificationService;->busy:Ljava/lang/Object;

    monitor-enter v10
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_75

    .line 196
    :try_start_48
    iget-object v9, p0, Lcom/samsung/map/MessageNotificationService;->clientSession:Ljavax/obex/ClientSession;

    invoke-virtual {v9, v3}, Ljavax/obex/ClientSession;->put(Ljavax/obex/HeaderSet;)Ljavax/obex/Operation;

    move-result-object v6

    .line 197
    .local v6, op:Ljavax/obex/Operation;
    invoke-interface {v6}, Ljavax/obex/Operation;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    .line 198
    .local v7, os:Ljava/io/OutputStream;
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/io/OutputStream;->write([B)V

    .line 199
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 200
    invoke-interface {v6}, Ljavax/obex/Operation;->close()V

    .line 201
    monitor-exit v10
    :try_end_60
    .catchall {:try_start_48 .. :try_end_60} :catchall_72

    .line 209
    .end local v0           #applicationParameter:Ljavax/obex/ApplicationParameter;
    .end local v1           #bytes:[B
    .end local v3           #header:Ljavax/obex/HeaderSet;
    .end local v5           #instanceID:I
    .end local v6           #op:Ljavax/obex/Operation;
    .end local v7           #os:Ljava/io/OutputStream;
    :cond_60
    :goto_60
    return-void

    .line 173
    .restart local v5       #instanceID:I
    :cond_61
    const/4 v4, 0x0

    .local v4, i:I
    :goto_62
    sget-object v9, Lcom/samsung/map/BluetoothMapService;->accountIds:[I

    array-length v9, v9

    if-ge v4, v9, :cond_13

    .line 174
    sget-object v9, Lcom/samsung/map/BluetoothMapService;->accountIds:[I

    aget v9, v9, v4

    if-ne v9, p2, :cond_6f

    .line 175
    add-int/lit8 v5, v4, 0x1

    .line 173
    :cond_6f
    add-int/lit8 v4, v4, 0x1

    goto :goto_62

    .line 201
    .end local v4           #i:I
    .restart local v0       #applicationParameter:Ljavax/obex/ApplicationParameter;
    .restart local v1       #bytes:[B
    .restart local v3       #header:Ljavax/obex/HeaderSet;
    :catchall_72
    move-exception v9

    :try_start_73
    monitor-exit v10
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    :try_start_74
    throw v9
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_75} :catch_75

    .line 202
    :catch_75
    move-exception v2

    .line 203
    .local v2, e:Ljava/io/IOException;
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/samsung/map/MessageNotificationService;->clientSession:Ljavax/obex/ClientSession;

    goto :goto_60
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .parameter "intent"

    .prologue
    .line 144
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot bind to Bluetooth MAP Notification Service"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 438
    sget-object v1, Lcom/samsung/map/MessageNotificationService;->instance:Lcom/samsung/map/MessageNotificationService;

    if-eqz v1, :cond_5

    .line 455
    :goto_4
    return-void

    .line 441
    :cond_5
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 445
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 446
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.samsung.map.intent.action.MNS_CHECKMSG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 447
    iget-object v1, p0, Lcom/samsung/map/MessageNotificationService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/map/MessageNotificationService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 449
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/samsung/map/MessageNotificationService;->MASInstancesIDs:Ljava/util/HashSet;

    .line 451
    new-instance v1, Lcom/samsung/map/SmsObserver;

    new-instance v2, Lcom/samsung/map/MessageHandler;

    invoke-direct {v2}, Lcom/samsung/map/MessageHandler;-><init>()V

    invoke-direct {v1, v2, p0}, Lcom/samsung/map/SmsObserver;-><init>(Lcom/samsung/map/MessageHandler;Lcom/samsung/map/MessageNotificationService;)V

    iput-object v1, p0, Lcom/samsung/map/MessageNotificationService;->smsObserver:Lcom/samsung/map/SmsObserver;

    .line 454
    sput-object p0, Lcom/samsung/map/MessageNotificationService;->instance:Lcom/samsung/map/MessageNotificationService;

    goto :goto_4
.end method

.method public start(ILandroid/bluetooth/BluetoothDevice;)I
    .registers 5
    .parameter "MASInstanceID"
    .parameter "device"

    .prologue
    .line 213
    iput-object p2, p0, Lcom/samsung/map/MessageNotificationService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 214
    iput p1, p0, Lcom/samsung/map/MessageNotificationService;->mMASInstanceID:I

    .line 215
    iget-object v1, p0, Lcom/samsung/map/MessageNotificationService;->clientSession:Ljavax/obex/ClientSession;

    if-nez v1, :cond_1d

    .line 216
    sget-object v1, Lcom/samsung/map/MessageNotificationService;->MNS_UUID:Landroid/os/ParcelUuid;

    invoke-virtual {p2, v1}, Landroid/bluetooth/BluetoothDevice;->getServiceChannel(Landroid/os/ParcelUuid;)I

    move-result v0

    .line 217
    .local v0, channel:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_23

    .line 219
    new-instance v1, Lcom/samsung/map/MessageNotificationService$SocketConnectThread;

    invoke-direct {v1, p0, p2, v0, p1}, Lcom/samsung/map/MessageNotificationService$SocketConnectThread;-><init>(Lcom/samsung/map/MessageNotificationService;Landroid/bluetooth/BluetoothDevice;II)V

    iput-object v1, p0, Lcom/samsung/map/MessageNotificationService;->mConnectThread:Lcom/samsung/map/MessageNotificationService$SocketConnectThread;

    .line 220
    iget-object v1, p0, Lcom/samsung/map/MessageNotificationService;->mConnectThread:Lcom/samsung/map/MessageNotificationService$SocketConnectThread;

    invoke-virtual {v1}, Lcom/samsung/map/MessageNotificationService$SocketConnectThread;->start()V

    .line 225
    .end local v0           #channel:I
    :cond_1d
    :goto_1d
    invoke-direct {p0, p1}, Lcom/samsung/map/MessageNotificationService;->addMASInstanceID(I)V

    .line 226
    const/16 v1, 0xa0

    return v1

    .line 222
    .restart local v0       #channel:I
    :cond_23
    invoke-direct {p0, p2}, Lcom/samsung/map/MessageNotificationService;->doMNSSdp(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_1d
.end method

.method public declared-synchronized stop(I)I
    .registers 4
    .parameter "MASInstanceID"

    .prologue
    .line 387
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/samsung/map/MessageNotificationService;->removeMASInstanceID(I)V

    .line 388
    invoke-direct {p0}, Lcom/samsung/map/MessageNotificationService;->isEmptyMASInstanceID()Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/samsung/map/MessageNotificationService;->clientSession:Ljavax/obex/ClientSession;

    if-eqz v1, :cond_18

    .line 389
    new-instance v0, Lcom/samsung/map/MessageNotificationService$3;

    const-string v1, "MAP MNSMNSdisconnect"

    invoke-direct {v0, p0, v1}, Lcom/samsung/map/MessageNotificationService$3;-><init>(Lcom/samsung/map/MessageNotificationService;Ljava/lang/String;)V

    .line 415
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1c

    .line 418
    .end local v0           #t:Ljava/lang/Thread;
    :cond_18
    const/16 v1, 0xa0

    monitor-exit p0

    return v1

    .line 387
    :catchall_1c
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public stopAll()V
    .registers 3

    .prologue
    .line 425
    const-wide/16 v0, 0x1f4

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_20

    .line 427
    :goto_5
    iget-object v0, p0, Lcom/samsung/map/MessageNotificationService;->MASInstancesIDs:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    .line 428
    iget-object v0, p0, Lcom/samsung/map/MessageNotificationService;->MASInstancesIDs:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->toArray()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/map/MessageNotificationService;->stop(I)I

    goto :goto_5

    .line 426
    :catch_20
    move-exception v0

    goto :goto_5

    .line 430
    :cond_22
    return-void
.end method
